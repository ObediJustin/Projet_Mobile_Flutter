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

final RegExp _searchWhitespace = RegExp(r'\s+');

const Map<String, String> _searchCharacterFolding = {
  'à': 'a',
  'á': 'a',
  'â': 'a',
  'ä': 'a',
  'ã': 'a',
  'å': 'a',
  'ā': 'a',
  'ă': 'a',
  'ą': 'a',
  'æ': 'ae',
  'ç': 'c',
  'ć': 'c',
  'č': 'c',
  'ď': 'd',
  'đ': 'd',
  'è': 'e',
  'é': 'e',
  'ê': 'e',
  'ë': 'e',
  'ē': 'e',
  'ĕ': 'e',
  'ė': 'e',
  'ę': 'e',
  'ě': 'e',
  'ì': 'i',
  'í': 'i',
  'î': 'i',
  'ï': 'i',
  'ī': 'i',
  'ĭ': 'i',
  'į': 'i',
  'ł': 'l',
  'ñ': 'n',
  'ń': 'n',
  'ň': 'n',
  'ò': 'o',
  'ó': 'o',
  'ô': 'o',
  'ö': 'o',
  'õ': 'o',
  'ø': 'o',
  'ō': 'o',
  'ŏ': 'o',
  'ő': 'o',
  'œ': 'oe',
  'ŕ': 'r',
  'ř': 'r',
  'ś': 's',
  'š': 's',
  'ş': 's',
  'ť': 't',
  'ù': 'u',
  'ú': 'u',
  'û': 'u',
  'ü': 'u',
  'ū': 'u',
  'ŭ': 'u',
  'ů': 'u',
  'ű': 'u',
  'ų': 'u',
  'ý': 'y',
  'ÿ': 'y',
  'ž': 'z',
  'ź': 'z',
  'ż': 'z',
};

String normalizeCantiqueSearchText(String value) {
  final folded = StringBuffer();
  for (final rune in value.toLowerCase().runes) {
    if (rune >= 0x0300 && rune <= 0x036f) continue;
    final character = String.fromCharCode(rune);
    folded.write(_searchCharacterFolding[character] ?? character);
  }
  return folded.toString().replaceAll(_searchWhitespace, ' ').trim();
}

bool cantiqueMatchesSearch(Cantique cantique, String query) {
  final normalizedQuery = normalizeCantiqueSearchText(query);
  if (normalizedQuery.isEmpty) return true;

  final searchableText = normalizeCantiqueSearchText(
    '${cantique.numero} ${cantique.titre} ${cantique.auteur ?? ''} '
    '${cantique.contenu} ${cantique.collection}',
  );
  return normalizedQuery
      .split(' ')
      .every((term) => searchableText.contains(term));
}

List<Cantique> filterCantiquesForSearch(
  Iterable<Cantique> source,
  String query,
) {
  if (normalizeCantiqueSearchText(query).isEmpty) {
    return source is List<Cantique> ? source : source.toList();
  }
  return source
      .where((cantique) => cantiqueMatchesSearch(cantique, query))
      .toList();
}
