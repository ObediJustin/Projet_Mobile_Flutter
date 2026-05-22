class Cantique {
  final String id;
  final String titre;
  final String collection;
  final String contenu;
  final int numero;
  final String? auteur;

  Cantique({
    required this.id,
    required this.titre,
    required this.collection,
    required this.contenu,
    required this.numero,
    this.auteur,
  });

  Map<String, dynamic> toJson() => {
    'id': id,
    'titre': titre,
    'collection': collection,
    'contenu': contenu,
    'numero': numero,
    'auteur': auteur,
  };

  factory Cantique.fromJson(Map<String, dynamic> json) => Cantique(
    id: json['id'],
    titre: json['titre'],
    collection: json['collection'],
    contenu: json['contenu'],
    numero: json['numero'],
    auteur: json['auteur'],
  );
}