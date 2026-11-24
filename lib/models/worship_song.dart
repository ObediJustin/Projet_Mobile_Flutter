import 'cantique.dart';
import 'chant_personnel.dart';

enum WorshipSongType { official, personal }

class WorshipSong {
  final String id;
  final WorshipSongType type;
  final String title;
  final String lyrics;
  final String? author;
  final int? number;
  final String? collection;

  const WorshipSong({
    required this.id,
    required this.type,
    required this.title,
    required this.lyrics,
    this.author,
    this.number,
    this.collection,
  });

  factory WorshipSong.fromCantique(Cantique cantique) => WorshipSong(
    id: cantique.id,
    type: WorshipSongType.official,
    title: cantique.titre,
    lyrics: cantique.contenu,
    author: cantique.auteur,
    number: cantique.numero,
    collection: cantique.collection,
  );

  factory WorshipSong.fromPersonal(ChantPersonnel chant) => WorshipSong(
    id: chant.id,
    type: WorshipSongType.personal,
    title: chant.titre,
    lyrics: chant.contenu,
    author: chant.auteur,
  );
}
