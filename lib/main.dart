import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'database/app_database.dart';
import 'l10n/app_localizations.dart';
import 'pages/cantique_detail.dart';
import 'pages/splash_page.dart';
import 'services/cantique_service.dart';
import 'services/notification_service.dart';
import 'services/settings_service.dart';
import 'theme/app_theme.dart';
import 'theme/app_theme_mode.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final settingsService = SettingsService();
  await settingsService.initSettings();

  await AppDatabase.instance.initialize();
  await CantiqueService.instance.loadCacheFromDatabase();

  await NotificationService.instance.initialize();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    _listenToNotificationTaps();
  }

  void _listenToNotificationTaps() {
    NotificationService.instance.onNotificationTap.listen((payload) {
      if (payload.startsWith('cantique:')) {
        final cantiqueId = payload.substring('cantique:'.length);
        final cantique = CantiqueService.instance.getCantiqueById(cantiqueId);
        if (cantique != null) {
          navigatorKey.currentState?.push(
            MaterialPageRoute(
              builder: (context) => CantiqueDetailPage(cantique: cantique),
            ),
          );
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<AppThemeMode>(
      valueListenable: SettingsService.themeNotifier,
      builder: (context, themeMode, _) {
        return ValueListenableBuilder<String>(
          valueListenable: SettingsService.languageNotifier,
          builder: (context, languagePref, _) {
            final locale = SettingsService.resolveLocale(languagePref);

            return MaterialApp(
              navigatorKey: navigatorKey,
              title: 'Cantiques du Message',
              debugShowCheckedModeBanner: false,
              theme: AppTheme.buildTheme(themeMode),
              locale: locale,
              localizationsDelegates: const [
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
                AppLocalizations.delegate,
              ],
              supportedLocales: AppLocalizations.supportedLocales,
              home: const SplashPage(),
            );
          },
        );
      },
    );
  }
}
