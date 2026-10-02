import 'package:flutter_test/flutter_test.dart';
import 'package:cantiques_boanerges/services/cantique_service.dart';

void main() {
  group('CantiqueService identifiers', () {
    setUpAll(() async {
      TestWidgetsFlutterBinding.ensureInitialized();
      await CantiqueService.instance.loadInitialData();
    });

    test('all cantiques have globally unique technical ids', () {
      final service = CantiqueService.instance;
      final ids = service.getAllCantiques().map((c) => c.id).toList();

      expect(ids.toSet(), hasLength(ids.length));
    });

    test('same numero can exist in multiple collections', () {
      final service = CantiqueService.instance;
      final numeroOneCantiques =
          service.getAllCantiques().where((c) => c.numero == 1).toList();

      expect(numeroOneCantiques, hasLength(greaterThan(1)));
      expect(
        numeroOneCantiques.map((c) => c.collectionId).toSet().length,
        greaterThan(1),
      );
    });

    test('getCantiqueById uses the technical id', () {
      final service = CantiqueService.instance;

      expect(service.getCantiqueById('hosanna_001')?.id, 'hosanna_001');
      expect(
        service.getCantiqueById('boanerges_tabernacle_001')?.id,
        'boanerges_tabernacle_001',
      );
    });

    test('legacy numeric ids are normalized for existing favorites', () {
      expect(CantiqueService.normalizeCantiqueId('1'), 'crois_seulement_001');
      expect(CantiqueService.normalizeCantiqueId('2'), 'only_believe_001');
      expect(CantiqueService.normalizeCantiqueId('3'), 'hosanna_001');
    });
  });
}
