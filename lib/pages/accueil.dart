import 'dart:math';

import 'package:flutter/material.dart';

import '../services/cantique_service.dart';
import '../theme/app_colors.dart';
import '../theme/app_radius.dart';
import '../theme/app_spacing.dart';
import '../widgets/app_empty_state.dart';
import '../widgets/app_search_bar.dart';
import '../widgets/app_section_header.dart';
import '../widgets/cantique_card.dart';

class AccueilPage extends StatefulWidget {
  const AccueilPage({super.key});

  @override
  State<AccueilPage> createState() => _AccueilPageState();
}

class _AccueilPageState extends State<AccueilPage> {
  final CantiqueService _cantiqueService = CantiqueService.instance;
  final TextEditingController _searchController = TextEditingController();

  late final String _verseDuJour;
  late final IconData _verseIcon;

  static const List<String> _versets = [
    "Je puis tout par Christ qui me fortifie. — Philippiens 4:13",
    "L'Éternel est mon berger : je ne manquerai de rien. — Psaume 23:1",
    "Crois seulement, toutes choses sont possibles à celui qui croit. — Marc 9:23",
    "Car Dieu a tant aimé le monde qu'il a donné son Fils unique. — Jean 3:16",
  ];

  static const List<IconData> _icons = [
    Icons.menu_book_rounded,
    Icons.auto_stories_rounded,
  ];

  String _query = '';

  @override
  void initState() {
    super.initState();
    final rnd = Random();
    _verseDuJour = _versets[rnd.nextInt(_versets.length)];
    _verseIcon = _icons[rnd.nextInt(_icons.length)];
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final allCantiques = _cantiqueService.getAllCantiques();
    final filtered = CantiqueService.filterCantiques(allCantiques, _query);
    final isSearching = _query.trim().isNotEmpty;
    final recentCantiques = filtered.take(isSearching ? 10 : 3).toList();

    return SingleChildScrollView(
      padding: const EdgeInsets.all(AppSpacing.lg),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Banner Image Header
          LayoutBuilder(
            builder: (context, constraints) {
              final maxWidth = constraints.maxWidth;
              final headerHeight = (maxWidth < 360) ? 180.0 : 220.0;

              return ClipRRect(
                borderRadius: AppRadius.xlBorder,
                child: SizedBox(
                  height: headerHeight,
                  width: double.infinity,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: AppColors.primaryDark,
                      image: const DecorationImage(
                        image: AssetImage('assets/images/image3.jpg'),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                          Color(0xB30B5D2A),
                          BlendMode.darken,
                        ),
                      ),
                      borderRadius: AppRadius.xlBorder,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(AppSpacing.xl),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10,
                              vertical: 4,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white.withValues(alpha: 0.2),
                              borderRadius: AppRadius.fullBorder,
                            ),
                            child: const Text(
                              "BIENVENUE",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.2,
                              ),
                            ),
                          ),
                          const SizedBox(height: 6),
                          const Text(
                            "Cantiques du Message",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              letterSpacing: -0.3,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            "Trouvez rapidement vos cantiques de louange et d'adoration",
                            style: TextStyle(
                              color: Colors.white.withValues(alpha: 0.9),
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),

          const SizedBox(height: AppSpacing.lg),

          // Search Field
          AppSearchBar(
            controller: _searchController,
            hintText: 'Rechercher par titre, numéro, contenu ou collection…',
            onChanged: (value) => setState(() => _query = value),
            onClear: () => setState(() => _query = ''),
          ),

          const SizedBox(height: AppSpacing.xl),

          // Section Title: Cantiques Récents / Résultats
          AppSectionHeader(
            title: isSearching ? 'Résultats de recherche' : 'Cantiques récents',
            icon: isSearching
                ? Icons.search_rounded
                : Icons.access_time_rounded,
            countBadge: recentCantiques.length,
          ),

          const SizedBox(height: AppSpacing.md),

          if (recentCantiques.isEmpty)
            AppEmptyState(
              icon: Icons.search_off_rounded,
              title: 'Aucun cantique trouvé',
              message: 'Aucun résultat ne correspond à "$_query".',
            )
          else
            ...recentCantiques.map(
              (cantique) => CantiqueCard(cantique: cantique),
            ),

          if (!isSearching) ...[
            const SizedBox(height: AppSpacing.xl),

            // Verset du jour Section
            const AppSectionHeader(
              title: 'Verset du jour',
              icon: Icons.format_quote_rounded,
            ),
            const SizedBox(height: AppSpacing.md),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(AppSpacing.lg),
              decoration: BoxDecoration(
                color: AppColors.primaryVeryLight,
                borderRadius: AppRadius.xlBorder,
                border: Border.all(
                  color: AppColors.secondaryLight,
                  width: 1.5,
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x0A16803A),
                    blurRadius: 12,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 44,
                    height: 44,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: AppColors.surface,
                      borderRadius: AppRadius.mdBorder,
                      border: Border.all(
                        color: AppColors.borderLight,
                        width: 1,
                      ),
                    ),
                    child: Icon(
                      _verseIcon,
                      color: AppColors.primary,
                      size: 22,
                    ),
                  ),
                  const SizedBox(width: AppSpacing.md),
                  Expanded(
                    child: Text(
                      _verseDuJour,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: AppColors.textPrimary,
                        height: 1.45,
                        fontStyle: FontStyle.italic,
                      ),
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
