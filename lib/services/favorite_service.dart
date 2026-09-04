import '../database/app_database.dart';
import '../models/cantique.dart';
import '../models/chant_personnel.dart';
import 'cantique_service.dart';
import 'chant_personnel_service.dart';

class FavoriteService {
  static const String favoritesKey = 'favorites';
  static const String cantiquePrefix = AppDatabase.favoriteCantiqueType;
  static const String chantPersonnelPrefix =
      AppDatabase.favoriteChantPersonnelType;

  final Set<String> _favoriteRefs = {};

  Future<void> loadFavorites() async {
    final db = AppDatabase.instance;
    final cantiqueIds = await db.getFavoriteIds(cantiquePrefix);
    final chantPersonnelIds = await db.getFavoriteIds(chantPersonnelPrefix);

    _favoriteRefs
      ..clear()
      ..addAll(cantiqueIds.map(_cantiqueRef))
      ..addAll(chantPersonnelIds.map(_chantPersonnelRef));
  }

  bool isCantiqueFavorite(String id) {
    return _favoriteRefs.contains(
      _cantiqueRef(CantiqueService.normalizeCantiqueId(id)),
    );
  }

  Future<void> toggleCantiqueFavorite(String id) async {
    final normalizedId = CantiqueService.normalizeCantiqueId(id);
    await _toggleRef(cantiquePrefix, normalizedId);
  }

  bool isChantPersonnelFavorite(String id) {
    return _favoriteRefs.contains(_chantPersonnelRef(id));
  }

  Future<void> toggleChantPersonnelFavorite(String id) async {
    await _toggleRef(chantPersonnelPrefix, id);
  }

  List<String> getFavoriteCantiqueIds() {
    return _idsForType(cantiquePrefix);
  }

  List<String> getFavoriteChantPersonnelIds() {
    return _idsForType(chantPersonnelPrefix);
  }

  List<Cantique> getFavoriteCantiques(CantiqueService cantiqueService) {
    return getFavoriteCantiqueIds()
        .map(cantiqueService.getCantiqueById)
        .whereType<Cantique>()
        .toList();
  }

  Future<List<ChantPersonnel>> getFavoriteChantsPersonnels(
    ChantPersonnelService chantPersonnelService,
  ) async {
    final all = await chantPersonnelService.getAllChants();
    final favoriteIds = getFavoriteChantPersonnelIds().toSet();
    return all.where((chant) => favoriteIds.contains(chant.id)).toList();
  }

  Future<void> _toggleRef(String type, String id) async {
    final ref = _favoriteRef(type, id);
    if (_favoriteRefs.contains(ref)) {
      await AppDatabase.instance.deleteFavorite(type, id);
      _favoriteRefs.remove(ref);
    } else {
      await AppDatabase.instance.insertFavorite(type, id);
      _favoriteRefs.add(ref);
    }
  }

  List<String> _idsForType(String type) {
    final prefix = '$type:';
    return _favoriteRefs
        .where((ref) => ref.startsWith(prefix))
        .map((ref) => ref.substring(prefix.length))
        .toList();
  }

  String _favoriteRef(String type, String id) {
    return '$type:$id';
  }

  String _cantiqueRef(String id) {
    return _favoriteRef(cantiquePrefix, id);
  }

  String _chantPersonnelRef(String id) {
    return _favoriteRef(chantPersonnelPrefix, id);
  }

  Stream<List<String>> get favoritesStream {
    return Stream.value(_favoriteRefs.toList());
  }

  @Deprecated('Use isCantiqueFavorite or isChantPersonnelFavorite instead.')
  bool isFavorite(String id) {
    return isCantiqueFavorite(id);
  }

  @Deprecated(
    'Use toggleCantiqueFavorite or toggleChantPersonnelFavorite instead.',
  )
  Future<void> toggleFavorite(String id) {
    return toggleCantiqueFavorite(id);
  }
}
