import 'package:flutter/material.dart';
import '../models/cantique.dart';
import '../pages/cantique_detail.dart';

class CantiqueCard extends StatelessWidget {
  final Cantique cantique;

  const CantiqueCard({super.key, required this.cantique});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.amber.shade100,
          child: Text(
            '${cantique.numero}',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        title: Text(
          cantique.titre,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(cantique.collection),
        trailing: const Icon(Icons.music_note, color: Colors.amber),
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
  }
}