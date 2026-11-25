import 'package:flutter/material.dart';

import '../l10n/app_localizations.dart';
import '../models/cantique.dart';
import '../models/chant_personnel.dart';
import '../pages/chant_detail.dart';
import '../services/cantique_service.dart';
import '../services/chant_personnel_service.dart';
import '../services/favorite_service.dart';
import '../theme/app_colors.dart';
import '../theme/app_radius.dart';
import '../theme/app_spacing.dart';
import '../theme/app_assets.dart';
import '../widgets/app_empty_state.dart';
import '../widgets/app_section_header.dart';
import '../widgets/cantique_card.dart';

class FavorisPage extends StatefulWidget {
  const FavorisPage({super.key});

  @override
  State<FavorisPage> createState() => _FavorisPageState();
}

class _FavorisPageState extends State<FavorisPage> {
  final FavoriteService _favoriteService = FavoriteService();
  final CantiqueService _cantiqueService = CantiqueService.instance;
  final ChantPersonnelService _chantPersonnelService = ChantPersonnelService();

  bool _isLoading = true;
  List<Cantique> _favoriteCantiques = const [];
  List<ChantPersonnel> _favoriteChantsPersonnels = const [];

  @override
  void initState() {
    super.initState();
    _loadFavorites();
  }

  Future<void> _loadFavorites() async {
    await _favoriteService.loadFavorites();
    final favoriteCantiques = _favoriteService.getFavoriteCantiques(
      _cantiqueService,
    );
    final favoriteChantsPersonnels = await _favoriteService
        .getFavoriteChantsPersonnels(_chantPersonnelService);

    if (!mounted) return;
    setState(() {
      _favoriteCantiques = favoriteCantiques;
      _favoriteChantsPersonnels = favoriteChantsPersonnels;
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    if (_isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (_favoriteCantiques.isEmpty && _favoriteChantsPersonnels.isEmpty) {
      return AppEmptyState(
        assetPath: AppAssets.favoritesEmpty,
        title: l10n.noFavorites,
        message: l10n.favorisVidesMessage,
      );
    }

    return RefreshIndicator(
      onRefresh: _loadFavorites,
      child: ListView(
        padding: const EdgeInsets.all(AppSpacing.lg),
        children: [
          if (_favoriteCantiques.isNotEmpty) ...[
            AppSectionHeader(
              title: l10n.cantiquesFavoris,
              icon: Icons.music_note_rounded,
              countBadge: _favoriteCantiques.length,
            ),
            const SizedBox(height: AppSpacing.md),
            ..._favoriteCantiques.map(
              (cantique) => CantiqueCard(cantique: cantique),
            ),
            const SizedBox(height: AppSpacing.lg),
          ],
          if (_favoriteChantsPersonnels.isNotEmpty) ...[
            AppSectionHeader(
              title: l10n.chantsPersonnelsFavoris,
              icon: Icons.edit_note_rounded,
              countBadge: _favoriteChantsPersonnels.length,
            ),
            const SizedBox(height: AppSpacing.md),
            ..._favoriteChantsPersonnels.map(
              (chant) => _ChantPersonnelFavoriteTile(
                chant: chant,
                onReturn: _loadFavorites,
              ),
            ),
          ],
        ],
      ),
    );
  }
}

class _ChantPersonnelFavoriteTile extends StatelessWidget {
  final ChantPersonnel chant;
  final VoidCallback onReturn;

  const _ChantPersonnelFavoriteTile({
    required this.chant,
    required this.onReturn,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    return Container(
      margin: const EdgeInsets.only(bottom: AppSpacing.sm),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: AppRadius.lgBorder,
        border: Border.all(color: theme.colorScheme.outlineVariant, width: 1),
        boxShadow: [
          BoxShadow(
            color: isDark ? const Color(0x33000000) : const Color(0x08000000),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        borderRadius: AppRadius.lgBorder,
        child: ListTile(
          shape: RoundedRectangleBorder(borderRadius: AppRadius.lgBorder),
          leading: Container(
            width: 42,
            height: 42,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: isDark
                  ? theme.colorScheme.primary.withValues(alpha: 0.18)
                  : theme.colorScheme.primaryContainer,
              borderRadius: AppRadius.mdBorder,
            ),
            child: Icon(
              Icons.edit_note_rounded,
              color: theme.colorScheme.primary,
              size: 22,
            ),
          ),
          title: Text(
            chant.titre,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
              color: theme.colorScheme.onSurface,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          subtitle: Text(
            _preview(chant.contenu),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 13,
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
          trailing: const Icon(
            Icons.favorite_rounded,
            color: AppColors.error,
            size: 20,
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => ChantDetailPage(chant: chant)),
            ).then((_) => onReturn());
          },
        ),
      ),
    );
  }

  String _preview(String content) {
    final trimmed = content.trim().replaceAll('\n', ' ');
    if (trimmed.length <= 50) return trimmed;
    return '${trimmed.substring(0, 50)}...';
  }
}
