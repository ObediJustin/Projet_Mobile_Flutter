import 'package:flutter/material.dart';

import '../l10n/app_localizations.dart';
import '../models/playlist.dart';
import '../models/playlist_item.dart';
import '../services/cantique_service.dart';
import '../services/chant_personnel_service.dart';
import '../services/playlist_service.dart';
import '../theme/app_radius.dart';
import '../theme/app_spacing.dart';

class _SearchableSong {
  final String id;
  final String title;
  final String? number;
  final String collectionOrAuthor;
  final String lyrics;
  final PlaylistItemType type;

  const _SearchableSong({
    required this.id,
    required this.title,
    this.number,
    required this.collectionOrAuthor,
    required this.lyrics,
    required this.type,
  });
}

class PlaylistAddSongsSheet extends StatefulWidget {
  final Playlist playlist;
  final VoidCallback onSongAdded;

  const PlaylistAddSongsSheet({
    super.key,
    required this.playlist,
    required this.onSongAdded,
  });

  static Future<void> show(
    BuildContext context, {
    required Playlist playlist,
    required VoidCallback onSongAdded,
  }) {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (ctx) => PlaylistAddSongsSheet(
        playlist: playlist,
        onSongAdded: onSongAdded,
      ),
    );
  }

  @override
  State<PlaylistAddSongsSheet> createState() => _PlaylistAddSongsSheetState();
}

class _PlaylistAddSongsSheetState extends State<PlaylistAddSongsSheet> {
  final PlaylistService _playlistService = PlaylistService.instance;
  final CantiqueService _cantiqueService = CantiqueService.instance;
  final ChantPersonnelService _chantPersonnelService = ChantPersonnelService();

  final TextEditingController _searchController = TextEditingController();
  final Set<String> _existingSongIds = {};
  List<_SearchableSong> _allSongs = [];
  List<_SearchableSong> _filteredSongs = [];
  bool _isLoading = true;
  String _query = '';

