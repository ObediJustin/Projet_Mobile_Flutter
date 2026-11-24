import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:share_plus/share_plus.dart';

import '../l10n/app_localizations.dart';
import '../models/cantique.dart';
import '../models/chant_personnel.dart';
import '../services/cantique_service.dart';
import '../services/chant_personnel_service.dart';
import '../services/favorite_service.dart';
import '../services/recent_cantique_service.dart';
import '../services/settings_service.dart';
import '../theme/app_colors.dart';
import '../theme/app_radius.dart';
import '../theme/app_spacing.dart';
import '../widgets/lyrics_zoom_wrapper.dart';

class CantiqueDetailPage extends StatefulWidget {
  final Cantique cantique;

  const CantiqueDetailPage({super.key, required this.cantique});

  @override
  State<CantiqueDetailPage> createState() => _CantiqueDetailPageState();
}

class _CantiqueDetailPageState extends State<CantiqueDetailPage>
    with SingleTickerProviderStateMixin {
  late final FavoriteService _favoriteService;
  final SettingsService _settingsService = SettingsService();
  late final Future<_CantiqueDetailData> _detailDataFuture;

  bool _isFavorite = false;
  double _fontSize = 16.0;
  bool _detailDataApplied = false;

  final ChantPersonnelService _chantPersonnelService = ChantPersonnelService();

  late final AnimationController _fadeController;
  late final Animation<double> _fadeAnimation;

  final ScrollController _parolesScrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    _favoriteService = FavoriteService();
    _detailDataFuture = _loadData();
    SettingsService.lyricsFontSizeNotifier.addListener(_syncFontSize);

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

  Future<_CantiqueDetailData> _loadData() async {
    await RecentCantiqueService.instance.recordView(widget.cantique.id);
    await _favoriteService.loadFavorites();
    final isFavorite = _favoriteService.isCantiqueFavorite(widget.cantique.id);
    final fontSize = await _settingsService.getLyricsFontSize();
    _isFavorite = isFavorite;
    _fontSize = fontSize;
    return _CantiqueDetailData(isFavorite: isFavorite, fontSize: fontSize);
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

  Future<void> _openSearchModal() async {
    final allCantiques = CantiqueService.instance.getAllCantiques();
    await showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: AppColors.surface,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setModalState) {
            final query = _searchQuery;
            final results = CantiqueService.filterCantiques(allCantiques, query);

            return DraggableScrollableSheet(
              expand: false,
              initialChildSize: 0.85,
              minChildSize: 0.5,
              maxChildSize: 0.95,
              builder: (context, scrollController) {
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
                          const Icon(Icons.search_rounded, color: AppColors.primary),
                          const SizedBox(width: AppSpacing.sm),
                          const Text(
                            'Rechercher un cantique',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: AppColors.textPrimary,
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
                          hintText: 'Titre, numéro (ex: 116), paroles...',
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
                          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                        ),
                        onChanged: (val) {
                          setModalState(() => _searchQuery = val);
                        },
                      ),
                      const SizedBox(height: AppSpacing.md),
                      Expanded(
                        child: results.isEmpty
                            ? const Center(
                                child: Text(
                                  'Aucun cantique trouvé',
                                  style: TextStyle(color: AppColors.textSecondary),
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
                                          horizontal: 8, vertical: 4),
                                      decoration: BoxDecoration(
                                        color: AppColors.primaryLight,
                                        borderRadius: AppRadius.smBorder,
                                      ),
                                      child: Text(
                                        'N° ${item.numero}',
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12,
                                          color: AppColors.primaryDark,
                                        ),
                                      ),
                                    ),
                                    title: Text(
                                      item.titre,
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),
                                    ),
                                    subtitle: Text(
                                      item.collection,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        color: AppColors.textSecondary,
                                      ),
                                    ),
                                    onTap: () {
                                      Navigator.pop(context);
                                      Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (_) => CantiqueDetailPage(cantique: item),
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

  String _searchQuery = '';

  Widget _actionIconButton({
    required IconData icon,
    required String label,
    required VoidCallback onTap,
    required Color iconColor,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: AppRadius.mdBorder,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, size: 22, color: iconColor),
            const SizedBox(height: 3),
            Text(
              label,
              style: const TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.w600,
                color: AppColors.textSecondary,
              ),
            ),
          ],
        ),
      ),
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
                style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
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
            tooltip: _isFavorite ? 'Retirer des favoris' : 'Ajouter aux favoris',
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
      body: FutureBuilder<_CantiqueDetailData>(
        future: _detailDataFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState != ConnectionState.done) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasData && !_detailDataApplied) {
            _isFavorite = snapshot.data!.isFavorite;
            _fontSize = snapshot.data!.fontSize;
            _detailDataApplied = true;
          }

          return FadeTransition(
            opacity: _fadeAnimation,
            child: SafeArea(
              child: Column(
                children: [
                  // Top Header Information Box
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppSpacing.lg,
                      vertical: AppSpacing.md,
                    ),
                    decoration: const BoxDecoration(
                      color: AppColors.primaryVeryLight,
                      border: Border(
                        bottom: BorderSide(
                          color: AppColors.borderLight,
                          width: 1,
                        ),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'N° ${widget.cantique.numero}',
                          style: const TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: AppColors.primaryDark,
                            letterSpacing: 1.0,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          widget.cantique.titre,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: AppColors.textPrimary,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 3,
                          ),
                          decoration: BoxDecoration(
                            color: AppColors.primaryLight,
                            borderRadius: AppRadius.fullBorder,
                          ),
                          child: Text(
                            widget.cantique.collection,
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: AppColors.primaryDark,
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
                              color: AppColors.surface,
                              borderRadius: AppRadius.xlBorder,
                              border: Border.all(
                                color: AppColors.borderLight,
                                width: 1,
                              ),
                              boxShadow: const [
                                BoxShadow(
                                  color: Color(0x0A000000),
                                  blurRadius: 12,
                                  offset: Offset(0, 4),
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
                                    color: AppColors.textPrimary,
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
                                      const Icon(
                                        Icons.person_outline_rounded,
                                        size: 16,
                                        color: AppColors.textSecondary,
                                      ),
                                      const SizedBox(width: 6),
                                      Text(
                                        l10n.auteurValeur(widget.cantique.auteur!),
                                        style: const TextStyle(
                                          fontSize: 13,
                                          fontStyle: FontStyle.italic,
                                          color: AppColors.textSecondary,
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

                  // Bottom Fixed Reading Action Bar
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppSpacing.md,
                      vertical: AppSpacing.sm,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.surface,
                      border: const Border(
                        top: BorderSide(color: AppColors.borderLight, width: 1),
                      ),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x0F000000),
                          blurRadius: 10,
                          offset: Offset(0, -4),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _actionIconButton(
                          icon: _isFavorite
                              ? Icons.favorite_rounded
                              : Icons.favorite_border_rounded,
                          label: l10n.favori,
                          iconColor: _isFavorite
                              ? AppColors.error
                              : AppColors.primary,
                          onTap: _toggleFavorite,
                        ),
                        _actionIconButton(
                          icon: Icons.copy_rounded,
                          label: l10n.copier,
                          iconColor: AppColors.primary,
                          onTap: _copyToClipboard,
                        ),
                        _actionIconButton(
                          icon: Icons.share_rounded,
                          label: l10n.partager,
                          iconColor: AppColors.primary,
                          onTap: _share,
                        ),
                        _actionIconButton(
                          icon: Icons.format_size_rounded,
                          label: l10n.tailleCourt,
                          iconColor: AppColors.primary,
                          onTap: _showFontSizeSheet,
                        ),
                        _actionIconButton(
                          icon: Icons.library_add_rounded,
                          label: l10n.mesChants,
                          iconColor: AppColors.primary,
                          onTap: _addToPersonalChants,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class _CantiqueDetailData {
  final bool isFavorite;
  final double fontSize;

  const _CantiqueDetailData({required this.isFavorite, required this.fontSize});
}
