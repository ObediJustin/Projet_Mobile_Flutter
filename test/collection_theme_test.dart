import 'package:cantiques_boanerges/theme/app_theme.dart';
import 'package:cantiques_boanerges/theme/app_theme_mode.dart';
import 'package:cantiques_boanerges/widgets/collection_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CollectionCard theme identity color', () {
    for (final mode in AppThemeMode.values) {
      testWidgets('uses theme primary color for ${mode.label}', (tester) async {
        await tester.pumpWidget(
          MaterialApp(
            theme: AppTheme.buildTheme(mode),
            home: const Scaffold(
              body: CollectionCard(
                titre: 'Collection Test',
                nombre: 42,
                description: 'Description test',
              ),
            ),
          ),
        );

        final BuildContext context =
            tester.element(find.byType(CollectionCard));
        final themePrimary = Theme.of(context).colorScheme.primary;

        expect(themePrimary, mode.primary);
      });
    }
  });
}
