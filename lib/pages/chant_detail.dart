import 'package:flutter/material.dart';

import '../l10n/app_localizations.dart';
import '../models/chant_personnel.dart';
import '../pages/chant_form.dart';
import '../services/chant_personnel_service.dart';
import '../services/favorite_service.dart';
import '../services/settings_service.dart';
import '../theme/app_colors.dart';
import '../theme/app_radius.dart';
import '../theme/app_spacing.dart';
import '../widgets/lyrics_zoom_wrapper.dart';

/// Page de détail / édition d’un chant personnel.
class ChantDetailPage extends StatefulWidget {
  final ChantPersonnel chant;

  const ChantDetailPage({super.key, required this.chant});

  @override
  State<ChantDetailPage> createState() => _ChantDetailPageState();
}

class _ChantDetailPageState extends State<ChantDetailPage> {
  final ChantPersonnelService _chantService = ChantPersonnelService();
  final FavoriteService _favoriteService = FavoriteService();
  final SettingsService _settingsService = SettingsService();

  bool _isFavorite = false;
  bool _isBusy = false;
  double _fontSize = SettingsService.defaultLyricsFontSize;

  @override
  void initState() {
    super.initState();
    _fontSize = SettingsService.lyricsFontSizeNotifier.value;
    SettingsService.lyricsFontSizeNotifier.addListener(_syncFontSize);
    _initFavorite();
  }

  @override
  void dispose() {
    SettingsService.lyricsFontSizeNotifier.removeListener(_syncFontSize);
    super.dispose();
  }

  void _syncFontSize() {
    if (!mounted) return;
    setState(() {
      _fontSize = SettingsService.lyricsFontSizeNotifier.value;
    });
  }

  void _onPinchFontSizeChange(double value) {
    setState(() => _fontSize = value);
    _settingsService.setLyricsFontSizeInMemory(value);
  }

  void _onPinchFontSizeCommit(double value) {
    _settingsService.saveLyricsFontSize(value);
  }

  Future<void> _initFavorite() async {
    await _favoriteService.loadFavorites();
    if (!mounted) return;
    setState(() {
      _isFavorite = _favoriteService.isChantPersonnelFavorite(widget.chant.id);
    });
  }

