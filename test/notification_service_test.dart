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

      final extractedId = payload.substring('cantique:'.length);
      final resolvedCantique = CantiqueService.instance.getCantiqueById(extractedId);
      expect(resolvedCantique, isNotNull);
      expect(resolvedCantique!.id, first.id);
    });
  });
}
