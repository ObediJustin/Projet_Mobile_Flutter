import 'package:flutter/material.dart';

import '../l10n/app_localizations.dart';
import '../models/playlist.dart';
import '../models/playlist_item.dart';
import '../services/playlist_service.dart';
import '../theme/app_colors.dart';
import '../theme/app_radius.dart';
import '../theme/app_spacing.dart';

class AddToPlaylistSheet extends StatefulWidget {
  final PlaylistItemType songType;
  final String songId;
  final String songTitle;

  const AddToPlaylistSheet({
    super.key,
    required this.songType,
    required this.songId,
    required this.songTitle,
  });

  static Future<void> show(
    BuildContext context, {
    required PlaylistItemType songType,
    required String songId,
    required String songTitle,
  }) {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (ctx) => AddToPlaylistSheet(
        songType: songType,
        songId: songId,
        songTitle: songTitle,
      ),
    );
  }

  @override
  State<AddToPlaylistSheet> createState() => _AddToPlaylistSheetState();
}

class _AddToPlaylistSheetState extends State<AddToPlaylistSheet> {
  final PlaylistService _playlistService = PlaylistService.instance;
  bool _isLoading = true;
  List<Playlist> _playlists = [];
  Set<String> _containingPlaylistIds = {};

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    setState(() => _isLoading = true);
    try {
      final playlists = await _playlistService.getPlaylists();
      final containing = await _playlistService.getPlaylistIdsContainingSong(
        type: widget.songType,
        songId: widget.songId,
      );
      if (!mounted) return;
      setState(() {
        _playlists = playlists;
        _containingPlaylistIds = containing;
        _isLoading = false;
      });
    } catch (_) {
      if (!mounted) return;
      setState(() => _isLoading = false);
    }
  }

  Future<void> _togglePlaylist(Playlist playlist) async {
    final isContained = _containingPlaylistIds.contains(playlist.id);
    final l10n = AppLocalizations.of(context)!;

    if (isContained) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(l10n.chantDejaDansListe),
          duration: const Duration(seconds: 2),
        ),
      );
      return;
    }

    final success = await _playlistService.addSongToPlaylist(
      playlistId: playlist.id,
      type: widget.songType,
      songId: widget.songId,
    );

    if (!mounted) return;

    if (success) {
      setState(() {
        _containingPlaylistIds = {..._containingPlaylistIds, playlist.id};
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('${l10n.chantAjouteAListe} « ${playlist.nom} »'),
          duration: const Duration(seconds: 2),
        ),
      );
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
              onPressed: () async {
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
      final newPlaylist = await _playlistService.createPlaylist(
        nom: nameController.text.trim(),
        description: descController.text.trim(),
      );
      // Auto-add current song to this new playlist
      await _playlistService.addSongToPlaylist(
        playlistId: newPlaylist.id,
        type: widget.songType,
        songId: widget.songId,
      );
      await _loadData();
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('${l10n.chantAjouteAListe} « ${newPlaylist.nom} »'),
          duration: const Duration(seconds: 2),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    return Container(
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height * 0.7,
      ),
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: SafeArea(
        top: false,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Handle bar
            Center(
              child: Container(
                margin: const EdgeInsets.only(top: 10, bottom: 8),
                width: 36,
                height: 4,
                decoration: BoxDecoration(
                  color: theme.colorScheme.outlineVariant,
                  borderRadius: AppRadius.fullBorder,
                ),
              ),
            ),

            // Header
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg, vertical: AppSpacing.xs),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          l10n.ajouterALaListe,
                          style: theme.textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          widget.songTitle,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: theme.colorScheme.onSurfaceVariant,
                          ),
                        ),
                      ],
                    ),
                  ),
                  TextButton.icon(
                    onPressed: _showCreatePlaylistDialog,
                    icon: const Icon(Icons.add_rounded, size: 20),
                    label: Text(l10n.nouvelleListe),
                  ),
                ],
              ),
            ),

            const Divider(height: 1),

            // Content
            Expanded(
              child: _isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : _playlists.isEmpty
                      ? Center(
                          child: Padding(
                            padding: const EdgeInsets.all(AppSpacing.xl),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.playlist_add_rounded,
                                  size: 48,
                                  color: theme.colorScheme.primary.withValues(alpha: 0.5),
                                ),
                                const SizedBox(height: AppSpacing.md),
                                Text(
                                  l10n.aucuneListe,
                                  style: theme.textTheme.titleSmall?.copyWith(
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(height: AppSpacing.xs),
                                Text(
                                  l10n.aucuneListeMessage,
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.bodySmall?.copyWith(
                                    color: theme.colorScheme.onSurfaceVariant,
                                  ),
                                ),
                                const SizedBox(height: AppSpacing.md),
                                ElevatedButton.icon(
                                  onPressed: _showCreatePlaylistDialog,
                                  icon: const Icon(Icons.add_rounded),
                                  label: Text(l10n.creerListe),
                                ),
                              ],
                            ),
                          ),
                        )
                      : ListView.separated(
                          padding: const EdgeInsets.symmetric(vertical: AppSpacing.sm),
                          itemCount: _playlists.length,
                          separatorBuilder: (context, index) => const Divider(height: 1, indent: 64),
                          itemBuilder: (context, index) {
                            final playlist = _playlists[index];
                            final isContained = _containingPlaylistIds.contains(playlist.id);

                            return ListTile(
                              leading: Container(
                                width: 42,
                                height: 42,
                                decoration: BoxDecoration(
                                  color: isContained
                                      ? AppColors.primaryLight
                                      : theme.colorScheme.surfaceContainerHighest,
                                  borderRadius: AppRadius.mdBorder,
                                ),
                                child: Icon(
                                  isContained ? Icons.check_circle_rounded : Icons.playlist_play_rounded,
                                  color: isContained ? AppColors.primary : theme.colorScheme.onSurfaceVariant,
                                ),
                              ),
                              title: Text(
                                playlist.nom,
                                style: TextStyle(
                                  fontWeight: isContained ? FontWeight.bold : FontWeight.w500,
                                ),
                              ),
                              subtitle: Text(
                                l10n.nombreChants(playlist.itemCount),
                                style: theme.textTheme.bodySmall?.copyWith(
                                  color: theme.colorScheme.onSurfaceVariant,
                                ),
                              ),
                              trailing: isContained
                                  ? Chip(
                                      label: Text(
                                        l10n.chantDejaDansListe,
                                        style: const TextStyle(fontSize: 11),
                                      ),
                                      backgroundColor: AppColors.primaryLight,
                                      padding: EdgeInsets.zero,
                                      visualDensity: VisualDensity.compact,
                                    )
                                  : IconButton(
                                      icon: const Icon(Icons.add_circle_outline_rounded),
                                      color: theme.colorScheme.primary,
                                      onPressed: () => _togglePlaylist(playlist),
                                    ),
                              onTap: () => _togglePlaylist(playlist),
                            );
                          },
                        ),
            ),
          ],
        ),
      ),
    );
  }
}
