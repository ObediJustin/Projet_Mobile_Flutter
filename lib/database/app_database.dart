import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

import '../models/cantique.dart';
import '../models/chant_personnel.dart';
import '../models/collection.dart';
import 'initial_data.dart';

class AppDatabase {
  static const String databaseName = 'cantiques_du_message.db';
  static const int schemaVersion = 1;
  static const String favoritesMigrationKey = 'favorites_sqlite_migrated_v1';
  static const String chantsMigrationKey = 'chants_personnels_sqlite_migrated_v1';
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

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _open();
    return _database!;
  }

  Future<void> initialize() async {
    await database;
  }

  Future<Database> _open() async {
    if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
      sqfliteFfiInit();
      databaseFactory = databaseFactoryFfi;
    }

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
        await _seedInitialData(db);
      },
      onOpen: (db) async {
        await _seedInitialData(db);
        await _migrateFavoritesFromSharedPreferences(db);
        await _migrateChantsPersonnelsFromSharedPreferences(db);
      },
      onUpgrade: (db, oldVersion, newVersion) async {},
    );
  }

  Future<void> close() async {
    final db = _database;
    if (db == null) return;
    await db.close();
    _database = null;
  }

  Future<void> useDatabasePathForTesting(String path) async {
    await close();
    _databasePathOverride = path;
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
    await db.execute('CREATE INDEX idx_favorites_item_id ON favorites(item_id)');
  }

  Future<void> _seedInitialData(Database db) async {
    final now = initialDataTimestamp.toIso8601String();
    final batch = db.batch();

    for (final collection in initialCollections) {
      batch.insert(
        'collections',
        collection.toMap(),
        conflictAlgorithm: ConflictAlgorithm.ignore,
      );
    }

    for (final cantique in initialCantiques) {
      batch.insert(
        'cantiques',
        {
          ...cantique.toMap(),
          'created_at': now,
          'updated_at': now,
        },
        conflictAlgorithm: ConflictAlgorithm.ignore,
      );
    }

    await batch.commit(noResult: true);
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

    for (final value in decoded.whereType<String>()) {
      final ref = _parseFavoriteRef(value);
      await db.insert(
        'favorites',
        {
          'item_type': ref.type,
          'item_id': ref.id,
          'created_at': now,
        },
        conflictAlgorithm: ConflictAlgorithm.ignore,
      );
    }

    await prefs.setBool(favoritesMigrationKey, true);
  }

  Future<void> _migrateChantsPersonnelsFromSharedPreferences(Database db) async {
    final prefs = await SharedPreferences.getInstance();
    if (prefs.getBool(chantsMigrationKey) == true) return;

    final raw = prefs.getString('chants_personnels');
    if (raw == null || raw.isEmpty) {
      await prefs.setBool(chantsMigrationKey, true);
      return;
    }

    final decoded = jsonDecode(raw) as List<dynamic>;
    for (final row in decoded.whereType<Map>()) {
      final chant = _legacyChantPersonnelFromJson(
        Map<String, dynamic>.from(row),
      );
      await db.insert(
        'chants_personnels',
        chant.toMap(),
        conflictAlgorithm: ConflictAlgorithm.ignore,
      );
    }

    await prefs.setBool(chantsMigrationKey, true);
  }

  _FavoriteRef _parseFavoriteRef(String value) {
    if (value.startsWith('$favoriteCantiqueType:')) {
      final id = value.substring(favoriteCantiqueType.length + 1);
      return _FavoriteRef(
        favoriteCantiqueType,
        normalizeLegacyCantiqueId(id),
      );
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
    final db = await database;
    final rows = await db.query('collections', orderBy: 'name COLLATE NOCASE');
    return rows.map(CantiqueCollection.fromMap).toList();
  }

  Future<CantiqueCollection?> getCollectionById(String id) async {
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
    final db = await database;
    final rows = await db.rawQuery(
      '''
      SELECT c.*, collections.name AS collection
      FROM cantiques c
      INNER JOIN collections ON collections.id = c.collection_id
      ${collectionId == null ? '' : 'WHERE c.collection_id = ?'}
      ORDER BY collections.name COLLATE NOCASE, c.numero
      ''',
      collectionId == null ? null : [collectionId],
    );
    return rows.map(Cantique.fromMap).toList();
  }

  Future<Cantique?> getCantiqueById(String id) async {
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
    final db = await database;
    await db.insert(
      'chants_personnels',
      chant.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<ChantPersonnel>> getChantsPersonnels() async {
    final db = await database;
    final rows = await db.query(
      'chants_personnels',
      orderBy: 'updated_at DESC',
    );
    return rows.map(ChantPersonnel.fromMap).toList();
  }

  Future<ChantPersonnel?> getChantPersonnelById(String id) async {
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
    final db = await database;
    await db.delete('chants_personnels', where: 'id = ?', whereArgs: [id]);
  }

  Future<void> insertFavorite(String type, String id) async {
    final db = await database;
    await db.insert(
      'favorites',
      {
        'item_type': type,
        'item_id': id,
        'created_at': DateTime.now().toIso8601String(),
      },
      conflictAlgorithm: ConflictAlgorithm.ignore,
    );
  }

  Future<void> deleteFavorite(String type, String id) async {
    final db = await database;
    await db.delete(
      'favorites',
      where: 'item_type = ? AND item_id = ?',
      whereArgs: [type, id],
    );
  }

  Future<bool> isFavorite(String type, String id) async {
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
