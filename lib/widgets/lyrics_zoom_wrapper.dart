import 'package:flutter/material.dart';
import '../services/settings_service.dart';

/// Wraps lyrics content to support 2-finger pinch-to-zoom while preserving
/// single-finger vertical scrolling completely without gesture interference.
class LyricsZoomWrapper extends StatefulWidget {
  final double fontSize;
  final ValueChanged<double> onFontSizeChange;
  final ValueChanged<double> onFontSizeCommit;
  final Widget child;

  const LyricsZoomWrapper({
    super.key,
    required this.fontSize,
    required this.onFontSizeChange,
    required this.onFontSizeCommit,
    required this.child,
  });

  @override
  State<LyricsZoomWrapper> createState() => _LyricsZoomWrapperState();
}

class _LyricsZoomWrapperState extends State<LyricsZoomWrapper> {
  final Map<int, Offset> _pointers = <int, Offset>{};
  double _initialDistance = 0.0;
  double _baseFontSize = 16.0;
  double _currentZoomedSize = 16.0;
  bool _isPinching = false;

  void _onPointerDown(PointerDownEvent event) {
    _pointers[event.pointer] = event.position;
    if (_pointers.length == 2) {
      final p1 = _pointers.values.first;
      final p2 = _pointers.values.last;
      _initialDistance = (p1 - p2).distance;
      _baseFontSize = widget.fontSize;
      _currentZoomedSize = widget.fontSize;
      _isPinching = true;
    }
  }

  void _onPointerMove(PointerMoveEvent event) {
    if (!_pointers.containsKey(event.pointer)) return;
    _pointers[event.pointer] = event.position;
    if (_isPinching && _pointers.length == 2 && _initialDistance > 20) {
      final p1 = _pointers.values.first;
      final p2 = _pointers.values.last;
      final currentDistance = (p1 - p2).distance;
      final scale = currentDistance / _initialDistance;
      final newSize = (_baseFontSize * scale).clamp(
        SettingsService.minLyricsFontSize,
        SettingsService.maxLyricsFontSize,
      );
      _currentZoomedSize = newSize;
      widget.onFontSizeChange(newSize);
    }
  }

  void _onPointerUpOrCancel(PointerEvent event) {
    _pointers.remove(event.pointer);
    if (_pointers.length < 2 && _isPinching) {
      _isPinching = false;
      _initialDistance = 0.0;
      widget.onFontSizeCommit(_currentZoomedSize);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Listener(
      behavior: HitTestBehavior.opaque,
      onPointerDown: _onPointerDown,
      onPointerMove: _onPointerMove,
      onPointerUp: _onPointerUpOrCancel,
      onPointerCancel: _onPointerUpOrCancel,
      child: widget.child,
    );
  }
}
