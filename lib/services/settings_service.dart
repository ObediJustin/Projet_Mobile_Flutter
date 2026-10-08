import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../theme/app_theme_mode.dart';

class SettingsService {
  static const String themeKey = 'settings_theme';
  static const String languageKey = 'settings_language';
  static const String notificationsKey = 'settings_notifications_enabled';
  static const String lyricsFontSizeKey = 'chant_paroles_font_size';

  static const String defaultTheme = 'green';
  static const String defaultLanguage = 'Français';
  static const bool defaultNotificationsEnabled = true;
  static const double defaultLyricsFontSize = 16.0;
  static const double minLyricsFontSize = 12.0;
  static const double maxLyricsFontSize = 26.0;

  static const List<String> supportedLanguages = [
    'Français',
    'English',
    'system',
  ];

  static final ValueNotifier<AppThemeMode> themeNotifier =
      ValueNotifier<AppThemeMode>(AppThemeMode.green);

  static final ValueNotifier<String> languageNotifier = ValueNotifier<String>(
    defaultLanguage,
  );

  static final ValueNotifier<bool> notificationsNotifier = ValueNotifier<bool>(
    defaultNotificationsEnabled,
  );

  static final ValueNotifier<double> lyricsFontSizeNotifier =
      ValueNotifier<double>(defaultLyricsFontSize);

  Future<void> initSettings() async {
    final theme = await getTheme();
    themeNotifier.value = theme;

    final lang = await getLanguage();
    languageNotifier.value = lang;

    final notifs = await getNotificationsEnabled();
    notificationsNotifier.value = notifs;

    final font = await getLyricsFontSize();
    lyricsFontSizeNotifier.value = font;
  }

  Future<AppThemeMode> getTheme() async {
    final prefs = await SharedPreferences.getInstance();
    final rawKey = prefs.getString(themeKey) ?? defaultTheme;
    final mode = AppThemeMode.fromKey(rawKey);
    themeNotifier.value = mode;
    return mode;
  }

  Future<void> saveTheme(AppThemeMode mode) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(themeKey, mode.key);
    themeNotifier.value = mode;
  }

  Future<String> getLanguage() async {
    final prefs = await SharedPreferences.getInstance();
    final raw = prefs.getString(languageKey);
    final sanitized = sanitizeLanguage(raw);
    languageNotifier.value = sanitized;
    return sanitized;
  }

  Future<void> saveLanguage(String language) async {
    final prefs = await SharedPreferences.getInstance();
    final sanitized = sanitizeLanguage(language);
    await prefs.setString(languageKey, sanitized);
    languageNotifier.value = sanitized;
  }

  Future<bool> getNotificationsEnabled() async {
    final prefs = await SharedPreferences.getInstance();
    final enabled =
        prefs.getBool(notificationsKey) ?? defaultNotificationsEnabled;
    notificationsNotifier.value = enabled;
    return enabled;
  }

  Future<void> saveNotificationsEnabled(bool enabled) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(notificationsKey, enabled);
    notificationsNotifier.value = enabled;
  }

  Future<double> getLyricsFontSize() async {
    final prefs = await SharedPreferences.getInstance();
    final value = prefs.getDouble(lyricsFontSizeKey);
    final sanitized = sanitizeLyricsFontSize(value);
    lyricsFontSizeNotifier.value = sanitized;
    return sanitized;
  }

  Future<void> saveLyricsFontSize(double value) async {
    final sanitized = sanitizeLyricsFontSize(value);
    final prefs = await SharedPreferences.getInstance();
    await prefs.setDouble(lyricsFontSizeKey, sanitized);
    lyricsFontSizeNotifier.value = sanitized;
  }

  String sanitizeLanguage(String? language) {
    if (language == null || !supportedLanguages.contains(language)) {
      return defaultLanguage;
    }
    return language;
  }

  double sanitizeLyricsFontSize(double? value) {
    if (value == null || value.isNaN || value.isInfinite) {
      return defaultLyricsFontSize;
    }
    return value.clamp(minLyricsFontSize, maxLyricsFontSize).toDouble();
  }

  static Locale resolveLocale(String languagePreference) {
    if (languagePreference == 'English') {
      return const Locale('en');
    } else if (languagePreference == 'system') {
      final systemLocale = PlatformDispatcher.instance.locale;
      if (systemLocale.languageCode == 'en') {
        return const Locale('en');
      }
      return const Locale('fr');
    }
    return const Locale('fr');
  }
}
