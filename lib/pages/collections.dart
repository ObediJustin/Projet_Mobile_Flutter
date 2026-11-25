import 'package:flutter/material.dart';

import '../l10n/app_localizations.dart';
import '../models/cantique.dart';
import '../models/search_scope.dart';
import '../services/cantique_service.dart';
import '../services/favorite_service.dart';
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
    final l10n = AppLocalizations.of(context)!;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(AppSpacing.lg),
          child: AppSearchBar(
            controller: _searchController,
            hintText: l10n.searchCollectionsHint,
            onChanged: (value) => setState(() => _globalQuery = value),
            onClear: () => setState(() => _globalQuery = ''),
          ),
        ),
        if (_globalQuery.trim().isNotEmpty) ...[
          Expanded(
            child: _globalResults.isEmpty
                ? AppEmptyState(
                    assetPath: AppAssets.searchEmpty,
                    title: l10n.noCantiqueFound,
                    message: l10n.aucunCantiquePourRecherche(_globalQuery),
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
                    description: l10n.descriptionCollection(collection),
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
  SearchScope _searchScope = SearchScope.currentCollection;

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  List<Cantique> get _targetCantiques {
    if (_searchScope == SearchScope.allCollections) {
      return _cantiqueService.getAllCantiques();
    }
    return _cantiqueService.getCantiquesByCollection(widget.collectionName);
  }

  List<Cantique> get _filtered {
    return CantiqueService.filterCantiques(_targetCantiques, _query);
  }

  Widget _buildScopeSelector(AppLocalizations l10n) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.lg,
      ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: AppSpacing.sm),
        child: SizedBox(
          width: double.infinity,
          child: SegmentedButton<SearchScope>(
            showSelectedIcon: true,
            segments: [
              ButtonSegment<SearchScope>(
                value: SearchScope.currentCollection,
                label: Text(
                  l10n.cetteCollection,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
                ),
                icon: const Icon(Icons.folder_open_rounded, size: 16),
              ),
              ButtonSegment<SearchScope>(
                value: SearchScope.allCollections,
                label: Text(
                  l10n.toutesLesCollections,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
                ),
                icon: const Icon(Icons.public_rounded, size: 16),
              ),
            ],
            selected: {_searchScope},
            onSelectionChanged: (Set<SearchScope> newSelection) {
              setState(() {
                _searchScope = newSelection.first;
              });
            },
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(title: Text(widget.collectionName)),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(AppSpacing.lg),
            child: AppSearchBar(
              controller: _searchController,
              hintText: _searchScope == SearchScope.allCollections
                  ? l10n.searchCollectionsHint
                  : l10n.searchInCollectionHint,
              onChanged: (value) => setState(() => _query = value),
              onClear: () => setState(() => _query = ''),
            ),
          ),
          _buildScopeSelector(l10n),
          Expanded(
            child: _filtered.isEmpty
                ? AppEmptyState(
                    icon: Icons.search_off_rounded,
                    title: l10n.noCantiqueFound,
                    message: _searchScope == SearchScope.allCollections
                        ? l10n.aucunCantiquePourRecherche(_query)
                        : l10n.aucunCantiqueDansCollection(
                            widget.collectionName,
                          ),
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
  SearchScope _searchScope = SearchScope.currentCollection;

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  List<Cantique> get _targetCantiques {
    if (_searchScope == SearchScope.allCollections) {
      return _cantiqueService.getAllCantiques();
    }
    return _cantiqueService.getCantiquesByCollection(widget.collectionName);
  }

  List<Cantique> get _results {
    return CantiqueService.filterCantiques(_targetCantiques, _query);
  }

  Widget _buildScopeSelector(AppLocalizations l10n) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.lg,
      ),
      child: Padding(
        padding: const EdgeInsets.only(bottom: AppSpacing.sm),
        child: SizedBox(
          width: double.infinity,
          child: SegmentedButton<SearchScope>(
            showSelectedIcon: true,
            segments: [
              ButtonSegment<SearchScope>(
                value: SearchScope.currentCollection,
                label: Text(
                  l10n.cetteCollection,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
                ),
                icon: const Icon(Icons.folder_open_rounded, size: 16),
              ),
              ButtonSegment<SearchScope>(
                value: SearchScope.allCollections,
                label: Text(
                  l10n.toutesLesCollections,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
                ),
                icon: const Icon(Icons.public_rounded, size: 16),
              ),
            ],
            selected: {_searchScope},
            onSelectionChanged: (Set<SearchScope> newSelection) {
              setState(() {
                _searchScope = newSelection.first;
              });
            },
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.chercherDansCollection(widget.collectionName)),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(AppSpacing.lg),
            child: AppSearchBar(
              controller: _searchController,
              hintText: _searchScope == SearchScope.allCollections
                  ? l10n.searchCollectionsHint
                  : l10n.rechercherCantiqueHint,
              onChanged: (value) => setState(() => _query = value),
              onClear: () => setState(() => _query = ''),
            ),
          ),
          _buildScopeSelector(l10n),
          Expanded(
            child: _results.isEmpty
                ? AppEmptyState(
                    icon: Icons.search_off_rounded,
                    title: l10n.noCantiqueFound,
                    message: _query.isEmpty
                        ? (_searchScope == SearchScope.allCollections
                            ? l10n.noResultsForQuery
                            : l10n.aucunCantiqueDansCollection(widget.collectionName))
                        : (_searchScope == SearchScope.allCollections
                            ? l10n.aucunCantiquePourRecherche(_query)
                            : l10n.aucunCantiqueDansCollection(widget.collectionName)),
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
    final l10n = AppLocalizations.of(context)!;
    final count = _favorites.length;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.favorisCollection(widget.collectionName)),
      ),
      body: _favorites.isEmpty
          ? AppEmptyState(
              icon: Icons.favorite_border_rounded,
              title: l10n.noFavorites,
              message: l10n.aucunFavoriDansCollectionNommee(
                widget.collectionName,
              ),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(AppSpacing.lg),
              itemCount: count + 1,
              itemBuilder: (context, index) {
                if (index == 0) {
                  final theme = Theme.of(context);
                  return Padding(
                    padding: const EdgeInsets.only(bottom: AppSpacing.md),
                    child: Text(
                      l10n.nombreFavorisDansCollection(
                        count,
                        widget.collectionName,
                      ),
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: theme.colorScheme.onSurface,
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
