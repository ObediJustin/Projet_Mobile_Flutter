import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:projet1_tp/database/app_database.dart';
import 'package:projet1_tp/models/chant_personnel.dart';
import 'package:projet1_tp/services/cantique_service.dart';
import 'package:projet1_tp/services/chant_personnel_service.dart';
import 'package:projet1_tp/services/favorite_service.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

void main() {
  group('FavoriteService', () {
    late FavoriteService service;

    setUp(() async {
      sqfliteFfiInit();
      SharedPreferences.setMockInitialValues({});
      await AppDatabase.instance.useDatabasePathForTesting(inMemoryDatabasePath);
      await AppDatabase.instance.initialize();
      await CantiqueService.loadCacheFromDatabase();
      service = FavoriteService();
    });

    test('a cantique can be added to favorites', () async {
      await service.loadFavorites();
      await service.toggleCantiqueFavorite('hosanna_001');

      expect(service.isCantiqueFavorite('hosanna_001'), isTrue);
      expect(service.getFavoriteCantiqueIds(), contains('hosanna_001'));
    });

    test('a cantique can be removed from favorites', () async {
      await service.loadFavorites();
      await service.toggleCantiqueFavorite('hosanna_001');
      await service.toggleCantiqueFavorite('hosanna_001');

      expect(service.isCantiqueFavorite('hosanna_001'), isFalse);
      expect(service.getFavoriteCantiqueIds(), isEmpty);
    });

    test('a personal chant can be added to favorites', () async {
      await service.loadFavorites();
      await service.toggleChantPersonnelFavorite('001');

      expect(service.isChantPersonnelFavorite('001'), isTrue);
      expect(service.getFavoriteChantPersonnelIds(), contains('001'));
    });

    test('a personal chant can be removed from favorites', () async {
      await service.loadFavorites();
      await service.toggleChantPersonnelFavorite('001');
      await service.toggleChantPersonnelFavorite('001');

      expect(service.isChantPersonnelFavorite('001'), isFalse);
      expect(service.getFavoriteChantPersonnelIds(), isEmpty);
    });

    test('raw ids do not collide between cantiques and personal chants',
        () async {
      await service.loadFavorites();
      await service.toggleCantiqueFavorite('001');
      await service.toggleChantPersonnelFavorite('001');

      expect(service.isCantiqueFavorite('001'), isTrue);
      expect(service.isChantPersonnelFavorite('001'), isTrue);
      expect(service.getFavoriteCantiqueIds(), ['001']);
      expect(service.getFavoriteChantPersonnelIds(), ['001']);
    });

    test('two cantiques with numero 1 can be favorites simultaneously',
        () async {
      final cantiqueService = CantiqueService();
      await service.loadFavorites();
      await service.toggleCantiqueFavorite('hosanna_001');
      await service.toggleCantiqueFavorite('boanerges_tabernacle_001');

      final favorites = service.getFavoriteCantiques(cantiqueService);

      expect(favorites.map((c) => c.id), contains('hosanna_001'));
      expect(
        favorites.map((c) => c.id),
        contains('boanerges_tabernacle_001'),
      );
      expect(favorites.where((c) => c.numero == 1), hasLength(2));
    });

    test('favorites are persistent', () async {
      await service.loadFavorites();
      await service.toggleCantiqueFavorite('hosanna_001');
      await service.toggleChantPersonnelFavorite('personal_001');

      final reloaded = FavoriteService();
      await reloaded.loadFavorites();

      expect(reloaded.isCantiqueFavorite('hosanna_001'), isTrue);
      expect(reloaded.isChantPersonnelFavorite('personal_001'), isTrue);
    });

    test('an unknown favorite id does not crash resolution', () async {
      SharedPreferences.setMockInitialValues({
        FavoriteService.favoritesKey: jsonEncode([
          'cantique:missing',
          'personnel:missing',
        ]),
      });

      await service.loadFavorites();

      expect(service.getFavoriteCantiques(CantiqueService()), isEmpty);
      expect(
        await service.getFavoriteChantsPersonnels(ChantPersonnelService()),
        isEmpty,
      );
    });

    test('legacy raw cantique ids are migrated to typed references', () async {
      await AppDatabase.instance.close();
      SharedPreferences.setMockInitialValues({
        FavoriteService.favoritesKey: jsonEncode(['3']),
      });
      await AppDatabase.instance.useDatabasePathForTesting(inMemoryDatabasePath);
      await AppDatabase.instance.initialize();
      await CantiqueService.loadCacheFromDatabase();

      await service.loadFavorites();

      expect(service.isCantiqueFavorite('hosanna_001'), isTrue);
      expect(service.getFavoriteCantiqueIds(), ['hosanna_001']);
    });

    test('legacy raw personal chant ids are migrated to typed references',
        () async {
      await AppDatabase.instance.close();
      SharedPreferences.setMockInitialValues({
        FavoriteService.favoritesKey: jsonEncode(['personal_001']),
      });
      await AppDatabase.instance.useDatabasePathForTesting(inMemoryDatabasePath);
      await AppDatabase.instance.initialize();
      await CantiqueService.loadCacheFromDatabase();

      await service.loadFavorites();

      expect(service.isChantPersonnelFavorite('personal_001'), isTrue);
      expect(service.getFavoriteChantPersonnelIds(), ['personal_001']);
    });

    test('personal favorite objects can be resolved', () async {
      final chant = ChantPersonnel(
        id: 'personal_001',
        titre: 'Mon chant',
        contenu: 'Paroles',
        dateCreation: DateTime(2026),
        dateModification: DateTime(2026),
      );
      await AppDatabase.instance.close();
      SharedPreferences.setMockInitialValues({
        FavoriteService.favoritesKey: jsonEncode(['personnel:personal_001']),
        'chants_personnels': jsonEncode([chant.toJson()]),
      });
      await AppDatabase.instance.useDatabasePathForTesting(inMemoryDatabasePath);
      await AppDatabase.instance.initialize();
      await CantiqueService.loadCacheFromDatabase();

      await service.loadFavorites();
      final favorites = await service.getFavoriteChantsPersonnels(
        ChantPersonnelService(),
      );

      expect(favorites.single.id, 'personal_001');
    });
  });
}
