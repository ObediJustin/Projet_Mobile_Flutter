import 'package:flutter/material.dart';
import '../services/cantique_service.dart';
import '../widgets/collection_card.dart';
import 'cantique_detail.dart';


class CollectionPage extends StatefulWidget {
  const CollectionPage({super.key});

  @override
  State<CollectionPage> createState() => _CollectionPageState();
}

class _CollectionPageState extends State<CollectionPage> {
  final CantiqueService _cantiqueService = CantiqueService();
  String _searchQuery = '';

  List<String> get _filteredCollections {
    if (_searchQuery.isEmpty) {
      return _cantiqueService.getAllCollections();
    }
    return _cantiqueService.getAllCollections()
        .where((collection) => 
          collection.toLowerCase().contains(_searchQuery.toLowerCase()))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: TextField(
            onChanged: (value) {
              setState(() {
                _searchQuery = value;
              });
            },
            decoration: InputDecoration(
              hintText: "Rechercher une collection...",
              prefixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              suffixIcon: _searchQuery.isNotEmpty
                  ? IconButton(
                      icon: const Icon(Icons.clear),
                      onPressed: () {
                        setState(() {
                          _searchQuery = '';
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
            itemCount: _filteredCollections.length,
            itemBuilder: (context, index) {
              final collection = _filteredCollections[index];
              final count = _cantiqueService.getCantiqueCountByCollection(collection);
              
              return Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: CollectionCard(
                  titre: collection,
                  nombre: count,
                  description: "",
                  couleur: _getColorForIndex(index),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CollectionDetailPage(
                          collectionName: collection,
                          cantiques: _cantiqueService.getCantiquesByCollection(collection),
                        ),
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ),
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

// Page de détails d'une collection
class CollectionDetailPage extends StatelessWidget {
  final String collectionName;
  final List<dynamic> cantiques;

  const CollectionDetailPage({
    super.key,
    required this.collectionName,
    required this.cantiques,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(collectionName),
        backgroundColor: Colors.amber,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: cantiques.length,
        itemBuilder: (context, index) {
          final cantique = cantiques[index];
          return Card(
            margin: const EdgeInsets.only(bottom: 12),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.amber.shade100,
                child: Text('${cantique.numero}'),
              ),
              title: Text(
                cantique.titre,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(cantique.auteur ?? 'Auteur inconnu'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CantiqueDetailPage(cantique: cantique),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}