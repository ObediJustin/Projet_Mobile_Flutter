import 'package:flutter/material.dart';
import '../services/cantique_service.dart';
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
  List _favoriteCantiques = [];

  @override
  void initState() {
    super.initState();
    _loadFavorites();
  }

  Future<void> _loadFavorites() async {
    await _favoriteService.loadFavorites();
    setState(() {
      _favoriteCantiques = _favoriteService.getFavoriteCantiques(_cantiqueService);
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_favoriteCantiques.isEmpty) {
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
              'Ajoutez des cantiques à vos favoris',
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: _favoriteCantiques.length,
      itemBuilder: (context, index) {
        return CantiqueCard(cantique: _favoriteCantiques[index]);
      },
    );
  }
}