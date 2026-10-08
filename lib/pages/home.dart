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

  final List<Widget> pages = [
    const AccueilPage(),
    const CollectionPage(),
    const FavorisPage(),
    const MesChantsPage(),
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
        return l10n?.navParametres ?? 'Paramètres';
      default:
        return 'Cantiques du Message';
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
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
                          l10n?.appTitle ?? "Cantiques du Message",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            letterSpacing: -0.2,
                          ),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          "Recueil spirituel local",
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
                    label: l10n?.navAccueil ?? "Accueil",
                  ),
                  _drawerItem(
                    index: 1,
                    icon: Icons.library_books_rounded,
                    label: l10n?.navCollections ?? "Collections",
                  ),
                  _drawerItem(
                    index: 2,
                    icon: Icons.favorite_rounded,
                    label: l10n?.navFavoris ?? "Favoris",
                  ),
                  _drawerItem(
                    index: 3,
                    icon: Icons.queue_music_rounded,
                    label: l10n?.navMesChants ?? "Mes Chants",
                  ),
                  _drawerItem(
                    index: 4,
                    icon: Icons.settings_rounded,
                    label: l10n?.navParametres ?? "Paramètres",
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
                      l10n?.cantiqueDuMomentTitle ?? "Cantique aléatoire",
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
                      l10n?.aProposTitle ?? "À propos",
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
                    title: const Text(
                      "Soutenir",
                      style: TextStyle(fontWeight: FontWeight.w600),
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
                    title: const Text(
                      "Noter l'application",
                      style: TextStyle(fontWeight: FontWeight.w600),
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
                    title: const Text(
                      "Partager l'application",
                      style: TextStyle(fontWeight: FontWeight.w600),
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
                    title: const Text(
                      "Nous contacter",
                      style: TextStyle(fontWeight: FontWeight.w600),
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
        },
        destinations: [
          NavigationDestination(
            icon: const Icon(Icons.home_outlined),
            selectedIcon: const Icon(Icons.home_rounded),
            label: l10n?.navAccueil ?? "Accueil",
          ),
          NavigationDestination(
            icon: const Icon(Icons.library_books_outlined),
            selectedIcon: const Icon(Icons.library_books_rounded),
            label: l10n?.navCollections ?? "Collections",
          ),
          NavigationDestination(
            icon: const Icon(Icons.favorite_outline_rounded),
            selectedIcon: const Icon(Icons.favorite_rounded),
            label: l10n?.navFavoris ?? "Favoris",
          ),
          NavigationDestination(
            icon: const Icon(Icons.queue_music_outlined),
            selectedIcon: const Icon(Icons.queue_music_rounded),
            label: l10n?.navMesChants ?? "Mes Chants",
          ),
          NavigationDestination(
            icon: const Icon(Icons.settings_outlined),
            selectedIcon: const Icon(Icons.settings_rounded),
            label: l10n?.navParametres ?? "Paramètres",
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

  void _openRandomCantique(BuildContext context) {
    final cantiques = _cantiqueService.getAllCantiques();
    if (cantiques.isEmpty) return;

    final cantique = cantiques[_random.nextInt(cantiques.length)];
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CantiqueDetailPage(cantique: cantique),
      ),
    );
  }

  void _showAboutDialog(BuildContext context) {
    final theme = Theme.of(context);

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Cantiques du Message"),
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
              const Text(
                "Cantiques du Message",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 4),
              const Text(
                "Version 1.0.0",
                style: TextStyle(fontSize: 13, color: AppColors.textSecondary),
              ),
              const SizedBox(height: 12),
              const Text(
                "Une bibliothèque locale de cantiques pour louer et adorer Dieu en toute simplicité.",
                textAlign: TextAlign.center,
                style: TextStyle(height: 1.4),
              ),
            ],
          ),
          actions: [
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Fermer"),
            ),
          ],
        );
      },
    );
  }

  void _showContactDialog(BuildContext context) {
    final theme = Theme.of(context);

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Nous contacter"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Pour toute question ou suggestion :",
                style: TextStyle(fontWeight: FontWeight.w600),
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
                title: const Text("Téléphone"),
                subtitle: const Text("+243 892 821 544"),
                dense: true,
                onTap: () => Navigator.pop(context),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Fermer"),
            ),
          ],
        );
      },
    );
  }

  void _showSupportDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Soutenir"),
          content: const Text(
            "Merci de vouloir soutenir notre application !\n\n"
            "Cette fonctionnalité sera bientôt disponible.\n\n"
            "En attendant, vous pouvez partager l'application avec vos proches.",
            style: TextStyle(fontSize: 15, height: 1.4),
          ),
          actions: [
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Fermer"),
            ),
          ],
        );
      },
    );
  }

  void _showRateDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Noter l'application"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                "Si vous aimez cette application, n'hésitez pas à lui donner une note !",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15),
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
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Merci !"),
          content: Text(
            "Merci d'avoir attribué $rating étoile(s) à notre application !\n\n"
            "Votre soutien nous est précieux.",
            style: const TextStyle(fontSize: 15),
          ),
          actions: [
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Fermer"),
            ),
          ],
        );
      },
    );
  }

  Future<void> _shareApp() async {
    await SharePlus.instance.share(
      ShareParams(
        text:
            'Découvre l\'application "Cantiques du Message" pour louer et adorer Dieu !',
      ),
    );
  }

  void _showSocialDialog(BuildContext context, String social) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(social),
          content: Text(
            "Suivez-nous sur $social\n\nCette fonctionnalité sera bientôt disponible.",
          ),
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
