class Playlist {
  final String id;
  final String nom;
  final String? description;
  final DateTime createdAt;
  final DateTime updatedAt;
  final int itemCount;

  const Playlist({
    required this.id,
    required this.nom,
    this.description,
    required this.createdAt,
    required this.updatedAt,
    this.itemCount = 0,
  });

  Playlist copyWith({
    String? nom,
    String? description,
    DateTime? updatedAt,
    int? itemCount,
  }) {
    return Playlist(
      id: id,
      nom: nom ?? this.nom,
      description: description ?? this.description,
      createdAt: createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      itemCount: itemCount ?? this.itemCount,
    );
  }

  Map<String, dynamic> toMap() => {
    'id': id,
    'nom': nom,
    'description': description,
    'created_at': createdAt.toIso8601String(),
    'updated_at': updatedAt.toIso8601String(),
  };

  Map<String, dynamic> toJson() => toMap();

  factory Playlist.fromMap(Map<String, dynamic> map, {int itemCount = 0}) {
    return Playlist(
      id: map['id'] as String,
      nom: map['nom'] as String,
      description: map['description'] as String?,
      createdAt: DateTime.parse(map['created_at'] as String),
      updatedAt: DateTime.parse(map['updated_at'] as String),
      itemCount: map['item_count'] is int ? map['item_count'] as int : itemCount,
    );
  }

  factory Playlist.fromJson(Map<String, dynamic> json) =>
      Playlist.fromMap(json);
}
