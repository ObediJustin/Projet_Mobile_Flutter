import 'package:flutter/material.dart';
import '../widgets/collection_card.dart';

class CollectionPage extends StatelessWidget {
  const CollectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),

        child: Column(
          children: [

            TextField(
              decoration: InputDecoration(
                hintText:
                    "Rechercher un chant...",
                prefixIcon:
                    const Icon(Icons.search),

                border:
                    OutlineInputBorder(
                  borderRadius:
                      BorderRadius.circular(30),
                ),
              ),
            ),

            const SizedBox(height: 30),

            const Text(
              "Collections de Cantiques",
              style: TextStyle(
                fontSize: 30,
                fontWeight:
                    FontWeight.bold,
              ),
            ),

            const SizedBox(height: 30),

            CollectionCard(
              titre: "Crois seulement",
              nombre: 25,
              description: "",
              couleur: Colors.blue,
            ),

            const SizedBox(height: 20),

            CollectionCard(
              titre: "Only Believe",
              nombre: 30,
              description: "",
              couleur: Colors.green,
            ),
            CollectionCard(
              titre: "Hosanna",
              nombre: 30,
              description: "",
              couleur: Colors.green,
            ),
            CollectionCard(
              titre: "Roc Seculaire",
              nombre: 30,
              description: "",
              couleur: Colors.green,
            ),
            CollectionCard(
              titre: "Chants de victoire",
              nombre: 30,
              description: "",
              couleur: Colors.green,
            ),
            CollectionCard(
              titre: "Nyimbo za wokovu",
              nombre: 30,
              description: "",
              couleur: Colors.green,
            ),
            CollectionCard(
              titre: "Nyimbo za Mungu",
              nombre: 30,
              description: "",
              couleur: Colors.green,
            ),
            CollectionCard(
              titre: "Nyimbo za Nabii",
              nombre: 30,
              description: "",
              couleur: Colors.green,
            ),
            CollectionCard(
              titre: "Autres Cantiques",
              nombre: 30,
              description: "",
              couleur: Colors.green,
            ),
            CollectionCard(
              titre: "Collection des cantiques",
              nombre: 30,
              description: "",
              couleur: Colors.green,
            ),
            CollectionCard(
              titre: "Nyimbo za Mungu",
              nombre: 30,
              description: "",
              couleur: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
































// import 'package:flutter/material.dart';
// import '../widgets/collection_card.dart';

// class CollectionPage extends StatelessWidget {
//   const CollectionPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Center(child: Text("Accueil")),
//         backgroundColor: Colors.amber,
//       ),
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: [
//             //partie sup avec image
//             DrawerHeader(
//               padding: EdgeInsets.zero,
//               child: Stack(
//                 fit: StackFit.expand,
//                 children: [
//                   //Image de fond
//                   Image.asset("assets/images/image1.jpg", fit: BoxFit.cover),
//                   //couche sombre
//                   Container(color: Colors.black.withOpacity(0.4)),
//                   //Texte et logo
//                   Padding(
//                     padding: EdgeInsets.all(16),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       children: const [
//                         CircleAvatar(radius: 28, child: Icon(Icons.music_note)),

//                         SizedBox(height: 10),

//                         Text(
//                           "Cantiques",
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 28,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),

//                         Text(
//                           "Chants Inspires",
//                           style: TextStyle(
//                             color: Colors.white70,
//                             fontSize: 10,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             // Expanded(
//             //   child: ListView(
//             //     children: const[

//             //     ],
//             //   ),
//             // ),
//             ListTile(
//               leading: Icon(Icons.bookmark),
//               title: Text("Favoris"),
//               onTap: () {},
//             ),
//             ListTile(
//               leading: Icon(Icons.menu_book),
//               title: Text("Votre reccueil"),
//               onTap: () {},
//             ),
//             ListTile(
//               leading: Icon(Icons.library_books),
//               title: Text("Tous les reccueils"),
//               onTap: () {},
//             ),
//             ListTile(
//               leading: Icon(Icons.shuffle),
//               title: Text("Cantique aléatoire"),
//               onTap: () {},
//             ),
//             ListTile(
//               leading: Icon(Icons.play_circle),
//               title: Text("Youtube"),
//               onTap: () {},
//             ),
//             ListTile(
//               leading: Icon(Icons.groups),
//               title: Text("Whatsapp"),
//               onTap: () {},
//             ),

//             Divider(),
//             Padding(
//               padding: EdgeInsets.all(10),
//               child: Text(
//                 "Autres",
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   color: Colors.blueGrey,
//                 ),
//               ),
//             ),
//             ListTile(
//               leading: Icon(Icons.info),
//               title: Text("A propos"),
//               onTap: () {},
//             ),
//             ListTile(
//               leading: Icon(Icons.star),
//               title: Text("Noter l'app"),
//               onTap: () {},
//             ),
//             ListTile(
//               leading: Icon(Icons.info),
//               title: Text("Partager l'app"),
//               onTap: () {},
//             ),
//             ListTile(
//               leading: Icon(Icons.app_registration_outlined),
//               title: Text("Nos autres apps"),
//               onTap: () {},
//             ),

//             Divider(),

//             Padding(
//               padding: EdgeInsets.only(bottom: 20),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   IconButton(onPressed: () {}, icon: Icon(Icons.facebook)),
//                   IconButton(onPressed: () {}, icon: Icon(Icons.telegram)),
//                   IconButton(onPressed: () {}, icon: Icon(Icons.email)),
//                   IconButton(
//                     onPressed: () {},
//                     icon: Icon(Icons.play_circle_fill),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),

//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16),
//           child: Column(
//             children: [
//               //Barre de recherche
//               TextField(
//                 decoration: InputDecoration(
//                   hintText: "Rechercher un chant, une collection...",
//                   prefixIcon: const Icon(Icons.search),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(30),
//                   ),
//                 ),
//               ),

//               const SizedBox(height: 30),

//               const Text(
//                 "Collection des Cantiques",
//                 style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
//               ),

//               const SizedBox(height: 30),

//               //Collections
//               CollectionCard(
//                 titre: "Crois seulement",
//                 nombre: 25,
//                 description: "caniqtes de foi et de confiance en Dieu ...",
//                 couleur: Colors.blue,
//               ),

//               const SizedBox(height: 30),

//               //Collection 2
//               CollectionCard(
//                 titre: "Roc Seculaire",
//                 nombre: 25,
//                 description: "caniqtes sur le christ notre fondement...",
//                 couleur: Colors.blue,
//               ),

//               const SizedBox(height: 30),

//               //Collections
//               CollectionCard(
//                 titre: "Hozanna",
//                 nombre: 25,
//                 description: "caniqtes de foi et de confiance en Dieu ...",
//                 couleur: Colors.blue,
//               ),

//               const SizedBox(height: 30),

//               //Collections
//               CollectionCard(
//                 titre: "Nyimbo za wokovu",
//                 nombre: 25,
//                 description: "caniqtes de foi et de confiance en Dieu ...",
//                 couleur: Colors.blue,
//               ),

//               const SizedBox(height: 30),

//               //Collections
//               CollectionCard(
//                 titre: "Nyimbo za Mungu",
//                 nombre: 25,
//                 description: "caniqtes de foi et de confiance en Dieu ...",
//                 couleur: Colors.blue,
//               ),

//               const SizedBox(height: 30),

//               //Collections
//               CollectionCard(
//                 titre: "Nyimbo za Nabii",
//                 nombre: 25,
//                 description: "caniqtes de foi et de confiance en Dieu ...",
//                 couleur: Colors.blue,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

