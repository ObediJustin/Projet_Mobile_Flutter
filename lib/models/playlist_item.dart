enum PlaylistItemType {
  official('official'),
  personal('personal');

  final String value;
  const PlaylistItemType(this.value);

  String toDbString() => value;

  static PlaylistItemType fromValue(String? value) {
    if (value == 'personal') return PlaylistItemType.personal;
    return PlaylistItemType.official;
  }
}

class PlaylistItem {
  final String id;
  final String playlistId;
  final PlaylistItemType songType;
  final String songId;
  final int position;
  final DateTime createdAt;

  // Resolved display metadata
  final String? titre;
  final int? numero;
  final String? collection;
  final String? auteur;
  final String? contenu;
  final bool isAvailable;

  const PlaylistItem({
    required this.id,
    required this.playlistId,
    required this.songType,
    required this.songId,
    required this.position,
    required this.createdAt,
    this.titre,
    this.numero,
    this.collection,
    this.auteur,
    this.contenu,
    this.isAvailable = true,
  });

  bool get isOfficial => songType == PlaylistItemType.official;
  bool get isPersonal => songType == PlaylistItemType.personal;

  PlaylistItem copyWith({
    int? position,
    String? titre,
    int? numero,
    String? collection,
    String? auteur,
    String? contenu,
    bool? isAvailable,
  }) {
    return PlaylistItem(
      id: id,
      playlistId: playlistId,
      songType: songType,
      songId: songId,
      position: position ?? this.position,
      createdAt: createdAt,
      titre: titre ?? this.titre,
      numero: numero ?? this.numero,
      collection: collection ?? this.collection,
      auteur: auteur ?? this.auteur,
      contenu: contenu ?? this.contenu,
      isAvailable: isAvailable ?? this.isAvailable,
    );
  }

  Map<String, dynamic> toMap() => {
    'id': id,
    'playlist_id': playlistId,
    'song_type': songType.value,
    'song_id': songId,
    'position': position,
    'created_at': createdAt.toIso8601String(),
  };

  Map<String, dynamic> toJson() => toMap();

  factory PlaylistItem.fromMap(Map<String, dynamic> map) {
    return PlaylistItem(
      id: map['id'] as String,
      playlistId: map['playlist_id'] as String,
      songType: PlaylistItemType.fromValue(map['song_type'] as String?),
      songId: map['song_id'] as String,
      position: (map['position'] as num).toInt(),
      createdAt: DateTime.parse(map['created_at'] as String),
      titre: map['titre'] as String?,
      numero: (map['numero'] as num?)?.toInt(),
      collection: map['collection'] as String?,
      auteur: map['auteur'] as String?,
      contenu: map['contenu'] as String?,
      isAvailable: map['is_available'] as bool? ?? true,
    );
  }

  factory PlaylistItem.fromJson(Map<String, dynamic> json) =>
      PlaylistItem.fromMap(json);
}
