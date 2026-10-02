import 'package:flutter/material.dart';

enum AppThemeMode {
  green(
    key: 'green',
    label: 'Vert Nature',
    primary: Color(0xFF16803A),
    primaryDark: Color(0xFF0B5D2A),
    primaryLight: Color(0xFFEAF7EE),
    primaryVeryLight: Color(0xFFF4FAF6),
    secondary: Color(0xFF2D9C52),
    secondaryLight: Color(0xFFD8F3E5),
    secondaryDark: Color(0xFF1B6A36),
  ),
  blue(
    key: 'blue',
    label: 'Bleu',
    primary: Color(0xFF2563EB),
    primaryDark: Color(0xFF1E40AF),
    primaryLight: Color(0xFFEFF6FF),
    primaryVeryLight: Color(0xFFF8FAFC),
    secondary: Color(0xFF3B82F6),
    secondaryLight: Color(0xFFDBEAFE),
    secondaryDark: Color(0xFF1D4ED8),
  ),
  purple(
    key: 'purple',
    label: 'Violet',
    primary: Color(0xFF7C3AED),
    primaryDark: Color(0xFF5B21B6),
    primaryLight: Color(0xFFF3E8FF),
    primaryVeryLight: Color(0xFFFAF5FF),
    secondary: Color(0xFF8B5CF6),
    secondaryLight: Color(0xFFEDE9FE),
    secondaryDark: Color(0xFF6D28D9),
  ),
  amber(
    key: 'amber',
    label: 'Ambre',
    primary: Color(0xFFD97706),
    primaryDark: Color(0xFF92400E),
    primaryLight: Color(0xFFFFF7ED),
    primaryVeryLight: Color(0xFFFFFBEB),
    secondary: Color(0xFFF59E0B),
    secondaryLight: Color(0xFFFEF3C7),
    secondaryDark: Color(0xFFB45309),
  );

  final String key;
  final String label;
  final Color primary;
  final Color primaryDark;
  final Color primaryLight;
  final Color primaryVeryLight;
  final Color secondary;
  final Color secondaryLight;
  final Color secondaryDark;

  const AppThemeMode({
    required this.key,
    required this.label,
    required this.primary,
    required this.primaryDark,
    required this.primaryLight,
    required this.primaryVeryLight,
    required this.secondary,
    required this.secondaryLight,
    required this.secondaryDark,
  });

  static AppThemeMode fromKey(String? key) {
    switch (key) {
      case 'blue':
        return AppThemeMode.blue;
      case 'purple':
        return AppThemeMode.purple;
      case 'amber':
        return AppThemeMode.amber;
      case 'green':
      default:
        return AppThemeMode.green;
    }
  }
}
