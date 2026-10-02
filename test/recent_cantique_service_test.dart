import 'package:cantiques_boanerges/database/app_database.dart';
import 'package:cantiques_boanerges/services/cantique_service.dart';
import 'package:cantiques_boanerges/services/recent_cantique_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('RecentCantiqueService', () {
    late RecentCantiqueService service;

    setUp(() async {
      SharedPreferences.setMockInitialValues({});
      await AppDatabase.instance.initialize();
      await AppDatabase.instance.clearRecentlyViewedForTesting();
      await CantiqueService.instance.loadInitialData();
      service = RecentCantiqueService.instance;
    });

    test('1. aucun cantique consulte -> liste vide', () async {
      final recents = await service.getRecentlyViewedCantiques();
      expect(recents, isEmpty);
    });

    test('2. ouverture d\'un cantique -> il apparait dans les recents', () async {
      final all = CantiqueService.instance.getAllCantiques();
      expect(all, isNotEmpty);
      final first = all.first;

      await service.recordView(first.id);

      final recents = await service.getRecentlyViewedCantiques();
      expect(recents.length, 1);
      expect(recents.first.id, first.id);
    });

    test('3. ouverture d\'un deuxieme -> ordre correct (plus recent en premier)', () async {
      final all = CantiqueService.instance.getAllCantiques();
      final song1 = all[0];
      final song2 = all[1];

      await service.recordView(song1.id);
      await Future<void>.delayed(const Duration(milliseconds: 10));
      await service.recordView(song2.id);

      final recents = await service.getRecentlyViewedCantiques();
      expect(recents.length, 2);
      expect(recents[0].id, song2.id);
      expect(recents[1].id, song1.id);
    });

    test('4, 5, 6. reouverture du premier -> il remonte en premiere position, pas de doublons, ordre par last_viewed_at', () async {
      final all = CantiqueService.instance.getAllCantiques();
      final song1 = all[0];
      final song2 = all[1];

      await service.recordView(song1.id);
      await Future<void>.delayed(const Duration(milliseconds: 10));
      await service.recordView(song2.id);
      await Future<void>.delayed(const Duration(milliseconds: 10));
      await service.recordView(song1.id); // Re-view song 1

      final recents = await service.getRecentlyViewedCantiques();

      // Duplicates avoided: length is 2
      expect(recents.length, 2);
      // song1 moves back to position #1
      expect(recents[0].id, song1.id);
      expect(recents[1].id, song2.id);
    });
  });
}
