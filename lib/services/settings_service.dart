import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsService {
  static const String languageKey = 'settings_language';
  static const String notificationsKey = 'settings_notifications_enabled';
  static const String lyricsFontSizeKey = 'chant_paroles_font_size';

  static const String defaultLanguage = 'Français';
  static const bool defaultNotificationsEnabled = true;
  static const double defaultLyricsFontSize = 16.0;
  static const double minLyricsFontSize = 12.0;
  static const double maxLyricsFontSize = 26.0;

  static const List<String> supportedLanguages = [
    'Français',
    'English',
    'Swahili',
  ];

  static final ValueNotifier<double> lyricsFontSizeNotifier =
      ValueNotifier<double>(defaultLyricsFontSize);

  Future<String> getLanguage() async {
    final prefs = await SharedPreferences.getInstance();
    return sanitizeLanguage(prefs.getString(languageKey));
  }

  Future<void> saveLanguage(String language) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(languageKey, sanitizeLanguage(language));
  }

  Future<bool> getNotificationsEnabled() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(notificationsKey) ?? defaultNotificationsEnabled;
  }

  Future<void> saveNotificationsEnabled(bool enabled) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(notificationsKey, enabled);
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
}
