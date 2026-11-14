import 'package:cantiques_boanerges/database/app_database.dart';
import 'package:cantiques_boanerges/models/chant_personnel.dart';
import 'package:cantiques_boanerges/services/chant_personnel_service.dart';
import 'package:cantiques_boanerges/services/favorite_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

void main() {
  group('ChantPersonnelService', () {
    late ChantPersonnelService chants;

    ChantPersonnel buildChant(String id, String title) {
      return ChantPersonnel(
        id: id,
        titre: title,
        contenu: 'Paroles de $title',
        dateCreation: DateTime(2026),
        dateModification: DateTime(2026),
      );
    }

    setUp(() async {
      sqfliteFfiInit();
      SharedPreferences.setMockInitialValues({});
      await AppDatabase.instance.useDatabasePathForTesting(
        inMemoryDatabasePath,
      );
      await AppDatabase.instance.initialize();
      chants = ChantPersonnelService();
    });

    tearDown(() async {
      await AppDatabase.instance.close();
    });

    test(
      'create, update and delete preserve unrelated chants and favorites',
      () async {
        final deleted = buildChant('personal_deleted', 'À supprimer');
        final preserved = buildChant('personal_preserved', 'À conserver');
        await chants.addChant(deleted);
        await chants.addChant(preserved);
        await chants.updateChant(
          deleted.copyWith(contenu: 'Paroles modifiées'),
        );

        final favorites = FavoriteService();
        await favorites.loadFavorites();
        await favorites.toggleChantPersonnelFavorite(deleted.id);
        await favorites.toggleChantPersonnelFavorite(preserved.id);

        expect(
          (await chants.getChantById(deleted.id))?.contenu,
          'Paroles modifiées',
        );

        await chants.deleteChant(deleted.id);

        final reloadedFavorites = FavoriteService();
        await reloadedFavorites.loadFavorites();
        expect(await chants.getChantById(deleted.id), isNull);
        expect(reloadedFavorites.isChantPersonnelFavorite(deleted.id), isFalse);
        expect(await chants.getChantById(preserved.id), isNotNull);
        expect(
          reloadedFavorites.isChantPersonnelFavorite(preserved.id),
          isTrue,
        );
      },
    );

    test(
      'delete rolls back favorite cleanup when chant deletion fails',
      () async {
        final protected = buildChant('personal_protected', 'Protégé');
        await chants.addChant(protected);

        final favorites = FavoriteService();
        await favorites.loadFavorites();
        await favorites.toggleChantPersonnelFavorite(protected.id);

        final db = await AppDatabase.instance.database;
        await db.execute('''
        CREATE TRIGGER reject_personal_delete
        BEFORE DELETE ON chants_personnels
        WHEN OLD.id = 'personal_protected'
        BEGIN
          SELECT RAISE(ABORT, 'forced delete failure');
        END
      ''');

        await expectLater(
          chants.deleteChant(protected.id),
          throwsA(isA<DatabaseException>()),
        );

        final reloadedFavorites = FavoriteService();
        await reloadedFavorites.loadFavorites();
        expect(await chants.getChantById(protected.id), isNotNull);
        expect(
          reloadedFavorites.isChantPersonnelFavorite(protected.id),
          isTrue,
        );
      },
    );

    test(
      'updating a missing chant fails without changing existing data',
      () async {
        final existing = buildChant('personal_existing', 'Existant');
        await chants.addChant(existing);

        await expectLater(
          chants.updateChant(buildChant('missing', 'Introuvable')),
          throwsException,
        );

        expect((await chants.getAllChants()).single.id, existing.id);
      },
    );
  });
}
