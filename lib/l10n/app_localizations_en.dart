// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Cantiques du Message';

  @override
  String get navAccueil => 'Home';

  @override
  String get navCollections => 'Collections';

  @override
  String get navFavoris => 'Favorites';

  @override
  String get navMesChants => 'My Songs';

  @override
  String get navParametres => 'Settings';

  @override
  String get bienvenueTitle => 'WELCOME';

  @override
  String get bienvenueSubtitle => 'Quickly find your praise and worship hymns';

  @override
  String get searchHint => 'Search by title, number, content or collection…';

  @override
  String get searchCollectionsHint => 'Search for a hymn in all collections...';

  @override
  String get searchInCollectionHint => 'Search in this collection...';

  @override
  String get searchResultsTitle => 'Search results';

  @override
  String get cantiquesRecentsTitle => 'Recently viewed';

  @override
  String get versetDuJourTitle => 'Verse of the Day';

  @override
  String get cantiqueDuMomentTitle => 'Song of the Moment';

  @override
  String get noRecentCantiques => 'Your recently viewed hymns will appear here';

  @override
  String get noCantiqueFound => 'No hymn found';

  @override
  String get noResultsForQuery => 'No result matches your search.';

  @override
  String get noFavorites => 'No favorites';

  @override
  String get noFavoritesInCollection =>
      'You have no favorite hymns in this collection.';

  @override
  String get noFavoritesMessage => 'Your favorite hymns will appear here.';

  @override
  String get noPersonalChants => 'No personal songs';

  @override
  String get noPersonalChantsMessage => 'Add your own songs to find them here.';

  @override
  String get nouveauChant => 'New song';

  @override
  String get enregistrer => 'Save';

  @override
  String get annuler => 'Cancel';

  @override
  String get supprimer => 'Delete';

  @override
  String get modifier => 'Edit';

  @override
  String get partager => 'Share';

  @override
  String get copier => 'Copy';

  @override
  String get tailleDuTexte => 'Text size';

  @override
  String get themeTitle => 'Theme';

  @override
  String get apparenceTitle => 'Appearance';

  @override
  String get langueTitle => 'Display Language';

  @override
  String get notificationsTitle => 'Notifications';

  @override
  String get notificationsSubtitle => 'Receive daily reminders and edification';

  @override
  String get preferencesTitle => 'Preferences';

  @override
  String get aProposTitle => 'About';

  @override
  String get versionApp => 'Application version';

  @override
  String get contactDev => 'Developer contact';

  @override
  String get langueSysteme => 'System language';

  @override
  String get langueFrancais => 'French';

  @override
  String get langueAnglais => 'English';

  @override
  String get themeGreen => 'Nature Green';

  @override
  String get themeBlue => 'Blue';

  @override
  String get themePurple => 'Purple';

  @override
  String get themeAmber => 'Amber';

  @override
  String get ouvrir => 'Open';

  @override
  String get chercher => 'Search';

  @override
  String get favori => 'Favorite';

  @override
  String get mesChants => 'My Songs';

  @override
  String get reduire => 'Decrease';

  @override
  String get agrandir => 'Increase';

  @override
  String get titreChant => 'Song title';

  @override
  String get parolesChant => 'Song lyrics';

  @override
  String get auteurChant => 'Author (optional)';

  @override
  String get ajouterAuxMesChants => 'Add to my personal songs';

  @override
  String get dejaDansMesChants => 'Already in your personal songs';

  @override
  String get ajouteAuxMesChants => 'Added to your personal songs';

  @override
  String get ajouteAuxFavoris => 'Added to favorites';

  @override
  String get retireDesFavoris => 'Removed from favorites';

  @override
  String get parolesCopiees => 'Lyrics copied to clipboard';

  @override
  String get tailleParolesDefault => 'Default lyrics text size';

  @override
  String get choisirLangue => 'Choose language';

  @override
  String get choisirTheme => 'Choose theme';

  @override
  String get modifierChant => 'Edit song';

  @override
  String get informationsChant => 'Song information';

  @override
  String get champObligatoire => 'This field is required';

  @override
  String get titreChantHint => 'Example: How Great Is Our God';

  @override
  String get auteurChantHint => 'Example: Unknown author';

  @override
  String get parolesContenuChant => 'Song lyrics / Content';

  @override
  String get parolesChantHint => 'Enter the song lyrics here…';

  @override
  String get chargementChantsErreur => 'Unable to load your songs.';

  @override
  String get ajoutChantErreur => 'Unable to add this song.';

  @override
  String get modificationChantErreur => 'Unable to update this song.';

  @override
  String get suppressionChantErreur => 'Unable to delete this song.';

  @override
  String get chantAjoute => 'Song added';

  @override
  String get chantMisAJour => 'Song updated';

  @override
  String get chantSupprime => 'Song deleted';

  @override
  String get supprimerChantQuestion => 'Delete this song?';

  @override
  String supprimerChantConfirmation(String title) {
    return 'Do you really want to delete “$title”?';
  }

  @override
  String get chantsPersonnelsTitle => 'Your personal songs';

  @override
  String get rechercherParTitre => 'Search by title…';

  @override
  String get plusRecentDabord => 'Newest first';

  @override
  String get plusAncienDabord => 'Oldest first';

  @override
  String aucunChantPourRecherche(String query) {
    return 'No song matches “$query”.';
  }

  @override
  String get creerChant => 'Create a song';

  @override
  String modifieLe(String date) {
    return 'Updated on $date';
  }

  @override
  String get favorisVidesMessage =>
      'Add hymns or personal songs to your favorites to find them easily here.';

  @override
  String get cantiquesFavoris => 'Favorite hymns';

  @override
  String get chantsPersonnelsFavoris => 'Favorite personal songs';

  @override
  String aucunCantiquePourRecherche(String query) {
    return 'No hymn matches “$query”.';
  }

  @override
  String descriptionCollection(String collection) {
    return 'Hymns and songs from $collection';
  }

  @override
  String aucunCantiqueDansCollection(String collection) {
    return 'No hymn found in $collection.';
  }

  @override
  String chercherDansCollection(String collection) {
    return 'Search in $collection';
  }

  @override
  String get rechercherCantiqueHint => 'Search for a hymn…';

  @override
  String favorisCollection(String collection) {
    return 'Favorites — $collection';
  }

  @override
  String aucunFavoriDansCollectionNommee(String collection) {
    return 'You have no favorite hymns in $collection.';
  }

  @override
  String nombreFavorisDansCollection(int count, String collection) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count favorites',
      one: '1 favorite',
      zero: 'No favorites',
    );
    return '$_temp0 in $collection';
  }

  @override
  String get consulterPourRecents =>
      'Open hymns to find them quickly on this screen.';

  @override
  String get recueilSpirituelLocal => 'Local spiritual songbook';

  @override
  String get cantiqueAleatoire => 'Random hymn';

  @override
  String get soutenir => 'Support us';

  @override
  String get noterApplication => 'Rate the app';

  @override
  String get partagerApplication => 'Share the app';

  @override
  String get nousContacter => 'Contact us';

  @override
  String get aProposDescription =>
      'A local hymn library for praising and worshiping God with ease.';

  @override
  String get fermer => 'Close';

  @override
  String get contactQuestionSuggestion => 'For any question or suggestion:';

  @override
  String get telephone => 'Phone';

  @override
  String get soutienIndisponible =>
      'Thank you for wanting to support our app!\n\nThis feature will be available soon.\n\nIn the meantime, you can share the app with friends and family.';

  @override
  String get noterApplicationMessage =>
      'If you enjoy this app, please consider giving it a rating!';

  @override
  String get merciTitle => 'Thank you!';

  @override
  String merciNotation(int rating) {
    return 'Thank you for giving our app $rating star(s)!\n\nYour support means a lot to us.';
  }

  @override
  String get partageApplicationMessage =>
      'Discover the “Cantiques du Message” app to praise and worship God!';

  @override
  String reseauBientotDisponible(String social) {
    return 'Follow us on $social\n\nThis feature will be available soon.';
  }

  @override
  String get erreurFavori => 'Unable to update this favorite.';

  @override
  String get supprimerQuestion => 'Delete?';

  @override
  String get suppressionDefinitiveChant =>
      'This action will permanently delete this personal song.\n\nDo you want to continue?';

  @override
  String auteurValeur(String author) {
    return 'Author: $author';
  }

  @override
  String creationValeur(String date) {
    return 'Created: $date';
  }

  @override
  String modificationValeur(String date) {
    return 'Updated: $date';
  }
}
