import 'dart:convert';

import 'package:path/path.dart' as p;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';

import '../models/cantique.dart';
import '../models/chant_personnel.dart';
import '../models/collection.dart';
import 'database_platform.dart';
import 'initial_data.dart';

class AppDatabase {
  static const String databaseName = 'cantiques_du_message.db';
  static const int schemaVersion = 1;
  static const String favoritesMigrationKey = 'favorites_sqlite_migrated_v1';
  static const String chantsMigrationKey =
      'chants_personnels_sqlite_migrated_v1';
  static const String favoriteCantiqueType = 'cantique';
  static const String favoriteChantPersonnelType = 'personnel';

  static const Map<String, String> legacyCantiqueIdMigration = {
    '1': 'crois_seulement_001',
    '2': 'only_believe_001',
    '3': 'hosanna_001',
  };

  AppDatabase._();

  static final AppDatabase instance = AppDatabase._();

  Database? _database;
  String? _databasePathOverride;
  bool _useMemoryStore = false;
  bool _memoryInitialized = false;
  List<CantiqueCollection> _memoryCollections = [];
  List<Cantique> _memoryCantiques = [];
  final Map<String, ChantPersonnel> _memoryChants = {};
  final Set<String> _memoryFavoriteRefs = {};

  Future<Database> get database async {
    if (_useMemoryStore || shouldUseMemoryDatabase) {
      throw UnsupportedError('SQLite indisponible sur cette plateforme');
    }
    if (_database != null) return _database!;
    _database = await _open();
    return _database!;
  }

  Future<void> initialize() async {
    if (shouldUseMemoryDatabase) {
      _useMemoryStore = true;
      await _initializeMemoryStore();
      return;
    }

    await database;
  }

  Future<Database> _open() async {
    configureDatabaseFactory();

    final dbPath = await getDatabasesPath();
    final path = _databasePathOverride ?? p.join(dbPath, databaseName);

    return openDatabase(
      path,
      version: schemaVersion,
      onConfigure: (db) async {
        await db.execute('PRAGMA foreign_keys = ON');
      },
      onCreate: (db, version) async {
        await _createSchema(db);
      },
      onOpen: (db) async {
        await _seedInitialData(db);
        await _migrateFavoritesFromSharedPreferences(db);
        await _migrateChantsPersonnelsFromSharedPreferences(db);
      },
      onUpgrade: (db, oldVersion, newVersion) async {
        for (var version = oldVersion + 1; version <= newVersion; version++) {
          await _migrateToVersion(db, version);
        }
      },
    );
  }

  Future<void> close() async {
    final db = _database;
    if (db != null) await db.close();
    _database = null;
  }

  Future<void> useDatabasePathForTesting(String path) async {
    await close();
    _databasePathOverride = path;
    _useMemoryStore = false;
    _memoryInitialized = false;
    _memoryCollections = [];
    _memoryCantiques = [];
    _memoryChants.clear();
    _memoryFavoriteRefs.clear();
  }

  Future<void> _initializeMemoryStore() async {
    if (_memoryInitialized) return;

    _memoryCollections = List<CantiqueCollection>.of(initialCollections);
    _memoryCantiques = List<Cantique>.of(initialCantiques);

    final prefs = await SharedPreferences.getInstance();
    final rawFavorites = prefs.getString('favorites');
    if (rawFavorites != null && rawFavorites.isNotEmpty) {
      final decoded = jsonDecode(rawFavorites) as List<dynamic>;
      for (final value in decoded.whereType<String>()) {
        final ref = _parseFavoriteRef(value);
        _memoryFavoriteRefs.add(_favoriteKey(ref.type, ref.id));
      }
    }

    final rawChants = prefs.getString('chants_personnels');
    if (rawChants != null && rawChants.isNotEmpty) {
      final decoded = jsonDecode(rawChants) as List<dynamic>;
      for (final row in decoded.whereType<Map>()) {
        final chant = _legacyChantPersonnelFromJson(
          Map<String, dynamic>.from(row),
        );
        _memoryChants[chant.id] = chant;
      }
    }

    _memoryInitialized = true;
  }

