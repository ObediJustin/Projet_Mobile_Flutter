import 'package:flutter_test/flutter_test.dart';
import 'package:projet1_tp/database/app_database.dart';
import 'package:projet1_tp/models/chant_personnel.dart';
import 'package:projet1_tp/services/cantique_service.dart';
import 'package:projet1_tp/services/chant_personnel_service.dart';
import 'package:projet1_tp/services/favorite_service.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

void main() {
  group('SQLite data layer', () {
    setUp(() async {
      sqfliteFfiInit();
      SharedPreferences.setMockInitialValues({});
      await AppDatabase.instance.useDatabasePathForTesting(inMemoryDatabasePath);
      await AppDatabase.instance.initialize();
      await CantiqueService.loadCacheFromDatabase();
    });

    tearDown(() async {
      await AppDatabase.instance.close();
    });

    test('creates and reads seeded collections', () async {
      final db = AppDatabase.instance;

      final collections = await db.getCollections();
      final hosanna = await db.getCollectionById('hosanna');

      expect(collections.map((c) => c.id), contains('hosanna'));
      expect(hosanna?.name, 'Hosanna');
    });

    test('gets cantiques by collection', () async {
      final db = AppDatabase.instance;

      final cantiques = await db.getCantiques(collectionId: 'hosanna');

      expect(cantiques, isNotEmpty);
      expect(cantiques.every((c) => c.collectionId == 'hosanna'), isTrue);
    });

    test('gets cantiques by id and preserves local numeros', () async {
      final service = CantiqueService();

      final hosanna = service.getCantiqueById('hosanna_001');
      final boanerges = service.getCantiqueById('boanerges_tabernacle_001');

      expect(hosanna?.numero, 1);
      expect(boanerges?.numero, 1);
      expect(hosanna?.id, isNot(boanerges?.id));
    });

    test('searches cantiques in SQLite fields', () async {
      final results = await AppDatabase.instance.searchCantiques('Paul');

      expect(results.map((c) => c.id), contains('only_believe_001'));
    });

    test('personal chant CRUD works through SQLite', () async {
      final service = ChantPersonnelService();
      final chant = ChantPersonnel(
        id: 'personal_001',
        titre: 'Mon chant',
        contenu: 'Paroles initiales',
        dateCreation: DateTime(2026),
        dateModification: DateTime(2026),
      );

      await service.addChant(chant);
      expect((await service.getAllChants()).single.titre, 'Mon chant');

      await service.updateChant(chant.copyWith(contenu: 'Paroles modifiees'));
      expect(
        (await service.getChantById('personal_001'))?.contenu,
        'Paroles modifiees',
      );

      await service.deleteChant('personal_001');
      expect(await service.getChantById('personal_001'), isNull);
    });

    test('favorites persist and do not collide by type', () async {
      final service = FavoriteService();
      await service.loadFavorites();
      await service.toggleCantiqueFavorite('hosanna_001');
      await service.toggleChantPersonnelFavorite('hosanna_001');

      final reloaded = FavoriteService();
      await reloaded.loadFavorites();

      expect(reloaded.isCantiqueFavorite('hosanna_001'), isTrue);
      expect(reloaded.isChantPersonnelFavorite('hosanna_001'), isTrue);
    });

    test('critical numero 1 scenario supports independent favorites', () async {
      final favorites = FavoriteService();
      await favorites.loadFavorites();
      await favorites.toggleCantiqueFavorite('hosanna_001');
      await favorites.toggleCantiqueFavorite('boanerges_tabernacle_001');

      expect(favorites.getFavoriteCantiqueIds(), contains('hosanna_001'));
      expect(
        favorites.getFavoriteCantiqueIds(),
        contains('boanerges_tabernacle_001'),
      );

      await favorites.toggleCantiqueFavorite('hosanna_001');
      expect(favorites.isCantiqueFavorite('hosanna_001'), isFalse);
      expect(
        favorites.isCantiqueFavorite('boanerges_tabernacle_001'),
        isTrue,
      );
    });
  });
}
