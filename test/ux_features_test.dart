import 'package:cantiques_boanerges/models/cantique.dart';
import 'package:cantiques_boanerges/models/search_scope.dart';
import 'package:cantiques_boanerges/services/cantique_service.dart';
import 'package:cantiques_boanerges/widgets/lyrics_zoom_wrapper.dart';
import 'package:cantiques_boanerges/widgets/reader_speed_dial.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Pinch to Zoom (LyricsZoomWrapper)', () {
    testWidgets('pinch gesture modifies font size and commits', (tester) async {
      double currentSize = 16.0;
      double committedSize = 16.0;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: LyricsZoomWrapper(
              fontSize: currentSize,
              onFontSizeChange: (newSize) {
                currentSize = newSize;
              },
              onFontSizeCommit: (newSize) {
                committedSize = newSize;
              },
              child: const SizedBox.expand(
                child: Text('Paroles du cantique'),
              ),
            ),
          ),
        ),
      );

      final center = const Offset(200, 300);
      final touch1 = TestPointer(1, PointerDeviceKind.touch);
      final touch2 = TestPointer(2, PointerDeviceKind.touch);

      await tester.sendEventToBinding(touch1.down(center + const Offset(-30, 0)));
      await tester.sendEventToBinding(touch2.down(center + const Offset(30, 0)));
      await tester.pump();

      await tester.sendEventToBinding(touch1.move(center + const Offset(-60, 0)));
      await tester.sendEventToBinding(touch2.move(center + const Offset(60, 0)));
      await tester.pump();

      expect(currentSize, greaterThan(16.0));

      await tester.sendEventToBinding(touch1.up());
      await tester.sendEventToBinding(touch2.up());
      await tester.pump();

      expect(committedSize, equals(currentSize));
    });
  });

  group('Search Scope', () {
    test('filterCantiques respects collection filtering logic', () {
      final List<Cantique> cantiques = [
        Cantique(
          id: '1',
          numero: 1,
          titre: 'Grâce infinie',
          auteur: 'John Newton',
          collectionId: 'c1',
          collection: 'Crois Seulement',
          contenu: 'Grâce infinie de notre Dieu',
        ),
        Cantique(
          id: '2',
          numero: 2,
          titre: 'Plus près de toi',
          auteur: 'Sarah Adams',
          collectionId: 'c2',
          collection: 'Chants de Victoire',
          contenu: 'Mon Dieu plus près de toi',
        ),
      ];

      // Current collection scope
      final currentCollectionCantiques = cantiques
          .where((c) => c.collection == 'Crois Seulement')
          .toList();
      final resultsCurrent = CantiqueService.filterCantiques(
        currentCollectionCantiques,
        'Dieu',
      );
      expect(resultsCurrent.length, 1);
      expect(resultsCurrent.first.titre, 'Grâce infinie');

      // All collections scope
      final resultsAll = CantiqueService.filterCantiques(
        cantiques,
        'Dieu',
      );
      expect(resultsAll.length, 2);

      expect(SearchScope.values, contains(SearchScope.currentCollection));
      expect(SearchScope.values, contains(SearchScope.allCollections));
    });
  });

  group('ReaderSpeedDial', () {
    testWidgets('expands on tap, shows actions, and executes callback', (tester) async {
      bool actionTapped = false;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: ReaderSpeedDial(
              actions: [
                SpeedDialAction(
                  key: const Key('test_action'),
                  icon: Icons.share_rounded,
                  label: 'Partager',
                  onTap: () {
                    actionTapped = true;
                  },
                ),
              ],
            ),
          ),
        ),
      );

      // FAB is visible, action is not yet visible
      expect(find.byKey(const Key('reader_speed_dial_fab')), findsOneWidget);
      expect(find.text('Partager'), findsNothing);

      // Tap FAB to expand
      await tester.tap(find.byKey(const Key('reader_speed_dial_fab')));
      await tester.pumpAndSettle();

      // Action is now visible
      expect(find.text('Partager'), findsOneWidget);

      // Tap action
      await tester.tap(find.byKey(const Key('test_action')));
      await tester.pumpAndSettle();

      expect(actionTapped, isTrue);
      // Menu automatically closes after action selection
      expect(find.text('Partager'), findsNothing);
    });
  });
}
