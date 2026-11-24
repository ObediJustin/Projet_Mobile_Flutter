import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:cantiques_boanerges/database/app_database.dart';
import 'package:cantiques_boanerges/models/cantique.dart';
import 'package:cantiques_boanerges/models/chant_personnel.dart';
import 'package:cantiques_boanerges/models/playlist_item.dart';
import 'package:cantiques_boanerges/pages/cantique_detail.dart';
import 'package:cantiques_boanerges/services/cantique_service.dart';
import 'package:cantiques_boanerges/services/chant_personnel_service.dart';
import 'package:cantiques_boanerges/services/playlist_service.dart';
import 'package:cantiques_boanerges/l10n/app_localizations.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

void main() {
  group('Playlist Data Layer & Operations', () {
    late PlaylistService playlistService;
    late ChantPersonnelService chantService;

    setUp(() async {
      sqfliteFfiInit();
      SharedPreferences.setMockInitialValues({});
      await AppDatabase.instance.useDatabasePathForTesting(inMemoryDatabasePath);
      await AppDatabase.instance.initialize();
      await CantiqueService.instance.loadCacheFromDatabase();
      playlistService = PlaylistService.instance;
      chantService = ChantPersonnelService();
    });

    tearDown(() async {
      await AppDatabase.instance.close();
      await CantiqueService.instance.resetCacheForTesting();
    });

    test('verifies SQLite migration v5 creates playlists and items tables', () async {
      final db = await AppDatabase.instance.database;
      final tables = await db.rawQuery(
        "SELECT name FROM sqlite_master WHERE type='table' AND name IN ('playlists', 'playlist_items')",
      );
      final names = tables.map((t) => t['name'] as String).toSet();
      expect(names, contains('playlists'));
      expect(names, contains('playlist_items'));
    });

    test('create, update, and get playlists with item count', () async {
      final p1 = await playlistService.createPlaylist(
        nom: 'Culte du dimanche',
        description: 'Chants d’ouverture et adoration',
      );
      expect(p1.nom, 'Culte du dimanche');
      expect(p1.description, 'Chants d’ouverture et adoration');

      final playlists = await playlistService.getPlaylists();
      expect(playlists.length, 1);
      expect(playlists.first.itemCount, 0);

      await playlistService.updatePlaylist(
        p1.copyWith(nom: 'Culte Spécial', description: 'Description modifiée'),
      );
      final updated = await playlistService.getPlaylistById(p1.id);
      expect(updated?.nom, 'Culte Spécial');
      expect(updated?.description, 'Description modifiée');
    });

    test('prevents duplicates of same song in a playlist and allows it in multiple playlists', () async {
      final p1 = await playlistService.createPlaylist(nom: 'Liste 1');
      final p2 = await playlistService.createPlaylist(nom: 'Liste 2');

      // Add cantique 1 to p1
      final added1 = await playlistService.addSongToPlaylist(
        playlistId: p1.id,
        type: PlaylistItemType.official,
        songId: 'hosanna_001',
      );
      expect(added1, isTrue);

      // Attempt duplicate addition to p1
      final addedDuplicate = await playlistService.addSongToPlaylist(
        playlistId: p1.id,
        type: PlaylistItemType.official,
        songId: 'hosanna_001',
      );
      expect(addedDuplicate, isFalse);

      // Adding the same cantique to p2 is allowed
      final addedToP2 = await playlistService.addSongToPlaylist(
        playlistId: p2.id,
        type: PlaylistItemType.official,
        songId: 'hosanna_001',
      );
      expect(addedToP2, isTrue);

      final p1Items = await playlistService.getResolvedPlaylistItems(p1.id);
      expect(p1Items.length, 1);
      expect(p1Items.first.titre, isNotNull);

      final p2Items = await playlistService.getResolvedPlaylistItems(p2.id);
      expect(p2Items.length, 1);
    });

    test('persistent drag-and-drop reordering of playlist items', () async {
      final p = await playlistService.createPlaylist(nom: 'Répétition');

      await playlistService.addSongToPlaylist(
        playlistId: p.id,
        type: PlaylistItemType.official,
        songId: 'hosanna_001',
      );
      await playlistService.addSongToPlaylist(
        playlistId: p.id,
        type: PlaylistItemType.official,
        songId: 'hosanna_002',
      );
      await playlistService.addSongToPlaylist(
        playlistId: p.id,
        type: PlaylistItemType.official,
        songId: 'hosanna_003',
      );

      var items = await playlistService.getResolvedPlaylistItems(p.id);
      expect(items.length, 3);
      expect(items[0].songId, 'hosanna_001');
      expect(items[1].songId, 'hosanna_002');
      expect(items[2].songId, 'hosanna_003');

      // Move item 0 to the end
      final reorderedIds = [items[1].id, items[2].id, items[0].id];
      await playlistService.reorderPlaylistItems(
        playlistId: p.id,
        orderedItemIds: reorderedIds,
      );

      items = await playlistService.getResolvedPlaylistItems(p.id);
      expect(items[0].songId, 'hosanna_002');
      expect(items[1].songId, 'hosanna_003');
      expect(items[2].songId, 'hosanna_001');
      expect(items[0].position, 0);
      expect(items[1].position, 1);
      expect(items[2].position, 2);
    });

    test('removing item does not delete original song', () async {
      final p = await playlistService.createPlaylist(nom: 'Adoration');
      await playlistService.addSongToPlaylist(
        playlistId: p.id,
        type: PlaylistItemType.official,
        songId: 'hosanna_001',
      );

      var items = await playlistService.getResolvedPlaylistItems(p.id);
      expect(items.length, 1);

      await playlistService.removePlaylistItem(
        playlistId: p.id,
        itemId: items.first.id,
      );

      items = await playlistService.getResolvedPlaylistItems(p.id);
      expect(items.isEmpty, isTrue);

      // Verify original cantique still exists
      final cantique = CantiqueService.instance.getCantiqueById('hosanna_001');
      expect(cantique, isNotNull);
    });

    test('deleting playlist deletes items but leaves original hymns and personal songs intact', () async {
      final p = await playlistService.createPlaylist(nom: 'À supprimer');
      final chant = ChantPersonnel(
        id: 'perso_123',
        titre: 'Mon chant perso',
        contenu: 'Paroles sacrées',
        dateCreation: DateTime.now(),
        dateModification: DateTime.now(),
      );
      await chantService.addChant(chant);

      await playlistService.addSongToPlaylist(
        playlistId: p.id,
        type: PlaylistItemType.official,
        songId: 'hosanna_001',
      );
      await playlistService.addSongToPlaylist(
        playlistId: p.id,
        type: PlaylistItemType.personal,
        songId: 'perso_123',
      );

      await playlistService.deletePlaylist(p.id);

      final pDeleted = await playlistService.getPlaylistById(p.id);
      expect(pDeleted, isNull);

      // Verify original hymns and personal songs still intact
      expect(CantiqueService.instance.getCantiqueById('hosanna_001'), isNotNull);
      expect(await chantService.getChantById('perso_123'), isNotNull);
    });

    test('deleting personal song cleans up its references from playlists automatically', () async {
      final p = await playlistService.createPlaylist(nom: 'Chorale');
      final chant = ChantPersonnel(
        id: 'perso_temp_99',
        titre: 'Chant éphémère',
        contenu: 'Paroles',
        dateCreation: DateTime.now(),
        dateModification: DateTime.now(),
      );
      await chantService.addChant(chant);

      await playlistService.addSongToPlaylist(
        playlistId: p.id,
        type: PlaylistItemType.personal,
        songId: 'perso_temp_99',
      );

      var items = await playlistService.getResolvedPlaylistItems(p.id);
      expect(items.length, 1);
      expect(items.first.songId, 'perso_temp_99');

      // Now delete the personal song
      await chantService.deleteChant('perso_temp_99');

      items = await playlistService.getResolvedPlaylistItems(p.id);
      expect(items.isEmpty, isTrue);
    });
  });

  group('Sequential Reader Navigation Widget Test', () {
    setUp(() async {
      sqfliteFfiInit();
      SharedPreferences.setMockInitialValues({});
      await AppDatabase.instance.useDatabasePathForTesting(inMemoryDatabasePath);
      await AppDatabase.instance.initialize();
      await CantiqueService.instance.loadCacheFromDatabase();
    });

    tearDown(() async {
      await AppDatabase.instance.close();
      await CantiqueService.instance.resetCacheForTesting();
    });

    testWidgets('displays playlist position banner when playlistContext is present', (tester) async {
      final cantique1 = CantiqueService.instance.getCantiqueById('hosanna_001')!;

      final playlistItems = [
        PlaylistItem(
          id: 'item_1',
          playlistId: 'pl_1',
          songType: PlaylistItemType.official,
          songId: cantique1.id,
          position: 0,
          createdAt: DateTime.now(),
          titre: cantique1.titre,
        ),
        PlaylistItem(
          id: 'item_2',
          playlistId: 'pl_1',
          songType: PlaylistItemType.official,
          songId: 'hosanna_002',
          position: 1,
          createdAt: DateTime.now(),
          titre: 'Deuxième Cantique',
        ),
      ];

      await tester.pumpWidget(
        MaterialApp(
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          locale: const Locale('fr'),
          home: CantiqueDetailPage(
            cantique: cantique1,
            playlistContext: playlistItems,
            playlistIndex: 0,
            playlistTitle: 'Culte du matin',
          ),
        ),
      );

      await tester.pump();
      await tester.pump(const Duration(milliseconds: 400));

      // Check that the playlist banner is displayed with title and position
      expect(find.text('Culte du matin'), findsWidgets);
      expect(find.text('1 / 2'), findsOneWidget);

      // Verify speed dial FAB is present and opening it reveals the add to playlist action
      expect(find.byKey(const Key('reader_speed_dial_fab')), findsOneWidget);
      await tester.tap(find.byKey(const Key('reader_speed_dial_fab')));
      await tester.pump(const Duration(milliseconds: 300));

      expect(find.byKey(const Key('reader_action_add_to_playlist')), findsOneWidget);
    });
  });
}
