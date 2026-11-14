import 'package:flutter/material.dart';

import '../l10n/app_localizations.dart';
import '../models/chant_personnel.dart';
import '../pages/chant_detail.dart';
import '../pages/chant_form.dart';
import '../services/chant_personnel_service.dart';
import '../theme/app_colors.dart';
import '../theme/app_radius.dart';
import '../theme/app_spacing.dart';
import '../theme/app_assets.dart';
import '../widgets/app_empty_state.dart';
import '../widgets/app_search_bar.dart';
import '../widgets/app_section_header.dart';

/// Page principale "Mes Chants" : liste, recherche, tri, CRUD.
class MesChantsPage extends StatefulWidget {
  const MesChantsPage({super.key});

  @override
  State<MesChantsPage> createState() => _MesChantsPageState();
}

class _MesChantsPageState extends State<MesChantsPage> {
  final ChantPersonnelService _chantService = ChantPersonnelService();
  final TextEditingController _searchController = TextEditingController();

  bool _isLoading = true;
  String _searchQuery = '';
  bool _sortNewestFirst = true;

  List<ChantPersonnel> _chants = [];

  @override
  void initState() {
    super.initState();
    _loadChants();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  Future<void> _loadChants() async {
    setState(() => _isLoading = true);
    try {
      final all = await _chantService.getAllChants();
      if (!mounted) return;
      setState(() => _chants = all);
    } catch (_) {
      if (mounted) {
        final l10n = AppLocalizations.of(context)!;
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(l10n.chargementChantsErreur)));
      }
    } finally {
      if (mounted) setState(() => _isLoading = false);
    }
  }

  List<ChantPersonnel> get _filteredAndSorted {
    final q = _searchQuery.trim().toLowerCase();

    final filtered = q.isEmpty
        ? _chants
        : _chants.where((c) => c.titre.toLowerCase().contains(q)).toList();

    filtered.sort((a, b) {
      final cmp = a.dateModification.compareTo(b.dateModification);
      return _sortNewestFirst ? -cmp : cmp;
    });

    return filtered;
  }

  Future<void> _openAddForm() async {
    final result = await Navigator.push<ChantPersonnel>(
      context,
      MaterialPageRoute(builder: (context) => const ChantFormPage()),
    );

    if (result == null) return;

    try {
      await _chantService.addChant(result);
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(AppLocalizations.of(context)!.chantAjoute)),
      );
      await _loadChants();
    } catch (_) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(AppLocalizations.of(context)!.ajoutChantErreur),
          ),
        );
      }
    }
  }

  Future<void> _openEditForm(ChantPersonnel chant) async {
    final updated = await Navigator.push<ChantPersonnel>(
      context,
      MaterialPageRoute(
        builder: (context) => ChantFormPage(initialChant: chant),
      ),
    );

    if (updated == null) return;

    try {
      await _chantService.updateChant(updated);
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(AppLocalizations.of(context)!.chantMisAJour)),
      );
      await _loadChants();
    } catch (_) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              AppLocalizations.of(context)!.modificationChantErreur,
            ),
          ),
        );
      }
    }
  }

  Future<void> _confirmAndDelete(ChantPersonnel chant) async {
    final l10n = AppLocalizations.of(context)!;
    final shouldDelete = await showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(l10n.supprimerChantQuestion),
          content: Text(l10n.supprimerChantConfirmation(chant.titre)),
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

    if (shouldDelete != true) return;

    try {
      await _chantService.deleteChant(chant.id);
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(AppLocalizations.of(context)!.chantSupprime)),
      );
      await _loadChants();
    } catch (_) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(AppLocalizations.of(context)!.suppressionChantErreur),
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      body: Column(
        children: [
          _buildHeader(),
          Expanded(
            child: _isLoading
                ? const Center(child: CircularProgressIndicator())
                : _buildList(),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.textOnPrimary,
        onPressed: _openAddForm,
        icon: const Icon(Icons.add_rounded),
        label: Text(
          l10n.nouveauChant,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    final l10n = AppLocalizations.of(context)!;
    return Padding(
      padding: const EdgeInsets.all(AppSpacing.lg),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppSectionHeader(
            title: l10n.chantsPersonnelsTitle,
            icon: Icons.edit_note_rounded,
            countBadge: _chants.length,
          ),
          const SizedBox(height: AppSpacing.md),
          AppSearchBar(
            controller: _searchController,
            hintText: l10n.rechercherParTitre,
            onChanged: (value) => setState(() => _searchQuery = value),
            onClear: () => setState(() => _searchQuery = ''),
          ),
          const SizedBox(height: AppSpacing.md),
          Row(
            children: [
              const Icon(
                Icons.sort_rounded,
                color: AppColors.primary,
                size: 20,
              ),
              const SizedBox(width: AppSpacing.sm),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                    color: AppColors.surface,
                    borderRadius: AppRadius.mdBorder,
                    border: Border.all(color: AppColors.border, width: 1),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<bool>(
                      value: _sortNewestFirst,
                      isExpanded: true,
                      style: const TextStyle(
                        fontSize: 14,
                        color: AppColors.textPrimary,
                        fontWeight: FontWeight.w500,
                      ),
                      items: [
                        DropdownMenuItem(
                          value: true,
                          child: Text(l10n.plusRecentDabord),
                        ),
                        DropdownMenuItem(
                          value: false,
                          child: Text(l10n.plusAncienDabord),
                        ),
                      ],
                      onChanged: (value) {
                        if (value == null) return;
                        setState(() => _sortNewestFirst = value);
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildList() {
    final l10n = AppLocalizations.of(context)!;
    final items = _filteredAndSorted;

    if (items.isEmpty) {
      return AppEmptyState(
        assetPath: _searchQuery.isNotEmpty
            ? AppAssets.searchEmpty
            : AppAssets.personalSongs,
        title: l10n.noPersonalChants,
        message: _searchQuery.isNotEmpty
            ? l10n.aucunChantPourRecherche(_searchQuery)
            : l10n.noPersonalChantsMessage,
        actionLabel: _searchQuery.isEmpty ? l10n.creerChant : null,
        onAction: _searchQuery.isEmpty ? _openAddForm : null,
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.fromLTRB(
        AppSpacing.lg,
        0,
        AppSpacing.lg,
        80, // Space for FAB
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        final chant = items[index];

        return Container(
          margin: const EdgeInsets.only(bottom: AppSpacing.sm),
          decoration: BoxDecoration(
            color: AppColors.surface,
            borderRadius: AppRadius.lgBorder,
            border: Border.all(color: AppColors.borderLight, width: 1),
            boxShadow: const [
              BoxShadow(
                color: Color(0x08000000),
                blurRadius: 8,
                offset: Offset(0, 2),
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
                  color: AppColors.primaryLight,
                  borderRadius: AppRadius.mdBorder,
                ),
                child: const Icon(
                  Icons.edit_note_rounded,
                  color: AppColors.primary,
                  size: 22,
                ),
              ),
              title: Text(
                chant.titre,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: AppColors.textPrimary,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 2),
                  Text(
                    _preview(chant.contenu),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 13,
                      color: AppColors.textSecondary,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    l10n.modifieLe(_formatDate(chant.dateModification)),
                    style: const TextStyle(
                      color: AppColors.textMuted,
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ChantDetailPage(chant: chant),
                  ),
                ).then((_) => _loadChants());
              },
              trailing: Wrap(
                spacing: 2,
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.edit_outlined,
                      color: AppColors.primary,
                      size: 20,
                    ),
                    onPressed: () => _openEditForm(chant),
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.delete_outline_rounded,
                      color: AppColors.error,
                      size: 20,
                    ),
                    onPressed: () => _confirmAndDelete(chant),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  String _preview(String content) {
    final trimmed = content.trim().replaceAll('\n', ' ');
    if (trimmed.length <= 50) return trimmed;
    return '${trimmed.substring(0, 50)}...';
  }

  String _formatDate(DateTime dt) {
    return '${dt.day.toString().padLeft(2, '0')}/'
        '${dt.month.toString().padLeft(2, '0')}/'
        '${dt.year}';
  }
}
