import 'package:flutter/material.dart';
import 'accueil.dart';
import 'collections.dart';
import 'favoris.dart';
import 'parametres.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;

  // Titres de l'AppBar
  final List<String> titles = [
    "Accueil",
    "Collections",
    "Favoris",
    "Paramètres",
  ];

  // Pages
  final List<Widget> pages = [
    const AccueilPage(),
    const CollectionPage(),
    const FavorisPage(),
    const ParametresPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar dynamique
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.amber,
        title: Text(
          titles[currentIndex],
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        elevation: 2,
      ),

      // Drawer
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  // Image de fond
                  Image.asset(
                    "assets/images/image1.jpg",
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        color: Colors.amber,
                        child: const Center(
                          child: Icon(
                            Icons.music_note,
                            size: 80,
                            color: Colors.white,
                          ),
                        ),
                      );
                    },
                  ),
                  // Couche sombre
                  Container(color: Colors.black.withOpacity(0.5)),
                  // Contenu
                  const Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 28,
                          backgroundColor: Colors.amber,
                          child: Icon(
                            Icons.music_note,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Cantiques",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "by objus",
                          style: TextStyle(color: Colors.white70, fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Menu principal
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    leading: const Icon(Icons.home),
                    title: const Text("Accueil"),
                    onTap: () {
                      setState(() {
                        currentIndex = 0;
                      });
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.library_books),
                    title: const Text("Collections"),
                    onTap: () {
                      setState(() {
                        currentIndex = 1;
                      });
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.favorite),
                    title: const Text("Favoris"),
                    onTap: () {
                      setState(() {
                        currentIndex = 2;
                      });
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.settings),
                    title: const Text("Paramètres"),
                    onTap: () {
                      setState(() {
                        currentIndex = 3;
                      });
                      Navigator.pop(context);
                    },
                  ),
                  const Divider(),
                  ListTile(
                    leading: const Icon(Icons.shuffle),
                    title: const Text("Cantique aléatoire"),
                    onTap: () {
                      Navigator.pop(context);
                      _showRandomCantiqueDialog(context);
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.info),
                    title: const Text("À propos"),
                    onTap: () {
                      Navigator.pop(context);
                      _showAboutDialog(context);
                    },
                  ),
                  const Divider(),
                  ListTile(
                    leading: const Icon(Icons.contact_mail),
                    title: const Text("Nous contacter"),
                    onTap: () {
                      Navigator.pop(context);
                      _showContactDialog(context);
                    },
                  ),
                ],
              ),
            ),

            const Divider(),

            // Footer avec icônes sociales
            Padding(
              padding: const EdgeInsets.only(bottom: 20, top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {
                      _showSocialDialog(context, 'Facebook');
                    },
                    icon: const Icon(Icons.facebook, color: Colors.blue),
                    iconSize: 28,
                  ),
                  IconButton(
                    onPressed: () {
                      _showSocialDialog(context, 'Telegram');
                    },
                    icon: const Icon(Icons.telegram, color: Colors.blue),
                    iconSize: 28,
                  ),
                  IconButton(
                    onPressed: () {
                      _showSocialDialog(context, 'Email');
                    },
                    icon: const Icon(Icons.email, color: Colors.red),
                    iconSize: 28,
                  ),
                  IconButton(
                    onPressed: () {
                      _showSocialDialog(context, 'YouTube');
                    },
                    icon: const Icon(Icons.play_circle_fill, color: Colors.red),
                    iconSize: 28,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      // Contenu des pages
      body: pages[currentIndex],

      // Navigation du bas
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentIndex,
        onDestinationSelected: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        backgroundColor: Colors.white,
        elevation: 8,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: "Accueil",
          ),
          NavigationDestination(
            icon: Icon(Icons.library_books),
            label: "Collections",
          ),
          NavigationDestination(
            icon: Icon(Icons.favorite),
            label: "Favoris",
          ),
          NavigationDestination(
            icon: Icon(Icons.settings),
            label: "Paramètres",
          ),
        ],
      ),
    );
  }

  // Dialogue pour cantique aléatoire
  void _showRandomCantiqueDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Cantique aléatoire"),
          content: const Text(
            "Cette fonctionnalité sera bientôt disponible !\n\n"
            "Vous pourrez découvrir des cantiques au hasard.",
            style: TextStyle(fontSize: 16),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("OK"),
            ),
          ],
        );
      },
    );
  }

  // Dialogue À propos
  void _showAboutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("À propos"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.music_note, size: 50, color: Colors.amber),
              const SizedBox(height: 10),
              const Text(
                "Cantiques",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "Version 1.0.0",
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              const SizedBox(height: 10),
              const Text(
                "Une application de cantiques pour vous aider à louer et adorer Dieu.",
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              Text(
                "© 2024 by objus",
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey.shade600,
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Fermer"),
            ),
          ],
        );
      },
    );
  }

  // Dialogue Nous contacter
  void _showContactDialog(BuildContext context) {
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
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 15),
              ListTile(
                leading: const Icon(Icons.email, color: Colors.blue),
                title: const Text("Email"),
                subtitle: const Text("contact@cantiques.com"),
                dense: true,
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(Icons.phone, color: Colors.green),
                title: const Text("Téléphone"),
                subtitle: const Text("+243 XXX XXX XXX"),
                dense: true,
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Fermer"),
            ),
          ],
        );
      },
    );
  }

  // Dialogue réseaux sociaux
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
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("OK"),
            ),
          ],
        );
      },
    );
  }
}