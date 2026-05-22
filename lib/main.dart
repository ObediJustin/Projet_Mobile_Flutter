import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Home());
  }
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(home: const HomePage());
//   }
// }

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Accueil')),
//       body: const Center(child: Text('Bonjour Flutter !')),
//     );
//   }
// }

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Accueil")),
        backgroundColor: Colors.amber,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            //partie sup avec image
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  //Image de fond
                  Image.asset("assets/images/image1.jpg", fit: BoxFit.cover),
                  //couche sombre
                  Container(color: Colors.black.withOpacity(0.4)),
                  //Texte et logo
                  Padding(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
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
                          "Chants Inspires",
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.bookmark),
              title: Text("Favoris"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.menu_book),
              title: Text("Votre reccueil"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.library_books),
              title: Text("Tous les reccueils"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.shuffle),
              title: Text("Cantique aléatoire"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.play_circle),
              title: Text("Youtube"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.groups),
              title: Text("Whatsapp"),
              onTap: () {},
            ),

            Divider(),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "Autres",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text("A propos"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.star),
              title: Text("Noter l'app"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text("Partager l'app"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.app_registration_outlined),
              title: Text("Nos autres apps"),
              onTap: () {},
            ),

            Divider(),

            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {}, 
                    icon: Icon(Icons.facebook),
                  ),
                  IconButton(
                    onPressed: () {}, 
                    icon: Icon(Icons.telegram),
                  ),
                  IconButton(
                    onPressed: () {}, 
                    icon: Icon(Icons.email),
                  ),
                  IconButton(
                    onPressed: () {}, 
                    icon: Icon(Icons.play_circle_fill),
                  ),
                ],
              ),
            )
          ],
        ),
      ),

      //Menus
      bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: "Accueil"),
          NavigationDestination(icon: Icon(Icons.person), label: "Profil"),
          NavigationDestination(icon: Icon(Icons.book), label: "Livres"),
          NavigationDestination(icon: Icon(Icons.message), label: "Messages"),
        ],
      ),
    );
  }
}
