import 'dart:convert';

import 'package:path/path.dart' as p;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sqflite/sqflite.dart';

import '../models/cantique.dart';
import '../models/chant_personnel.dart';
import '../models/collection.dart';
import '../models/playlist.dart';
import '../models/playlist_item.dart';
import 'database_platform.dart';
import 'initial_data_loader.dart';

class AppDatabase {
  static const String databaseName = 'cantiques_du_message.db';
  static const int schemaVersion = 5;
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
  final Map<String, DateTime> _memoryRecentlyViewed = {};
  final Map<String, Playlist> _memoryPlaylists = {};
  final List<PlaylistItem> _memoryPlaylistItems = [];

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
        await _ensureRecentlyViewedTable(db);
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
    _memoryPlaylists.clear();
    _memoryPlaylistItems.clear();
  }

  Future<void> _initializeMemoryStore() async {
    if (_memoryInitialized) return;

    _memoryCollections = List<CantiqueCollection>.of(
      await InitialDataLoader.loadCollections(),
    );
    _memoryCantiques = List<Cantique>.of(
      await InitialDataLoader.loadCantiques(),
    );
    final cantiqueIds = _memoryCantiques.map((cantique) => cantique.id).toSet();

    final prefs = await SharedPreferences.getInstance();
    final rawFavorites = prefs.getString('favorites');
    if (rawFavorites != null && rawFavorites.isNotEmpty) {
      final decoded = jsonDecode(rawFavorites) as List<dynamic>;
      for (final value in decoded.whereType<String>()) {
        final ref = _parseFavoriteRef(value, cantiqueIds);
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

    final rawPlaylists = prefs.getString('playlists');
    if (rawPlaylists != null && rawPlaylists.isNotEmpty) {
      final decoded = jsonDecode(rawPlaylists) as List<dynamic>;
      for (final row in decoded.whereType<Map>()) {
        final playlist = Playlist.fromMap(Map<String, dynamic>.from(row));
        _memoryPlaylists[playlist.id] = playlist;
      }
    }

    final rawItems = prefs.getString('playlist_items');
    if (rawItems != null && rawItems.isNotEmpty) {
      final decoded = jsonDecode(rawItems) as List<dynamic>;
      for (final row in decoded.whereType<Map>()) {
        final item = PlaylistItem.fromMap(Map<String, dynamic>.from(row));
        _memoryPlaylistItems.add(item);
      }
    }

    _memoryInitialized = true;
  }

  Future<void> _persistMemoryPlaylists() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(
      'playlists',
      jsonEncode(_memoryPlaylists.values.map((p) => p.toJson()).toList()),
    );
  }

  Future<void> _persistMemoryPlaylistItems() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(
      'playlist_items',
      jsonEncode(_memoryPlaylistItems.map((i) => i.toJson()).toList()),
    );
  }

  Future<void> _persistMemoryFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(
      'favorites',
      jsonEncode(_memoryFavoriteRefs.toList()),
    );
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
          ON DELETE RESTRICT
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

    await db.execute('''
      CREATE TABLE recently_viewed_cantiques (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        cantique_id TEXT NOT NULL UNIQUE,
        last_viewed_at TEXT NOT NULL
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
    await db.execute(
      'CREATE INDEX IF NOT EXISTS idx_recently_viewed_last_viewed_at ON recently_viewed_cantiques(last_viewed_at DESC)',
    );

    await _createPlaylistTables(db);
  }

  Future<void> _ensureRecentlyViewedTable(Database db) async {
    await db.execute('''
      CREATE TABLE IF NOT EXISTS recently_viewed_cantiques (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        cantique_id TEXT NOT NULL UNIQUE,
        last_viewed_at TEXT NOT NULL
      )
    ''');
    await db.execute(
      'CREATE INDEX IF NOT EXISTS idx_recently_viewed_last_viewed_at ON recently_viewed_cantiques(last_viewed_at DESC)',
    );

    await _createPlaylistTables(db);
  }

  Future<void> _migrateToVersion(Database db, int version) async {
    switch (version) {
      case 2:
        await _ensureRecentlyViewedTable(db);
        break;
      case 3:
        await _removeCantiquesUniqueConstraint(db);
        break;
      case 4:
        await _repairSchemaVersion4(db);
        break;
      case 5:
        await _createPlaylistTables(db);
        break;
      default:
        throw UnsupportedError('Migration SQLite inconnue: v$version');
    }
  }

  Future<void> _removeCantiquesUniqueConstraint(Database db) async {
    // A stale staging table must never make rows from the source table get
    // ignored. openDatabase wraps upgrades in a transaction, so dropping it is
    // safe and also makes a retry deterministic after an interrupted upgrade.
    await db.execute('DROP TABLE IF EXISTS cantiques_v3');
    await db.execute('''
      CREATE TABLE cantiques_v3 (
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
          ON DELETE RESTRICT
      )
    ''');
    final sourceCount =
        Sqflite.firstIntValue(
          await db.rawQuery('SELECT COUNT(*) FROM cantiques'),
        ) ??
        0;
    await db.execute('INSERT INTO cantiques_v3 SELECT * FROM cantiques');
    final copiedCount =
        Sqflite.firstIntValue(
          await db.rawQuery('SELECT COUNT(*) FROM cantiques_v3'),
        ) ??
        0;
    if (sourceCount != copiedCount) {
      throw StateError(
        'Migration v3 incomplete: $copiedCount/$sourceCount cantiques copies',
      );
    }
    await db.execute('DROP TABLE cantiques');
    await db.execute('ALTER TABLE cantiques_v3 RENAME TO cantiques');
    await _ensureCantiqueIndexes(db);
  }

  Future<void> _repairSchemaVersion4(Database db) async {
    await _ensureCantiqueIndexes(db);

    // favorites is polymorphic, therefore SQLite cannot express both target
    // foreign keys directly. Remove only references whose target is absent.
    await db.delete(
      'favorites',
      where:
          "item_type = ? AND NOT EXISTS (SELECT 1 FROM cantiques WHERE cantiques.id = favorites.item_id)",
      whereArgs: [favoriteCantiqueType],
    );
    await db.delete(
      'favorites',
      where:
          "item_type = ? AND NOT EXISTS (SELECT 1 FROM chants_personnels WHERE chants_personnels.id = favorites.item_id)",
      whereArgs: [favoriteChantPersonnelType],
    );
  }

  Future<void> _ensureCantiqueIndexes(Database db) async {
    await db.execute(
      'CREATE INDEX IF NOT EXISTS idx_cantiques_collection_id ON cantiques(collection_id)',
    );
    await db.execute(
      'CREATE INDEX IF NOT EXISTS idx_cantiques_numero ON cantiques(numero)',
    );
    await db.execute(
      'CREATE INDEX IF NOT EXISTS idx_cantiques_titre ON cantiques(titre)',
    );
  }

  Future<void> syncOfficialData() async {
    if (_useMemoryStore || shouldUseMemoryDatabase) {
      _memoryCollections = List<CantiqueCollection>.of(
        await InitialDataLoader.loadCollections(),
      );
      _memoryCantiques = List<Cantique>.of(
        await InitialDataLoader.loadCantiques(),
      );
      return;
    }

    final db = await database;
    await _syncOfficialData(db);
  }

  Future<void> _seedInitialData(Database db) async {
    await _syncOfficialData(db);
  }

  Future<void> _syncOfficialData(Database db) async {
    final collections = await InitialDataLoader.loadCollections();
    final cantiques = await InitialDataLoader.loadCantiques();
    final now = DateTime(2026, 1, 1).toIso8601String();

    await db.transaction((txn) async {
      final batch = txn.batch();

      for (final collection in collections) {
        batch.rawInsert(
          '''
          INSERT INTO collections (id, name, description, image, created_at, updated_at)
          VALUES (?, ?, ?, ?, ?, ?)
          ON CONFLICT(id) DO UPDATE SET
            name = excluded.name,
            description = excluded.description,
            image = excluded.image,
            updated_at = excluded.updated_at
        ''',
          [
            collection.id,
            collection.name,
            collection.description,
            collection.image,
            collection.createdAt.toIso8601String(),
            collection.updatedAt.toIso8601String(),
          ],
        );
      }

      for (final cantique in cantiques) {
        batch.rawInsert(
          '''
          INSERT INTO cantiques (id, collection_id, numero, titre, auteur, paroles, created_at, updated_at)
          VALUES (?, ?, ?, ?, ?, ?, ?, ?)
          ON CONFLICT(id) DO UPDATE SET
            collection_id = excluded.collection_id,
            numero = excluded.numero,
            titre = excluded.titre,
            auteur = excluded.auteur,
            paroles = excluded.paroles,
            updated_at = excluded.updated_at
        ''',
          [
            cantique.id,
            cantique.collectionId,
            cantique.numero,
            cantique.titre,
            cantique.auteur,
            cantique.contenu,
            now,
            now,
          ],
        );
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
    final cantiqueIds = await InitialDataLoader.loadCantiqueIds();

    await db.transaction((txn) async {
      for (final value in decoded.whereType<String>()) {
        final ref = _parseFavoriteRef(value, cantiqueIds);
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

  _FavoriteRef _parseFavoriteRef(String value, Set<String> cantiqueIds) {
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
    if (cantiqueIds.contains(cantiqueId)) {
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
    if (normalizeCantiqueSearchText(query).isEmpty) return [];
    return filterCantiquesForSearch(await getCantiques(), query);
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
    await db.transaction((txn) async {
      await txn.delete(
        'favorites',
        where: 'item_type = ? AND item_id = ?',
        whereArgs: [favoriteChantPersonnelType, id],
      );
      await txn.delete('chants_personnels', where: 'id = ?', whereArgs: [id]);
    });
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

  Future<void> recordRecentlyViewedCantique(String cantiqueId) async {
    final now = DateTime.now().toIso8601String();
    final normalizedId = normalizeLegacyCantiqueId(cantiqueId);

    if (_useMemoryStore) {
      _memoryRecentlyViewed[normalizedId] = DateTime.now();
      return;
    }

    final db = await database;
    await db.execute(
      '''
      INSERT INTO recently_viewed_cantiques (cantique_id, last_viewed_at)
      VALUES (?, ?)
      ON CONFLICT(cantique_id) DO UPDATE SET last_viewed_at = excluded.last_viewed_at
    ''',
      [normalizedId, now],
    );
  }

  Future<void> clearRecentlyViewedForTesting() async {
    if (_useMemoryStore) {
      _memoryRecentlyViewed.clear();
      return;
    }

    final db = await database;
    await db.delete('recently_viewed_cantiques');
  }

  Future<List<Cantique>> getRecentlyViewedCantiques({int limit = 4}) async {
    if (_useMemoryStore) {
      final sortedEntries = _memoryRecentlyViewed.entries.toList()
        ..sort((a, b) => b.value.compareTo(a.value));
      final cantiqueIds = sortedEntries.map((e) => e.key).take(limit);

      final result = <Cantique>[];
      for (final id in cantiqueIds) {
        final c = await getCantiqueById(id);
        if (c != null) result.add(c);
      }
      return result;
    }

    final db = await database;
    final rows = await db.rawQuery(
      '''
      SELECT c.*, collections.name AS collection
      FROM recently_viewed_cantiques r
      INNER JOIN cantiques c ON c.id = r.cantique_id
      INNER JOIN collections ON collections.id = c.collection_id
      ORDER BY r.last_viewed_at DESC
      LIMIT ?
    ''',
      [limit],
    );

    return rows.map(Cantique.fromMap).toList();
  }

  Future<void> _createPlaylistTables(Database db) async {
    await db.execute('''
      CREATE TABLE IF NOT EXISTS playlists (
        id TEXT PRIMARY KEY,
        nom TEXT NOT NULL,
        description TEXT,
        created_at TEXT NOT NULL,
        updated_at TEXT NOT NULL
      )
    ''');

    await db.execute('''
      CREATE TABLE IF NOT EXISTS playlist_items (
        id TEXT PRIMARY KEY,
        playlist_id TEXT NOT NULL,
        song_type TEXT NOT NULL,
        song_id TEXT NOT NULL,
        position INTEGER NOT NULL,
        created_at TEXT NOT NULL,
        FOREIGN KEY (playlist_id) REFERENCES playlists(id)
          ON UPDATE CASCADE
          ON DELETE CASCADE,
        UNIQUE(playlist_id, song_type, song_id)
      )
    ''');

    await db.execute(
      'CREATE INDEX IF NOT EXISTS idx_playlist_items_playlist_id ON playlist_items(playlist_id)',
    );
    await db.execute(
      'CREATE INDEX IF NOT EXISTS idx_playlist_items_position ON playlist_items(playlist_id, position)',
    );
    await db.execute(
      'CREATE INDEX IF NOT EXISTS idx_playlist_items_song ON playlist_items(song_type, song_id)',
    );
  }

  Future<void> insertPlaylist(Playlist playlist) async {
    if (_useMemoryStore) {
      _memoryPlaylists[playlist.id] = playlist;
      await _persistMemoryPlaylists();
      return;
    }
    final db = await database;
    await db.insert(
      'playlists',
      playlist.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<void> updatePlaylist(Playlist playlist) async {
    if (_useMemoryStore) {
      _memoryPlaylists[playlist.id] = playlist;
      await _persistMemoryPlaylists();
      return;
    }
    final db = await database;
    await db.update(
      'playlists',
      playlist.toMap(),
      where: 'id = ?',
      whereArgs: [playlist.id],
    );
  }

  Future<void> deletePlaylist(String playlistId) async {
    if (_useMemoryStore) {
      _memoryPlaylists.remove(playlistId);
      _memoryPlaylistItems.removeWhere((item) => item.playlistId == playlistId);
      await _persistMemoryPlaylists();
      await _persistMemoryPlaylistItems();
      return;
    }
    final db = await database;
    await db.delete('playlist_items', where: 'playlist_id = ?', whereArgs: [playlistId]);
    await db.delete('playlists', where: 'id = ?', whereArgs: [playlistId]);
  }

  Future<List<Playlist>> getPlaylists() async {
    if (_useMemoryStore) {
      final list = _memoryPlaylists.values.map((p) {
        final count = _memoryPlaylistItems.where((i) => i.playlistId == p.id).length;
        return p.copyWith(itemCount: count);
      }).toList()
        ..sort((a, b) => b.updatedAt.compareTo(a.updatedAt));
      return list;
    }
    final db = await database;
    final rows = await db.rawQuery('''
      SELECT p.*, COUNT(pi.id) AS item_count
      FROM playlists p
      LEFT JOIN playlist_items pi ON pi.playlist_id = p.id
      GROUP BY p.id
      ORDER BY p.updated_at DESC
    ''');
    return rows
        .map(
          (r) => Playlist.fromMap(
            r,
            itemCount: (r['item_count'] as num?)?.toInt() ?? 0,
          ),
        )
        .toList();
  }

  Future<Playlist?> getPlaylistById(String playlistId) async {
    if (_useMemoryStore) {
      final p = _memoryPlaylists[playlistId];
      if (p == null) return null;
      final count = _memoryPlaylistItems.where((i) => i.playlistId == p.id).length;
      return p.copyWith(itemCount: count);
    }
    final db = await database;
    final rows = await db.rawQuery('''
      SELECT p.*, COUNT(pi.id) AS item_count
      FROM playlists p
      LEFT JOIN playlist_items pi ON pi.playlist_id = p.id
      WHERE p.id = ?
      GROUP BY p.id
    ''', [playlistId]);
    if (rows.isEmpty) return null;
    return Playlist.fromMap(
      rows.first,
      itemCount: (rows.first['item_count'] as num?)?.toInt() ?? 0,
    );
  }

  Future<bool> isSongInPlaylist(
    String playlistId,
    PlaylistItemType songType,
    String songId,
  ) async {
    if (_useMemoryStore) {
      return _memoryPlaylistItems.any(
        (i) =>
            i.playlistId == playlistId &&
            i.songType == songType &&
            i.songId == songId,
      );
    }
    final db = await database;
    final rows = await db.query(
      'playlist_items',
      columns: ['id'],
      where: 'playlist_id = ? AND song_type = ? AND song_id = ?',
      whereArgs: [playlistId, songType.value, songId],
      limit: 1,
    );
    return rows.isNotEmpty;
  }

  Future<Set<String>> getPlaylistIdsContainingSong(
    PlaylistItemType songType,
    String songId,
  ) async {
    if (_useMemoryStore) {
      return _memoryPlaylistItems
          .where((i) => i.songType == songType && i.songId == songId)
          .map((i) => i.playlistId)
          .toSet();
    }
    final db = await database;
    final rows = await db.query(
      'playlist_items',
      columns: ['playlist_id'],
      where: 'song_type = ? AND song_id = ?',
      whereArgs: [songType.value, songId],
    );
    return rows.map((r) => r['playlist_id'] as String).toSet();
  }

  Future<bool> addSongToPlaylist(
    String playlistId,
    PlaylistItemType songType,
    String songId,
  ) async {
    final exists = await isSongInPlaylist(playlistId, songType, songId);
    if (exists) return false;

    if (_useMemoryStore) {
      final existingForPlaylist = _memoryPlaylistItems
          .where((i) => i.playlistId == playlistId)
          .toList();
      final nextPosition = existingForPlaylist.length;
      final newItem = PlaylistItem(
        id: '${playlistId}_${DateTime.now().microsecondsSinceEpoch}',
        playlistId: playlistId,
        songType: songType,
        songId: songId,
        position: nextPosition,
        createdAt: DateTime.now(),
      );
      _memoryPlaylistItems.add(newItem);
      final p = _memoryPlaylists[playlistId];
      if (p != null) {
        _memoryPlaylists[playlistId] = p.copyWith(updatedAt: DateTime.now());
      }
      await _persistMemoryPlaylists();
      await _persistMemoryPlaylistItems();
      return true;
    }

    final db = await database;
    return await db.transaction((txn) async {
      final maxPosRow = await txn.rawQuery(
        'SELECT MAX(position) AS max_pos FROM playlist_items WHERE playlist_id = ?',
        [playlistId],
      );
      final currentMax = (maxPosRow.first['max_pos'] as num?)?.toInt() ?? -1;
      final nextPos = currentMax + 1;
      final newItem = PlaylistItem(
        id: '${playlistId}_${DateTime.now().microsecondsSinceEpoch}',
        playlistId: playlistId,
        songType: songType,
        songId: songId,
        position: nextPos,
        createdAt: DateTime.now(),
      );
      await txn.insert(
        'playlist_items',
        newItem.toMap(),
        conflictAlgorithm: ConflictAlgorithm.ignore,
      );
      await txn.update(
        'playlists',
        {'updated_at': DateTime.now().toIso8601String()},
        where: 'id = ?',
        whereArgs: [playlistId],
      );
      return true;
    });
  }

  Future<void> removePlaylistItem(String playlistId, String itemId) async {
    if (_useMemoryStore) {
      _memoryPlaylistItems.removeWhere((i) => i.id == itemId);
      final remaining = _memoryPlaylistItems
          .where((i) => i.playlistId == playlistId)
          .toList()
        ..sort((a, b) => a.position.compareTo(b.position));
      for (var idx = 0; idx < remaining.length; idx++) {
        final old = remaining[idx];
        final itemIdx = _memoryPlaylistItems.indexWhere((i) => i.id == old.id);
        if (itemIdx != -1) {
          _memoryPlaylistItems[itemIdx] = old.copyWith(position: idx);
        }
      }
      final p = _memoryPlaylists[playlistId];
      if (p != null) {
        _memoryPlaylists[playlistId] = p.copyWith(updatedAt: DateTime.now());
      }
      await _persistMemoryPlaylists();
      await _persistMemoryPlaylistItems();
      return;
    }

    final db = await database;
    await db.transaction((txn) async {
      await txn.delete('playlist_items', where: 'id = ?', whereArgs: [itemId]);
      final rows = await txn.query(
        'playlist_items',
        where: 'playlist_id = ?',
        whereArgs: [playlistId],
        orderBy: 'position ASC',
      );
      for (var idx = 0; idx < rows.length; idx++) {
        await txn.update(
          'playlist_items',
          {'position': idx},
          where: 'id = ?',
          whereArgs: [rows[idx]['id']],
        );
      }
      await txn.update(
        'playlists',
        {'updated_at': DateTime.now().toIso8601String()},
        where: 'id = ?',
        whereArgs: [playlistId],
      );
    });
  }

  Future<void> reorderPlaylistItems(
    String playlistId,
    List<String> orderedItemIds,
  ) async {
    if (_useMemoryStore) {
      for (var pos = 0; pos < orderedItemIds.length; pos++) {
        final id = orderedItemIds[pos];
        final idx = _memoryPlaylistItems.indexWhere((i) => i.id == id);
        if (idx != -1) {
          _memoryPlaylistItems[idx] = _memoryPlaylistItems[idx].copyWith(position: pos);
        }
      }
      final p = _memoryPlaylists[playlistId];
      if (p != null) {
        _memoryPlaylists[playlistId] = p.copyWith(updatedAt: DateTime.now());
      }
      await _persistMemoryPlaylists();
      await _persistMemoryPlaylistItems();
      return;
    }

    final db = await database;
    await db.transaction((txn) async {
      final batch = txn.batch();
      for (var pos = 0; pos < orderedItemIds.length; pos++) {
        batch.update(
          'playlist_items',
          {'position': pos},
          where: 'id = ?',
          whereArgs: [orderedItemIds[pos]],
        );
      }
      await batch.commit(noResult: true);
      await txn.update(
        'playlists',
        {'updated_at': DateTime.now().toIso8601String()},
        where: 'id = ?',
        whereArgs: [playlistId],
      );
    });
  }

  Future<List<PlaylistItem>> getPlaylistItems(String playlistId) async {
    if (_useMemoryStore) {
      final items = _memoryPlaylistItems
          .where((i) => i.playlistId == playlistId)
          .toList()
        ..sort((a, b) => a.position.compareTo(b.position));
      return items;
    }
    final db = await database;
    final rows = await db.query(
      'playlist_items',
      where: 'playlist_id = ?',
      whereArgs: [playlistId],
      orderBy: 'position ASC',
    );
    return rows.map(PlaylistItem.fromMap).toList();
  }

  Future<void> cleanupDeletedPersonalSongFromPlaylists(
    String personalSongId,
  ) async {
    if (_useMemoryStore) {
      _memoryPlaylistItems.removeWhere(
        (i) =>
            i.songType == PlaylistItemType.personal &&
            i.songId == personalSongId,
      );
      await _persistMemoryPlaylistItems();
      return;
    }
    final db = await database;
    await db.delete(
      'playlist_items',
      where: 'song_type = ? AND song_id = ?',
      whereArgs: [PlaylistItemType.personal.value, personalSongId],
    );
  }
}

class _FavoriteRef {
  final String type;
  final String id;

  const _FavoriteRef(this.type, this.id);
}
