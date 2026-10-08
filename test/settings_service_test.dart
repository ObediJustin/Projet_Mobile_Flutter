import 'package:cantiques_boanerges/services/settings_service.dart';
import 'package:cantiques_boanerges/theme/app_theme_mode.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  group('SettingsService', () {
    late SettingsService service;

    setUp(() {
      SharedPreferences.setMockInitialValues({});
      service = SettingsService();
      SettingsService.lyricsFontSizeNotifier.value =
          SettingsService.defaultLyricsFontSize;
      SettingsService.themeNotifier.value = AppThemeMode.green;
      SettingsService.languageNotifier.value = SettingsService.defaultLanguage;
    });

    test('first use returns default values', () async {
      expect(await service.getTheme(), AppThemeMode.green);
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

    test('all 4 themes can be saved and retrieved', () async {
      for (final mode in AppThemeMode.values) {
        await service.saveTheme(mode);
        expect(await service.getTheme(), mode);
        expect(SettingsService.themeNotifier.value, mode);
      }
    });

    test(
      'saved language can be retrieved (Français, English, system)',
      () async {
        await service.saveLanguage('English');
        expect(await service.getLanguage(), 'English');

        await service.saveLanguage('system');
        expect(await service.getLanguage(), 'system');

        await service.saveLanguage('Français');
        expect(await service.getLanguage(), 'Français');
      },
    );

    test('resolveLocale resolves correct locales for preferences', () {
      expect(SettingsService.resolveLocale('Français'), const Locale('fr'));
      expect(SettingsService.resolveLocale('English'), const Locale('en'));
      expect(SettingsService.resolveLocale('system'), isA<Locale>());
    });

    test('saved notifications setting can be retrieved', () async {
      await service.saveNotificationsEnabled(false);
      expect(await service.getNotificationsEnabled(), isFalse);

      await service.saveNotificationsEnabled(true);
      expect(await service.getNotificationsEnabled(), isTrue);
    });

    test('saved lyrics font size can be retrieved', () async {
      await service.saveLyricsFontSize(22);
      expect(await service.getLyricsFontSize(), 22);
    });

    test('invalid values use a safe fallback', () async {
      SharedPreferences.setMockInitialValues({
        SettingsService.themeKey: 'unknown_theme',
        SettingsService.languageKey: 'Klingon',
        SettingsService.lyricsFontSizeKey: 100.0,
      });

      expect(await service.getTheme(), AppThemeMode.green);
      expect(await service.getLanguage(), SettingsService.defaultLanguage);
      expect(
        await service.getLyricsFontSize(),
        SettingsService.maxLyricsFontSize,
      );
    });
  });
}
