import '../database/app_database.dart';
import '../models/playlist.dart';
import '../models/playlist_item.dart';
import 'cantique_service.dart';
import 'chant_personnel_service.dart';

class PlaylistService {
  PlaylistService({
    AppDatabase? database,
    CantiqueService? cantiqueService,
    ChantPersonnelService? chantPersonnelService,
  })  : _db = database ?? AppDatabase.instance,
        _cantiqueService = cantiqueService ?? CantiqueService.instance,
        _chantPersonnelService = chantPersonnelService ?? ChantPersonnelService();

  static final PlaylistService instance = PlaylistService();

  final AppDatabase _db;
  final CantiqueService _cantiqueService;
  final ChantPersonnelService _chantPersonnelService;

  Future<List<Playlist>> getPlaylists() async {
    return _db.getPlaylists();
  }

  Future<Playlist?> getPlaylistById(String id) async {
    return _db.getPlaylistById(id);
  }

  Future<Playlist> createPlaylist({
    required String nom,
    String? description,
  }) async {
    final now = DateTime.now();
    final id = 'pl_${now.microsecondsSinceEpoch}';
    final playlist = Playlist(
      id: id,
      nom: nom.trim(),
      description:
          description?.trim().isEmpty == true ? null : description?.trim(),
      createdAt: now,
      updatedAt: now,
      itemCount: 0,
    );
    await _db.insertPlaylist(playlist);
    return playlist;
  }

  Future<void> updatePlaylist(Playlist playlist) async {
    final updated = playlist.copyWith(
      nom: playlist.nom.trim(),
      description: playlist.description?.trim().isEmpty == true
          ? null
          : playlist.description?.trim(),
      updatedAt: DateTime.now(),
    );
    await _db.updatePlaylist(updated);
  }

  Future<void> deletePlaylist(String id) async {
    await _db.deletePlaylist(id);
  }

  Future<bool> isSongInPlaylist({
    required String playlistId,
    required PlaylistItemType type,
    required String songId,
  }) async {
    return _db.isSongInPlaylist(playlistId, type, songId);
  }

  Future<Set<String>> getPlaylistIdsContainingSong({
    required PlaylistItemType type,
    required String songId,
  }) async {
    return _db.getPlaylistIdsContainingSong(type, songId);
  }

  Future<bool> addSongToPlaylist({
    required String playlistId,
    required PlaylistItemType type,
    required String songId,
  }) async {
    return _db.addSongToPlaylist(playlistId, type, songId);
  }

  Future<void> removePlaylistItem({
    required String playlistId,
    required String itemId,
  }) async {
    await _db.removePlaylistItem(playlistId, itemId);
  }

  Future<void> reorderPlaylistItems({
    required String playlistId,
    required List<String> orderedItemIds,
  }) async {
    await _db.reorderPlaylistItems(playlistId, orderedItemIds);
  }

  Future<List<PlaylistItem>> getResolvedPlaylistItems(String playlistId) async {
    final items = await _db.getPlaylistItems(playlistId);
    final resolved = <PlaylistItem>[];

    for (final item in items) {
      if (item.isOfficial) {
        final cantique = _cantiqueService.getCantiqueById(item.songId);
        if (cantique != null) {
          resolved.add(
            item.copyWith(
              titre: cantique.titre,
              numero: cantique.numero,
              collection: cantique.collection,
              auteur: cantique.auteur,
              contenu: cantique.contenu,
              isAvailable: true,
            ),
          );
        } else {
          resolved.add(
            item.copyWith(
              titre: 'Cantique indisponible (#${item.songId})',
              isAvailable: false,
            ),
          );
        }
      } else {
        final chant = await _chantPersonnelService.getChantById(item.songId);
        if (chant != null) {
          resolved.add(
            item.copyWith(
              titre: chant.titre,
              auteur: chant.auteur,
              contenu: chant.contenu,
              isAvailable: true,
            ),
          );
        } else {
          resolved.add(
            item.copyWith(
              titre: 'Chant personnel indisponible',
              isAvailable: false,
            ),
          );
        }
      }
    }

    return resolved;
  }
}
