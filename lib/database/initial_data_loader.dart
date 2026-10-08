import 'dart:convert';
import 'dart:io';

import 'package:flutter/services.dart';

import '../models/cantique.dart';
import '../models/collection.dart';

class InitialDataLoader {
  static const String _collectionsPath = 'assets/data/collections.json';
  static const String _cantiquesPath = 'assets/data/cantiques.json';

  static List<CantiqueCollection>? _cachedCollections;
  static List<Cantique>? _cachedCantiques;

  static Future<List<CantiqueCollection>> loadCollections() async {
    final cached = _cachedCollections;
    if (cached != null) return cached;

    final raw = await _readAsset(_collectionsPath);
    final decoded = jsonDecode(raw) as List<dynamic>;
    final collections = decoded
        .map((row) => CantiqueCollection.fromMap(_asMap(row)))
        .toList(growable: false);
    _cachedCollections = collections;
    return collections;
  }

  static Future<List<Cantique>> loadCantiques() async {
    final cached = _cachedCantiques;
    if (cached != null) return cached;

    final raw = await _readAsset(_cantiquesPath);
    final decoded = jsonDecode(raw) as List<dynamic>;
    final cantiques = decoded
        .map((row) {
          final map = _asMap(row);
          return Cantique(
            id: map['id'] as String,
            titre: map['titre'] as String,
            collectionId: map['collection_id'] as String,
            collection: map['collection'] as String,
            contenu: map['contenu'] as String,
            numero: (map['numero'] as num).toInt(),
            auteur: map['auteur'] as String?,
          );
        })
        .toList(growable: false);
    _cachedCantiques = cantiques;
    return cantiques;
  }

  static Future<Set<String>> loadCantiqueIds() async {
    final cantiques = await loadCantiques();
    return cantiques.map((cantique) => cantique.id).toSet();
  }

  static void resetCache() {
    _cachedCollections = null;
    _cachedCantiques = null;
  }

  static Map<String, dynamic> _asMap(Object? row) {
    return Map<String, dynamic>.from(row as Map);
  }

  static Future<String> _readAsset(String path) async {
    try {
      return await rootBundle.loadString(path);
    } catch (_) {
      return File(path).readAsString();
    }
  }
}
