import 'package:flutter/material.dart';

import '../models/chant_personnel.dart';
import '../pages/chant_form.dart';
import '../services/chant_personnel_service.dart';
import '../services/favorite_service.dart';

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

  bool _isFavorite = false;
  bool _isBusy = false;

  @override
  void initState() {
    super.initState();
    _initFavorite();
  }

  Future<void> _initFavorite() async {
    await _favoriteService.loadFavorites();
    if (!mounted) return;
    setState(() {
      _isFavorite = _favoriteService.isFavorite(widget.chant.id);
    });
  }

  Future<void> _toggleFavorite() async {
    if (_isBusy) return;
    setState(() => _isBusy = true);

    try {
      await _favoriteService.toggleFavorite(widget.chant.id);
      if (!mounted) return;

      setState(() {
        _isFavorite = !_isFavorite;
      });

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content:
                Text(_isFavorite ? 'Ajouté aux favoris' : 'Retiré des favoris'),
            duration: const Duration(seconds: 1),
          ),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Erreur favoris: $e')),
        );
      }
    } finally {
      if (mounted) setState(() => _isBusy = false);
    }
  }

  Future<void> _confirmAndDelete() async {
    if (_isBusy) return;

    final bool? canDelete = await showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Supprimer ?'),
          content: const Text(
            'Cette action supprimera définitivement ce chant personnel.\n\nVoulez-vous continuer ?',
          ),
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

    if (canDelete != true) return;

    setState(() => _isBusy = true);
    try {
      await _chantService.deleteChant(widget.chant.id);
      if (!mounted) return;

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Chant supprimé')),
      );

      Navigator.pop(context, true);
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Erreur suppression: $e')),
        );
      }
    } finally {
      if (mounted) setState(() => _isBusy = false);
    }
  }

  Future<void> _edit() async {
    if (_isBusy) return;

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

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Chant mis à jour')),
      );

      Navigator.pop(context, updated);
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Erreur modification: $e')),
        );
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

  Widget _infoChip({
    required IconData icon,
    required String label,
  }) {
    return Chip(
      backgroundColor: Colors.white,
      avatar: Icon(icon, size: 18, color: Colors.amber.shade800),
      label: Text(label),
    );
  }

  @override
  Widget build(BuildContext context) {
    final chant = widget.chant;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(chant.titre),
        actions: [
          IconButton(
            icon: Icon(
              _isFavorite ? Icons.favorite : Icons.favorite_border,
              color: _isFavorite ? Colors.red : Colors.white,
            ),
            onPressed: _isBusy ? null : _toggleFavorite,
          ),
        ],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.amber.shade50,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        chant.titre,
                        style: const TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 8),
                      if ((chant.auteur ?? '').isNotEmpty)
                        Text(
                          'Auteur : ${chant.auteur}',
                          style: TextStyle(
                            color: Colors.grey.shade700,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      const SizedBox(height: 10),
                      Wrap(
                        spacing: 12,
                        runSpacing: 8,
                        children: [
                          _infoChip(
                            icon: Icons.calendar_today_outlined,
                            label: 'Création: ${_formatDate(chant.dateCreation)}',
                          ),
                          _infoChip(
                            icon: Icons.update_outlined,
                            label:
                                'Modification: ${_formatDate(chant.dateModification)}',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 18),

                Text(
                  'Contenu',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 8),

                Text(
                  chant.contenu,
                  style: const TextStyle(fontSize: 16, height: 1.8),
                ),

                const SizedBox(height: 24),

                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton.icon(
                        style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 14),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14),
                          ),
                          foregroundColor: Colors.black,
                        ),
                        icon: const Icon(Icons.edit),
                        label: const Text('Modifier'),
                        onPressed: _isBusy ? null : _edit,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: OutlinedButton.icon(
                        style: OutlinedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 14),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14),
                          ),
                          foregroundColor: Colors.red,
                        ),
                        icon: const Icon(Icons.delete_outline),
                        label: const Text('Supprimer'),
                        onPressed: _isBusy ? null : _confirmAndDelete,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          if (_isBusy)
            const Positioned.fill(
              child: ColoredBox(
                color: Color(0x33000000),
                child: Center(
                  child: CircularProgressIndicator(color: Colors.amber),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

