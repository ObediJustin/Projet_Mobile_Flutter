import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:wakelock_plus/wakelock_plus.dart';

import '../l10n/app_localizations.dart';
import '../models/playlist_item.dart';
import '../models/worship_song.dart';
import '../services/cantique_service.dart';
import '../services/chant_personnel_service.dart';
import '../services/settings_service.dart';
import '../services/worship_auto_scroll_service.dart';
import '../theme/app_spacing.dart';
import '../widgets/lyrics_zoom_wrapper.dart';

class WorshipModePage extends StatefulWidget {
  final WorshipSong initialSong;
  final List<PlaylistItem>? playlistContext;
  final int? playlistIndex;
  final String? playlistTitle;

  const WorshipModePage({
    super.key,
    required this.initialSong,
    this.playlistContext,
    this.playlistIndex,
    this.playlistTitle,
  });

  @override
  State<WorshipModePage> createState() => _WorshipModePageState();
}

class _WorshipModePageState extends State<WorshipModePage>
    with WidgetsBindingObserver {
  final ScrollController _scrollController = ScrollController();
  final SettingsService _settingsService = SettingsService();
  final ChantPersonnelService _personalSongService = ChantPersonnelService();

  late WorshipSong _song;
  late WorshipAutoScrollService _autoScroller;
  int? _playlistIndex;
  bool _controlsVisible = true;
  double _fontSize = SettingsService.defaultLyricsFontSize;
  double _scrollSpeed = SettingsService.defaultWorshipScrollSpeed;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    _song = widget.initialSong;
    _playlistIndex = widget.playlistIndex;
    _fontSize = SettingsService.lyricsFontSizeNotifier.value;
    _scrollSpeed = SettingsService.worshipScrollSpeedNotifier.value;
    SettingsService.lyricsFontSizeNotifier.addListener(_syncFontSize);
    _autoScroller = WorshipAutoScrollService(
      pixelsPerSecond: _scrollSpeed,
      onScrollDelta: _applyScrollDelta,
      onStateChanged: (_) {
        if (mounted) setState(() {});
      },
    );
    _loadPreferences();
    _activatePresentation();
  }

  Future<void> _loadPreferences() async {
    final values = await Future.wait<double>([
      _settingsService.getLyricsFontSize(),
      _settingsService.getWorshipScrollSpeed(),
    ]);
    if (!mounted) return;
    setState(() {
      _fontSize = values[0];
      _scrollSpeed = values[1];
      _autoScroller.updateSpeed(_scrollSpeed);
    });
  }

  void _syncFontSize() {
    if (!mounted) return;
    setState(() {
      _fontSize = SettingsService.lyricsFontSizeNotifier.value;
    });
  }

  Future<void> _activatePresentation() async {
    await SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    if (WidgetsBinding.instance.lifecycleState == AppLifecycleState.resumed) {
      await WakelockPlus.enable();
    }
  }

  Future<void> _deactivatePresentation() async {
    await WakelockPlus.disable();
    await SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      _activatePresentation();
      return;
    }
    _autoScroller.pause();
    _deactivatePresentation();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    SettingsService.lyricsFontSizeNotifier.removeListener(_syncFontSize);
    _autoScroller.dispose();
    _scrollController.dispose();
    _deactivatePresentation();
    super.dispose();
  }

  bool _applyScrollDelta(double delta) {
    if (!mounted || !_scrollController.hasClients) return true;
    final position = _scrollController.position;
    if (position.pixels >= position.maxScrollExtent - 0.5) return false;
    _scrollController.jumpTo(
      (position.pixels + delta).clamp(0.0, position.maxScrollExtent),
    );
    return _scrollController.position.pixels <
        _scrollController.position.maxScrollExtent - 0.5;
  }

  void _toggleAutoScroll() {
    if (!_autoScroller.isRunning && _scrollController.hasClients) {
      final position = _scrollController.position;
      if (position.pixels >= position.maxScrollExtent - 0.5) {
        _scrollController.jumpTo(0);
      }
    }
    _autoScroller.toggle();
  }

  void _onPinchFontSizeChange(double value) {
    setState(() => _fontSize = value);
    _settingsService.setLyricsFontSizeInMemory(value);
  }

  void _onPinchFontSizeCommit(double value) {
    _settingsService.saveLyricsFontSize(value);
  }

  Future<void> _showSpeedControls() async {
    final l10n = AppLocalizations.of(context)!;
    var draftSpeed = _scrollSpeed;
    await showModalBottomSheet<void>(
      context: context,
      builder: (sheetContext) => StatefulBuilder(
        builder: (context, setSheetState) {
          void update(double value) {
            final sanitized = _settingsService.sanitizeWorshipScrollSpeed(
              value,
            );
            setSheetState(() => draftSpeed = sanitized);
            setState(() => _scrollSpeed = sanitized);
            _autoScroller.updateSpeed(sanitized);
          }

          return SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(AppSpacing.xl),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    l10n.vitesseDefilement,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: AppSpacing.md),
                  Text(l10n.vitesseDefilementValeur(draftSpeed.round())),
                  Row(
                    children: [
                      IconButton(
                        tooltip: l10n.ralentir,
                        onPressed: () => update(draftSpeed - 4),
                        icon: const Icon(Icons.remove_rounded),
                      ),
                      Expanded(
                        child: Slider(
                          value: draftSpeed,
                          min: SettingsService.minWorshipScrollSpeed,
                          max: SettingsService.maxWorshipScrollSpeed,
                          divisions: 18,
                          onChanged: update,
                          onChangeEnd: _settingsService.saveWorshipScrollSpeed,
                        ),
                      ),
                      IconButton(
                        tooltip: l10n.accelerer,
                        onPressed: () => update(draftSpeed + 4),
                        icon: const Icon(Icons.add_rounded),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
    await _settingsService.saveWorshipScrollSpeed(_scrollSpeed);
  }

  bool _handleUserScroll(UserScrollNotification notification) {
    if (notification.direction != ScrollDirection.idle &&
        _autoScroller.isRunning) {
      _autoScroller.pause();
    }
    return false;
  }

  Future<void> _switchPlaylistSong(int targetIndex) async {
    final playlist = widget.playlistContext;
    if (playlist == null || targetIndex < 0 || targetIndex >= playlist.length) {
      return;
    }
    final item = playlist[targetIndex];
    if (!item.isAvailable) return;

    WorshipSong? nextSong;
    if (item.isOfficial) {
      final cantique = CantiqueService.instance.getCantiqueById(item.songId);
      if (cantique != null) nextSong = WorshipSong.fromCantique(cantique);
    } else {
      final chant = await _personalSongService.getChantById(item.songId);
      if (chant != null) nextSong = WorshipSong.fromPersonal(chant);
    }
    if (!mounted || nextSong == null) return;

    _autoScroller.pause();
    if (_scrollController.hasClients) _scrollController.jumpTo(0);
    setState(() {
      _song = nextSong!;
      _playlistIndex = targetIndex;
      _controlsVisible = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;
    final playlist = widget.playlistContext;
    final hasPrevious = playlist != null && (_playlistIndex ?? 0) > 0;
    final hasNext =
        playlist != null &&
        _playlistIndex != null &&
        _playlistIndex! < playlist.length - 1;

    return PopScope(
      onPopInvokedWithResult: (didPop, result) {
        if (didPop) _deactivatePresentation();
      },
      child: Scaffold(
        backgroundColor: theme.colorScheme.surface,
        body: GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () => setState(() => _controlsVisible = !_controlsVisible),
          child: Stack(
            children: [
              Positioned.fill(
                child: NotificationListener<UserScrollNotification>(
                  onNotification: _handleUserScroll,
                  child: LyricsZoomWrapper(
                    fontSize: _fontSize,
                    onFontSizeChange: _onPinchFontSizeChange,
                    onFontSizeCommit: _onPinchFontSizeCommit,
                    child: SingleChildScrollView(
                      controller: _scrollController,
                      padding: const EdgeInsets.fromLTRB(24, 96, 24, 128),
                      child: Center(
                        child: ConstrainedBox(
                          constraints: const BoxConstraints(maxWidth: 900),
                          child: Column(
                            children: [
                              if (_song.number != null)
                                Text(
                                  'N° ${_song.number}',
                                  style: theme.textTheme.labelLarge?.copyWith(
                                    color: theme.colorScheme.primary,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              Text(
                                _song.title,
                                textAlign: TextAlign.center,
                                style: theme.textTheme.headlineSmall?.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              if ((_song.collection ?? '').isNotEmpty)
                                Padding(
                                  padding: const EdgeInsets.only(top: 4),
                                  child: Text(
                                    _song.collection!,
                                    style: theme.textTheme.bodySmall?.copyWith(
                                      color: theme.colorScheme.onSurfaceVariant,
                                    ),
                                  ),
                                ),
                              const SizedBox(height: AppSpacing.xl),
                              SelectableText(
                                _song.lyrics,
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: _fontSize,
                                  height: 1.8,
                                  color: theme.colorScheme.onSurface,
                                ),
                              ),
                              if ((_song.author ?? '').isNotEmpty) ...[
                                const SizedBox(height: AppSpacing.xxl),
                                Text(
                                  l10n.auteurValeur(_song.author!),
                                  style: theme.textTheme.bodySmall?.copyWith(
                                    color: theme.colorScheme.onSurfaceVariant,
                                    fontStyle: FontStyle.italic,
                                  ),
                                ),
                              ],
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              _buildTopControls(theme, l10n),
              _buildBottomControls(
                theme,
                l10n,
                hasPrevious: hasPrevious,
                hasNext: hasNext,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTopControls(ThemeData theme, AppLocalizations l10n) {
    return AnimatedOpacity(
      opacity: _controlsVisible ? 1 : 0,
      duration: const Duration(milliseconds: 180),
      child: IgnorePointer(
        ignoring: !_controlsVisible,
        child: SafeArea(
          child: Container(
            margin: const EdgeInsets.all(AppSpacing.md),
            padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
            decoration: BoxDecoration(
              color: theme.colorScheme.surfaceContainerHigh.withValues(
                alpha: 0.94,
              ),
              borderRadius: BorderRadius.circular(28),
            ),
            child: Row(
              children: [
                IconButton(
                  tooltip: l10n.quitterModeLouange,
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.close_rounded),
                ),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        _song.title,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      if ((widget.playlistTitle ?? '').isNotEmpty)
                        Text(
                          widget.playlistTitle!,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.bodySmall,
                        ),
                    ],
                  ),
                ),
                const SizedBox(width: 48),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBottomControls(
    ThemeData theme,
    AppLocalizations l10n, {
    required bool hasPrevious,
    required bool hasNext,
  }) {
    final playlist = widget.playlistContext;
    return Align(
      alignment: Alignment.bottomCenter,
      child: AnimatedOpacity(
        opacity: _controlsVisible ? 1 : 0,
        duration: const Duration(milliseconds: 180),
        child: IgnorePointer(
          ignoring: !_controlsVisible,
          child: SafeArea(
            child: Container(
              margin: const EdgeInsets.all(AppSpacing.md),
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
              decoration: BoxDecoration(
                color: theme.colorScheme.surfaceContainerHigh.withValues(
                  alpha: 0.96,
                ),
                borderRadius: BorderRadius.circular(32),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x33000000),
                    blurRadius: 16,
                    offset: Offset(0, 6),
                  ),
                ],
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    tooltip: l10n.chantPrecedent,
                    onPressed: hasPrevious
                        ? () => _switchPlaylistSong(_playlistIndex! - 1)
                        : null,
                    icon: const Icon(Icons.skip_previous_rounded),
                  ),
                  IconButton(
                    tooltip: l10n.vitesseDefilement,
                    onPressed: _showSpeedControls,
                    icon: const Icon(Icons.speed_rounded),
                  ),
                  const SizedBox(width: 4),
                  FloatingActionButton.small(
                    heroTag: null,
                    tooltip: _autoScroller.isRunning
                        ? l10n.mettreEnPause
                        : l10n.lancerDefilement,
                    onPressed: _toggleAutoScroll,
                    child: Icon(
                      _autoScroller.isRunning
                          ? Icons.pause_rounded
                          : Icons.play_arrow_rounded,
                    ),
                  ),
                  const SizedBox(width: 4),
                  if (playlist != null && _playlistIndex != null)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      child: Text(
                        l10n.positionChant(
                          _playlistIndex! + 1,
                          playlist.length,
                        ),
                        style: theme.textTheme.labelMedium,
                      ),
                    ),
                  IconButton(
                    tooltip: l10n.chantSuivant,
                    onPressed: hasNext
                        ? () => _switchPlaylistSong(_playlistIndex! + 1)
                        : null,
                    icon: const Icon(Icons.skip_next_rounded),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
