import 'dart:math';

class VerseItem {
  final String text;
  final String reference;

  const VerseItem({required this.text, required this.reference});

  String get formatted => '"$text" — $reference';
}

class VerseService {
  VerseService._();
  static final VerseService instance = VerseService._();

  static const List<VerseItem> _verses = [
    VerseItem(
      text: "Je puis tout par Christ qui me fortifie.",
      reference: "Philippiens 4:13",
    ),
    VerseItem(
      text: "L'Éternel est mon berger : je ne manquerai de rien.",
      reference: "Psaume 23:1",
    ),
    VerseItem(
      text: "Crois seulement, toutes choses sont possibles à celui qui croit.",
      reference: "Marc 9:23",
    ),
    VerseItem(
      text: "Car Dieu a tant aimé le monde qu'il a donné son Fils unique.",
      reference: "Jean 3:16",
    ),
    VerseItem(
      text: "Ne t'ai-je pas donné cet ordre : Fortifie-toi et prends courage ?",
      reference: "Josué 1:9",
    ),
    VerseItem(
      text: "Jésus-Christ est le même hier, aujourd'hui, et éternellement.",
      reference: "Hébreux 13:8",
    ),
    VerseItem(
      text: "Voici, je vous enverrai Élie, le prophète, avant que le jour de l'Éternel arrive.",
      reference: "Malachie 4:5",
    ),
    VerseItem(
      text: "Mais aux jours de la voix du septième ange, le mystère de Dieu s'accomplirait.",
      reference: "Apocalypse 10:7",
    ),
    VerseItem(
      text: "Recherchez la paix avec tous, et la sanctification, sans laquelle personne ne verra le Seigneur.",
      reference: "Hébreux 12:14",
    ),
    VerseItem(
      text: "Ta parole est une lampe à mes pieds, et une lumière sur mon sentier.",
      reference: "Psaume 119:105",
    ),
  ];

  VerseItem getVerseOfDay([DateTime? date]) {
    final d = date ?? DateTime.now();
    final dayOfYear = d.difference(DateTime(d.year, 1, 1)).inDays;
    final index = dayOfYear % _verses.length;
    return _verses[index];
  }

  VerseItem getRandomVerse() {
    final rnd = Random();
    return _verses[rnd.nextInt(_verses.length)];
  }

  List<VerseItem> getAllVerses() => List.unmodifiable(_verses);
}
