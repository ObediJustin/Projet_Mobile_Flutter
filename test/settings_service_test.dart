import 'package:flutter_test/flutter_test.dart';
import 'package:projet1_tp/services/settings_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  group('SettingsService', () {
    late SettingsService service;

    setUp(() {
      SharedPreferences.setMockInitialValues({});
      service = SettingsService();
      SettingsService.lyricsFontSizeNotifier.value =
          SettingsService.defaultLyricsFontSize;
    });

    test('first use returns default values', () async {
      expect(await service.getLanguage(), SettingsService.defaultLanguage);
      expect(
        await service.getNotificationsEnabled(),
        SettingsService.defaultNotificationsEnabled,
      );
      expect(
        await service.getLyricsFontSize(),
        SettingsService.defaultLyricsFontSize,
      );
    });

    test('saved language can be retrieved', () async {
      await service.saveLanguage('English');

      expect(await service.getLanguage(), 'English');
    });

    test('saved notifications setting can be retrieved', () async {
      await service.saveNotificationsEnabled(false);

      expect(await service.getNotificationsEnabled(), isFalse);
    });

    test('saved lyrics font size can be retrieved', () async {
      await service.saveLyricsFontSize(22);

      expect(await service.getLyricsFontSize(), 22);
    });

    test('missing values fall back to defaults', () async {
      SharedPreferences.setMockInitialValues({
        SettingsService.languageKey: 'Swahili',
      });

      expect(await service.getLanguage(), 'Swahili');
      expect(
        await service.getNotificationsEnabled(),
        SettingsService.defaultNotificationsEnabled,
      );
      expect(
        await service.getLyricsFontSize(),
        SettingsService.defaultLyricsFontSize,
      );
    });

    test('invalid values use a safe fallback', () async {
      SharedPreferences.setMockInitialValues({
        SettingsService.languageKey: 'Lingala',
        SettingsService.lyricsFontSizeKey: 100.0,
      });

      expect(await service.getLanguage(), SettingsService.defaultLanguage);
      expect(
        await service.getLyricsFontSize(),
        SettingsService.maxLyricsFontSize,
      );
      expect(service.sanitizeLyricsFontSize(double.nan),
          SettingsService.defaultLyricsFontSize);
    });
  });
}
