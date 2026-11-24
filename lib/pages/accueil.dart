import 'package:flutter/material.dart';

import '../l10n/app_localizations.dart';

import '../models/cantique.dart';
import '../services/cantique_service.dart';
import '../services/recent_cantique_service.dart';
import '../services/verse_service.dart';
import '../theme/app_colors.dart';
import '../theme/app_radius.dart';
import '../theme/app_spacing.dart';
import '../theme/app_assets.dart';
import '../widgets/app_empty_state.dart';
import '../widgets/app_search_bar.dart';
import '../widgets/app_section_header.dart';
import '../widgets/cantique_card.dart';
import '../widgets/home_banner.dart';

class AccueilPage extends StatefulWidget {
  const AccueilPage({super.key});

  @override
  State<AccueilPage> createState() => AccueilPageState();
}

class AccueilPageState extends State<AccueilPage> {
  final CantiqueService _cantiqueService = CantiqueService.instance;
  final RecentCantiqueService _recentService = RecentCantiqueService.instance;
  final TextEditingController _searchController = TextEditingController();

  late final VerseItem _verseDuJour;
  List<Cantique> _recentCantiques = const [];
  bool _isLoadingRecents = true;
  String _query = '';

  @override
  void initState() {
    super.initState();
    _verseDuJour = VerseService.instance.getVerseOfDay();
    loadRecents();
  }

  Future<void> loadRecents() async {
    final recents = await _recentService.getRecentlyViewedCantiques(limit: 4);
    if (!mounted) return;
    setState(() {
      _recentCantiques = recents;
      _isLoadingRecents = false;
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);

    final allCantiques = _cantiqueService.getAllCantiques();
    final filteredSearchResults = CantiqueService.filterCantiques(
      allCantiques,
      _query,
    );
    final isSearching = _query.trim().isNotEmpty;

    return SingleChildScrollView(
      padding: const EdgeInsets.all(AppSpacing.lg),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Modern Rotating Banner Header
          HomeBanner(
            badgeText: l10n?.bienvenueTitle ?? "BIENVENUE",
            title: l10n?.appTitle ?? "Cantiques du Message",
            subtitle: l10n?.bienvenueSubtitle ??
                "Trouvez rapidement vos cantiques de louange et d'adoration",
          ),

          const SizedBox(height: AppSpacing.lg),

          // Search Field
          AppSearchBar(
            controller: _searchController,
            hintText:
                l10n?.searchHint ??
                'Rechercher par titre, numéro, contenu ou collection…',
            onChanged: (value) => setState(() => _query = value),
            onClear: () => setState(() => _query = ''),
          ),

          const SizedBox(height: AppSpacing.xl),

          // Section Title: Cantiques Récents / Résultats
          AppSectionHeader(
            title: isSearching
                ? (l10n?.searchResultsTitle ?? 'Résultats de recherche')
                : (l10n?.cantiquesRecentsTitle ?? 'Cantiques récents'),
            icon: isSearching
                ? Icons.search_rounded
                : Icons.access_time_rounded,
            countBadge: isSearching
                ? filteredSearchResults.length
                : _recentCantiques.length,
          ),

          const SizedBox(height: AppSpacing.md),

          if (isSearching) ...[
            if (filteredSearchResults.isEmpty)
              AppEmptyState(
                assetPath: AppAssets.searchEmpty,
                title: l10n?.noCantiqueFound ?? 'Aucun cantique trouvé',
                message:
                    l10n?.noResultsForQuery ??
                    'Aucun résultat ne correspond à votre recherche.',
              )
            else
              ...filteredSearchResults.map(
                (cantique) => CantiqueCard(
                  cantique: cantique,
                  onReturn: loadRecents,
                ),
              ),
          ] else ...[
            if (_isLoadingRecents)
              const Padding(
                padding: EdgeInsets.all(AppSpacing.lg),
                child: Center(child: CircularProgressIndicator()),
              )
            else if (_recentCantiques.isEmpty)
              AppEmptyState(
                assetPath: AppAssets.recentEmpty,
                title:
                    l10n?.noRecentCantiques ??
                    'Vos cantiques récents apparaîtront ici',
                message: l10n?.consulterPourRecents ?? '',
              )
            else
              ..._recentCantiques.map(
                (cantique) => CantiqueCard(
                  cantique: cantique,
                  onReturn: loadRecents,
                ),
              ),

            const SizedBox(height: AppSpacing.xl),

            // Verset du jour Section
            AppSectionHeader(
              title: l10n?.versetDuJourTitle ?? 'Verset du jour',
              icon: Icons.format_quote_rounded,
            ),
            const SizedBox(height: AppSpacing.md),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(AppSpacing.lg),
              decoration: BoxDecoration(
                color: theme.colorScheme.primaryContainer,
                borderRadius: AppRadius.xlBorder,
                border: Border.all(
                  color: theme.colorScheme.outlineVariant,
                  width: 1.5,
                ),
                boxShadow: [
                  BoxShadow(
                    color: theme.colorScheme.primary.withValues(alpha: 0.08),
                    blurRadius: 12,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 48,
                    height: 48,
                    padding: const EdgeInsets.all(6),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: theme.colorScheme.surface,
                      borderRadius: AppRadius.mdBorder,
                      border: Border.all(
                        color: theme.colorScheme.outlineVariant,
                        width: 1,
                      ),
                    ),
                    child: AppAssets.svg(
                      AppAssets.verseOfDay,
                      width: 32,
                      height: 32,
                    ),
                  ),
                  const SizedBox(width: AppSpacing.md),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '"${_verseDuJour.text}"',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: theme.colorScheme.onPrimaryContainer,
                            height: 1.45,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          '— ${_verseDuJour.reference}',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: theme.colorScheme.primary,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],

          const SizedBox(height: AppSpacing.xxl),
        ],
      ),
    );
  }
}
