import 'dart:async';

typedef WorshipScrollDeltaCallback = bool Function(double delta);
typedef WorshipScrollStateCallback = void Function(bool isRunning);
typedef PeriodicTimerFactory =
    Timer Function(Duration duration, void Function(Timer timer) callback);

class WorshipAutoScrollService {
  static const Duration defaultInterval = Duration(milliseconds: 50);

  WorshipAutoScrollService({
    required double pixelsPerSecond,
    required WorshipScrollDeltaCallback onScrollDelta,
    WorshipScrollStateCallback? onStateChanged,
    Duration interval = defaultInterval,
    PeriodicTimerFactory? timerFactory,
  }) : _pixelsPerSecond = pixelsPerSecond,
       _onScrollDelta = onScrollDelta,
       _onStateChanged = onStateChanged,
       _interval = interval,
       _timerFactory = timerFactory ?? Timer.periodic;

  final WorshipScrollDeltaCallback _onScrollDelta;
  final WorshipScrollStateCallback? _onStateChanged;
  final Duration _interval;
  final PeriodicTimerFactory _timerFactory;

  Timer? _timer;
  double _pixelsPerSecond;
  bool _disposed = false;

  bool get isRunning => _timer?.isActive ?? false;
  bool get isDisposed => _disposed;
  double get pixelsPerSecond => _pixelsPerSecond;

  void start() {
    if (_disposed || isRunning) return;
    _timer = _timerFactory(_interval, _tick);
    _onStateChanged?.call(true);
  }

  void pause() {
    final wasRunning = isRunning;
    _timer?.cancel();
    _timer = null;
    if (wasRunning) _onStateChanged?.call(false);
  }

  void toggle() => isRunning ? pause() : start();

  void updateSpeed(double pixelsPerSecond) {
    _pixelsPerSecond = pixelsPerSecond;
  }

  void _tick(Timer timer) {
    if (_disposed) {
      pause();
      return;
    }

    final seconds = _interval.inMicroseconds / Duration.microsecondsPerSecond;
    final shouldContinue = _onScrollDelta(_pixelsPerSecond * seconds);
    if (!shouldContinue) pause();
  }

  void dispose() {
    if (_disposed) return;
    pause();
    _disposed = true;
  }
}
