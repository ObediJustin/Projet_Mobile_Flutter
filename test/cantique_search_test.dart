import 'package:cantiques_boanerges/models/cantique.dart';
import 'package:cantiques_boanerges/services/cantique_service.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final cantique = Cantique(
    id: 'search_042',
    titre: 'Grâce   infinie',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau',
    contenu: 'Jésus sauve encore',
    numero: 42,
    auteur: 'Élie Test',
  );

  test('search matches every supported field with one shared predicate', () {
    for (final query in [
      'grace',
      '  GRÂCE infinie  ',
      '42',
      'elie',
      'jesus',
      'petit troupeau',
      '  petit   42  ',
    ]) {
      expect(CantiqueService.filterCantiques([cantique], query), [
        cantique,
      ], reason: 'query: $query');
    }
  });

  test('search ignores decomposed accents and rejects unrelated terms', () {
    expect(normalizeCantiqueSearchText('Gra\u0302ce'), 'grace');
    expect(
      CantiqueService.filterCantiques([cantique], 'grace absent'),
      isEmpty,
    );
  });
}
