import 'package:flutter/material.dart';
import '../models/cantique.dart';
import '../services/favorite_service.dart';

class CantiqueDetailPage extends StatefulWidget {
  final Cantique cantique;

  const CantiqueDetailPage({super.key, required this.cantique});

  @override
  State<CantiqueDetailPage> createState() => _CantiqueDetailPageState();
}

class _CantiqueDetailPageState extends State<CantiqueDetailPage> {
  late final FavoriteService _favoriteService;
  bool _isFavorite = false;

  @override
  void initState() {
    super.initState();
    _favoriteService = FavoriteService();
    _initFavorites();
  }

  Future<void> _initFavorites() async {
    await _favoriteService.loadFavorites();
    setState(() {
      _isFavorite = _favoriteService.isFavorite(widget.cantique.id);
    });
  }

  Future<void> _toggleFavorite() async {
    await _favoriteService.toggleFavorite(widget.cantique.id);
    setState(() {
      _isFavorite = !_isFavorite;
    });
    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(_isFavorite ? 'Ajouté aux favoris' : 'Retiré des favoris'),
          duration: const Duration(seconds: 1),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.cantique.titre),
        backgroundColor: Colors.amber,
        actions: [
          IconButton(
            icon: Icon(
              _isFavorite ? Icons.favorite : Icons.favorite_border,
              color: _isFavorite ? Colors.red : Colors.white,
            ),
            onPressed: _toggleFavorite,
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.amber.shade50,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.cantique.titre,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    widget.cantique.collection,
                    style: TextStyle(
                      color: Colors.grey.shade600,
                    ),
                  ),
                  if (widget.cantique.auteur != null) ...[
                    const SizedBox(height: 4),
                    Text(
                      'Par ${widget.cantique.auteur}',
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ],
              ),
            ),
            const SizedBox(height: 24),
            Text(
              widget.cantique.contenu,
              style: const TextStyle(
                fontSize: 16,
                height: 1.8,
              ),
            ),
          ],
        ),
      ),
    );
  }
}