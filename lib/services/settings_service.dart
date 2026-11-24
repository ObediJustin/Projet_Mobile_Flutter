import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../theme/app_theme_mode.dart';

class SettingsService {
  static const String themeKey = 'settings_theme';
  static const String themeModeKey = 'settings_theme_mode';
  static const String languageKey = 'settings_language';
  static const String notificationsKey = 'settings_notifications_enabled';
  static const String lyricsFontSizeKey = 'chant_paroles_font_size';
  static const String worshipScrollSpeedKey = 'worship_scroll_speed';

  static const String defaultTheme = 'green';
  static const ThemeMode defaultThemeMode = ThemeMode.system;
  static const String defaultLanguage = 'Français';
  static const bool defaultNotificationsEnabled = true;
  static const double defaultLyricsFontSize = 16.0;
  static const double minLyricsFontSize = 12.0;
  static const double maxLyricsFontSize = 32.0;
  static const double defaultWorshipScrollSpeed = 28.0;
  static const double minWorshipScrollSpeed = 8.0;
  static const double maxWorshipScrollSpeed = 80.0;

  static const List<String> supportedLanguages = [
    'Français',
    'English',
    'system',
  ];

  static final ValueNotifier<AppThemeMode> themeNotifier =
      ValueNotifier<AppThemeMode>(AppThemeMode.green);

  static final ValueNotifier<ThemeMode> themeModeNotifier =
      ValueNotifier<ThemeMode>(defaultThemeMode);

  static final ValueNotifier<String> languageNotifier = ValueNotifier<String>(
    defaultLanguage,
  );

  static final ValueNotifier<bool> notificationsNotifier = ValueNotifier<bool>(
    defaultNotificationsEnabled,
  );

  static final ValueNotifier<double> lyricsFontSizeNotifier =
      ValueNotifier<double>(defaultLyricsFontSize);

  static final ValueNotifier<double> worshipScrollSpeedNotifier =
      ValueNotifier<double>(defaultWorshipScrollSpeed);

  Future<void> initSettings() async {
    final theme = await getTheme();
    themeNotifier.value = theme;

    final themeMode = await getThemeMode();
    themeModeNotifier.value = themeMode;

    final lang = await getLanguage();
    languageNotifier.value = lang;

    final notifs = await getNotificationsEnabled();
    notificationsNotifier.value = notifs;

    final font = await getLyricsFontSize();
    lyricsFontSizeNotifier.value = font;

    final worshipSpeed = await getWorshipScrollSpeed();
    worshipScrollSpeedNotifier.value = worshipSpeed;
  }

  Future<ThemeMode> getThemeMode() async {
    final prefs = await SharedPreferences.getInstance();
    final rawKey = prefs.getString(themeModeKey);
    final mode = parseThemeMode(rawKey);
    themeModeNotifier.value = mode;
    return mode;
  }

  Future<void> saveThemeMode(ThemeMode mode) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(themeModeKey, mode.name);
    themeModeNotifier.value = mode;
  }

  static ThemeMode parseThemeMode(String? key) {
    switch (key) {
      case 'light':
        return ThemeMode.light;
      case 'dark':
        return ThemeMode.dark;
      case 'system':
      default:
        return ThemeMode.system;
    }
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

  void setLyricsFontSizeInMemory(double value) {
    final sanitized = sanitizeLyricsFontSize(value);
    lyricsFontSizeNotifier.value = sanitized;
  }

  Future<void> resetLyricsFontSize() async {
    await saveLyricsFontSize(defaultLyricsFontSize);
  }

  Future<double> getWorshipScrollSpeed() async {
    final prefs = await SharedPreferences.getInstance();
    final value = prefs.getDouble(worshipScrollSpeedKey);
    final sanitized = sanitizeWorshipScrollSpeed(value);
    worshipScrollSpeedNotifier.value = sanitized;
    return sanitized;
  }

  Future<void> saveWorshipScrollSpeed(double value) async {
    final sanitized = sanitizeWorshipScrollSpeed(value);
    final prefs = await SharedPreferences.getInstance();
    await prefs.setDouble(worshipScrollSpeedKey, sanitized);
    worshipScrollSpeedNotifier.value = sanitized;
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

  double sanitizeWorshipScrollSpeed(double? value) {
    if (value == null || value.isNaN || value.isInfinite) {
      return defaultWorshipScrollSpeed;
    }
    return value.clamp(minWorshipScrollSpeed, maxWorshipScrollSpeed).toDouble();
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
