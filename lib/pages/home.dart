import 'dart:math';

import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

import '../l10n/app_localizations.dart';

import '../services/cantique_service.dart';
import '../theme/app_colors.dart';
import '../theme/app_radius.dart';
import '../theme/app_spacing.dart';
import '../theme/app_assets.dart';
import 'accueil.dart';
import 'cantique_detail.dart';
import 'collections.dart';
import 'favoris.dart';
import 'mes_chants.dart';
import 'mes_listes.dart';
import 'parametres.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;
  final CantiqueService _cantiqueService = CantiqueService.instance;
  final Random _random = Random();
  final GlobalKey<AccueilPageState> _accueilKey = GlobalKey<AccueilPageState>();

  late final List<Widget> pages = [
    AccueilPage(key: _accueilKey),
    const CollectionPage(),
    const FavorisPage(),
    const MesChantsPage(),
    const MesListesPage(),
    const ParametresPage(),
  ];

  String _getTabTitle(int index, AppLocalizations? l10n) {
    switch (index) {
      case 0:
        return l10n?.navAccueil ?? 'Accueil';
      case 1:
        return l10n?.navCollections ?? 'Collections';
      case 2:
        return l10n?.navFavoris ?? 'Favoris';
      case 3:
        return l10n?.navMesChants ?? 'Mes Chants';
      case 4:
        return l10n?.mesListes ?? 'Mes listes';
      case 5:
        return l10n?.navParametres ?? 'Paramètres';
      default:
        return 'Cantiques du Message';
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          _getTabTitle(currentIndex, l10n),
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      drawer: Drawer(
        backgroundColor: AppColors.surface,
        child: Column(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              decoration: BoxDecoration(color: theme.colorScheme.primary),
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    "assets/images/image1.jpg",
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              theme.colorScheme.primary,
                              theme.colorScheme.secondary,
                            ],
                          ),
                        ),
                        child: const Center(
                          child: Icon(
                            Icons.auto_stories_rounded,
                            size: 70,
                            color: AppColors.secondaryLight,
                          ),
                        ),
                      );
                    },
                  ),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.black.withValues(alpha: 0.3),
                          theme.colorScheme.primary.withValues(alpha: 0.85),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(AppSpacing.lg),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 28,
                          backgroundColor: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: AppAssets.svg(
                              AppAssets.logoMark,
                              width: 38,
                              height: 38,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          l10n.appTitle,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            letterSpacing: -0.2,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          l10n.recueilSpirituelLocal,
                          style: TextStyle(
                            color: theme.colorScheme.primaryContainer,
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                padding: const EdgeInsets.symmetric(vertical: AppSpacing.sm),
                children: [
                  _drawerItem(
                    index: 0,
                    icon: Icons.home_rounded,
                    label: l10n.navAccueil,
                  ),
                  _drawerItem(
                    index: 1,
                    icon: Icons.library_books_rounded,
                    label: l10n.navCollections,
                  ),
                  _drawerItem(
                    index: 2,
                    icon: Icons.favorite_rounded,
                    label: l10n.navFavoris,
                  ),
                  _drawerItem(
                    index: 3,
                    icon: Icons.queue_music_rounded,
                    label: l10n.navMesChants,
                  ),
                  _drawerItem(
                    index: 4,
                    icon: Icons.playlist_play_rounded,
                    label: l10n.mesListes,
                  ),
                  _drawerItem(
                    index: 5,
                    icon: Icons.settings_rounded,
                    label: l10n.navParametres,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: AppSpacing.lg),
                    child: Divider(),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.shuffle_rounded,
                      color: theme.colorScheme.primary,
                    ),
                    title: Text(
                      l10n.cantiqueAleatoire,
                      style: const TextStyle(fontWeight: FontWeight.w600),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                      _openRandomCantique(context);
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.info_outline_rounded,
                      color: theme.colorScheme.primary,
                    ),
                    title: Text(
                      l10n.aProposTitle,
                      style: const TextStyle(fontWeight: FontWeight.w600),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                      _showAboutDialog(context);
                    },
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: AppSpacing.lg),
                    child: Divider(),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.volunteer_activism_rounded,
                      color: theme.colorScheme.primary,
                    ),
                    title: Text(
                      l10n.soutenir,
                      style: const TextStyle(fontWeight: FontWeight.w600),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                      _showSupportDialog(context);
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.star_outline_rounded,
                      color: theme.colorScheme.primary,
                    ),
                    title: Text(
                      l10n.noterApplication,
                      style: const TextStyle(fontWeight: FontWeight.w600),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                      _showRateDialog(context);
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.share_rounded,
                      color: theme.colorScheme.primary,
                    ),
                    title: Text(
                      l10n.partagerApplication,
                      style: const TextStyle(fontWeight: FontWeight.w600),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                      _shareApp();
                    },
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.contact_mail_outlined,
                      color: theme.colorScheme.primary,
                    ),
                    title: Text(
                      l10n.nousContacter,
                      style: const TextStyle(fontWeight: FontWeight.w600),
                    ),
                    onTap: () {
                      Navigator.pop(context);
                      _showContactDialog(context);
                    },
                  ),
                ],
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.only(bottom: 16, top: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _socialIcon(Icons.facebook, 'Facebook', Colors.blue.shade700),
                  _socialIcon(Icons.telegram, 'Telegram', Colors.lightBlue),
                  _socialIcon(
                    Icons.email_rounded,
                    'Email',
                    theme.colorScheme.primary,
                  ),
                  _socialIcon(
                    Icons.play_circle_fill_rounded,
                    'YouTube',
                    Colors.red.shade700,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: pages[currentIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentIndex,
        onDestinationSelected: (index) {
          setState(() => currentIndex = index);
          if (index == 0) {
            _accueilKey.currentState?.loadRecents();
          }
        },
        destinations: [
          NavigationDestination(
            icon: const Icon(Icons.home_outlined),
            selectedIcon: const Icon(Icons.home_rounded),
            label: l10n.navAccueil,
          ),
          NavigationDestination(
            icon: const Icon(Icons.library_books_outlined),
            selectedIcon: const Icon(Icons.library_books_rounded),
            label: l10n.navCollections,
          ),
          NavigationDestination(
            icon: const Icon(Icons.favorite_outline_rounded),
            selectedIcon: const Icon(Icons.favorite_rounded),
            label: l10n.navFavoris,
          ),
          NavigationDestination(
            icon: const Icon(Icons.queue_music_outlined),
            selectedIcon: const Icon(Icons.queue_music_rounded),
            label: l10n.navMesChants,
          ),
          NavigationDestination(
            icon: const Icon(Icons.playlist_play_outlined),
            selectedIcon: const Icon(Icons.playlist_play_rounded),
            label: l10n.mesListes,
          ),
          NavigationDestination(
            icon: const Icon(Icons.settings_outlined),
            selectedIcon: const Icon(Icons.settings_rounded),
            label: l10n.navParametres,
          ),
        ],
      ),
    );
  }

  Widget _drawerItem({
    required int index,
    required IconData icon,
    required String label,
  }) {
    final isSelected = currentIndex == index;
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.sm,
        vertical: 2,
      ),
      child: ListTile(
        shape: RoundedRectangleBorder(borderRadius: AppRadius.mdBorder),
        selected: isSelected,
        selectedTileColor: theme.colorScheme.primaryContainer,
        leading: Icon(
          icon,
          color: isSelected
              ? theme.colorScheme.primary
              : AppColors.textSecondary,
        ),
        title: Text(
          label,
          style: TextStyle(
            fontWeight: isSelected ? FontWeight.bold : FontWeight.w500,
            color: isSelected
                ? theme.colorScheme.onPrimaryContainer
                : AppColors.textPrimary,
          ),
        ),
        onTap: () {
          setState(() => currentIndex = index);
          Navigator.pop(context);
        },
      ),
    );
  }

  Widget _socialIcon(IconData icon, String name, Color color) {
    return IconButton(
      onPressed: () => _showSocialDialog(context, name),
      icon: Icon(icon, color: color),
      iconSize: 26,
      tooltip: name,
    );
  }

  Future<void> _openRandomCantique(BuildContext context) async {
    final cantiques = _cantiqueService.getAllCantiques();
    if (cantiques.isEmpty) return;

    final cantique = cantiques[_random.nextInt(cantiques.length)];
    await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CantiqueDetailPage(cantique: cantique),
      ),
    );
    _accueilKey.currentState?.loadRecents();
  }

  void _showAboutDialog(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(l10n.appTitle),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: theme.colorScheme.primaryContainer,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.auto_stories_rounded,
                  size: 40,
                  color: theme.colorScheme.primary,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                l10n.appTitle,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              const Text(
                "Version 1.0.0",
                style: TextStyle(fontSize: 13, color: AppColors.textSecondary),
              ),
              const SizedBox(height: 12),
              Text(
                l10n.aProposDescription,
                textAlign: TextAlign.center,
                style: const TextStyle(height: 1.4),
              ),
            ],
          ),
          actions: [
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: Text(l10n.fermer),
            ),
          ],
        );
      },
    );
  }

  void _showContactDialog(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = AppLocalizations.of(context)!;

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(l10n.nousContacter),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                l10n.contactQuestionSuggestion,
                style: const TextStyle(fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 12),
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: CircleAvatar(
                  backgroundColor: theme.colorScheme.primaryContainer,
                  child: Icon(
                    Icons.email_outlined,
                    color: theme.colorScheme.primary,
                  ),
                ),
                title: const Text("Email"),
                subtitle: const Text("sadikiobedi@outlook.fr"),
                dense: true,
                onTap: () => Navigator.pop(context),
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: CircleAvatar(
                  backgroundColor: theme.colorScheme.primaryContainer,
                  child: Icon(
                    Icons.phone_outlined,
                    color: theme.colorScheme.primary,
                  ),
                ),
                title: Text(l10n.telephone),
                subtitle: const Text("+243 892 821 544"),
                dense: true,
                onTap: () => Navigator.pop(context),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text(l10n.fermer),
            ),
          ],
        );
      },
    );
  }

  void _showSupportDialog(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(l10n.soutenir),
          content: Text(
            l10n.soutienIndisponible,
            style: const TextStyle(fontSize: 15, height: 1.4),
          ),
          actions: [
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: Text(l10n.fermer),
            ),
          ],
        );
      },
    );
  }

  void _showRateDialog(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(l10n.noterApplication),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                l10n.noterApplicationMessage,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 15),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(5, (index) {
                  return IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                      _showThankYouDialog(context, index + 1);
                    },
                    icon: const Icon(
                      Icons.star_rounded,
                      color: AppColors.warning,
                      size: 36,
                    ),
                  );
                }),
              ),
            ],
          ),
        );
      },
    );
  }

  void _showThankYouDialog(BuildContext context, int rating) {
    final l10n = AppLocalizations.of(context)!;
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(l10n.merciTitle),
          content: Text(
            l10n.merciNotation(rating),
            style: const TextStyle(fontSize: 15),
          ),
          actions: [
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: Text(l10n.fermer),
            ),
          ],
        );
      },
    );
  }

  Future<void> _shareApp() async {
    final l10n = AppLocalizations.of(context)!;
    await SharePlus.instance.share(
      ShareParams(text: l10n.partageApplicationMessage),
    );
  }

  void _showSocialDialog(BuildContext context, String social) {
    final l10n = AppLocalizations.of(context)!;
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(social),
          content: Text(l10n.reseauBientotDisponible(social)),
          actions: [
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("OK"),
            ),
          ],
        );
      },
    );
  }
}
