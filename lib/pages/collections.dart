import 'package:flutter/material.dart';

import '../models/cantique.dart';
import '../services/cantique_service.dart';
import '../services/favorite_service.dart';
import '../widgets/cantique_card.dart';
import '../widgets/collection_card.dart';

class CollectionPage extends StatefulWidget {
  const CollectionPage({super.key});

  @override
  State<CollectionPage> createState() => _CollectionPageState();
}

class _CollectionPageState extends State<CollectionPage> {
  final CantiqueService _cantiqueService = CantiqueService();
  final TextEditingController _searchController = TextEditingController();

  String _globalQuery = '';

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  List<Cantique> get _globalResults {
    final query = _globalQuery.trim().toLowerCase();
    if (query.isEmpty) return const [];

    final all = _cantiqueService.getAllCantiques();
    return all.where((c) {
      final titre = c.titre.toLowerCase();
      final numero = c.numero.toString();
      final contenu = c.contenu.toLowerCase();
      final collection = c.collection.toLowerCase();

      return titre.contains(query) ||
          numero.contains(query) ||
          contenu.contains(query) ||
          collection.contains(query);
    }).toList();
  }

  List<String> get _collections => _cantiqueService.getAllCollections();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: TextField(
            controller: _searchController,
            onChanged: (value) {
              setState(() {
                _globalQuery = value;
              });
            },
            decoration: InputDecoration(
              hintText: 'Rechercher un cantique dans toutes les collections...',
              prefixIcon: const Icon(Icons.search),
              filled: true,
              fillColor: Colors.grey.shade100,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: BorderSide.none,
              ),
              suffixIcon: _globalQuery.isNotEmpty
                  ? IconButton(
                      icon: const Icon(Icons.clear),
                      onPressed: () {
                        setState(() {
                          _globalQuery = '';
                          _searchController.clear();
                        });
                      },
                    )
                  : null,
            ),
          ),
        ),

        if (_globalQuery.trim().isNotEmpty) ...[
          Expanded(
            child: _globalResults.isEmpty
                ? const Center(
                    child: Text(
                      'Aucun cantique trouvé',
                      style: TextStyle(color: Colors.grey),
                    ),
                  )
                : ListView.builder(
                    padding: const EdgeInsets.all(16),
                    itemCount: _globalResults.length,
                    itemBuilder: (context, index) {
                      return CantiqueCard(cantique: _globalResults[index]);
                    },
                  ),
          ),
        ] else ...[
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: _collections.length,
              itemBuilder: (context, index) {
                final collection = _collections[index];
                final count = _cantiqueService.getCantiqueCountByCollection(
                  collection,
                );

                return Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: CollectionCard(
                    titre: collection,
                    nombre: count,
                    description: '',
                    couleur: _getColorForIndex(index),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              CollectionDetailPage(collectionName: collection),
                        ),
                      );
                    },
                    onOuvrir: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              CollectionDetailPage(collectionName: collection),
                        ),
                      );
                    },
                    onChercher: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              CollectionSearchPage(collectionName: collection),
                        ),
                      );
                    },
                    onFavoris: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              CollectionFavorisPage(collectionName: collection),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ],
    );
  }

  Color _getColorForIndex(int index) {
    final colors = [
      Colors.blue,
      Colors.green,
      Colors.purple,
      Colors.orange,
      Colors.red,
      Colors.teal,
      Colors.indigo,
      Colors.pink,
    ];
    return colors[index % colors.length];
  }
}

class CollectionDetailPage extends StatefulWidget {
  final String collectionName;

  const CollectionDetailPage({super.key, required this.collectionName});

  @override
  State<CollectionDetailPage> createState() => _CollectionDetailPageState();
}

class _CollectionDetailPageState extends State<CollectionDetailPage> {
  final CantiqueService _cantiqueService = CantiqueService();
  final TextEditingController _searchController = TextEditingController();

  String _query = '';

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  List<Cantique> get _cantiquesBruts =>
      _cantiqueService.getCantiquesByCollection(widget.collectionName);