  @override
  void initState() {
    super.initState();
    _loadAllSongs();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  Future<void> _loadAllSongs() async {
    setState(() => _isLoading = true);
    try {
      final items = await _playlistService.getResolvedPlaylistItems(
        widget.playlist.id,
      );
      _existingSongIds.clear();
      for (final item in items) {
        _existingSongIds.add(item.songId);
      }

      final cantiques = _cantiqueService.getAllCantiques();
      final chantsPersonnels = await _chantPersonnelService.getAllChants();

      final list = <_SearchableSong>[];

      for (final c in cantiques) {
        list.add(
          _SearchableSong(
            id: c.id,
            title: c.titre,
            number: '${c.numero}',
            collectionOrAuthor: c.collection,
            lyrics: c.contenu,
            type: PlaylistItemType.official,
          ),
        );
      }

      for (final p in chantsPersonnels) {
        list.add(
          _SearchableSong(
            id: p.id,
            title: p.titre,
            number: null,
            collectionOrAuthor:
                p.auteur?.trim().isNotEmpty == true ? p.auteur!.trim() : 'Mes Chants',
            lyrics: p.contenu,
            type: PlaylistItemType.personal,
          ),
        );
      }

      if (!mounted) return;
      setState(() {
        _allSongs = list;
        _filterSongs(_query);
        _isLoading = false;
      });
    } catch (_) {
      if (!mounted) return;
      setState(() => _isLoading = false);
    }
  }

  void _filterSongs(String query) {
    _query = query;
    final trimmed = query.trim().toLowerCase();
    if (trimmed.isEmpty) {
      _filteredSongs = List.from(_allSongs);
      return;
    }

    _filteredSongs = _allSongs.where((song) {
      final titleMatch = song.title.toLowerCase().contains(trimmed);
      final numberMatch = song.number != null && song.number!.contains(trimmed);
      final collectionMatch = song.collectionOrAuthor.toLowerCase().contains(trimmed);
      final lyricsMatch = song.lyrics.toLowerCase().contains(trimmed);

      return titleMatch || numberMatch || collectionMatch || lyricsMatch;
    }).toList();
  }

  Future<void> _addSong(_SearchableSong song) async {
    if (_existingSongIds.contains(song.id)) return;

    final success = await _playlistService.addSongToPlaylist(
      playlistId: widget.playlist.id,
      type: song.type,
      songId: song.id,
    );

    if (success) {
      setState(() {
        _existingSongIds.add(song.id);
      });
      widget.onSongAdded();

      if (!mounted) return;
      final l10n = AppLocalizations.of(context);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            '${song.title} — ${l10n?.chantAjouteALaListe ?? "Chant ajouté à la liste"}',
          ),
          duration: const Duration(milliseconds: 1400),
          behavior: SnackBarBehavior.floating,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context);
    final mediaQuery = MediaQuery.of(context);

    return Container(
      height: mediaQuery.size.height * 0.88,
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Column(
        children: [
          // Drag handle
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: 10, bottom: 6),
              width: 36,
              height: 4,
              decoration: BoxDecoration(
                color: theme.colorScheme.outlineVariant,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ),

          // Header
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg, vertical: 8),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        l10n?.ajouterChants ?? 'Ajouter des chants',
                        style: theme.textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        widget.playlist.nom,
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: theme.colorScheme.primary,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.close_rounded),
                  onPressed: () => Navigator.pop(context),
                  tooltip: l10n?.fermer ?? 'Fermer',
                ),
              ],
            ),
          ),

          // Search Bar
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSpacing.lg,
              vertical: AppSpacing.xs,
            ),
            child: TextField(
              controller: _searchController,
              autofocus: false,
              decoration: InputDecoration(
                hintText: l10n?.rechercherChants ??
                    'Rechercher un chant (titre, numéro, paroles)…',
                prefixIcon: const Icon(Icons.search_rounded, size: 20),
                suffixIcon: _query.isNotEmpty
                    ? IconButton(
                        icon: const Icon(Icons.clear_rounded, size: 18),
                        onPressed: () {
                          _searchController.clear();
                          setState(() => _filterSongs(''));
                        },
                      )
                    : null,
                filled: true,
                fillColor: theme.colorScheme.surfaceContainerHighest,
                border: OutlineInputBorder(
                  borderRadius: AppRadius.lgBorder,
                  borderSide: BorderSide.none,
                ),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: AppSpacing.md,
                  vertical: AppSpacing.sm,
                ),
              ),
              onChanged: (val) {
                setState(() => _filterSongs(val));
              },
            ),
          ),

          const SizedBox(height: AppSpacing.sm),

          // Results counter
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${_filteredSongs.length} ${_filteredSongs.length > 1 ? "chants trouvés" : "chant trouvé"}',
                  style: theme.textTheme.labelMedium?.copyWith(
                    color: theme.colorScheme.onSurfaceVariant,
                  ),
                ),
                Text(
                  '${_existingSongIds.length} dans la liste',
                  style: theme.textTheme.labelMedium?.copyWith(
                    color: theme.colorScheme.primary,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),

          const Divider(height: 16),

          // Content List
          Expanded(
            child: _isLoading
                ? const Center(child: CircularProgressIndicator())
                : _filteredSongs.isEmpty
                    ? Center(
                        child: Text(
                          l10n?.aucunChantTrouve ?? 'Aucun chant trouvé',
                          style: TextStyle(
                            color: theme.colorScheme.onSurfaceVariant,
                          ),
                        ),
                      )
                    : ListView.separated(
                        padding: const EdgeInsets.symmetric(
                          horizontal: AppSpacing.md,
                          vertical: AppSpacing.xs,
                        ),
                        itemCount: _filteredSongs.length,
                        separatorBuilder: (_, _) => const SizedBox(height: 4),
                        itemBuilder: (context, index) {
                          final song = _filteredSongs[index];
                          final isInPlaylist = _existingSongIds.contains(song.id);

                          return Container(
                            decoration: BoxDecoration(
                              color: isInPlaylist
                                  ? theme.colorScheme.primary.withValues(alpha: 0.04)
                                  : theme.colorScheme.surface,
                              borderRadius: AppRadius.mdBorder,
                              border: Border.all(
                                color: isInPlaylist
                                    ? theme.colorScheme.primary.withValues(alpha: 0.3)
                                    : theme.colorScheme.outlineVariant,
                                width: 1,
                              ),
                            ),
                            child: ListTile(
                              leading: Container(
                                width: 40,
                                height: 40,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: isInPlaylist
                                      ? theme.colorScheme.primary.withValues(alpha: 0.15)
                                      : theme.colorScheme.surfaceContainerHighest,
                                  borderRadius: AppRadius.mdBorder,
                                ),
                                child: Text(
                                  song.number != null ? '#${song.number}' : 'CP',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12,
                                    color: theme.colorScheme.primary,
                                  ),
                                ),
                              ),
                              title: Text(
                                song.title,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              subtitle: Text(
                                song.number != null
                                    ? '${song.collectionOrAuthor} • #${song.number}'
                                    : song.collectionOrAuthor,
                                style: theme.textTheme.bodySmall?.copyWith(
                                  color: theme.colorScheme.onSurfaceVariant,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              trailing: isInPlaylist
                                  ? Container(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 8,
                                        vertical: 4,
                                      ),
                                      decoration: BoxDecoration(
                                        color: theme.colorScheme.primary
                                            .withValues(alpha: 0.12),
                                        borderRadius: AppRadius.fullBorder,
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Icon(
                                            Icons.check_rounded,
                                            size: 14,
                                            color: theme.colorScheme.primary,
                                          ),
                                          const SizedBox(width: 4),
                                          Text(
                                            l10n?.chantDejaDansListe ??
                                                'Déjà dans la liste',
                                            style: TextStyle(
                                              fontSize: 11,
                                              fontWeight: FontWeight.bold,
                                              color: theme.colorScheme.primary,
                                            ),
                                          ),
                                        ],
                                      ),
                                    )
                                  : IconButton(
                                      icon: const Icon(Icons.add_circle_outline_rounded),
                                      color: theme.colorScheme.primary,
                                      tooltip: l10n?.ajouterALaListe ?? 'Ajouter',
                                      onPressed: () => _addSong(song),
                                    ),
                              onTap: isInPlaylist ? null : () => _addSong(song),
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
