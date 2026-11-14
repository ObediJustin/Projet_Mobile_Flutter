import 'dart:async';

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

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  StreamSubscription<String>? _notificationSubscription;
  String? _initialNotificationPayload;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _initialNotificationPayload = NotificationService.instance
        .takeInitialPayload();
    _listenToNotificationTaps();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      unawaited(NotificationService.instance.refreshForDeviceChanges());
    }
  }

  void _listenToNotificationTaps() {
    _notificationSubscription = NotificationService.instance.onNotificationTap
        .listen(_openNotificationPayload);
  }

  Widget? _pageForNotificationPayload(String? payload) {
    if (payload == null) return null;
    final cantiqueId = NotificationService.cantiqueIdFromPayload(payload);
    if (cantiqueId == null) return null;
    final cantique = CantiqueService.instance.getCantiqueById(cantiqueId);
    return cantique == null ? null : CantiqueDetailPage(cantique: cantique);
  }

  void _openNotificationPayload(String payload) {
    final page = _pageForNotificationPayload(payload);
    if (page == null) return;
    final navigator = navigatorKey.currentState;
    if (navigator == null) {
      WidgetsBinding.instance.addPostFrameCallback(
        (_) => _openNotificationPayload(payload),
      );
      return;
    }
    navigator.push(MaterialPageRoute(builder: (_) => page));
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _notificationSubscription?.cancel();
    super.dispose();
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
              home: SplashPage(
                pageAfterSplash: _pageForNotificationPayload(
                  _initialNotificationPayload,
                ),
              ),
            );
          },
        );
      },
    );
  }
}
