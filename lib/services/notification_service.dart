import 'dart:async';
import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/data/latest_all.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

import 'cantique_service.dart';
import 'settings_service.dart';
import 'verse_service.dart';

class NotificationService {
  NotificationService._();
  static final NotificationService instance = NotificationService._();

  final FlutterLocalNotificationsPlugin _notificationsPlugin =
      FlutterLocalNotificationsPlugin();

  final StreamController<String> _onNotificationTapController =
      StreamController<String>.broadcast();

  Stream<String> get onNotificationTap => _onNotificationTapController.stream;

  bool _isInitialized = false;

  void _ensureTimezoneInitialized() {
    try {
      tz.initializeTimeZones();
      tz.setLocalLocation(tz.getLocation('UTC'));
    } catch (_) {}
  }

  Future<void> initialize() async {
    if (_isInitialized) return;

    _ensureTimezoneInitialized();

    const androidSettings = AndroidInitializationSettings('@mipmap/ic_launcher');
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
      await _notificationsPlugin.initialize(
        initSettings,
        onDidReceiveNotificationResponse: (NotificationResponse details) {
          final payload = details.payload;
          if (payload != null && payload.isNotEmpty) {
            _onNotificationTapController.add(payload);
          }
        },
      );
    } catch (_) {}

    _isInitialized = true;
    await syncNotificationSchedule();
  }

  Future<bool> requestPermission() async {
    if (kIsWeb) return false;

    try {
      final androidImplementation =
          _notificationsPlugin.resolvePlatformSpecificImplementation<
              AndroidFlutterLocalNotificationsPlugin>();

      if (androidImplementation != null) {
        final granted =
            await androidImplementation.requestNotificationsPermission();
        return granted ?? false;
      }

      final iosImplementation =
          _notificationsPlugin.resolvePlatformSpecificImplementation<
              IOSFlutterLocalNotificationsPlugin>();

      if (iosImplementation != null) {
        final granted = await iosImplementation.requestPermissions(
          alert: true,
          badge: true,
          sound: true,
        );
        return granted ?? false;
      }
    } catch (_) {}

    return true;
  }

  Future<void> syncNotificationSchedule() async {
    final settingsService = SettingsService();
    final enabled = await settingsService.getNotificationsEnabled();

    if (!enabled) {
      await cancelAll();
      return;
    }

    await scheduleDailyVerseNotification();
    await scheduleRandomCantiqueNotification();
  }

  Future<void> cancelAll() async {
    try {
      await _notificationsPlugin.cancelAll();
    } catch (_) {}
  }

  Future<void> scheduleDailyVerseNotification() async {
    final verse = VerseService.instance.getVerseOfDay();

    const androidDetails = AndroidNotificationDetails(
      'daily_verse_channel',
      'Verset du jour',
      channelDescription: 'Notifications quotidiennes du Verset du jour',
      importance: Importance.defaultImportance,
      priority: Priority.defaultPriority,
    );

    const iosDetails = DarwinNotificationDetails();
    const details = NotificationDetails(android: androidDetails, iOS: iosDetails);

    try {
      _ensureTimezoneInitialized();
      final now = tz.TZDateTime.now(tz.local);
      var scheduledDate = tz.TZDateTime(
        tz.local,
        now.year,
        now.month,
        now.day,
        8,
        30,
      );

      if (scheduledDate.isBefore(now)) {
        scheduledDate = scheduledDate.add(const Duration(days: 1));
      }

      await _notificationsPlugin.zonedSchedule(
        1001,
        '📖 Verset du jour',
        verse.formatted,
        scheduledDate,
        details,
        androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
        uiLocalNotificationDateInterpretation:
            UILocalNotificationDateInterpretation.absoluteTime,
        matchDateTimeComponents: DateTimeComponents.time,
        payload: 'verse_of_the_day',
      );
    } catch (_) {
      try {
        await _notificationsPlugin.show(
          1001,
          '📖 Verset du jour',
          verse.formatted,
          details,
          payload: 'verse_of_the_day',
        );
      } catch (_) {}
    }
  }

  Future<void> scheduleRandomCantiqueNotification() async {
    final cantiques = CantiqueService.instance.getAllCantiques();
    if (cantiques.isEmpty) return;

    final rnd = Random();
    final cantique = cantiques[rnd.nextInt(cantiques.length)];

    const androidDetails = AndroidNotificationDetails(
      'random_cantique_channel',
      'Cantique du moment',
      channelDescription: 'Rappels réguliers de cantiques inspirants',
      importance: Importance.defaultImportance,
      priority: Priority.defaultPriority,
    );

    const iosDetails = DarwinNotificationDetails();
    const details = NotificationDetails(android: androidDetails, iOS: iosDetails);

    try {
      _ensureTimezoneInitialized();
      final now = tz.TZDateTime.now(tz.local);
      var scheduledDate = tz.TZDateTime(
        tz.local,
        now.year,
        now.month,
        now.day,
        18,
        0,
      );

      if (scheduledDate.isBefore(now)) {
        scheduledDate = scheduledDate.add(const Duration(days: 1));
      }

      await _notificationsPlugin.zonedSchedule(
        1002,
        '🎵 Cantique du moment',
        'Découvrez un cantique aujourd\'hui : "${cantique.titre}"',
        scheduledDate,
        details,
        androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
        uiLocalNotificationDateInterpretation:
            UILocalNotificationDateInterpretation.absoluteTime,
        matchDateTimeComponents: DateTimeComponents.time,
        payload: 'cantique:${cantique.id}',
      );
    } catch (_) {
      try {
        await _notificationsPlugin.show(
          1002,
          '🎵 Cantique du moment',
          'Découvrez un cantique aujourd\'hui : "${cantique.titre}"',
          details,
          payload: 'cantique:${cantique.id}',
        );
      } catch (_) {}
    }
  }

  void dispose() {
    _onNotificationTapController.close();
  }
}
