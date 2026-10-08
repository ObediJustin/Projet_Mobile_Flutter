import 'package:flutter/material.dart';

import '../models/cantique.dart';
import '../services/cantique_service.dart';
import '../services/favorite_service.dart';
import '../theme/app_colors.dart';
import '../theme/app_spacing.dart';
import '../theme/app_assets.dart';
import '../widgets/app_empty_state.dart';
import '../widgets/app_search_bar.dart';
import '../widgets/cantique_card.dart';
import '../widgets/collection_card.dart';

class CollectionPage extends StatefulWidget {
  const CollectionPage({super.key});

  @override
  State<CollectionPage> createState() => _CollectionPageState();
}

class _CollectionPageState extends State<CollectionPage> {
  final CantiqueService _cantiqueService = CantiqueService.instance;
  final TextEditingController _searchController = TextEditingController();

  String _globalQuery = '';

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  List<Cantique> get _globalResults {
    if (_globalQuery.trim().isEmpty) return const [];
    return CantiqueService.filterCantiques(
      _cantiqueService.getAllCantiques(),
      _globalQuery,
    );
  }

  List<String> get _collections => _cantiqueService.getAllCollections();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(AppSpacing.lg),
          child: AppSearchBar(
            controller: _searchController,
            hintText: 'Rechercher un cantique dans toutes les collections...',
            onChanged: (value) => setState(() => _globalQuery = value),
            onClear: () => setState(() => _globalQuery = ''),
          ),
        ),
        if (_globalQuery.trim().isNotEmpty) ...[
          Expanded(
            child: _globalResults.isEmpty
                ? AppEmptyState(
                    assetPath: AppAssets.searchEmpty,
                    title: 'Aucun cantique trouvé',
                    message: 'Aucun cantique ne correspond à "$_globalQuery".',
                  )
                : ListView.builder(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppSpacing.lg,
                      vertical: AppSpacing.sm,
                    ),
                    itemCount: _globalResults.length,
                    itemBuilder: (context, index) {
                      return CantiqueCard(cantique: _globalResults[index]);
                    },
                  ),
          ),
        ] else ...[
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSpacing.lg,
                vertical: AppSpacing.sm,
              ),
              itemCount: _collections.length,
              itemBuilder: (context, index) {
                final collection = _collections[index];
                final count = _cantiqueService.getCantiqueCountByCollection(
                  collection,
                );

                return Padding(
                  padding: const EdgeInsets.only(bottom: AppSpacing.lg),
                  child: CollectionCard(
                    titre: collection,
                    nombre: count,
                    description: 'Cantiques et hymnes de $collection',
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
}

class CollectionDetailPage extends StatefulWidget {
  final String collectionName;

  const CollectionDetailPage({super.key, required this.collectionName});

  @override
  State<CollectionDetailPage> createState() => _CollectionDetailPageState();
}

class _CollectionDetailPageState extends State<CollectionDetailPage> {
  final CantiqueService _cantiqueService = CantiqueService.instance;
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
    return CantiqueService.filterCantiques(_cantiquesBruts, _query);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.collectionName)),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(AppSpacing.lg),
            child: AppSearchBar(
              controller: _searchController,
              hintText: 'Rechercher dans cette collection...',
              onChanged: (value) => setState(() => _query = value),
              onClear: () => setState(() => _query = ''),
            ),
          ),
          Expanded(
            child: _filtered.isEmpty
                ? AppEmptyState(
                    icon: Icons.search_off_rounded,
                    title: 'Aucun cantique trouvé',
                    message:
                        'Aucun cantique trouvé dans ${widget.collectionName}.',
                  )
                : ListView.builder(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppSpacing.lg,
                      vertical: AppSpacing.sm,
                    ),
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
  final CantiqueService _cantiqueService = CantiqueService.instance;
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
    return CantiqueService.filterCantiques(_base, _query);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Chercher dans ${widget.collectionName}')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(AppSpacing.lg),
            child: AppSearchBar(
              controller: _searchController,
              hintText: 'Rechercher un cantique...',
              onChanged: (value) => setState(() => _query = value),
              onClear: () => setState(() => _query = ''),
            ),
          ),
          Expanded(
            child: _results.isEmpty
                ? AppEmptyState(
                    icon: Icons.search_off_rounded,
                    title: 'Aucun cantique trouvé',
                    message: 'Aucun cantique ne correspond à votre recherche.',
                  )
                : ListView.builder(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppSpacing.lg,
                      vertical: AppSpacing.sm,
                    ),
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
  final CantiqueService _cantiqueService = CantiqueService.instance;

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
      appBar: AppBar(title: Text('Favoris - ${widget.collectionName}')),
      body: _favorites.isEmpty
          ? AppEmptyState(
              icon: Icons.favorite_border_rounded,
              title: 'Aucun favori',
              message:
                  'Vous n\'avez aucun cantique favori dans ${widget.collectionName}.',
            )
          : ListView.builder(
              padding: const EdgeInsets.all(AppSpacing.lg),
              itemCount: count + 1,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: AppSpacing.md),
                    child: Text(
                      '$count favori(s) dans ${widget.collectionName}',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: AppColors.textPrimary,
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
