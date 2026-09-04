class CantiqueCollection {
  final String id;
  final String name;
  final String description;
  final String? image;
  final DateTime createdAt;
  final DateTime updatedAt;

  const CantiqueCollection({
    required this.id,
    required this.name,
    this.description = '',
    this.image,
    required this.createdAt,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'image': image,
      'created_at': createdAt.toIso8601String(),
      'updated_at': updatedAt.toIso8601String(),
    };
  }

  factory CantiqueCollection.fromMap(Map<String, dynamic> map) {
    return CantiqueCollection(
      id: map['id'] as String,
      name: map['name'] as String,
      description: (map['description'] as String?) ?? '',
      image: map['image'] as String?,
      createdAt: DateTime.parse(map['created_at'] as String),
      updatedAt: DateTime.parse(map['updated_at'] as String),
    );
  }
}
