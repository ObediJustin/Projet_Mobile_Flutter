import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// Centralized Asset Registry for Cantiques du Message.
/// Prevents hardcoded asset paths across the application.
abstract class AppAssets {
  // --- Branding & Logos ---
  static const String logoMark = 'assets/branding/logo_mark.svg';
  static const String logoHorizontal = 'assets/branding/logo_horizontal.svg';
  static const String logoVertical = 'assets/branding/logo.svg';
  static const String appIcon = 'assets/branding/app_icon.png';
  static const String splashLogo = 'assets/splash/splash_logo.svg';
  static const String splashLogoPng = 'assets/splash/splash_logo.png';

  // --- Illustrations ---
  static const String verseOfDay = 'assets/illustrations/verse_of_day.svg';
  static const String recentHymns = 'assets/illustrations/recent_hymns.svg';
  static const String favorites = 'assets/illustrations/favorites.svg';
  static const String personalSongs = 'assets/illustrations/personal_songs.svg';
  static const String collections = 'assets/illustrations/collections.svg';
  static const String searchEmpty = 'assets/illustrations/search_empty.svg';
  static const String favoritesEmpty = 'assets/illustrations/favorites_empty.svg';
  static const String recentEmpty = 'assets/illustrations/recent_empty.svg';
  static const String notifications = 'assets/illustrations/notifications.svg';
  static const String settings = 'assets/illustrations/settings.svg';

  /// Helper widget to render an SVG asset with optional tint color and dimensions.
  static Widget svg(
    String path, {
    double? width,
    double? height,
    Color? color,
    BoxFit fit = BoxFit.contain,
    String? semanticsLabel,
  }) {
    return SvgPicture.asset(
      path,
      width: width,
      height: height,
      colorFilter: color != null
          ? ColorFilter.mode(color, BlendMode.srcIn)
          : null,
      fit: fit,
      semanticsLabel: semanticsLabel,
    );
  }
}