  List<Cantique> get _filtered {
    final q = _query.trim().toLowerCase();
    if (q.isEmpty) return _cantiquesBruts;

    return _cantiquesBruts.where((c) {
      final titre = c.titre.toLowerCase();
      final numero = c.numero.toString();
      final contenu = c.contenu.toLowerCase();

      return titre.contains(q) || numero.contains(q) || contenu.contains(q);
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.collectionName),
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
              controller: _searchController,
              onChanged: (value) {
                setState(() => _query = value);
              },
              decoration: InputDecoration(
                hintText: 'Rechercher dans cette collection...',
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.grey.shade100,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: BorderSide.none,
                ),
                suffixIcon: _query.isNotEmpty
                    ? IconButton(
                        icon: const Icon(Icons.clear),
                        onPressed: () {
                          setState(() {
                            _query = '';
                            _searchController.clear();
                          });
                        },
                      )
                    : null,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: _filtered.length,
              itemBuilder: (context, index) {
                return CantiqueCard(cantique: _filtered[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class CollectionSearchPage extends StatefulWidget {
  final String collectionName;

  const CollectionSearchPage({super.key, required this.collectionName});

  @override
  State<CollectionSearchPage> createState() => _CollectionSearchPageState();
}

class _CollectionSearchPageState extends State<CollectionSearchPage> {
  final CantiqueService _cantiqueService = CantiqueService();
  final TextEditingController _searchController = TextEditingController();

  String _query = '';

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  List<Cantique> get _base =>
      _cantiqueService.getCantiquesByCollection(widget.collectionName);

  List<Cantique> get _results {
    final q = _query.trim().toLowerCase();
    if (q.isEmpty) return _base;

    return _base.where((c) {
      final titre = c.titre.toLowerCase();
      final numero = c.numero.toString();
      final contenu = c.contenu.toLowerCase();
      return titre.contains(q) || numero.contains(q) || contenu.contains(q);
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chercher dans ${widget.collectionName}'),
        backgroundColor: Colors.amber,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
              controller: _searchController,
              onChanged: (value) => setState(() => _query = value),
              decoration: InputDecoration(
                hintText: 'Rechercher un cantique...',
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.grey.shade100,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(18),
                  borderSide: BorderSide.none,
                ),
                suffixIcon: _query.isNotEmpty
                    ? IconButton(
                        icon: const Icon(Icons.clear),
                        onPressed: () {
                          setState(() {
                            _query = '';
                            _searchController.clear();
                          });
                        },
                      )
                    : null,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: _results.length,
              itemBuilder: (context, index) {
                return CantiqueCard(cantique: _results[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class CollectionFavorisPage extends StatefulWidget {
  final String collectionName;

  const CollectionFavorisPage({super.key, required this.collectionName});

  @override
  State<CollectionFavorisPage> createState() => _CollectionFavorisPageState();
}

class _CollectionFavorisPageState extends State<CollectionFavorisPage> {
  final FavoriteService _favoriteService = FavoriteService();
  final CantiqueService _cantiqueService = CantiqueService();

  List<Cantique> _favorites = const [];

  @override
  void initState() {
    super.initState();
    _load();
  }

  Future<void> _load() async {
    await _favoriteService.loadFavorites();
    final allFavs = _favoriteService.getFavoriteCantiques(_cantiqueService);
    final filtered = allFavs
        .where((c) => c.collection == widget.collectionName)
        .toList();

    if (!mounted) return;
    setState(() => _favorites = filtered);
  }

  @override
  Widget build(BuildContext context) {
    final count = _favorites.length;

    return Scaffold(
      appBar: AppBar(
        title: Text('Favoris - ${widget.collectionName}'),
        backgroundColor: Colors.amber,
      ),
      body: _favorites.isEmpty
          ? const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.favorite_border, size: 72, color: Colors.grey),
                  SizedBox(height: 16),
                  Text(
                    'Aucun favori dans cette collection',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                ],
              ),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: count + 1,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: Text(
                      '$count favori(s) dans ${widget.collectionName}',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  );
                }
                return CantiqueCard(cantique: _favorites[index - 1]);
              },
            ),
    );
  }
}
