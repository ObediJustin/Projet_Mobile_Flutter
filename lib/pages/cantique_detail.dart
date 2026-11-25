import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:share_plus/share_plus.dart';

import '../l10n/app_localizations.dart';
import '../models/cantique.dart';
import '../models/chant_personnel.dart';
import '../models/playlist_item.dart';
import '../models/search_scope.dart';
import '../models/worship_song.dart';
import '../services/cantique_service.dart';
import '../services/chant_personnel_service.dart';
import '../services/favorite_service.dart';
import '../services/recent_cantique_service.dart';
import '../services/settings_service.dart';
import '../theme/app_colors.dart';
import '../theme/app_radius.dart';
import '../theme/app_spacing.dart';
import '../widgets/add_to_playlist_sheet.dart';
import '../widgets/lyrics_zoom_wrapper.dart';
import '../widgets/reader_speed_dial.dart';
import 'chant_detail.dart';
import 'worship_mode.dart';

class CantiqueDetailPage extends StatefulWidget {
  final Cantique cantique;
  final List<PlaylistItem>? playlistContext;
  final int? playlistIndex;
  final String? playlistTitle;

  const CantiqueDetailPage({
    super.key,
    required this.cantique,
    this.playlistContext,
    this.playlistIndex,
    this.playlistTitle,
  });

  @override
  State<CantiqueDetailPage> createState() => _CantiqueDetailPageState();
}

