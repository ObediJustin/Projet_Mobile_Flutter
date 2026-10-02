import 'package:flutter/material.dart';

/// Centralized Color Tokens for Cantiques du Message Design System.
/// Identity: Elegant, peaceful Green / Verdâtre aesthetic.
abstract class AppColors {
  // Primary Palette (Deep & Elegant Green)
  static const Color primary = Color(0xFF16803A);
  static const Color primaryDark = Color(0xFF0B5D2A);
  static const Color primaryLight = Color(0xFFEAF7EE);
  static const Color primaryVeryLight = Color(0xFFF4FAF6);

  // Secondary Accent (Fresh Leaf Green)
  static const Color secondary = Color(0xFF2D9C52);
  static const Color secondaryLight = Color(0xFFD8F3E5);
  static const Color secondaryDark = Color(0xFF1B6A36);

  // Neutral Background & Surface
  static const Color background = Color(0xFFF6F8F6);
  static const Color surface = Color(0xFFFFFFFF);
  static const Color surfaceVariant = Color(0xFFF0F4F1);
  static const Color surfaceHover = Color(0xFFE8EFEA);

  // Text Colors
  static const Color textPrimary = Color(0xFF17201A);
  static const Color textSecondary = Color(0xFF5A685D);
  static const Color textMuted = Color(0xFF8A998E);
  static const Color textOnPrimary = Color(0xFFFFFFFF);

  // Borders & Dividers
  static const Color border = Color(0xFFDDE5DF);
  static const Color borderLight = Color(0xFFEFF4F0);
  static const Color borderFocus = Color(0xFF16803A);

  // Functional / Status
  static const Color error = Color(0xFFC62828);
  static const Color errorLight = Color(0xFFFFEBEE);
  static const Color warning = Color(0xFFB7791F);
  static const Color warningLight = Color(0xFFFFF8E1);
  static const Color success = Color(0xFF1B5E20);
  static const Color successLight = Color(0xFFE8F5E9);

  // Collection Badge Color Accents (Harmonious Verdâtre & Earthy Tones)
  static const List<Color> collectionGradientsStart = [
    Color(0xFF16803A), // Forest Green
    Color(0xFF0F766E), // Deep Teal Green
    Color(0xFF2E7D32), // Emerald Green
    Color(0xFF15803D), // Leaf Green
    Color(0xFF33691E), // Olive Green
    Color(0xFF0D9488), // Ocean Teal Green
  ];

  static const List<Color> collectionGradientsEnd = [
    Color(0xFF2D9C52),
    Color(0xFF14B8A6),
    Color(0xFF4CAF50),
    Color(0xFF22C55E),
    Color(0xFF689F38),
    Color(0xFF2DD4BF),
  ];
}
