import '../database/app_database.dart';
import '../database/initial_data.dart';
import '../models/cantique.dart';
import '../models/collection.dart';

class CantiqueService {
  static const Map<String, String> legacyIdMigration =
      AppDatabase.legacyCantiqueIdMigration;

  static List<Cantique> _cachedCantiques = _validateUniqueIds(initialCantiques);
  static List<CantiqueCollection> _cachedCollections = initialCollections;

  static Future<void> loadCacheFromDatabase() async {
    final db = AppDatabase.instance;
    final cantiques = await db.getCantiques();
    final collections = await db.getCollections();

    _cachedCantiques = _validateUniqueIds(cantiques);
    _cachedCollections = collections;
  }

  static List<Cantique> _validateUniqueIds(List<Cantique> cantiques) {
    final seen = <String>{};
    final duplicates = <String>{};

    for (final cantique in cantiques) {
      if (!seen.add(cantique.id)) {
        duplicates.add(cantique.id);
      }
    }

    if (duplicates.isNotEmpty) {
      throw StateError(
        'Identifiants de cantiques dupliques: ${duplicates.join(', ')}',
      );
    }

    return List.unmodifiable(cantiques);
  }

  static String normalizeCantiqueId(String id) {
    return AppDatabase.normalizeLegacyCantiqueId(id);
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
