import '../models/cantique.dart';

class CantiqueService {
  // Données mockées - à remplacer par une vraie base de données
  static final List<Cantique> _cantiques = [
    Cantique(
      id: '1',
      titre: 'Crois seulement',
      collection: 'Crois seulement',
      contenu: '''1. Quand tout semble perdu,\nQue la nuit est venue,\nN\'abandonne pas,\nCrois seulement.\n\nRefrain :\nCrois seulement,\nDieu est avec toi,\nIl ne te laissera pas,\nCrois seulement.''',
      numero: 1,
      auteur: 'Auteur inconnu',
    ),
    Cantique(
      id: '2',
      titre: 'Only Believe',
      collection: 'Only Believe',
      contenu: '''1. Only believe, only believe,\nAll things are possible, only believe.\nOnly believe, only believe,\nAll things are possible, only believe.''',
      numero: 1,
      auteur: 'Paul Rader',
    ),
    Cantique(
      id: '3',
      titre: 'Hosanna',
      collection: 'Hosanna',
      contenu: '''1. Hosanna, hosanna,\nHosanna in the highest.\nHosanna, hosanna,\nHosanna in the highest.''',
      numero: 1,
      auteur: 'Auteur inconnu',
    ),
  ];

  List<Cantique> getAllCantiques() {
    return _cantiques;
  }

  List<Cantique> getCantiquesByCollection(String collection) {
    return _cantiques.where((c) => c.collection == collection).toList();
  }

  List<String> getAllCollections() {
    return _cantiques.map((c) => c.collection).toList().toSet().toList();
  }

  List<Cantique> searchCantiques(String query) {
    if (query.isEmpty) return [];
    return _cantiques.where((c) =>
      c.titre.toLowerCase().contains(query.toLowerCase()) ||
      c.contenu.toLowerCase().contains(query.toLowerCase())
    ).toList();
  }

  Cantique? getCantiqueById(String id) {
    try {
      return _cantiques.firstWhere((c) => c.id == id);
    } catch (e) {
      return null;
    }
  }

  int getCantiqueCountByCollection(String collection) {
    return _cantiques.where((c) => c.collection == collection).length;
  }
}