import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import '../models/cantique.dart';
import 'cantique_service.dart';


class FavoriteService {
  static const String _favoritesKey = 'favorites';
  List<String> _favoriteIds = [];

  Future<void> loadFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    final favoritesString = prefs.getString(_favoritesKey);
    if (favoritesString != null) {
      _favoriteIds = List<String>.from(jsonDecode(favoritesString));
    }
  }

  Future<void> _saveFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_favoritesKey, jsonEncode(_favoriteIds));
  }

  bool isFavorite(String id) {
    return _favoriteIds.contains(id);
  }

  Future<void> toggleFavorite(String id) async {
    if (_favoriteIds.contains(id)) {
      _favoriteIds.remove(id);
    } else {
      _favoriteIds.add(id);
    }
    await _saveFavorites();
  }

  List<Cantique> getFavoriteCantiques(CantiqueService cantiqueService) {
    return _favoriteIds
        .map((id) => cantiqueService.getCantiqueById(id))
        .where((cantique) => cantique != null)
        .map((cantique) => cantique!)
        .toList();
  }


  Stream<List<String>> get favoritesStream => Stream.value(_favoriteIds);
}