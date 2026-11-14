import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_timezone/flutter_timezone.dart';
import 'package:timezone/data/latest_all.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

import 'cantique_service.dart';
import 'settings_service.dart';
import 'verse_service.dart';

class NotificationService {
  NotificationService._();
  static final NotificationService instance = NotificationService._();

  static const int _scheduleHorizonDays = 14;
  static const int _verseNotificationBaseId = 1100;
  static const int _cantiqueNotificationBaseId = 2100;

  final FlutterLocalNotificationsPlugin _notificationsPlugin =
      FlutterLocalNotificationsPlugin();

  final StreamController<String> _onNotificationTapController =
      StreamController<String>.broadcast();

  Stream<String> get onNotificationTap => _onNotificationTapController.stream;

  bool _isInitialized = false;
  bool _timezoneReady = false;
  String? _initialPayload;

  bool get _isSupportedPlatform {
    if (kIsWeb) return false;
    return defaultTargetPlatform == TargetPlatform.android ||
        defaultTargetPlatform == TargetPlatform.iOS;
  }

  Future<bool> _initializeTimezone() async {
    try {
      tz.initializeTimeZones();
      final timezone = await FlutterTimezone.getLocalTimezone();
      tz.setLocalLocation(tz.getLocation(timezone.identifier));
      return true;
    } catch (error, stackTrace) {
      debugPrint('Unable to initialize the device timezone: $error');
      debugPrintStack(stackTrace: stackTrace);
      return false;
    }
  }

  Future<void> initialize() async {
    if (_isInitialized || !_isSupportedPlatform) {
      _isInitialized = true;
      return;
    }

    const androidSettings = AndroidInitializationSettings(
      '@mipmap/ic_launcher',
    );
    const iosSettings = DarwinInitializationSettings(
      requestAlertPermission: false,
      requestBadgePermission: false,
      requestSoundPermission: false,
    );

    const initSettings = InitializationSettings(
      android: androidSettings,
      iOS: iosSettings,
    );

    try {
      final initialized = await _notificationsPlugin.initialize(
        initSettings,
        onDidReceiveNotificationResponse: (details) {
          _emitPayload(details.payload);
        },
      );
      if (initialized != true) {
        debugPrint('Notification plugin initialization was declined.');
        return;
      }

      _isInitialized = true;
      _timezoneReady = await _initializeTimezone();

      final launchDetails = await _notificationsPlugin
          .getNotificationAppLaunchDetails();
      if (launchDetails?.didNotificationLaunchApp ?? false) {
        final payload = launchDetails?.notificationResponse?.payload;
        if (payload != null && payload.isNotEmpty) {
          _initialPayload = payload;
        }
      }

      await syncNotificationSchedule();
    } catch (error, stackTrace) {
      debugPrint('Notification initialization failed: $error');
      debugPrintStack(stackTrace: stackTrace);
    }
  }

  void _emitPayload(String? payload) {
    if (payload != null && payload.isNotEmpty) {
      _onNotificationTapController.add(payload);
    }
  }

  String? takeInitialPayload() {
    final payload = _initialPayload;
    _initialPayload = null;
    return payload;
  }

  static String? cantiqueIdFromPayload(String payload) {
    const prefix = 'cantique:';
    if (!payload.startsWith(prefix)) return null;
    final id = payload.substring(prefix.length).trim();
    return id.isEmpty ? null : id;
  }

  Future<bool> requestPermission() async {
    if (!_isSupportedPlatform) return false;

    try {
      if (defaultTargetPlatform == TargetPlatform.android) {
        final androidImplementation = _notificationsPlugin
            .resolvePlatformSpecificImplementation<
              AndroidFlutterLocalNotificationsPlugin
            >();
        if (androidImplementation == null) return false;

        final granted =
            await androidImplementation.requestNotificationsPermission() ??
            false;
        if (!granted) return false;

        // Denial is not fatal: scheduling falls back to inexact alarms.
        try {
          await androidImplementation.requestExactAlarmsPermission();
        } catch (error) {
          debugPrint('Exact alarm permission was not granted: $error');
        }
        return true;
      }

      final iosImplementation = _notificationsPlugin
          .resolvePlatformSpecificImplementation<
            IOSFlutterLocalNotificationsPlugin
          >();

      if (iosImplementation == null) return false;
      return await iosImplementation.requestPermissions(
            alert: true,
            badge: true,
            sound: true,
          ) ??
          false;
    } catch (error, stackTrace) {
      debugPrint('Notification permission request failed: $error');
      debugPrintStack(stackTrace: stackTrace);
      return false;
    }
  }

