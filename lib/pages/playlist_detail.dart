import 'package:flutter/material.dart';

import '../l10n/app_localizations.dart';
import '../models/playlist.dart';
import '../models/playlist_item.dart';
import '../services/cantique_service.dart';
import '../services/chant_personnel_service.dart';
import '../services/playlist_service.dart';
import '../theme/app_colors.dart';
import '../theme/app_radius.dart';
import '../theme/app_spacing.dart';
import '../widgets/app_empty_state.dart';
import 'cantique_detail.dart';
import 'chant_detail.dart';

class PlaylistDetailPage extends StatefulWidget {
  final Playlist playlist;

  const PlaylistDetailPage({
    super.key,
    required this.playlist,
  });

  @override
  State<PlaylistDetailPage> createState() => _PlaylistDetailPageState();
}

class _PlaylistDetailPageState extends State<PlaylistDetailPage> {
  final PlaylistService _playlistService = PlaylistService.instance;
  final CantiqueService _cantiqueService = CantiqueService.instance;
  final ChantPersonnelService _chantPersonnelService = ChantPersonnelService();

  late Playlist _playlist;
  List<PlaylistItem> _items = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _playlist = widget.playlist;
    _loadPlaylistDetails();
  }

  Future<void> _loadPlaylistDetails() async {
    setState(() => _isLoading = true);
    try {
      final updatedPlaylist = await _playlistService.getPlaylistById(_playlist.id);
      final items = await _playlistService.getResolvedPlaylistItems(_playlist.id);
      if (!mounted) return;
      setState(() {
        if (updatedPlaylist != null) {
          _playlist = updatedPlaylist;
        }
        _items = items;
        _isLoading = false;
      });
    } catch (_) {
      if (!mounted) return;
      setState(() => _isLoading = false);
    }
  }

  Future<void> _onReorder(int oldIndex, int newIndex) async {
    if (oldIndex < newIndex) {
      newIndex -= 1;
    }
    setState(() {
      final item = _items.removeAt(oldIndex);
      _items.insert(newIndex, item);
    });

    final orderedIds = _items.map((i) => i.id).toList();
    await _playlistService.reorderPlaylistItems(
      playlistId: _playlist.id,
      orderedItemIds: orderedIds,
    );
  }

  Future<void> _removeItem(PlaylistItem item) async {
    final l10n = AppLocalizations.of(context)!;
    final itemTitle = item.titre ?? '';

    await _playlistService.removePlaylistItem(
      playlistId: _playlist.id,
      itemId: item.id,
    );

    await _loadPlaylistDetails();

    if (!mounted) return;
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          itemTitle.isNotEmpty
              ? '${l10n.chantRetireDeListe} : $itemTitle'
              : l10n.chantRetireDeListe,
        ),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  Future<void> _editPlaylist() async {
    final l10n = AppLocalizations.of(context)!;
    final nameController = TextEditingController(text: _playlist.nom);
    final descController = TextEditingController(text: _playlist.description ?? '');
    final formKey = GlobalKey<FormState>();

    final updated = await showDialog<bool>(
      context: context,
      builder: (ctx) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: AppRadius.lgBorder),
          title: Text(l10n.modifierListe),
          content: Form(
            key: formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextFormField(
                  controller: nameController,
                  autofocus: true,
                  textCapitalization: TextCapitalization.sentences,
                  decoration: InputDecoration(
                    labelText: l10n.nomListe,
                    hintText: l10n.nomListeHint,
                    border: const OutlineInputBorder(),
                  ),
                  validator: (val) {
                    if (val == null || val.trim().isEmpty) {
                      return l10n.nomListeRequis;
                    }
                    return null;
                  },
                ),
                const SizedBox(height: AppSpacing.md),
                TextFormField(
                  controller: descController,
                  textCapitalization: TextCapitalization.sentences,
                  decoration: InputDecoration(
                    labelText: l10n.descriptionListe,
                    hintText: l10n.descriptionListeHint,
                    border: const OutlineInputBorder(),
                  ),
                  maxLines: 2,
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(ctx, false),
              child: Text(l10n.annuler),
            ),
            ElevatedButton(
              onPressed: () {
                if (formKey.currentState?.validate() == true) {
                  Navigator.pop(ctx, true);
                }
              },
              child: Text(l10n.enregistrer),
            ),
          ],
        );
      },
    );

    if (updated == true && nameController.text.trim().isNotEmpty) {
      final newPlaylist = _playlist.copyWith(
        nom: nameController.text.trim(),
        description: descController.text.trim(),
      );
      await _playlistService.updatePlaylist(newPlaylist);
      await _loadPlaylistDetails();
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(l10n.listeModifiee)),
      );
    }
  }

  Future<void> _deletePlaylist() async {
    final l10n = AppLocalizations.of(context)!;
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (ctx) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: AppRadius.lgBorder),
          title: Text(l10n.supprimerListeQuestion),
          content: Text(l10n.supprimerListeConfirmation),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(ctx, false),
              child: Text(l10n.annuler),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red.shade700,
                foregroundColor: Colors.white,
              ),
              onPressed: () => Navigator.pop(ctx, true),
              child: Text(l10n.supprimerListe),
            ),
          ],
        );
      },
    );

    if (confirmed == true) {
      await _playlistService.deletePlaylist(_playlist.id);
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(l10n.listeSupprimee)),
      );
      Navigator.pop(context, true);
    }
  }

  Future<void> _openSong(int index) async {
    if (index < 0 || index >= _items.length) return;
    final item = _items[index];
    if (!item.isAvailable) return;

    if (item.isOfficial) {
      final cantique = _cantiqueService.getCantiqueById(item.songId);
      if (cantique != null) {
        await Navigator.push(
          context,
          MaterialPageRoute(
            builder: (ctx) => CantiqueDetailPage(
              cantique: cantique,
              playlistContext: _items,
              playlistIndex: index,
              playlistTitle: _playlist.nom,
            ),
          ),
        );
        _loadPlaylistDetails();
      }
    } else {
      final chant = await _chantPersonnelService.getChantById(item.songId);
      if (chant != null && mounted) {
        await Navigator.push(
          context,
          MaterialPageRoute(
            builder: (ctx) => ChantDetailPage(
              chant: chant,
              playlistContext: _items,
              playlistIndex: index,
              playlistTitle: _playlist.nom,
            ),
          ),
        );
        _loadPlaylistDetails();
      }
    }
  }

  void _startWorship() {
    if (_items.isEmpty) return;
    _openSong(0);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(_playlist.nom),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit_outlined),
            tooltip: l10n.modifierListe,
            onPressed: _editPlaylist,
          ),
          IconButton(
            icon: const Icon(Icons.delete_outline_rounded),
            tooltip: l10n.supprimerListe,
            onPressed: _deletePlaylist,
          ),
        ],
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : Column(
              children: [
                // Header Card
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.all(AppSpacing.md),
                  padding: const EdgeInsets.all(AppSpacing.lg),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        theme.colorScheme.primaryContainer,
                        theme.colorScheme.surfaceContainerHighest,
                      ],
                    ),
                    borderRadius: AppRadius.xlBorder,
                    border: Border.all(
                      color: theme.colorScheme.outlineVariant,
                      width: 1,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(AppSpacing.sm),
                            decoration: BoxDecoration(
                              color: AppColors.primary,
                              borderRadius: AppRadius.mdBorder,
                            ),
                            child: const Icon(
                              Icons.playlist_play_rounded,
                              color: Colors.white,
                              size: 28,
                            ),
                          ),
                          const SizedBox(width: AppSpacing.md),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  _playlist.nom,
                                  style: theme.textTheme.titleMedium?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 2),
                                Text(
                                  l10n.nombreChants(_items.length),
                                  style: theme.textTheme.bodySmall?.copyWith(
                                    color: theme.colorScheme.onSurfaceVariant,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      if (_playlist.description != null &&
                          _playlist.description!.isNotEmpty) ...[
                        const SizedBox(height: AppSpacing.sm),
                        Text(
                          _playlist.description!,
                          style: theme.textTheme.bodyMedium?.copyWith(
                            color: theme.colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ],
                      const SizedBox(height: AppSpacing.md),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton.icon(
                          onPressed: _items.isEmpty ? null : _startWorship,
                          icon: const Icon(Icons.play_arrow_rounded, size: 24),
                          label: Text(
                            l10n.commencerLouange,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.primary,
                            foregroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(
                              vertical: AppSpacing.md,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: AppRadius.lgBorder,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // Songs list or empty state
                Expanded(
                  child: _items.isEmpty
                      ? AppEmptyState(
                          icon: Icons.playlist_add_rounded,
                          title: l10n.listeVide,
                          message: l10n.listeVideMessage,
                        )
                      : ReorderableListView.builder(
                          padding: const EdgeInsets.only(
                            bottom: AppSpacing.xxl,
                            top: AppSpacing.xs,
                          ),
                          itemCount: _items.length,
                          onReorder: _onReorder,
                          itemBuilder: (context, index) {
                            final item = _items[index];
                            final key = ValueKey(item.id);

                            return Container(
                              key: key,
                              margin: const EdgeInsets.symmetric(
                                horizontal: AppSpacing.md,
                                vertical: 4,
                              ),
                              decoration: BoxDecoration(
                                color: theme.colorScheme.surface,
                                borderRadius: AppRadius.lgBorder,
                                border: Border.all(
                                  color: theme.colorScheme.outlineVariant,
                                  width: 1,
                                ),
                              ),
                              child: ListTile(
                                leading: Container(
                                  width: 38,
                                  height: 38,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    color: theme.colorScheme.surfaceContainerHighest,
                                    borderRadius: AppRadius.mdBorder,
                                  ),
                                  child: Text(
                                    '${index + 1}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: theme.colorScheme.primary,
                                    ),
                                  ),
                                ),
                                title: Text(
                                  item.titre ?? 'Sans titre',
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                subtitle: Text(
                                  item.isOfficial
                                      ? '${item.collection ?? ''} • #${item.numero ?? item.songId}'
                                      : (item.auteur != null && item.auteur!.isNotEmpty
                                          ? item.auteur!
                                          : l10n.navMesChants),
                                  style: theme.textTheme.bodySmall?.copyWith(
                                    color: theme.colorScheme.onSurfaceVariant,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                trailing: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    IconButton(
                                      icon: const Icon(
                                        Icons.close_rounded,
                                        size: 20,
                                      ),
                                      tooltip: l10n.retirerDeLaListe,
                                      onPressed: () => _removeItem(item),
                                    ),
                                    ReorderableDragStartListener(
                                      index: index,
                                      child: const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Icon(
                                          Icons.drag_handle_rounded,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                onTap: () => _openSong(index),
                              ),
                            );
                          },
                        ),
                ),
              ],
            ),
    );
  }
}