class _CantiqueDetailPageState extends State<CantiqueDetailPage>
    with SingleTickerProviderStateMixin {
  late final FavoriteService _favoriteService;
  final SettingsService _settingsService = SettingsService();

  bool _isFavorite = false;
  double _fontSize = SettingsService.defaultLyricsFontSize;

  final ChantPersonnelService _chantPersonnelService = ChantPersonnelService();

  late final AnimationController _fadeController;
  late final Animation<double> _fadeAnimation;

  final ScrollController _parolesScrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    _favoriteService = FavoriteService();
    _fontSize = SettingsService.lyricsFontSizeNotifier.value;
    SettingsService.lyricsFontSizeNotifier.addListener(_syncFontSize);
    _loadInitialData();

    _fadeController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 350),
    );
    _fadeAnimation = CurvedAnimation(
      parent: _fadeController,
      curve: Curves.easeOutCubic,
    );
    _fadeController.forward();
  }

  @override
  void dispose() {
    SettingsService.lyricsFontSizeNotifier.removeListener(_syncFontSize);
    _fadeController.dispose();
    _parolesScrollController.dispose();
    super.dispose();
  }

  void _syncFontSize() {
    if (!mounted) return;
    setState(() {
      _fontSize = SettingsService.lyricsFontSizeNotifier.value;
    });
  }

  Future<void> _loadInitialData() async {
    try {
      await RecentCantiqueService.instance.recordView(widget.cantique.id);
      await _favoriteService.loadFavorites();
      final isFavorite = _favoriteService.isCantiqueFavorite(
        widget.cantique.id,
      );
      final fontSize = await _settingsService.getLyricsFontSize();
      if (!mounted) return;
      setState(() {
        _isFavorite = isFavorite;
        _fontSize = fontSize;
      });
    } catch (_) {}
  }

  Future<void> _saveFontSize(double value) async {
    await _settingsService.saveLyricsFontSize(value);
  }

  void _onPinchFontSizeChange(double value) {
    setState(() {
      _fontSize = value;
    });
    _settingsService.setLyricsFontSizeInMemory(value);
  }

  void _onPinchFontSizeCommit(double value) {
    _saveFontSize(value);
  }

  Future<void> _resetFontSize() async {
    await _settingsService.resetLyricsFontSize();
    if (!mounted) return;
    final l10n = AppLocalizations.of(context)!;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(l10n.reinitialiserTailleTexte),
        duration: const Duration(seconds: 1),
      ),
    );
  }

  Future<void> _openWorshipMode() async {
    await Navigator.push<void>(
      context,
      MaterialPageRoute(
        builder: (context) => WorshipModePage(
          initialSong: WorshipSong.fromCantique(widget.cantique),
          playlistContext: widget.playlistContext,
          playlistIndex: widget.playlistIndex,
          playlistTitle: widget.playlistTitle,
        ),
      ),
    );
  }

  Future<void> _toggleFavorite() async {
    final l10n = AppLocalizations.of(context)!;
    await _favoriteService.toggleCantiqueFavorite(widget.cantique.id);
    if (!mounted) return;
    setState(() => _isFavorite = !_isFavorite);

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          _isFavorite ? l10n.ajouteAuxFavoris : l10n.retireDesFavoris,
        ),
        duration: const Duration(seconds: 1),
      ),
    );
  }

  String _buildShareText() {
    final l10n = AppLocalizations.of(context)!;
    return '${widget.cantique.titre}\n'
        '${l10n.partageNumero(widget.cantique.numero)}\n'
        '${l10n.partageCollection(widget.cantique.collection)}\n\n'
        '${widget.cantique.contenu}';
  }

  Future<void> _copyToClipboard() async {
    await Clipboard.setData(ClipboardData(text: _buildShareText()));
    if (!mounted) return;

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(AppLocalizations.of(context)!.parolesCopiees),
        duration: const Duration(seconds: 1),
      ),
    );
  }

  Future<void> _share() async {
    await SharePlus.instance.share(
      ShareParams(text: _buildShareText(), subject: widget.cantique.titre),
    );
  }

  void _showFontSizeSheet() {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: theme.colorScheme.surface,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setModalState) {
            return Padding(
              padding: const EdgeInsets.all(AppSpacing.xl),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 40,
                    height: 4,
                    decoration: BoxDecoration(
                      color: AppColors.border,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                  const SizedBox(height: AppSpacing.lg),
                  Row(
                    children: [
                      Text(
                        l10n.tailleDuTexte,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: theme.colorScheme.onSurface,
                        ),
                      ),
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 4,
                        ),
                        decoration: BoxDecoration(
                          color: theme.colorScheme.primaryContainer,
                          borderRadius: AppRadius.smBorder,
                        ),
                        child: Text(
                          '${_fontSize.toInt()} px',
                          style: TextStyle(
                            fontSize: 14,
                            color: theme.colorScheme.onPrimaryContainer,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: AppSpacing.md),
                  Slider(
                    value: _fontSize.clamp(
                      SettingsService.minLyricsFontSize,
                      SettingsService.maxLyricsFontSize,
                    ),
                    min: SettingsService.minLyricsFontSize,
                    max: SettingsService.maxLyricsFontSize,
                    divisions: 20,
                    onChanged: (v) {
                      setModalState(() => _fontSize = v);
                      setState(() => _fontSize = v);
                      _settingsService.setLyricsFontSizeInMemory(v);
                    },
                    onChangeEnd: (v) {
                      _saveFontSize(v);
                    },
                  ),
                  const SizedBox(height: AppSpacing.md),
                  Row(
                    children: [
                      Expanded(
                        child: OutlinedButton.icon(
                          onPressed: () {
                            final next = (_fontSize - 1).clamp(
                              SettingsService.minLyricsFontSize,
                              SettingsService.maxLyricsFontSize,
                            );
                            setModalState(() => _fontSize = next);
                            setState(() => _fontSize = next);
                            _saveFontSize(next);
                          },
                          icon: const Icon(Icons.remove_rounded),
                          label: Text(l10n.reduire),
                        ),
                      ),
                      const SizedBox(width: AppSpacing.md),
                      Expanded(
                        child: ElevatedButton.icon(
                          onPressed: () {
                            final next = (_fontSize + 1).clamp(
                              SettingsService.minLyricsFontSize,
                              SettingsService.maxLyricsFontSize,
                            );
                            setModalState(() => _fontSize = next);
                            setState(() => _fontSize = next);
                            _saveFontSize(next);
                          },
                          icon: const Icon(Icons.add_rounded),
                          label: Text(l10n.agrandir),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: AppSpacing.sm),
                  TextButton.icon(
                    icon: const Icon(Icons.restart_alt_rounded, size: 18),
                    label: Text(l10n.reinitialiserTailleTexte),
                    onPressed: () {
                      final def = SettingsService.defaultLyricsFontSize;
                      setModalState(() => _fontSize = def);
                      _resetFontSize();
                    },
                  ),
                  const SizedBox(height: AppSpacing.sm),
                ],
              ),
            );
          },
        );
      },
    );
  }

  Future<void> _addToPersonalChants() async {
    final l10n = AppLocalizations.of(context)!;
    final chantToAdd = ChantPersonnel(
      id: '',
      titre: widget.cantique.titre,
      contenu: widget.cantique.contenu,
      auteur: widget.cantique.auteur,
      dateCreation: DateTime.now(),
      dateModification: DateTime.now(),
    );

    final all = await _chantPersonnelService.getAllChants();
    final already = all.any(
      (c) => c.titre == chantToAdd.titre && c.contenu == chantToAdd.contenu,
    );

    if (already) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(l10n.dejaDansMesChants),
          duration: const Duration(seconds: 1),
        ),
      );
      return;
    }

    await _chantPersonnelService.addChant(chantToAdd);

    if (!mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(l10n.ajouteAuxMesChants),
        duration: const Duration(seconds: 1),
      ),
    );
  }

  SearchScope _searchModalScope = SearchScope.currentCollection;
  String _searchQuery = '';

  Future<void> _openSearchModal() async {
    final l10n = AppLocalizations.of(context)!;
    await showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Theme.of(context).colorScheme.surface,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setModalState) {
            final query = _searchQuery;
            final targetCantiques =
                _searchModalScope == SearchScope.allCollections
                ? CantiqueService.instance.getAllCantiques()
                : CantiqueService.instance.getCantiquesByCollection(
                    widget.cantique.collection,
                  );
            final results = CantiqueService.filterCantiques(
              targetCantiques,
              query,
            );

            return DraggableScrollableSheet(
              expand: false,
              initialChildSize: 0.85,
              minChildSize: 0.5,
              maxChildSize: 0.95,
              builder: (context, scrollController) {
                final theme = Theme.of(context);
                final isDark = theme.brightness == Brightness.dark;
                return Padding(
                  padding: const EdgeInsets.all(AppSpacing.lg),
                  child: Column(
                    children: [
                      Container(
                        width: 40,
                        height: 4,
                        decoration: BoxDecoration(
                          color: AppColors.border,
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                      const SizedBox(height: AppSpacing.md),
                      Row(
                        children: [
                          const Icon(
                            Icons.search_rounded,
                            color: AppColors.primary,
                          ),
                          const SizedBox(width: AppSpacing.sm),
                          Text(
                            l10n.rechercherCantiqueHint,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: theme.colorScheme.onSurface,
                            ),
                          ),
                          const Spacer(),
                          IconButton(
                            icon: const Icon(Icons.close_rounded),
                            onPressed: () => Navigator.pop(context),
                          ),
                        ],
                      ),
                      const SizedBox(height: AppSpacing.sm),
                      TextField(
                        autofocus: true,
                        decoration: InputDecoration(
                          hintText:
                              _searchModalScope == SearchScope.allCollections
                              ? l10n.searchCollectionsHint
                              : l10n.searchInCollectionHint,
                          prefixIcon: const Icon(Icons.search_rounded),
                          suffixIcon: query.isNotEmpty
                              ? IconButton(
                                  icon: const Icon(Icons.clear_rounded),
                                  onPressed: () {
                                    setModalState(() => _searchQuery = '');
                                  },
                                )
                              : null,
                          filled: true,
                          fillColor: AppColors.surfaceVariant,
                          border: OutlineInputBorder(
                            borderRadius: AppRadius.mdBorder,
                            borderSide: BorderSide.none,
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16,
                          ),
                        ),
                        onChanged: (val) {
                          setModalState(() => _searchQuery = val);
                        },
                      ),
                      const SizedBox(height: AppSpacing.sm),
                      SizedBox(
                        width: double.infinity,
                        child: SegmentedButton<SearchScope>(
                          showSelectedIcon: true,
                          segments: [
                            ButtonSegment<SearchScope>(
                              value: SearchScope.currentCollection,
                              label: Text(
                                l10n.cetteCollection,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              icon: const Icon(
                                Icons.folder_open_rounded,
                                size: 14,
                              ),
                            ),
                            ButtonSegment<SearchScope>(
                              value: SearchScope.allCollections,
                              label: Text(
                                l10n.toutesLesCollections,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              icon: const Icon(Icons.public_rounded, size: 14),
                            ),
                          ],
                          selected: {_searchModalScope},
                          onSelectionChanged: (newSelection) {
                            setModalState(() {
                              _searchModalScope = newSelection.first;
                            });
                          },
                        ),
                      ),
                      const SizedBox(height: AppSpacing.md),
                      Expanded(
                        child: results.isEmpty
                            ? Center(
                                child: Text(
                                  _searchModalScope ==
                                          SearchScope.allCollections
                                      ? l10n.aucunCantiquePourRecherche(query)
                                      : l10n.aucunCantiqueDansCollection(
                                          widget.cantique.collection,
                                        ),
                                  style: TextStyle(
                                    color: theme.colorScheme.onSurfaceVariant,
                                  ),
                                ),
                              )
                            : ListView.builder(
                                controller: scrollController,
                                itemCount: results.length,
                                itemBuilder: (context, index) {
                                  final item = results[index];
                                  return ListTile(
                                    leading: Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 8,
                                        vertical: 4,
                                      ),
                                      decoration: BoxDecoration(
                                        color: isDark
                                            ? theme.colorScheme.primaryContainer.withValues(alpha: 0.4)
                                            : AppColors.primaryLight,
                                        borderRadius: AppRadius.smBorder,
                                      ),
                                      child: Text(
                                        'N° ${item.numero}',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          color: isDark
                                              ? theme.colorScheme.primary
                                              : AppColors.primaryDark,
                                        ),
                                      ),
                                    ),
                                    title: Text(
                                      item.titre,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                        color: theme.colorScheme.onSurface,
                                      ),
                                    ),
                                    subtitle: Text(
                                      item.collection,
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: theme.colorScheme.onSurfaceVariant,
                                      ),
                                    ),
                                    onTap: () {
                                      Navigator.pop(context);
                                      Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (_) => CantiqueDetailPage(
                                            cantique: item,
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                      ),
                    ],
                  ),
                );
              },
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0,
        title: Row(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              decoration: BoxDecoration(
                color: AppColors.primaryLight,
                borderRadius: AppRadius.fullBorder,
              ),
              child: Text(
                'N° ${widget.cantique.numero}',
                style: const TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primaryDark,
                ),
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                widget.cantique.collection,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            key: const Key('reader_search_button'),
            icon: const Icon(Icons.search_rounded),
            tooltip: 'Rechercher un cantique',
            onPressed: _openSearchModal,
          ),
          IconButton(
            key: const Key('reader_favorite_button'),
            icon: Icon(
              _isFavorite
                  ? Icons.favorite_rounded
                  : Icons.favorite_border_rounded,
              color: _isFavorite ? AppColors.error : AppColors.textOnPrimary,
            ),
            tooltip: _isFavorite
                ? 'Retirer des favoris'
                : 'Ajouter aux favoris',
            onPressed: _toggleFavorite,
          ),
          IconButton(
            key: const Key('reader_share_button'),
            icon: const Icon(Icons.share_rounded),
            tooltip: 'Partager le cantique',
            onPressed: _share,
          ),
        ],
      ),
      body: Builder(
        builder: (context) {
          final theme = Theme.of(context);
          final isDark = theme.brightness == Brightness.dark;

          return FadeTransition(
            opacity: _fadeAnimation,
            child: Stack(
              children: [
                SafeArea(
                  child: Column(
                    children: [
                      if (widget.playlistContext != null &&
                          widget.playlistIndex != null)
                        _buildPlaylistNavigationBanner(theme),
                      // Top Header Information Box
                      Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(
                          horizontal: AppSpacing.lg,
                          vertical: AppSpacing.md,
                        ),
                        decoration: BoxDecoration(
                          color: isDark
                              ? theme.colorScheme.surface
                              : AppColors.primaryVeryLight,
                          border: Border(
                            bottom: BorderSide(
                              color: isDark
                                  ? theme.colorScheme.outlineVariant
                                  : AppColors.borderLight,
                              width: 1,
                            ),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'N° ${widget.cantique.numero}',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: isDark
                                    ? theme.colorScheme.primary
                                    : AppColors.primaryDark,
                                letterSpacing: 1.0,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Text(
                              widget.cantique.titre,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: theme.colorScheme.onSurface,
                              ),
                            ),
                            const SizedBox(height: 4),
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 3,
                              ),
                              decoration: BoxDecoration(
                                color: isDark
                                    ? theme.colorScheme.primary.withValues(
                                        alpha: 0.2,
                                      )
                                    : AppColors.primaryLight,
                                borderRadius: AppRadius.fullBorder,
                              ),
                              child: Text(
                                widget.cantique.collection,
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                  color: isDark
                                      ? theme.colorScheme.primary
                                      : AppColors.primaryDark,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      // Lyrics Area (Scrollable reader container with pinch zoom)
                      Expanded(
                        child: LyricsZoomWrapper(
                          fontSize: _fontSize,
                          onFontSizeChange: _onPinchFontSizeChange,
                          onFontSizeCommit: _onPinchFontSizeCommit,
                          child: SingleChildScrollView(
                            controller: _parolesScrollController,
                            padding: const EdgeInsets.all(AppSpacing.lg),
                            child: ConstrainedBox(
                              constraints: const BoxConstraints(maxWidth: 800),
                              child: Container(
                                width: double.infinity,
                                padding: const EdgeInsets.all(AppSpacing.xl),
                                decoration: BoxDecoration(
                                  color: theme.colorScheme.surface,
                                  borderRadius: AppRadius.xlBorder,
                                  border: Border.all(
                                    color: theme.colorScheme.outlineVariant,
                                    width: 1,
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: isDark
                                          ? const Color(0x33000000)
                                          : const Color(0x0A000000),
                                      blurRadius: 12,
                                      offset: const Offset(0, 4),
                                    ),
                                  ],
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SelectableText(
                                      widget.cantique.contenu,
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                        fontSize: _fontSize,
                                        height: 1.8,
                                        color: theme.colorScheme.onSurface,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    if (widget.cantique.auteur != null &&
                                        widget.cantique.auteur!.isNotEmpty) ...[
                                      const SizedBox(height: AppSpacing.xxl),
                                      const Divider(),
                                      const SizedBox(height: AppSpacing.md),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.person_outline_rounded,
                                            size: 16,
                                            color: theme
                                                .colorScheme
                                                .onSurfaceVariant,
                                          ),
                                          const SizedBox(width: 6),
                                          Text(
                                            l10n.auteurValeur(
                                              widget.cantique.auteur!,
                                            ),
                                            style: TextStyle(
                                              fontSize: 13,
                                              fontStyle: FontStyle.italic,
                                              color: theme
                                                  .colorScheme
                                                  .onSurfaceVariant,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // Expandable Speed Dial Floating Action Menu
                ReaderSpeedDial(
                  tooltip: l10n.actions,
                  actions: [
                    SpeedDialAction(
                      key: const Key('reader_action_worship_mode'),
                      icon: Icons.fullscreen_rounded,
                      label: l10n.modeLouange,
                      onTap: _openWorshipMode,
                    ),
                    SpeedDialAction(
                      key: const Key('reader_action_favorite'),
                      icon: _isFavorite
                          ? Icons.favorite_rounded
                          : Icons.favorite_border_rounded,
                      iconColor: _isFavorite ? AppColors.error : null,
                      label: _isFavorite
                          ? l10n.retireDesFavoris
                          : l10n.ajouteAuxFavoris,
                      onTap: _toggleFavorite,
                    ),
                    SpeedDialAction(
                      key: const Key('reader_action_share'),
                      icon: Icons.share_rounded,
                      label: l10n.partager,
                      onTap: _share,
                    ),
                    SpeedDialAction(
                      key: const Key('reader_action_copy'),
                      icon: Icons.copy_rounded,
                      label: l10n.copierParoles,
                      onTap: _copyToClipboard,
                    ),
                    SpeedDialAction(
                      key: const Key('reader_action_font_size'),
                      icon: Icons.format_size_rounded,
                      label: l10n.tailleDuTexte,
                      onTap: _showFontSizeSheet,
                    ),
                    SpeedDialAction(
                      key: const Key('reader_action_reset_font_size'),
                      icon: Icons.restart_alt_rounded,
                      label: l10n.reinitialiserTailleTexte,
                      onTap: _resetFontSize,
                    ),
                    SpeedDialAction(
                      key: const Key('reader_action_my_chants'),
                      icon: Icons.library_add_rounded,
                      label: l10n.mesChants,
                      onTap: _addToPersonalChants,
                    ),
                    SpeedDialAction(
                      key: const Key('reader_action_add_to_playlist'),
                      icon: Icons.playlist_add_rounded,
                      label: l10n.ajouterALaListe,
                      onTap: () {
                        AddToPlaylistSheet.show(
                          context,
                          songType: PlaylistItemType.official,
                          songId: widget.cantique.id,
                          songTitle: widget.cantique.titre,
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Future<void> _navigateToPlaylistItem(int targetIndex) async {
    if (widget.playlistContext == null) return;
    if (targetIndex < 0 || targetIndex >= widget.playlistContext!.length) {
      return;
    }
    final targetItem = widget.playlistContext![targetIndex];
    if (!targetItem.isAvailable) return;

    if (targetItem.isOfficial) {
      final cantique = CantiqueService.instance.getCantiqueById(
        targetItem.songId,
      );
      if (cantique != null && mounted) {
        Navigator.pushReplacement(
          context,
          PageRouteBuilder(
            pageBuilder: (ctx, anim, secAnim) => CantiqueDetailPage(
              cantique: cantique,
              playlistContext: widget.playlistContext,
              playlistIndex: targetIndex,
              playlistTitle: widget.playlistTitle,
            ),
            transitionDuration: const Duration(milliseconds: 180),
            transitionsBuilder: (ctx, anim, secAnim, child) =>
                FadeTransition(opacity: anim, child: child),
          ),
        );
      }
    } else {
      final chant = await _chantPersonnelService.getChantById(
        targetItem.songId,
      );
      if (chant != null && mounted) {
        Navigator.pushReplacement(
          context,
          PageRouteBuilder(
            pageBuilder: (ctx, anim, secAnim) => ChantDetailPage(
              chant: chant,
              playlistContext: widget.playlistContext,
              playlistIndex: targetIndex,
              playlistTitle: widget.playlistTitle,
            ),
            transitionDuration: const Duration(milliseconds: 180),
            transitionsBuilder: (ctx, anim, secAnim, child) =>
                FadeTransition(opacity: anim, child: child),
          ),
        );
      }
    }
  }

  Widget _buildPlaylistNavigationBanner(ThemeData theme) {
    final hasPrev = widget.playlistIndex! > 0;
    final hasNext = widget.playlistIndex! < widget.playlistContext!.length - 1;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.md,
        vertical: 4,
      ),
      decoration: BoxDecoration(
        color: theme.colorScheme.primaryContainer.withValues(alpha: 0.6),
        border: Border(
          bottom: BorderSide(color: theme.colorScheme.outlineVariant, width: 1),
        ),
      ),
      child: Row(
        children: [
          IconButton(
            icon: const Icon(Icons.arrow_back_ios_rounded, size: 16),
            tooltip: 'Précédent',
            onPressed: hasPrev
                ? () => _navigateToPlaylistItem(widget.playlistIndex! - 1)
                : null,
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (widget.playlistTitle != null &&
                    widget.playlistTitle!.isNotEmpty)
                  Text(
                    widget.playlistTitle!,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                Text(
                  '${widget.playlistIndex! + 1} / ${widget.playlistContext!.length}',
                  style: TextStyle(
                    fontSize: 12,
                    color: theme.colorScheme.primary,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            icon: const Icon(Icons.arrow_forward_ios_rounded, size: 16),
            tooltip: 'Suivant',
            onPressed: hasNext
                ? () => _navigateToPlaylistItem(widget.playlistIndex! + 1)
                : null,
          ),
        ],
      ),
    );
  }
}
