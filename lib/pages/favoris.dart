import 'package:flutter/material.dart';

import '../models/cantique.dart';
import '../models/chant_personnel.dart';
import '../pages/chant_detail.dart';
import '../services/cantique_service.dart';
import '../services/chant_personnel_service.dart';
import '../services/favorite_service.dart';
import '../widgets/cantique_card.dart';

class FavorisPage extends StatefulWidget {
  const FavorisPage({super.key});

  @override
  State<FavorisPage> createState() => _FavorisPageState();
}

class _FavorisPageState extends State<FavorisPage> {
  final FavoriteService _favoriteService = FavoriteService();
  final CantiqueService _cantiqueService = CantiqueService();
  final ChantPersonnelService _chantPersonnelService = ChantPersonnelService();

  bool _isLoading = true;
  List<Cantique> _favoriteCantiques = const [];
  List<ChantPersonnel> _favoriteChantsPersonnels = const [];

  @override
  void initState() {
    super.initState();
    _loadFavorites();
  }

  Future<void> _loadFavorites() async {
    await _favoriteService.loadFavorites();
    final favoriteCantiques = _favoriteService.getFavoriteCantiques(
      _cantiqueService,
    );
    final favoriteChantsPersonnels = await _favoriteService
        .getFavoriteChantsPersonnels(_chantPersonnelService);

    if (!mounted) return;
    setState(() {
      _favoriteCantiques = favoriteCantiques;
      _favoriteChantsPersonnels = favoriteChantsPersonnels;
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const Center(
        child: CircularProgressIndicator(color: Colors.amber),
      );
    }

    if (_favoriteCantiques.isEmpty && _favoriteChantsPersonnels.isEmpty) {
      return const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.favorite_border, size: 64, color: Colors.grey),
            SizedBox(height: 16),
            Text(
              'Aucun favori',
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            SizedBox(height: 8),
            Text(
              'Ajoutez des cantiques ou chants personnels à vos favoris',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      );
    }

    return RefreshIndicator(
      onRefresh: _loadFavorites,
      child: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          if (_favoriteCantiques.isNotEmpty) ...[
            _SectionTitle(icon: Icons.music_note, title: 'Cantiques'),
            const SizedBox(height: 12),
            ..._favoriteCantiques.map(
              (cantique) => CantiqueCard(cantique: cantique),
            ),
            const SizedBox(height: 12),
          ],
          if (_favoriteChantsPersonnels.isNotEmpty) ...[
            _SectionTitle(icon: Icons.edit_note, title: 'Mes chants'),
            const SizedBox(height: 12),
            ..._favoriteChantsPersonnels.map(
              (chant) => _ChantPersonnelFavoriteTile(
                chant: chant,
                onReturn: _loadFavorites,
              ),
            ),
          ],
        ],
      ),
    );
  }
}

class _SectionTitle extends StatelessWidget {
  final IconData icon;
  final String title;

  const _SectionTitle({required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: Colors.amber.shade800),
        const SizedBox(width: 8),
        Text(
          title,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class _ChantPersonnelFavoriteTile extends StatelessWidget {
  final ChantPersonnel chant;
  final VoidCallback onReturn;

  const _ChantPersonnelFavoriteTile({
    required this.chant,
    required this.onReturn,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.amber.shade100,
          child: const Icon(Icons.edit_note, color: Colors.amber),
        ),
        title: Text(
          chant.titre,
          style: const TextStyle(fontWeight: FontWeight.bold),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: Text(
          _preview(chant.contenu),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        trailing: const Icon(Icons.favorite, color: Colors.red),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => ChantDetailPage(chant: chant)),
          ).then((_) => onReturn());
        },
      ),
    );
  }

  String _preview(String content) {
    final trimmed = content.trim().replaceAll('\n', ' ');
    if (trimmed.length <= 50) return trimmed;
    return '${trimmed.substring(0, 50)}...';
  }
}