  Future<void> _toggleFavorite() async {
    if (_isBusy) return;
    setState(() => _isBusy = true);

    try {
      await _favoriteService.toggleChantPersonnelFavorite(widget.chant.id);
      if (!mounted) return;

      setState(() {
        _isFavorite = !_isFavorite;
      });

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              _isFavorite
                  ? AppLocalizations.of(context)!.ajouteAuxFavoris
                  : AppLocalizations.of(context)!.retireDesFavoris,
            ),
            duration: const Duration(seconds: 1),
          ),
        );
      }
    } catch (_) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(AppLocalizations.of(context)!.erreurFavori)),
        );
      }
    } finally {
      if (mounted) setState(() => _isBusy = false);
    }
  }

  Future<void> _confirmAndDelete() async {
    if (_isBusy) return;
    final l10n = AppLocalizations.of(context)!;

    final bool? canDelete = await showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(l10n.supprimerQuestion),
          content: Text(l10n.suppressionDefinitiveChant),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context, false),
              child: Text(l10n.annuler),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: AppColors.error),
              onPressed: () => Navigator.pop(context, true),
              child: Text(l10n.supprimer),
            ),
          ],
        );
      },
    );

    if (canDelete != true) return;

    setState(() => _isBusy = true);
    try {
      await _chantService.deleteChant(widget.chant.id);
      if (!mounted) return;

      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(l10n.chantSupprime)));

      Navigator.pop(context, true);
    } catch (_) {
      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(l10n.suppressionChantErreur)));
      }
    } finally {
      if (mounted) setState(() => _isBusy = false);
    }
  }

  Future<void> _edit() async {
    if (_isBusy) return;
    final l10n = AppLocalizations.of(context)!;

    final updated = await Navigator.push<ChantPersonnel>(
      context,
      MaterialPageRoute(
        builder: (context) => ChantFormPage(initialChant: widget.chant),
      ),
    );

    if (updated == null) return;

    setState(() => _isBusy = true);
    try {
      await _chantService.updateChant(updated);
      if (!mounted) return;

      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text(l10n.chantMisAJour)));

      Navigator.pop(context, updated);
    } catch (_) {
      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(l10n.modificationChantErreur)));
      }
    } finally {
      if (mounted) setState(() => _isBusy = false);
    }
  }

  String _formatDate(DateTime dt) {
    return '${dt.day.toString().padLeft(2, '0')}/'
        '${dt.month.toString().padLeft(2, '0')}/'
        '${dt.year}';
  }

  Widget _infoChip({required IconData icon, required String label}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: AppRadius.fullBorder,
        border: Border.all(color: AppColors.borderLight, width: 1),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 14, color: AppColors.primary),
          const SizedBox(width: 4),
          Text(
            label,
            style: const TextStyle(
              fontSize: 12,
              color: AppColors.textSecondary,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final chant = widget.chant;
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(chant.titre),
        actions: [
          IconButton(
            icon: Icon(
              _isFavorite
                  ? Icons.favorite_rounded
                  : Icons.favorite_border_rounded,
              color: _isFavorite ? AppColors.error : AppColors.textOnPrimary,
            ),
            onPressed: _isBusy ? null : _toggleFavorite,
          ),
        ],
      ),
      body: Stack(
        children: [
          LyricsZoomWrapper(
            fontSize: _fontSize,
            onFontSizeChange: _onPinchFontSizeChange,
            onFontSizeCommit: _onPinchFontSizeCommit,
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(AppSpacing.lg),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Banner header container
                  Container(
                    padding: const EdgeInsets.all(AppSpacing.lg),
                    decoration: BoxDecoration(
                      color: AppColors.primaryVeryLight,
                      borderRadius: AppRadius.xlBorder,
                      border: Border.all(
                        color: AppColors.secondaryLight,
                        width: 1,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          chant.titre,
                          style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: AppColors.textPrimary,
                          ),
                        ),
                        if ((chant.auteur ?? '').isNotEmpty) ...[
                          const SizedBox(height: 4),
                          Text(
                            l10n.auteurValeur(chant.auteur!),
                            style: const TextStyle(
                              color: AppColors.textSecondary,
                              fontStyle: FontStyle.italic,
                              fontSize: 14,
                            ),
                          ),
                        ],
                        const SizedBox(height: AppSpacing.md),
                        Wrap(
                          spacing: 8,
                          runSpacing: 6,
                          children: [
                            _infoChip(
                              icon: Icons.calendar_today_rounded,
                              label: l10n.creationValeur(
                                _formatDate(chant.dateCreation),
                              ),
                            ),
                            _infoChip(
                              icon: Icons.update_rounded,
                              label: l10n.modificationValeur(
                                _formatDate(chant.dateModification),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: AppSpacing.xl),

                  Text(
                    l10n.parolesChant,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppColors.textPrimary,
                    ),
                  ),
                  const SizedBox(height: AppSpacing.md),

                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(AppSpacing.xl),
                    decoration: BoxDecoration(
                      color: AppColors.surface,
                      borderRadius: AppRadius.xlBorder,
                      border: Border.all(color: AppColors.borderLight, width: 1),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0x0A000000),
                          blurRadius: 10,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: SelectableText(
                      chant.contenu,
                      style: TextStyle(
                        fontSize: _fontSize,
                        height: 1.8,
                        color: AppColors.textPrimary,
                      ),
                    ),
                  ),

                  const SizedBox(height: AppSpacing.xxl),

                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton.icon(
                        icon: const Icon(Icons.edit_rounded, size: 18),
                        label: Text(l10n.modifier),
                        onPressed: _isBusy ? null : _edit,
                      ),
                    ),
                    const SizedBox(width: AppSpacing.md),
                    Expanded(
                      child: OutlinedButton.icon(
                        style: OutlinedButton.styleFrom(
                          foregroundColor: AppColors.error,
                          side: const BorderSide(color: AppColors.error),
                        ),
                        icon: const Icon(
                          Icons.delete_outline_rounded,
                          size: 18,
                        ),
                        label: Text(l10n.supprimer),
                        onPressed: _isBusy ? null : _confirmAndDelete,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          ),
          if (_isBusy)
            const Positioned.fill(
              child: ColoredBox(
                color: Color(0x33000000),
                child: Center(child: CircularProgressIndicator()),
              ),
            ),
        ],
      ),
    );
  }
}
