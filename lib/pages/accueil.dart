import 'package:flutter/material.dart';

import '../services/cantique_service.dart';
import '../widgets/cantique_card.dart';

class AccueilPage extends StatelessWidget {
  const AccueilPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cantiqueService = CantiqueService();
    final recentCantiques = cantiqueService.getAllCantiques().take(5).toList();

    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LayoutBuilder(
            builder: (context, constraints) {
              // Responsive : ajustement du padding + hauteur finie
              // (important pour éviter les contraintes infinies sur Flutter Web).
              final maxWidth = constraints.maxWidth;
              final horizontalPadding = (maxWidth < 360) ? 20.0 : 45.0;
              final verticalPadding = (maxWidth < 360) ? 28.0 : 45.0;
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
                    // Conteneur volontairement vide : seule l’image doit apparaître.
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: horizontalPadding,
                        vertical: verticalPadding,
                      ),
                      child: const SizedBox.shrink(),
                    ),
                  ),
                ),
              );
            },
          ),
          const SizedBox(height: 24),
          const Text(
            'Cantiques récents',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          ...recentCantiques.map(
            (cantique) => CantiqueCard(cantique: cantique),
          ),
        ],
      ),
    );
  }
}

