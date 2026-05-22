import 'package:flutter/material.dart';

import '../models/chant_personnel.dart';
import '../pages/chant_detail.dart';
import '../pages/chant_form.dart';
import '../services/chant_personnel_service.dart';

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
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Erreur chargement: $e')),
        );
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
      MaterialPageRoute(
        builder: (context) => const ChantFormPage(),
      ),
    );

    if (result == null) return;

    try {
      await _chantService.addChant(result);
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Chant ajouté')),
      );
      await _loadChants();
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Erreur ajout: $e')),
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
        const SnackBar(content: Text('Chant mis à jour')),
      );
      await _loadChants();
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Erreur modification: $e')),
        );
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
            TextButton(
              onPressed: () => Navigator.pop(context, true),
              child: const Text(
                'Supprimer',
                style: TextStyle(color: Colors.red),
              ),
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
        const SnackBar(content: Text('Chant supprimé')),
      );
      await _loadChants();
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Erreur suppression: $e')),
        );
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
                ? const Center(
                    child: CircularProgressIndicator(color: Colors.amber),
                  )
                : _buildList(),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.amber,
        foregroundColor: Colors.black,
        onPressed: _openAddForm,
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Vos chants personnels',
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const SizedBox(height: 12),
          TextField(
            controller: _searchController,
            onChanged: (value) => setState(() => _searchQuery = value),
            decoration: InputDecoration(
              hintText: 'Rechercher par titre...',
              prefixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              suffixIcon: _searchController.text.isNotEmpty
                  ? IconButton(
                      icon: const Icon(Icons.clear),
                      onPressed: () {
                        _searchController.clear();
                        setState(() => _searchQuery = '');
                      },
                    )
                  : null,
            ),
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              const Icon(Icons.sort, color: Colors.amber),
              const SizedBox(width: 8),
              Expanded(
                child: DropdownButtonFormField<bool>(
                  value: _sortNewestFirst,
                  decoration: InputDecoration(
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 12),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
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
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildList() {
    final items = _filteredAndSorted;

    if (items.isEmpty) {
      return const Center(
        child: Text(
          'Aucun chant trouvé.',
          style: TextStyle(color: Colors.grey, fontSize: 16),
        ),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 24),
      itemCount: items.length,
      itemBuilder: (context, index) {
        final chant = items[index];

        return Card(
          margin: const EdgeInsets.only(bottom: 12),
          child: ListTile(
            title: Text(
              chant.titre,
              style: const TextStyle(fontWeight: FontWeight.bold),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _preview(chant.contenu),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 6),
                Text(
                  'Modifié : ${_formatDate(chant.dateModification)}',
                  style: TextStyle(color: Colors.grey.shade700, fontSize: 12),
                ),
              ],
            ),
            leading: CircleAvatar(
              backgroundColor: Colors.amber.shade100,
              child: const Icon(Icons.edit_note, color: Colors.amber),
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
              spacing: 6,
              children: [
                IconButton(
                  padding: EdgeInsets.zero,
                  icon: const Icon(Icons.edit, color: Colors.amber),
                  onPressed: () => _openEditForm(chant),
                ),
                IconButton(
                  padding: EdgeInsets.zero,
                  icon: const Icon(Icons.delete_outline, color: Colors.red),
                  onPressed: () => _confirmAndDelete(chant),
                ),
              ],
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