  Future<void> syncNotificationSchedule() async {
    if (!_isSupportedPlatform || !_isInitialized) return;

    final enabled = await SettingsService().getNotificationsEnabled();

    if (!enabled) {
      await cancelAll();
      return;
    }

    if (!_timezoneReady) return;

    await cancelAll();
    await scheduleDailyVerseNotification();
    await scheduleRandomCantiqueNotification();
  }

  Future<void> refreshForDeviceChanges() async {
    if (!_isSupportedPlatform || !_isInitialized) return;
    _timezoneReady = await _initializeTimezone();
    await syncNotificationSchedule();
  }

  Future<void> cancelAll() async {
    if (!_isSupportedPlatform) return;
    try {
      await _notificationsPlugin.cancelAll();
    } catch (error, stackTrace) {
      debugPrint('Unable to cancel notifications: $error');
      debugPrintStack(stackTrace: stackTrace);
    }
  }

  Future<AndroidScheduleMode> _androidScheduleMode() async {
    if (defaultTargetPlatform != TargetPlatform.android) {
      return AndroidScheduleMode.exactAllowWhileIdle;
    }
    try {
      final androidImplementation = _notificationsPlugin
          .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin
          >();
      final canScheduleExact =
          await androidImplementation?.canScheduleExactNotifications() ?? false;
      return canScheduleExact
          ? AndroidScheduleMode.exactAllowWhileIdle
          : AndroidScheduleMode.inexactAllowWhileIdle;
    } catch (_) {
      return AndroidScheduleMode.inexactAllowWhileIdle;
    }
  }

  Future<_NotificationCopy> _notificationCopy() async {
    final language = await SettingsService().getLanguage();
    final english =
        SettingsService.resolveLocale(language).languageCode == 'en';
    return english
        ? const _NotificationCopy(
            verseTitle: '📖 Verse of the Day',
            cantiqueTitle: '🎵 Song of the Moment',
            cantiqueBodyPrefix: 'Discover a hymn today:',
          )
        : const _NotificationCopy(
            verseTitle: '📖 Verset du jour',
            cantiqueTitle: '🎵 Cantique du moment',
            cantiqueBodyPrefix: 'Découvrez un cantique aujourd’hui :',
          );
  }

  Future<void> scheduleDailyVerseNotification() async {
    if (!_isSupportedPlatform || !_timezoneReady) return;

    const details = NotificationDetails(
      android: AndroidNotificationDetails(
        'daily_verse_channel',
        'Verset du jour',
        channelDescription: 'Notifications quotidiennes du Verset du jour',
        importance: Importance.defaultImportance,
        priority: Priority.defaultPriority,
      ),
      iOS: DarwinNotificationDetails(),
    );
    final copy = await _notificationCopy();
    final mode = await _androidScheduleMode();
    final now = tz.TZDateTime.now(tz.local);

    for (var offset = 0; offset < _scheduleHorizonDays; offset++) {
      final scheduledDate = _localDateAt(now, offset, hour: 8, minute: 30);
      if (!scheduledDate.isAfter(now)) continue;
      final contentDate = DateTime(
        scheduledDate.year,
        scheduledDate.month,
        scheduledDate.day,
      );
      final verse = VerseService.instance.getVerseOfDay(contentDate);
      await _scheduleWithFallback(
        id: _verseNotificationBaseId + offset,
        title: copy.verseTitle,
        body: verse.formatted,
        scheduledDate: scheduledDate,
        details: details,
        mode: mode,
        payload: 'verse_of_the_day',
      );
    }
  }

