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
  runApp(const AppBootstrap());
}

class AppBootstrap extends StatefulWidget {
  const AppBootstrap({super.key});

  @override
  State<AppBootstrap> createState() => _AppBootstrapState();
}

class _AppBootstrapState extends State<AppBootstrap> {
  bool _isInitializing = false;
  bool _isReady = false;
  Object? _startupError;

  @override
  void initState() {
    super.initState();
    _initialize();
  }

  Future<void> _initialize() async {
    if (_isInitializing) return;
    setState(() {
      _isInitializing = true;
      _startupError = null;
    });

    try {
      final settingsService = SettingsService();
      await settingsService.initSettings();

      await AppDatabase.instance.initialize();
      await CantiqueService.instance.loadCacheFromDatabase();

      await NotificationService.instance.initialize();

      if (!mounted) return;
      setState(() => _isReady = true);
    } catch (error, stackTrace) {
      debugPrint('Critical application startup failure: $error');
      debugPrintStack(stackTrace: stackTrace);
      if (!mounted) return;
      setState(() => _startupError = error);
    } finally {
      if (mounted) {
        setState(() => _isInitializing = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_isReady) return const MyApp();

    return ValueListenableBuilder<ThemeMode>(
      valueListenable: SettingsService.themeModeNotifier,
      builder: (context, themeMode, _) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          themeMode: themeMode,
          theme: AppTheme.buildTheme(SettingsService.themeNotifier.value),
          darkTheme: AppTheme.buildDarkTheme(SettingsService.themeNotifier.value),
          locale: SettingsService.resolveLocale(
            SettingsService.languageNotifier.value,
          ),
          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            AppLocalizations.delegate,
          ],
          supportedLocales: AppLocalizations.supportedLocales,
          home: Builder(
            builder: (context) {
              final l10n = AppLocalizations.of(context)!;
              return Scaffold(
                body: SafeArea(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(24),
                      child: _startupError == null
                          ? const CircularProgressIndicator()
                          : Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const Icon(Icons.error_outline_rounded, size: 48),
                                const SizedBox(height: 16),
                                Text(
                                  l10n.demarrageErreurTitle,
                                  style: Theme.of(context).textTheme.titleLarge,
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(height: 8),
                                Text(
                                  l10n.demarrageErreurMessage,
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(height: 24),
                                FilledButton.icon(
                                  onPressed: _isInitializing ? null : _initialize,
                                  icon: const Icon(Icons.refresh_rounded),
                                  label: Text(l10n.reessayer),
                                ),
                              ],
                            ),
                    ),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
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
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: SettingsService.themeModeNotifier,
      builder: (context, themeMode, _) {
        return ValueListenableBuilder<AppThemeMode>(
          valueListenable: SettingsService.themeNotifier,
          builder: (context, colorMode, _) {
            return ValueListenableBuilder<String>(
              valueListenable: SettingsService.languageNotifier,
              builder: (context, languagePref, _) {
                final locale = SettingsService.resolveLocale(languagePref);

                return MaterialApp(
                  navigatorKey: navigatorKey,
                  title: 'Cantiques du Message',
                  debugShowCheckedModeBanner: false,
                  themeMode: themeMode,
                  theme: AppTheme.buildTheme(colorMode),
                  darkTheme: AppTheme.buildDarkTheme(colorMode),
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
      },
    );
  }
}
