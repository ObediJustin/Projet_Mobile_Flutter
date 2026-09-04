import '../models/cantique.dart';
import '../models/collection.dart';

final DateTime initialDataTimestamp = DateTime(2026, 1, 1);

final List<CantiqueCollection> initialCollections = [
  CantiqueCollection(
    id: 'crois_seulement',
    name: 'Crois seulement',
    createdAt: initialDataTimestamp,
    updatedAt: initialDataTimestamp,
  ),
  CantiqueCollection(
    id: 'only_believe',
    name: 'Only Believe',
    createdAt: initialDataTimestamp,
    updatedAt: initialDataTimestamp,
  ),
  CantiqueCollection(
    id: 'hosanna',
    name: 'Hosanna',
    createdAt: initialDataTimestamp,
    updatedAt: initialDataTimestamp,
  ),
  CantiqueCollection(
    id: 'boanerges_tabernacle',
    name: 'Boanergès Tabernacle',
    createdAt: initialDataTimestamp,
    updatedAt: initialDataTimestamp,
  ),
];

final List<Cantique> initialCantiques = [
  Cantique(
    id: 'crois_seulement_001',
    titre: 'Crois seulement',
    collectionId: 'crois_seulement',
    collection: 'Crois seulement',
    contenu:
        '''1. Quand tout semble perdu,\nQue la nuit est venue,\nN'abandonne pas,\nCrois seulement.\n\nRefrain :\nCrois seulement,\nDieu est avec toi,\nIl ne te laissera pas,\nCrois seulement.''',
    numero: 1,
    auteur: 'Auteur inconnu',
  ),
  Cantique(
    id: 'only_believe_001',
    titre: 'Only Believe',
    collectionId: 'only_believe',
    collection: 'Only Believe',
    contenu:
        '''1. Only believe, only believe,\nAll things are possible, only believe.\nOnly believe, only believe,\nAll things are possible, only believe.''',
    numero: 1,
    auteur: 'Paul Rader',
  ),
  Cantique(
    id: 'hosanna_001',
    titre: 'Hosanna',
    collectionId: 'hosanna',
    collection: 'Hosanna',
    contenu:
        '''1. Hosanna, hosanna,\nHosanna in the highest.\nHosanna, hosanna,\nHosanna in the highest.''',
    numero: 1,
    auteur: 'Auteur inconnu',
  ),
  Cantique(
    id: 'boanerges_tabernacle_001',
    titre: 'E YESU MSHINDAJI WA GOLGOTHA',
    collectionId: 'boanerges_tabernacle',
    collection: 'Boanergès Tabernacle',
    contenu:
        '''1. Hosanna, hosanna,\nHosanna in the highest.\nHosanna, hosanna,\nHosanna in the highest.''',
    numero: 1,
    auteur: 'Auteur inconnu',
  ),
];
