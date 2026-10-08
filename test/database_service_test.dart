import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:flutter_test/flutter_test.dart';
import 'package:cantiques_boanerges/database/app_database.dart';
import 'package:cantiques_boanerges/models/cantique.dart';
import 'package:cantiques_boanerges/models/chant_personnel.dart';
import 'package:cantiques_boanerges/models/collection.dart';
import 'package:cantiques_boanerges/services/cantique_service.dart';
import 'package:cantiques_boanerges/services/chant_personnel_service.dart';
import 'package:cantiques_boanerges/services/favorite_service.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

void main() {
  group('SQLite data layer', () {
    setUp(() async {
      sqfliteFfiInit();
      SharedPreferences.setMockInitialValues({});
      await AppDatabase.instance.useDatabasePathForTesting(
        inMemoryDatabasePath,
      );
      await AppDatabase.instance.initialize();
      await CantiqueService.instance.loadCacheFromDatabase();
    });

    tearDown(() async {
      await AppDatabase.instance.close();
      await CantiqueService.instance.resetCacheForTesting();
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
      final service = CantiqueService.instance;

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

    test(
      'allows same numero in two collections and allows variant cantiques in one collection',
      () async {
        final db = AppDatabase.instance;
        final now = DateTime(2026);

        await db.insertCollection(
          CantiqueCollection(
            id: 'collection_a',
            name: 'Collection A',
            createdAt: now,
            updatedAt: now,
          ),
        );
        await db.insertCollection(
          CantiqueCollection(
            id: 'collection_b',
            name: 'Collection B',
            createdAt: now,
            updatedAt: now,
          ),
        );

        await db.insertCantique(
          Cantique(
            id: 'collection_a_001',
            titre: 'Chant A',
            collectionId: 'collection_a',
            collection: 'Collection A',
            contenu: 'Paroles A',
            numero: 1,
          ),
        );
        await db.insertCantique(
          Cantique(
            id: 'collection_b_001',
            titre: 'Chant B',
            collectionId: 'collection_b',
            collection: 'Collection B',
            contenu: 'Paroles B',
            numero: 1,
          ),
        );

        await db.insertCantique(
          Cantique(
            id: 'collection_a_001b',
            titre: 'Chant A Variante',
            collectionId: 'collection_a',
            collection: 'Collection A',
            contenu: 'Paroles A Variante',
            numero: 1,
          ),
        );

        expect(
          await db.getCantiques(collectionId: 'collection_a'),
          hasLength(2),
        );
        expect(
          await db.getCantiques(collectionId: 'collection_b'),
          hasLength(1),
        );
      },
    );

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

    test('personal chants preserve unicode and multiline lyrics', () async {
      final service = ChantPersonnelService();
      const contenu = 'Grâce à Jésus\nNeno la wokovu\nœuvre, été, ça';
      final chant = ChantPersonnel(
        id: 'unicode_001',
        titre: 'Écho du cœur',
        contenu: contenu,
        auteur: 'François',
        dateCreation: DateTime(2026),
        dateModification: DateTime(2026),
      );

      await service.addChant(chant);

      final saved = await service.getChantById('unicode_001');
      expect(saved?.titre, 'Écho du cœur');
      expect(saved?.auteur, 'François');
      expect(saved?.contenu, contenu);
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
      expect(favorites.isCantiqueFavorite('boanerges_tabernacle_001'), isTrue);
    });

    test('data persists after closing and reopening a test database', () async {
      final tempDir = await Directory.systemTemp.createTemp(
        'cantiques_db_test',
      );
      final dbPath = p.join(tempDir.path, 'restart_test.db');
      final chant = ChantPersonnel(
        id: 'restart_001',
        titre: 'Persistant',
        contenu: 'Encore là',
        dateCreation: DateTime(2026),
        dateModification: DateTime(2026),
      );

      try {
        await AppDatabase.instance.useDatabasePathForTesting(dbPath);
        await AppDatabase.instance.initialize();
        await CantiqueService.instance.loadCacheFromDatabase();

        await ChantPersonnelService().addChant(chant);
        final favorites = FavoriteService();
        await favorites.loadFavorites();
        await favorites.toggleCantiqueFavorite('hosanna_001');

        await AppDatabase.instance.close();
        await AppDatabase.instance.useDatabasePathForTesting(dbPath);
        await AppDatabase.instance.initialize();
        await CantiqueService.instance.loadCacheFromDatabase();

        expect(
          await ChantPersonnelService().getChantById('restart_001'),
          isNotNull,
        );

        final reloadedFavorites = FavoriteService();
        await reloadedFavorites.loadFavorites();
        expect(reloadedFavorites.isCantiqueFavorite('hosanna_001'), isTrue);
      } finally {
        await AppDatabase.instance.close();
        if (await tempDir.exists()) {
          await tempDir.delete(recursive: true);
        }
      }
    });

    test(
      'Cas 1: Base SQLite vide + JSON -> toutes les données officielles sont correctement présentées',
      () async {
        final collections = await AppDatabase.instance.getCollections();
        final cantiques = await AppDatabase.instance.getCantiques();

        expect(collections, isNotEmpty);
        expect(cantiques, isNotEmpty);
        expect(collections.map((c) => c.id), contains('crois_seulement'));
        expect(cantiques.map((c) => c.id), contains('crois_seulement_001'));
      },
    );

    test(
      'Cas 2 & 3: Synchronisation des nouvelles collections et cantiques modifiés dans SQLite',
      () async {
        final tempDir = await Directory.systemTemp.createTemp(
          'cantiques_db_sync',
        );
        final dbPath = p.join(tempDir.path, 'sync_test.db');

        try {
          await AppDatabase.instance.useDatabasePathForTesting(dbPath);
          await AppDatabase.instance.initialize();

          final db = await AppDatabase.instance.database;

          // Simulation d'une nouvelle collection insérée manuellement avant ré-exécution du sync
          final now = DateTime(2026).toIso8601String();
          await db.insert('collections', {
            'id': 'test_collection',
            'name': 'Test Collection',
            'description': 'Collection de test',
            'created_at': now,
            'updated_at': now,
          });

          await db.insert('cantiques', {
            'id': 'crois_seulement_001',
            'collection_id': 'crois_seulement',
            'numero': 1,
            'titre': 'Ancien Titre',
            'auteur': 'Ancien Auteur',
            'paroles': 'Anciennes paroles',
            'created_at': now,
            'updated_at': now,
          }, conflictAlgorithm: ConflictAlgorithm.replace);

          // Déclencher la synchronisation des données officielles
          await AppDatabase.instance.syncOfficialData();

          // Cas 3: Le cantique officiel 'crois_seulement_001' a été mis à jour avec le titre issu du JSON
          final updatedCantique = await AppDatabase.instance.getCantiqueById(
            'crois_seulement_001',
          );
          expect(updatedCantique?.titre, 'Crois seulement');

          // Cas 2: Les collections existantes sont conservées/synchronisées
          final collections = await AppDatabase.instance.getCollections();
          expect(collections.map((c) => c.id), contains('crois_seulement'));
        } finally {
          await AppDatabase.instance.close();
          if (await tempDir.exists()) {
            await tempDir.delete(recursive: true);
          }
        }
      },
    );

    test(
      'Cas 4: Synchronisation préserve intactes toutes les données utilisateur (chants personnels, favoris, récents)',
      () async {
        final tempDir = await Directory.systemTemp.createTemp(
          'cantiques_user_data',
        );
        final dbPath = p.join(tempDir.path, 'user_data.db');

        try {
          await AppDatabase.instance.useDatabasePathForTesting(dbPath);
          await AppDatabase.instance.initialize();

          // 1. Créer des données utilisateur
          final chantService = ChantPersonnelService();
          await chantService.addChant(
            ChantPersonnel(
              id: 'user_chant_001',
              titre: 'Chant Personnel Utilisateur',
              contenu: 'Paroles personnelles',
              dateCreation: DateTime(2026),
              dateModification: DateTime(2026),
            ),
          );

          final favoriteService = FavoriteService();
          await favoriteService.loadFavorites();
          await favoriteService.toggleCantiqueFavorite('crois_seulement_001');

          await AppDatabase.instance.recordRecentlyViewedCantique(
            'crois_seulement_001',
          );

          // 2. Exécuter la synchronisation plusieurs fois
          await AppDatabase.instance.syncOfficialData();
          await AppDatabase.instance.syncOfficialData();

          // 3. Vérifier que toutes les données utilisateur sont intactes
          final userChant = await chantService.getChantById('user_chant_001');
          expect(userChant, isNotNull);
          expect(userChant?.titre, 'Chant Personnel Utilisateur');

          final reloadedFavorites = FavoriteService();
          await reloadedFavorites.loadFavorites();
          expect(
            reloadedFavorites.isCantiqueFavorite('crois_seulement_001'),
            isTrue,
          );

          final recents = await AppDatabase.instance
              .getRecentlyViewedCantiques();
          expect(recents.map((c) => c.id), contains('crois_seulement_001'));
        } finally {
          await AppDatabase.instance.close();
          if (await tempDir.exists()) {
            await tempDir.delete(recursive: true);
          }
        }
      },
    );

    test(
      'Prompt 3 - Test 1 & 2: Même numéro 1 et 116 dans deux collections différentes sans conflit',
      () async {
        final hosanna1 = await AppDatabase.instance.getCantiqueById(
          'hosanna_001',
        );
        final crois1 = await AppDatabase.instance.getCantiqueById(
          'crois_seulement_001',
        );

        expect(hosanna1?.numero, 1);
        expect(crois1?.numero, 1);
        expect(hosanna1?.id, isNot(crois1?.id));
      },
    );

    test(
      'Prompt 3 - Test 3 & 7: Coexistence de 116a et 116b dans la même collection sans écrasement silencieux',
      () async {
        final cantique116a = await AppDatabase.instance.getCantiqueById(
          'petit_troupeau_116a',
        );
        final cantique116b = await AppDatabase.instance.getCantiqueById(
          'petit_troupeau_116b',
        );

        expect(cantique116a, isNotNull);
        expect(cantique116b, isNotNull);
        expect(cantique116a?.numero, 116);
        expect(cantique116b?.numero, 116);
        expect(cantique116a?.titre, 'CHANTONS DU SAUVEUR LA TENDRESSE');
        expect(cantique116b?.titre, 'BENISSONS DIEU PAR NOS CANTIQUES');
      },
    );

    test(
      'Prompt 3 - Test 4 & 5 & 9: Correction de titre ou de paroles conserve l ID et préserve les favoris',
      () async {
        final tempDir = await Directory.systemTemp.createTemp(
          'cantiques_db_id_stability',
        );
        final dbPath = p.join(tempDir.path, 'stability_test.db');

        try {
          await AppDatabase.instance.useDatabasePathForTesting(dbPath);
          await AppDatabase.instance.initialize();

          // 1. Ajouter 'crois_seulement_001' aux favoris
          final favoriteService = FavoriteService();
          await favoriteService.loadFavorites();
          await favoriteService.toggleCantiqueFavorite('crois_seulement_001');
          expect(
            favoriteService.isCantiqueFavorite('crois_seulement_001'),
            isTrue,
          );

          // 2. Modifier le titre et paroles dans la DB pour simuler une correction
          final db = await AppDatabase.instance.database;
          await db.update(
            'cantiques',
            {
              'titre': 'Nouveau Titre Corrige',
              'paroles': 'Nouvelles Paroles Corrigees',
            },
            where: 'id = ?',
            whereArgs: ['crois_seulement_001'],
          );

          // 3. Vérifier que l'ID est identique et que le favori pointe toujours vers ce cantique
          final reloadedCantique = await AppDatabase.instance.getCantiqueById(
            'crois_seulement_001',
          );
          expect(reloadedCantique?.id, 'crois_seulement_001');
          expect(reloadedCantique?.titre, 'Nouveau Titre Corrige');
          expect(reloadedCantique?.contenu, 'Nouvelles Paroles Corrigees');

          final reloadedFavorites = FavoriteService();
          await reloadedFavorites.loadFavorites();
          expect(
            reloadedFavorites.isCantiqueFavorite('crois_seulement_001'),
            isTrue,
          );
        } finally {
          await AppDatabase.instance.close();
          if (await tempDir.exists()) {
            await tempDir.delete(recursive: true);
          }
        }
      },
    );

    test(
      'Prompt 3 - Test 6 & 8: Multiples synchronisations idempotentes sans doublons d IDs',
      () async {
        await AppDatabase.instance.syncOfficialData();
        await AppDatabase.instance.syncOfficialData();
        await AppDatabase.instance.syncOfficialData();

        final cantiques = await AppDatabase.instance.getCantiques();
        final ids = cantiques.map((c) => c.id).toList();

        expect(ids.length, equals(ids.toSet().length));
      },
    );
  });
}
