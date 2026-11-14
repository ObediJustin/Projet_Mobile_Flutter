import 'package:cantiques_boanerges/services/cantique_service.dart';
import 'package:cantiques_boanerges/services/notification_service.dart';
import 'package:cantiques_boanerges/services/settings_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('NotificationService', () {
    late SettingsService settingsService;

    setUp(() async {
      SharedPreferences.setMockInitialValues({});
      settingsService = SettingsService();
      await settingsService.initSettings();
      await CantiqueService.instance.loadInitialData();
    });

    test('syncNotificationSchedule respects notifications toggle', () async {
      await settingsService.saveNotificationsEnabled(false);
      expect(await settingsService.getNotificationsEnabled(), isFalse);

      await NotificationService.instance.syncNotificationSchedule();

      await settingsService.saveNotificationsEnabled(true);
      expect(await settingsService.getNotificationsEnabled(), isTrue);

      await NotificationService.instance.syncNotificationSchedule();
    });

    test('cantique payload formatting and resolution', () {
      final cantiques = CantiqueService.instance.getAllCantiques();
      expect(cantiques, isNotEmpty);
      final first = cantiques.first;

      final payload = 'cantique:${first.id}';
      expect(payload.startsWith('cantique:'), isTrue);

      final extractedId = NotificationService.cantiqueIdFromPayload(payload);
      final resolvedCantique = CantiqueService.instance.getCantiqueById(
        extractedId!,
      );
      expect(resolvedCantique, isNotNull);
      expect(resolvedCantique!.id, first.id);
    });

    test('payload parser rejects unrelated and empty targets', () {
      expect(
        NotificationService.cantiqueIdFromPayload('verse_of_the_day'),
        isNull,
      );
      expect(NotificationService.cantiqueIdFromPayload('cantique:  '), isNull);
      expect(
        NotificationService.cantiqueIdFromPayload('cantique:hosanna_001'),
        'hosanna_001',
      );
    });

    test('daily cantique content changes deterministically', () {
      final first = NotificationService.dailyContentIndex(
        DateTime(2026, 1, 1),
        10,
      );
      final sameDay = NotificationService.dailyContentIndex(
        DateTime(2026, 1, 1, 23, 59),
        10,
      );
      final nextDay = NotificationService.dailyContentIndex(
        DateTime(2026, 1, 2),
        10,
      );

      expect(sameDay, first);
      expect(nextDay, isNot(first));
    });
  });
}