  Future<void> scheduleRandomCantiqueNotification() async {
    if (!_isSupportedPlatform || !_timezoneReady) return;
    final cantiques = CantiqueService.instance.getAllCantiques();
    if (cantiques.isEmpty) return;

    const details = NotificationDetails(
      android: AndroidNotificationDetails(
        'random_cantique_channel',
        'Cantique du moment',
        channelDescription: 'Rappels réguliers de cantiques inspirants',
        importance: Importance.defaultImportance,
        priority: Priority.defaultPriority,
      ),
      iOS: DarwinNotificationDetails(),
    );
    final copy = await _notificationCopy();
    final mode = await _androidScheduleMode();
    final now = tz.TZDateTime.now(tz.local);

    for (var offset = 0; offset < _scheduleHorizonDays; offset++) {
      final scheduledDate = _localDateAt(now, offset, hour: 18);
      if (!scheduledDate.isAfter(now)) continue;
      final contentDate = DateTime(
        scheduledDate.year,
        scheduledDate.month,
        scheduledDate.day,
      );
      final index = dailyContentIndex(contentDate, cantiques.length);
      final cantique = cantiques[index];
      await _scheduleWithFallback(
        id: _cantiqueNotificationBaseId + offset,
        title: copy.cantiqueTitle,
        body: '${copy.cantiqueBodyPrefix} “${cantique.titre}”',
        scheduledDate: scheduledDate,
        details: details,
        mode: mode,
        payload: 'cantique:${cantique.id}',
      );
    }
  }

  tz.TZDateTime _localDateAt(
    tz.TZDateTime now,
    int dayOffset, {
    required int hour,
    int minute = 0,
  }) {
    return tz.TZDateTime(
      tz.local,
      now.year,
      now.month,
      now.day + dayOffset,
      hour,
      minute,
    );
  }

  @visibleForTesting
  static int dailyContentIndex(DateTime date, int itemCount) {
    if (itemCount <= 0) {
      throw ArgumentError.value(itemCount, 'itemCount', 'must be positive');
    }
    final day = DateTime.utc(
      date.year,
      date.month,
      date.day,
    ).difference(DateTime.utc(1970)).inDays;
    return day.remainder(itemCount);
  }

  Future<void> _scheduleWithFallback({
    required int id,
    required String title,
    required String body,
    required tz.TZDateTime scheduledDate,
    required NotificationDetails details,
    required AndroidScheduleMode mode,
    required String payload,
  }) async {
    try {
      await _notificationsPlugin.zonedSchedule(
        id,
        title,
        body,
        scheduledDate,
        details,
        androidScheduleMode: mode,
        uiLocalNotificationDateInterpretation:
            UILocalNotificationDateInterpretation.absoluteTime,
        payload: payload,
      );
    } catch (error, stackTrace) {
      if (mode == AndroidScheduleMode.exactAllowWhileIdle) {
        try {
          await _notificationsPlugin.zonedSchedule(
            id,
            title,
            body,
            scheduledDate,
            details,
            androidScheduleMode: AndroidScheduleMode.inexactAllowWhileIdle,
            uiLocalNotificationDateInterpretation:
                UILocalNotificationDateInterpretation.absoluteTime,
            payload: payload,
          );
          return;
        } catch (fallbackError, fallbackStackTrace) {
          debugPrint('Inexact notification scheduling failed: $fallbackError');
          debugPrintStack(stackTrace: fallbackStackTrace);
          return;
        }
      }
      debugPrint('Notification scheduling failed: $error');
      debugPrintStack(stackTrace: stackTrace);
    }
  }
}

class _NotificationCopy {
  final String verseTitle;
  final String cantiqueTitle;
  final String cantiqueBodyPrefix;

  const _NotificationCopy({
    required this.verseTitle,
    required this.cantiqueTitle,
    required this.cantiqueBodyPrefix,
  });
}
