import 'dart:math';

import 'package:flutter/material.dart';

import '../services/cantique_service.dart';
import '../widgets/cantique_card.dart';

class AccueilPage extends StatefulWidget {
  const AccueilPage({super.key});

  @override
  State<AccueilPage> createState() => _AccueilPageState();
}

class _AccueilPageState extends State<AccueilPage> {
  final CantiqueService _cantiqueService = CantiqueService();
  final TextEditingController _searchController = TextEditingController();

  late final String _verseDuJour;
  late final IconData _verseIcon;

  static const List<String> _versets = [
    "Je puis tout par Christ qui me fortifie. — Philippiens 4:13",
    "L'Éternel est mon berger : je ne manquerai de rien. — Psaume 23:1",
    "Crois seulement, toutes choses sont possibles à celui qui croit. — Marc 9:23",
    "Car Dieu a tant aimé le monde qu'il a donné son Fils unique. — Jean 3:16",
  ];

  static const List<IconData> _icons = [
    Icons.menu_book,
    Icons.auto_stories,
  ];

  String _query = '';

  @override
  void initState() {
    super.initState();
    final rnd = Random();
    _verseDuJour = _versets[rnd.nextInt(_versets.length)];
    _verseIcon = _icons[rnd.nextInt(_icons.length)];
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final allCantiques = _cantiqueService.getAllCantiques();

    final filtered = _query.isEmpty
        ? allCantiques
        : allCantiques.where((c) {
            final q = _query.toLowerCase().trim();
            final titre = c.titre.toLowerCase();
            final numero = c.numero.toString();
            final contenu = c.contenu.toLowerCase();
            final collection = c.collection.toLowerCase();

            return titre.contains(q) ||
                numero.contains(q) ||
                contenu.contains(q) ||
                collection.contains(q);
          }).toList();

    final recentCantiques = filtered.take(3).toList();

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LayoutBuilder(
            builder: (context, constraints) {
              final maxWidth = constraints.maxWidth;
              final headerHeight = (maxWidth < 360) ? 220.0 : 300.0;

              return ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: SizedBox(
                  height: headerHeight,
                  width: double.infinity,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage('../assets/images/image3.jpg'),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                          Colors.black54,
                          BlendMode.darken,
                        ),
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const SizedBox.shrink(),
                  ),
                ),
              );
            },
          ),

          const SizedBox(height: 16),

          _SearchBar(
            controller: _searchController,
            onQueryChanged: (value) => setState(() => _query = value),
          ),

          const SizedBox(height: 20),

          const Text(
            'Cantiques récents',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),

          ...recentCantiques.map((cantique) => CantiqueCard(cantique: cantique)),

          const SizedBox(height: 20),

          const Text(
            'Verset du jour',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),

          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.10),
                  blurRadius: 18,
                  offset: const Offset(0, 8),
                ),
              ],
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color(0xFFFDE6E9),
                  Color(0xFFE3F2FD),
                ],
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 44,
                  height: 44,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.85),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Icon(_verseIcon, color: Colors.amber.shade800),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    _verseDuJour,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      height: 1.35,
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 24),
        ],
      ),
    );
  }
}

class _SearchBar extends StatelessWidget {
  final TextEditingController controller;
  final ValueChanged<String> onQueryChanged;

  const _SearchBar({
    required this.controller,
    required this.onQueryChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onChanged: onQueryChanged,
      decoration: InputDecoration(
        hintText: 'Rechercher par titre, numéro, contenu ou collection…',
        prefixIcon: const Icon(Icons.search),
        filled: true,
        fillColor: Colors.grey.shade100,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}

