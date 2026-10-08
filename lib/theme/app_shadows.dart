import 'package:flutter/material.dart';
import 'app_colors.dart';

/// Centralized Elevation & Shadow Tokens.
abstract class AppShadows {
  static const List<BoxShadow> subtle = [
    BoxShadow(color: Color(0x0A000000), blurRadius: 10, offset: Offset(0, 4)),
  ];

  static const List<BoxShadow> card = [
    BoxShadow(color: Color(0x0F16803A), blurRadius: 14, offset: Offset(0, 4)),
  ];

  static const List<BoxShadow> elevated = [
    BoxShadow(color: Color(0x1816803A), blurRadius: 20, offset: Offset(0, 8)),
  ];

  static final List<BoxShadow> greenGlow = [
    BoxShadow(
      color: AppColors.primary.withValues(alpha: 0.25),
      blurRadius: 16,
      offset: const Offset(0, 6),
    ),
  ];
}
