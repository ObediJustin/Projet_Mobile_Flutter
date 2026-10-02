import 'package:flutter/material.dart';

import '../models/chant_personnel.dart';
import '../pages/chant_detail.dart';
import '../pages/chant_form.dart';
import '../services/chant_personnel_service.dart';
import '../theme/app_colors.dart';
import '../theme/app_radius.dart';
import '../theme/app_spacing.dart';
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
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Erreur chargement: $e')));
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
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('Chant ajouté')));
      await _loadChants();
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Erreur ajout: $e')));
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
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('Chant mis à jour')));
      await _loadChants();
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Erreur modification: $e')));
      }
    }
  }

  Future<void> _confirmAndDelete(ChantPersonnel chant) async {
    final shouldDelete = await showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Supprimer ce chant ?'),
          content: Text('Voulez-vous vraiment supprimer\n"${chant.titre}" ?'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context, false),
              child: const Text('Annuler'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.error,
              ),
              onPressed: () => Navigator.pop(context, true),
              child: const Text('Supprimer'),
            ),
          ],
        );
      },
    );

    if (shouldDelete != true) return;

    try {
      await _chantService.deleteChant(chant.id);
      if (!mounted) return;
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('Chant supprimé')));
      await _loadChants();
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Erreur suppression: $e')));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
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
        label: const Text(
          'Nouveau chant',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.all(AppSpacing.lg),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppSectionHeader(
            title: 'Vos chants personnels',
            icon: Icons.edit_note_rounded,
            countBadge: _chants.length,
          ),
          const SizedBox(height: AppSpacing.md),
          AppSearchBar(
            controller: _searchController,
            hintText: 'Rechercher par titre...',
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
                      items: const [
                        DropdownMenuItem(
                          value: true,
                          child: Text('Plus récent d’abord'),
                        ),
                        DropdownMenuItem(
                          value: false,
                          child: Text('Plus ancien d’abord'),
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
    final items = _filteredAndSorted;

    if (items.isEmpty) {
      return AppEmptyState(
        icon: Icons.music_off_rounded,
        title: 'Aucun chant personnel',
        message: _searchQuery.isNotEmpty
            ? 'Aucun chant ne correspond à "$_searchQuery".'
            : 'Vous n\'avez encore ajouté aucun chant personnel. Appuyez sur "Nouveau chant" pour en créer un.',
        actionLabel: _searchQuery.isEmpty ? 'Créer un chant' : null,
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
                    'Modifié le ${_formatDate(chant.dateModification)}',
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
