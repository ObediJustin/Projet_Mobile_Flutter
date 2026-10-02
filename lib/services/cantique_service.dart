import '../database/app_database.dart';
import '../database/initial_data_loader.dart';
import '../models/cantique.dart';
import '../models/collection.dart';

class CantiqueService {
  CantiqueService();

  static final CantiqueService instance = CantiqueService();

  static const Map<String, String> legacyIdMigration =
      AppDatabase.legacyCantiqueIdMigration;

  List<Cantique> _cachedCantiques = const [];
  List<CantiqueCollection> _cachedCollections = const [];

  Future<void> loadInitialData() async {
    final cantiques = await InitialDataLoader.loadCantiques();
    final collections = await InitialDataLoader.loadCollections();

    _cachedCantiques = _validateUniqueIds(cantiques);
    _cachedCollections = List.unmodifiable(collections);
  }

  Future<void> loadCacheFromDatabase() async {
    final db = AppDatabase.instance;
    final cantiques = await db.getCantiques();
    final collections = await db.getCollections();

    _cachedCantiques = _validateUniqueIds(cantiques);
    _cachedCollections = collections;
  }

  Future<void> resetCacheForTesting() async {
    InitialDataLoader.resetCache();
    await loadInitialData();
  }

  static List<Cantique> _validateUniqueIds(List<Cantique> cantiques) {
    final byId = <String, Cantique>{};

    for (final cantique in cantiques) {
      byId[cantique.id] = cantique;
    }

    return List.unmodifiable(byId.values);
  }

  static String normalizeCantiqueId(String id) {
    return AppDatabase.normalizeLegacyCantiqueId(id);
  }

  static List<Cantique> filterCantiques(List<Cantique> source, String query) {
    final q = query.trim().toLowerCase();
    if (q.isEmpty) return source;

    return source.where((c) {
      return c.titre.toLowerCase().contains(q) ||
          c.numero.toString().contains(q) ||
          c.contenu.toLowerCase().contains(q) ||
          c.collection.toLowerCase().contains(q);
    }).toList();
  }

  List<Cantique> getAllCantiques() {
    return _cachedCantiques;
  }

  List<Cantique> getCantiquesByCollection(String collection) {
    return _cachedCantiques
        .where((c) => c.collection == collection || c.collectionId == collection)
        .toList();
  }

  List<CantiqueCollection> getAllCollectionModels() {
    return _cachedCollections;
  }

  CantiqueCollection? getCollectionById(String id) {
    try {
      return _cachedCollections.firstWhere((collection) => collection.id == id);
    } catch (_) {
      return null;
    }
  }

  List<String> getAllCollections() {
    return _cachedCollections.map((c) => c.name).toList();
  }

  List<Cantique> searchCantiques(String query) {
    final q = query.trim().toLowerCase();
    if (q.isEmpty) return [];

    return _cachedCantiques.where((c) {
      return c.titre.toLowerCase().contains(q) ||
          (c.auteur ?? '').toLowerCase().contains(q) ||
          c.contenu.toLowerCase().contains(q);
    }).toList();
  }

  Cantique? getCantiqueById(String id) {
    final normalizedId = normalizeCantiqueId(id);
    try {
      return _cachedCantiques.firstWhere((c) => c.id == normalizedId);
    } catch (e) {
      return null;
    }
  }

  int getCantiqueCountByCollection(String collection) {
    return getCantiquesByCollection(collection).length;
  }
}
