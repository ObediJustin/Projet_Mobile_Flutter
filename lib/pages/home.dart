import 'package:flutter/material.dart';
import 'package:projet1_tp/pages/mes_chants.dart';
import 'collections.dart';
import 'favoris.dart';
import 'parametres.dart';
import 'accueil.dart';
import 'mes_chants.dart';

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
    "Mes Chants"
  ];

  // Pages
  final List<Widget> pages = [
    const AccueilPage(),
    const CollectionPage(),
    const FavorisPage(),
    const ParametresPage(),
    const MesChantsPage(),
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
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
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
                  Image.asset("assets/images/image1.jpg", fit: BoxFit.cover),

                  // Couche sombre
                  Container(color: Colors.black.withOpacity(0.5)),

                  // Contenu
                  const Padding(
                    padding: EdgeInsets.all(16),

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        CircleAvatar(radius: 28, child: Icon(Icons.music_note)),

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
                    leading: const Icon(Icons.shuffle),
                    title: const Text("Cantique aléatoire"),
                    onTap: () {},
                  ),

                  ListTile(
                    leading: const Icon(Icons.info),
                    title: const Text("À propos"),
                    onTap: () {},
                  ),
                  Divider(),
                  ListTile(
                    leading: const Icon(Icons.front_hand),
                    title: const Text("Soutenir"),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: const Icon(Icons.star_border_rounded),
                    title: const Text("Noter l'appli"),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: const Icon(Icons.share),
                    title: const Text("Partager l'appli"),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: const Icon(Icons.contact_mail),
                    title: const Text("Nous contacter"),
                    onTap: () {},
                  ),
                ],
              ),
            ),

            const Divider(),

            // Footer
            Padding(
              padding: const EdgeInsets.only(bottom: 20),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.facebook),
                  ),

                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.telegram),
                  ),

                  IconButton(onPressed: () {}, icon: const Icon(Icons.email)),

                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.play_circle_fill),
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

        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: "Accueil"),

          NavigationDestination(
            icon: Icon(Icons.library_books),
            label: "Collections",
          ),

          NavigationDestination(icon: Icon(Icons.favorite), label: "Favoris"),

          NavigationDestination(
            icon: Icon(Icons.face_retouching_natural_sharp),
            label: "Mes Chants",
          ),
          NavigationDestination(
            icon: Icon(Icons.settings),
            label: "Paramètres",
          ),
        ],
      ),
    );
  }
}
