import 'dart:async';

import 'package:cantiques_boanerges/services/worship_auto_scroll_service.dart';
import 'package:flutter_test/flutter_test.dart';

class _FakePeriodicTimer implements Timer {
  _FakePeriodicTimer(this.callback);

  final void Function(Timer timer) callback;
  bool _active = true;
  int _tick = 0;

  void fire() {
    if (!_active) return;
    _tick += 1;
    callback(this);
  }

  @override
  bool get isActive => _active;

  @override
  int get tick => _tick;

  @override
  void cancel() => _active = false;
}

void main() {
  group('WorshipAutoScrollService', () {
    test('stops automatically when the lyrics end', () {
      late _FakePeriodicTimer timer;
      var totalDelta = 0.0;
      final states = <bool>[];
      final service = WorshipAutoScrollService(
        pixelsPerSecond: 20,
        interval: const Duration(milliseconds: 100),
        timerFactory: (_, callback) => timer = _FakePeriodicTimer(callback),
        onScrollDelta: (delta) {
          totalDelta += delta;
          return totalDelta < 4;
        },
        onStateChanged: states.add,
      );

      service.start();
      timer.fire();
      expect(service.isRunning, isTrue);
      timer.fire();

      expect(totalDelta, 4);
      expect(service.isRunning, isFalse);
      expect(states, [true, false]);
    });

    test('dispose cancels the timer and prevents further scrolling', () {
      late _FakePeriodicTimer timer;
      var ticks = 0;
      final service = WorshipAutoScrollService(
        pixelsPerSecond: 24,
        timerFactory: (_, callback) => timer = _FakePeriodicTimer(callback),
        onScrollDelta: (_) {
          ticks += 1;
          return true;
        },
      );

      service.start();
      timer.fire();
      service.dispose();
      timer.fire();

      expect(ticks, 1);
      expect(timer.isActive, isFalse);
      expect(service.isDisposed, isTrue);
      expect(service.isRunning, isFalse);
    });
  });
}
