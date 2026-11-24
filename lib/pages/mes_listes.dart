import 'package:flutter/material.dart';

import '../l10n/app_localizations.dart';
import '../models/playlist.dart';
import '../services/playlist_service.dart';
import '../theme/app_colors.dart';
import '../theme/app_radius.dart';
import '../theme/app_spacing.dart';
import '../widgets/app_empty_state.dart';
import 'playlist_detail.dart';

class MesListesPage extends StatefulWidget {
  const MesListesPage({super.key});

  @override
  State<MesListesPage> createState() => _MesListesPageState();
}

class _MesListesPageState extends State<MesListesPage> {
  final PlaylistService _playlistService = PlaylistService.instance;
  bool _isLoading = true;
  List<Playlist> _playlists = [];

  @override
  void initState() {
    super.initState();
    _loadPlaylists();
  }

  Future<void> _loadPlaylists() async {
    setState(() => _isLoading = true);
    try {
      final playlists = await _playlistService.getPlaylists();
      if (!mounted) return;
      setState(() {
        _playlists = playlists;
        _isLoading = false;
      });
    } catch (_) {
      if (!mounted) return;
      setState(() => _isLoading = false);
    }
  }

  Future<void> _showCreatePlaylistDialog() async {
    final l10n = AppLocalizations.of(context)!;
    final nameController = TextEditingController();
    final descController = TextEditingController();
    final formKey = GlobalKey<FormState>();

    final created = await showDialog<bool>(
      context: context,
      builder: (ctx) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: AppRadius.lgBorder),
          title: Text(l10n.nouvelleListe),
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
              child: Text(l10n.creerListe),
            ),
          ],
        );
      },
    );

    if (created == true && nameController.text.trim().isNotEmpty) {
      await _playlistService.createPlaylist(
        nom: nameController.text.trim(),
        description: descController.text.trim(),
      );
      await _loadPlaylists();
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(l10n.listeCreee)),
      );
    }
  }

  Future<void> _showEditPlaylistDialog(Playlist playlist) async {
    final l10n = AppLocalizations.of(context)!;
    final nameController = TextEditingController(text: playlist.nom);
    final descController = TextEditingController(text: playlist.description ?? '');
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
      final updatedPlaylist = playlist.copyWith(
        nom: nameController.text.trim(),
        description: descController.text.trim(),
      );
      await _playlistService.updatePlaylist(updatedPlaylist);
      await _loadPlaylists();
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(l10n.listeModifiee)),
      );
    }
  }

  Future<void> _confirmDeletePlaylist(Playlist playlist) async {
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
      await _playlistService.deletePlaylist(playlist.id);
      await _loadPlaylists();
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(l10n.listeSupprimee)),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    return Scaffold(
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : _playlists.isEmpty
              ? AppEmptyState(
                  icon: Icons.playlist_play_rounded,
                  title: l10n.aucuneListe,
                  message: l10n.aucuneListeMessage,
                  actionLabel: l10n.creerListe,
                  onAction: _showCreatePlaylistDialog,
                )
              : ListView.builder(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSpacing.md,
                    vertical: AppSpacing.sm,
                  ),
                  itemCount: _playlists.length,
                  itemBuilder: (context, index) {
                    final playlist = _playlists[index];
                    return Container(
                      margin: const EdgeInsets.only(bottom: AppSpacing.sm),
                      decoration: BoxDecoration(
                        color: theme.colorScheme.surface,
                        borderRadius: AppRadius.lgBorder,
                        border: Border.all(
                          color: theme.colorScheme.outlineVariant,
                          width: 1,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: theme.brightness == Brightness.dark
                                ? const Color(0x33000000)
                                : const Color(0x08000000),
                            blurRadius: 8,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: ListTile(
                        leading: Container(
                          width: 48,
                          height: 48,
                          decoration: BoxDecoration(
                            color: AppColors.primaryLight,
                            borderRadius: AppRadius.mdBorder,
                          ),
                          child: const Icon(
                            Icons.playlist_play_rounded,
                            color: AppColors.primary,
                            size: 28,
                          ),
                        ),
                        title: Text(
                          playlist.nom,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (playlist.description != null &&
                                playlist.description!.isNotEmpty) ...[
                              const SizedBox(height: 2),
                              Text(
                                playlist.description!,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.bodySmall?.copyWith(
                                  color: theme.colorScheme.onSurfaceVariant,
                                ),
                              ),
                            ],
                            const SizedBox(height: 4),
                            Text(
                              l10n.nombreChants(playlist.itemCount),
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                                color: theme.colorScheme.primary,
                              ),
                            ),
                          ],
                        ),
                        trailing: PopupMenuButton<String>(
                          icon: const Icon(Icons.more_vert_rounded),
                          onSelected: (value) {
                            if (value == 'edit') {
                              _showEditPlaylistDialog(playlist);
                            } else if (value == 'delete') {
                              _confirmDeletePlaylist(playlist);
                            }
                          },
                          itemBuilder: (ctx) => [
                            PopupMenuItem(
                              value: 'edit',
                              child: Row(
                                children: [
                                  const Icon(Icons.edit_outlined, size: 20),
                                  const SizedBox(width: AppSpacing.sm),
                                  Text(l10n.modifierListe),
                                ],
                              ),
                            ),
                            PopupMenuItem(
                              value: 'delete',
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.delete_outline_rounded,
                                    size: 20,
                                    color: Colors.red.shade700,
                                  ),
                                  const SizedBox(width: AppSpacing.sm),
                                  Text(
                                    l10n.supprimerListe,
                                    style: TextStyle(color: Colors.red.shade700),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        onTap: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (ctx) => PlaylistDetailPage(playlist: playlist),
                            ),
                          );
                          _loadPlaylists();
                        },
                      ),
                    );
                  },
                ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showCreatePlaylistDialog,
        tooltip: l10n.creerListe,
        child: const Icon(Icons.add_rounded),
      ),
    );
  }
}
