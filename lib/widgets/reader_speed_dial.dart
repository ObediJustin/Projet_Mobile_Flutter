import 'dart:math' as math;
import 'package:flutter/material.dart';
import '../theme/app_radius.dart';
import '../theme/app_spacing.dart';

class SpeedDialAction {
  final IconData icon;
  final String label;
  final VoidCallback onTap;
  final Color? iconColor;
  final Color? backgroundColor;
  final Key? key;

  const SpeedDialAction({
    required this.icon,
    required this.label,
    required this.onTap,
    this.iconColor,
    this.backgroundColor,
    this.key,
  });
}

class ReaderSpeedDial extends StatefulWidget {
  final List<SpeedDialAction> actions;
  final String? tooltip;

  const ReaderSpeedDial({
    super.key,
    required this.actions,
    this.tooltip,
  });

  @override
  State<ReaderSpeedDial> createState() => _ReaderSpeedDialState();
}

class _ReaderSpeedDialState extends State<ReaderSpeedDial>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _expandAnimation;
  late final Animation<double> _rotationAnimation;
  bool _isOpen = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 260),
    );
    _expandAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeOutCubic,
      reverseCurve: Curves.easeInCubic,
    );
    _rotationAnimation = Tween<double>(begin: 0.0, end: math.pi / 4).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOutCubic,
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _toggle() {
    setState(() {
      _isOpen = !_isOpen;
      if (_isOpen) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });
  }

  void _close() {
    if (!_isOpen) return;
    setState(() {
      _isOpen = false;
      _controller.reverse();
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return PopScope(
      canPop: !_isOpen,
      onPopInvokedWithResult: (didPop, result) {
        if (didPop) return;
        if (_isOpen) {
          _close();
        }
      },
      child: Stack(
        fit: StackFit.expand,
        alignment: Alignment.bottomRight,
        children: [
          // Background Scrim
          if (_isOpen)
            Positioned.fill(
              child: GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: _close,
                child: FadeTransition(
                  opacity: _expandAnimation,
                  child: Container(
                    color: Colors.black.withValues(alpha: 0.4),
                  ),
                ),
              ),
            ),

          // Speed Dial Column + Main FAB
          Align(
            alignment: Alignment.bottomRight,
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(
                  right: AppSpacing.lg,
                  bottom: AppSpacing.lg,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                  // Action list (expandable)
                  if (_isOpen)
                    Flexible(
                      child: SingleChildScrollView(
                        reverse: true,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: widget.actions.map((action) {
                            return _buildActionRow(action, theme);
                          }).toList(),
                        ),
                      ),
                    ),

                  const SizedBox(height: AppSpacing.sm),

                  // Main FAB Button
                  FloatingActionButton(
                    key: const Key('reader_speed_dial_fab'),
                    tooltip: widget.tooltip ?? (_isOpen ? 'Fermer le menu' : 'Actions'),
                    backgroundColor: theme.colorScheme.primary,
                    foregroundColor: theme.colorScheme.onPrimary,
                    elevation: _isOpen ? 8 : 4,
                    onPressed: _toggle,
                    child: AnimatedBuilder(
                      animation: _rotationAnimation,
                      builder: (context, child) {
                        return Transform.rotate(
                          angle: _rotationAnimation.value,
                          child: const Icon(Icons.add_rounded, size: 28),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          ),
        ],
      ),
    );
  }

  Widget _buildActionRow(SpeedDialAction action, ThemeData theme) {
    return ScaleTransition(
      scale: _expandAnimation,
      alignment: Alignment.bottomRight,
      child: FadeTransition(
        opacity: _expandAnimation,
        child: Padding(
          padding: const EdgeInsets.only(bottom: AppSpacing.md),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // Label Chip
              Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {
                    _close();
                    action.onTap();
                  },
                  borderRadius: AppRadius.fullBorder,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                      color: theme.colorScheme.surface,
                      borderRadius: AppRadius.fullBorder,
                      border: Border.all(
                        color: theme.colorScheme.outlineVariant,
                        width: 1,
                      ),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x1A000000),
                          blurRadius: 8,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Text(
                      action.label,
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: theme.colorScheme.onSurface,
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(width: AppSpacing.sm),

              // Action Mini-FAB
              FloatingActionButton.small(
                key: action.key,
                heroTag: null,
                elevation: 4,
                backgroundColor: action.backgroundColor ?? theme.colorScheme.surface,
                foregroundColor: action.iconColor ?? theme.colorScheme.primary,
                onPressed: () {
                  _close();
                  action.onTap();
                },
                child: Icon(
                  action.icon,
                  size: 20,
                  color: action.iconColor ?? theme.colorScheme.primary,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
