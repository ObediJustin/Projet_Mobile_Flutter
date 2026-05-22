import 'package:flutter/foundation.dart';

/// Modèle représentant un chant personnel de l’utilisateur.
class ChantPersonnel {
  /// Identifiant unique du chant.
  final String id;

  /// Titre du chant.
  final String titre;

  /// Contenu (texte intégral) du chant.
  final String contenu;

  /// Auteur du chant (optionnel).
  final String? auteur;

  /// Date de création.
  final DateTime dateCreation;

  /// Date de dernière modification.
  final DateTime dateModification;

  const ChantPersonnel({
    required this.id,
    required this.titre,
    required this.contenu,
    this.auteur,
    required this.dateCreation,
    required this.dateModification,
  });

  /// Conversion vers un Map pour persistance JSON.
  Map<String, dynamic> toJson() => {
        'id': id,
        'titre': titre,
        'contenu': contenu,
        'auteur': auteur,
        'dateCreation': dateCreation.toIso8601String(),
        'dateModification': dateModification.toIso8601String(),
      };

  /// Construction depuis un Map JSON.
  factory ChantPersonnel.fromJson(Map<String, dynamic> json) {
    return ChantPersonnel(
      id: (json['id'] as String),
      titre: (json['titre'] as String),
      contenu: (json['contenu'] as String),
      auteur: json['auteur'] as String?,
      dateCreation: DateTime.parse(json['dateCreation'] as String),
      dateModification: DateTime.parse(json['dateModification'] as String),
    );
  }

  /// Copie avec modifications (pratique en édition).
  ChantPersonnel copyWith({
    String? id,
    String? titre,
    String? contenu,
    String? auteur,
    DateTime? dateCreation,
    DateTime? dateModification,
  }) {
    return ChantPersonnel(
      id: id ?? this.id,
      titre: titre ?? this.titre,
      contenu: contenu ?? this.contenu,
      auteur: auteur ?? this.auteur,
      dateCreation: dateCreation ?? this.dateCreation,
      dateModification: dateModification ?? this.dateModification,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ChantPersonnel) return false;
    return other.id == id;
  }

  @override
  int get hashCode => id.hashCode;
}