  Future<void> _persistMemoryFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('favorites', jsonEncode(_memoryFavoriteRefs.toList()));
  }

  Future<void> _persistMemoryChants() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(
      'chants_personnels',
      jsonEncode(_memoryChants.values.map((chant) => chant.toJson()).toList()),
    );
  }

  String _favoriteKey(String type, String id) => '$type:$id';

  Cantique _withCollectionName(Cantique cantique) {
    final collection = _memoryCollections.where(
      (item) => item.id == cantique.collectionId,
    );
    if (collection.isEmpty) return cantique;
    return Cantique(
      id: cantique.id,
      titre: cantique.titre,
      collectionId: cantique.collectionId,
      collection: collection.first.name,
      contenu: cantique.contenu,
      numero: cantique.numero,
      auteur: cantique.auteur,
    );
  }

  Future<void> _createSchema(Database db) async {
    await db.execute('''
      CREATE TABLE collections (
        id TEXT PRIMARY KEY,
        name TEXT NOT NULL,
        description TEXT NOT NULL DEFAULT '',
        image TEXT,
        created_at TEXT NOT NULL,
        updated_at TEXT NOT NULL
      )
    ''');

    await db.execute('''
      CREATE TABLE cantiques (
        id TEXT PRIMARY KEY,
        collection_id TEXT NOT NULL,
        numero INTEGER NOT NULL,
        titre TEXT NOT NULL,
        auteur TEXT,
        paroles TEXT NOT NULL,
        created_at TEXT NOT NULL,
        updated_at TEXT NOT NULL,
        FOREIGN KEY (collection_id) REFERENCES collections(id)
          ON UPDATE CASCADE
          ON DELETE RESTRICT,
        UNIQUE(collection_id, numero)
      )
    ''');

    await db.execute('''
      CREATE TABLE chants_personnels (
        id TEXT PRIMARY KEY,
        titre TEXT NOT NULL,
        auteur TEXT,
        paroles TEXT NOT NULL,
        created_at TEXT NOT NULL,
        updated_at TEXT NOT NULL
      )
    ''');

    await db.execute('''
      CREATE TABLE favorites (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        item_type TEXT NOT NULL,
        item_id TEXT NOT NULL,
        created_at TEXT NOT NULL,
        UNIQUE(item_type, item_id)
      )
    ''');

    await db.execute(
      'CREATE INDEX idx_cantiques_collection_id ON cantiques(collection_id)',
    );
    await db.execute('CREATE INDEX idx_cantiques_numero ON cantiques(numero)');
    await db.execute('CREATE INDEX idx_cantiques_titre ON cantiques(titre)');
    await db.execute(
      'CREATE INDEX idx_favorites_item_type ON favorites(item_type)',
    );
    await db.execute(
      'CREATE INDEX idx_favorites_item_id ON favorites(item_id)',
    );
  }

  Future<void> _migrateToVersion(Database db, int version) async {
    switch (version) {
      default:
        throw UnsupportedError('Migration SQLite inconnue: v$version');
    }
  }

  Future<void> _seedInitialData(Database db) async {
    final now = initialDataTimestamp.toIso8601String();
    await db.transaction((txn) async {
      final batch = txn.batch();

      for (final collection in initialCollections) {
        batch.insert(
          'collections',
          collection.toMap(),
          conflictAlgorithm: ConflictAlgorithm.ignore,
        );
      }

      for (final cantique in initialCantiques) {
        batch.insert('cantiques', {
          ...cantique.toMap(),
          'created_at': now,
          'updated_at': now,
        }, conflictAlgorithm: ConflictAlgorithm.ignore);
      }

      await batch.commit(noResult: true);
    });
  }

  Future<void> _migrateFavoritesFromSharedPreferences(Database db) async {
    final prefs = await SharedPreferences.getInstance();
    if (prefs.getBool(favoritesMigrationKey) == true) return;

    final raw = prefs.getString('favorites');
    if (raw == null || raw.isEmpty) {
      await prefs.setBool(favoritesMigrationKey, true);
      return;
    }

    final decoded = jsonDecode(raw) as List<dynamic>;
    final now = DateTime.now().toIso8601String();

    await db.transaction((txn) async {
      for (final value in decoded.whereType<String>()) {
        final ref = _parseFavoriteRef(value);
        await txn.insert('favorites', {
          'item_type': ref.type,
          'item_id': ref.id,
          'created_at': now,
        }, conflictAlgorithm: ConflictAlgorithm.ignore);
      }
    });

    await prefs.setBool(favoritesMigrationKey, true);
  }

  Future<void> _migrateChantsPersonnelsFromSharedPreferences(
    Database db,
  ) async {
    final prefs = await SharedPreferences.getInstance();
    if (prefs.getBool(chantsMigrationKey) == true) return;

    final raw = prefs.getString('chants_personnels');
    if (raw == null || raw.isEmpty) {
      await prefs.setBool(chantsMigrationKey, true);
      return;
    }

    final decoded = jsonDecode(raw) as List<dynamic>;
    await db.transaction((txn) async {
      for (final row in decoded.whereType<Map>()) {
        final chant = _legacyChantPersonnelFromJson(
          Map<String, dynamic>.from(row),
        );
        await txn.insert(
          'chants_personnels',
          chant.toMap(),
          conflictAlgorithm: ConflictAlgorithm.ignore,
        );
      }
    });

    await prefs.setBool(chantsMigrationKey, true);
  }

  _FavoriteRef _parseFavoriteRef(String value) {
    if (value.startsWith('$favoriteCantiqueType:')) {
      final id = value.substring(favoriteCantiqueType.length + 1);
      return _FavoriteRef(favoriteCantiqueType, normalizeLegacyCantiqueId(id));
    }

    if (value.startsWith('$favoriteChantPersonnelType:')) {
      return _FavoriteRef(
        favoriteChantPersonnelType,
        value.substring(favoriteChantPersonnelType.length + 1),
      );
    }

    final cantiqueId = normalizeLegacyCantiqueId(value);
    if (initialCantiques.any((cantique) => cantique.id == cantiqueId)) {
      return _FavoriteRef(favoriteCantiqueType, cantiqueId);
    }

    return _FavoriteRef(favoriteChantPersonnelType, value);
  }

  static String normalizeLegacyCantiqueId(String id) {
    return legacyCantiqueIdMigration[id] ?? id;
  }

  ChantPersonnel _legacyChantPersonnelFromJson(Map<String, dynamic> json) {
    return ChantPersonnel.fromJson(json);
  }

  Future<List<CantiqueCollection>> getCollections() async {
    if (_useMemoryStore) {
      final rows = List<CantiqueCollection>.of(_memoryCollections);
      rows.sort((a, b) => a.name.toLowerCase().compareTo(b.name.toLowerCase()));
      return rows;
    }

    final db = await database;
    final rows = await db.query('collections', orderBy: 'name COLLATE NOCASE');
    return rows.map(CantiqueCollection.fromMap).toList();
  }

  Future<void> insertCollection(CantiqueCollection collection) async {
    if (_useMemoryStore) {
      if (_memoryCollections.any((item) => item.id == collection.id)) {
        throw StateError('Collection deja existante: ${collection.id}');
      }
      _memoryCollections.add(collection);
      return;
    }

    final db = await database;
    await db.insert(
      'collections',
      collection.toMap(),
      conflictAlgorithm: ConflictAlgorithm.abort,
    );
  }

  Future<CantiqueCollection?> getCollectionById(String id) async {
    if (_useMemoryStore) {
      for (final collection in _memoryCollections) {
        if (collection.id == id) return collection;
      }
      return null;
    }

    final db = await database;
    final rows = await db.query(
      'collections',
      where: 'id = ?',
      whereArgs: [id],
      limit: 1,
    );
    if (rows.isEmpty) return null;
    return CantiqueCollection.fromMap(rows.first);
  }

  Future<List<Cantique>> getCantiques({String? collectionId}) async {
    if (_useMemoryStore) {
      final rows = _memoryCantiques
          .where(
            (cantique) =>
                collectionId == null || cantique.collectionId == collectionId,
          )
          .map(_withCollectionName)
          .toList();
      rows.sort((a, b) {
        final collectionCompare = a.collection.toLowerCase().compareTo(
          b.collection.toLowerCase(),
        );
        if (collectionCompare != 0) return collectionCompare;
        return a.numero.compareTo(b.numero);
      });
      return rows;
    }

    final db = await database;
    final rows = await db.rawQuery('''
      SELECT c.*, collections.name AS collection
      FROM cantiques c
      INNER JOIN collections ON collections.id = c.collection_id
      ${collectionId == null ? '' : 'WHERE c.collection_id = ?'}
      ORDER BY collections.name COLLATE NOCASE, c.numero
      ''', collectionId == null ? null : [collectionId]);
    return rows.map(Cantique.fromMap).toList();
  }

  Future<void> insertCantique(Cantique cantique) async {
    if (_useMemoryStore) {
      if (_memoryCantiques.any((item) => item.id == cantique.id)) {
        throw StateError('Cantique deja existant: ${cantique.id}');
      }
      final duplicateNumber = _memoryCantiques.any(
        (item) =>
            item.collectionId == cantique.collectionId &&
            item.numero == cantique.numero,
      );
      if (duplicateNumber) {
        throw StateError(
          'Numero deja utilise dans la collection: ${cantique.numero}',
        );
      }
      _memoryCantiques.add(cantique);
      return;
    }

    final db = await database;
    await db.insert('cantiques', {
      ...cantique.toMap(),
      'created_at': DateTime.now().toIso8601String(),
      'updated_at': DateTime.now().toIso8601String(),
    }, conflictAlgorithm: ConflictAlgorithm.abort);
  }

  Future<Cantique?> getCantiqueById(String id) async {
    if (_useMemoryStore) {
      final normalizedId = normalizeLegacyCantiqueId(id);
      for (final cantique in _memoryCantiques) {
        if (cantique.id == normalizedId) return _withCollectionName(cantique);
      }
      return null;
    }

    final db = await database;
    final rows = await db.rawQuery(
      '''
      SELECT c.*, collections.name AS collection
      FROM cantiques c
      INNER JOIN collections ON collections.id = c.collection_id
      WHERE c.id = ?
      LIMIT 1
      ''',
      [normalizeLegacyCantiqueId(id)],
    );
    if (rows.isEmpty) return null;
    return Cantique.fromMap(rows.first);
  }

  Future<List<Cantique>> searchCantiques(String query) async {
    final q = query.trim();
    if (q.isEmpty) return [];

    if (_useMemoryStore) {
      final needle = q.toLowerCase();
      final rows = _memoryCantiques
          .where(
            (cantique) =>
                cantique.titre.toLowerCase().contains(needle) ||
                (cantique.auteur?.toLowerCase().contains(needle) ?? false) ||
                cantique.contenu.toLowerCase().contains(needle),
          )
          .map(_withCollectionName)
          .toList();
      rows.sort((a, b) {
        final collectionCompare = a.collection.toLowerCase().compareTo(
          b.collection.toLowerCase(),
        );
        if (collectionCompare != 0) return collectionCompare;
        return a.numero.compareTo(b.numero);
      });
      return rows;
    }

    final db = await database;
    final like = '%$q%';
    final rows = await db.rawQuery(
      '''
      SELECT c.*, collections.name AS collection
      FROM cantiques c
      INNER JOIN collections ON collections.id = c.collection_id
      WHERE c.titre LIKE ?
        OR c.auteur LIKE ?
        OR c.paroles LIKE ?
      ORDER BY collections.name COLLATE NOCASE, c.numero
      ''',
      [like, like, like],
    );
    return rows.map(Cantique.fromMap).toList();
  }

  Future<void> insertChantPersonnel(ChantPersonnel chant) async {
    if (_useMemoryStore) {
      _memoryChants[chant.id] = chant;
      await _persistMemoryChants();
      return;
    }

    final db = await database;
    await db.insert(
      'chants_personnels',
      chant.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<ChantPersonnel>> getChantsPersonnels() async {
    if (_useMemoryStore) {
      final rows = _memoryChants.values.toList();
      rows.sort((a, b) => b.dateModification.compareTo(a.dateModification));
      return rows;
    }

    final db = await database;
    final rows = await db.query(
      'chants_personnels',
      orderBy: 'updated_at DESC',
    );
    return rows.map(ChantPersonnel.fromMap).toList();
  }

  Future<ChantPersonnel?> getChantPersonnelById(String id) async {
    if (_useMemoryStore) return _memoryChants[id];

    final db = await database;
    final rows = await db.query(
      'chants_personnels',
      where: 'id = ?',
      whereArgs: [id],
      limit: 1,
    );
    if (rows.isEmpty) return null;
    return ChantPersonnel.fromMap(rows.first);
  }

  Future<void> deleteChantPersonnel(String id) async {
    if (_useMemoryStore) {
      _memoryChants.remove(id);
      _memoryFavoriteRefs.remove(_favoriteKey(favoriteChantPersonnelType, id));
      await _persistMemoryChants();
      await _persistMemoryFavorites();
      return;
    }

    final db = await database;
    await db.delete('chants_personnels', where: 'id = ?', whereArgs: [id]);
  }

  Future<void> insertFavorite(String type, String id) async {
    if (_useMemoryStore) {
      _memoryFavoriteRefs.add(_favoriteKey(type, id));
      await _persistMemoryFavorites();
      return;
    }

    final db = await database;
    await db.insert('favorites', {
      'item_type': type,
      'item_id': id,
      'created_at': DateTime.now().toIso8601String(),
    }, conflictAlgorithm: ConflictAlgorithm.ignore);
  }

  Future<void> deleteFavorite(String type, String id) async {
    if (_useMemoryStore) {
      _memoryFavoriteRefs.remove(_favoriteKey(type, id));
      await _persistMemoryFavorites();
      return;
    }

    final db = await database;
    await db.delete(
      'favorites',
      where: 'item_type = ? AND item_id = ?',
      whereArgs: [type, id],
    );
  }

  Future<bool> isFavorite(String type, String id) async {
    if (_useMemoryStore) {
      return _memoryFavoriteRefs.contains(_favoriteKey(type, id));
    }

    final db = await database;
    final rows = await db.query(
      'favorites',
      columns: ['id'],
      where: 'item_type = ? AND item_id = ?',
      whereArgs: [type, id],
      limit: 1,
    );
    return rows.isNotEmpty;
  }

  Future<List<String>> getFavoriteIds(String type) async {
    if (_useMemoryStore) {
      final prefix = '$type:';
      return _memoryFavoriteRefs
          .where((key) => key.startsWith(prefix))
          .map((key) => key.substring(prefix.length))
          .toList();
    }

    final db = await database;
    final rows = await db.query(
      'favorites',
      columns: ['item_id'],
      where: 'item_type = ?',
      whereArgs: [type],
      orderBy: 'created_at DESC, id DESC',
    );
    return rows.map((row) => row['item_id'] as String).toList();
  }
}

class _FavoriteRef {
  final String type;
  final String id;

  const _FavoriteRef(this.type, this.id);
}
