import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../models/chant_personnel.dart';

/// Service de persistance (CRUD) pour les chants personnels.
///
/// Stockage local via [shared_preferences] :
/// - clé : 'chants_personnels'
/// - valeur : JSON (liste de chants)
class ChantPersonnelService {
  static const String _chantsKey = 'chants_personnels';

  /// Charge tous les chants depuis le stockage.
  Future<List<ChantPersonnel>> getAllChants() async {
    final prefs = await SharedPreferences.getInstance();
    final raw = prefs.getString(_chantsKey);
    if (raw == null || raw.isEmpty) return [];

    final decoded = jsonDecode(raw) as List<dynamic>;
    return decoded
        .map((e) => ChantPersonnel.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  /// Retourne un chant par id (ou null si introuvable).
  Future<ChantPersonnel?> getChantById(String id) async {
    final all = await getAllChants();
    try {
      return all.firstWhere((c) => c.id == id);
    } catch (_) {
      return null;
    }
  }

  /// Ajoute un nouveau chant (id unique généré si nécessaire).
  Future<void> addChant(ChantPersonnel chant) async {
    final prefs = await SharedPreferences.getInstance();
    final all = await getAllChants();

    final now = DateTime.now();
    final chantToSave = chant.id.isEmpty
        ? chant.copyWith(id: now.microsecondsSinceEpoch.toString())
        : chant;

    final updated = [
      ...all,
      chantToSave.copyWith(
        dateCreation: chantToSave.dateCreation,
        dateModification: now,
      ),
    ];

    await prefs.setString(_chantsKey, jsonEncode(updated));
  }

  /// Met à jour un chant existant.
  Future<void> updateChant(ChantPersonnel chant) async {
    final prefs = await SharedPreferences.getInstance();
    final all = await getAllChants();

    final index = all.indexWhere((c) => c.id == chant.id);
    if (index == -1) {
      throw Exception('Chant introuvable pour mise à jour (id=${chant.id}).');
    }

    final now = DateTime.now();
    final updatedChant = chant.copyWith(dateModification: now);

    final next = [...all];
    next[index] = updatedChant;

    await prefs.setString(_chantsKey, jsonEncode(next));
  }

  /// Supprime un chant par id.
  Future<void> deleteChant(String id) async {
    final prefs = await SharedPreferences.getInstance();
    final all = await getAllChants();

    final next = all.where((c) => c.id != id).toList();
    await prefs.setString(_chantsKey, jsonEncode(next));
  }
}

