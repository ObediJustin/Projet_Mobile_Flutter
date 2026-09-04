class Cantique {
  final String id;
  final String titre;
  final String collectionId;
  final String collection;
  final String contenu;
  final int numero;
  final String? auteur;

  Cantique({
    required this.id,
    required this.titre,
    required this.collectionId,
    required this.collection,
    required this.contenu,
    required this.numero,
    this.auteur,
  });

  Map<String, dynamic> toJson() => {
    'id': id,
    'titre': titre,
    'collectionId': collectionId,
    'collection': collection,
    'contenu': contenu,
    'numero': numero,
    'auteur': auteur,
  };

  Map<String, dynamic> toMap() => {
    'id': id,
    'collection_id': collectionId,
    'numero': numero,
    'titre': titre,
    'auteur': auteur,
    'paroles': contenu,
  };

  factory Cantique.fromJson(Map<String, dynamic> json) => Cantique(
    id: json['id'],
    titre: json['titre'],
    collectionId: json['collectionId'] ?? json['collection'],
    collection: json['collection'],
    contenu: json['contenu'],
    numero: json['numero'],
    auteur: json['auteur'],
  );

  factory Cantique.fromMap(Map<String, dynamic> map) => Cantique(
    id: map['id'] as String,
    titre: map['titre'] as String,
    collectionId: map['collection_id'] as String,
    collection: map['collection'] as String,
    contenu: map['paroles'] as String,
    numero: (map['numero'] as num).toInt(),
    auteur: map['auteur'] as String?,
  );
}
