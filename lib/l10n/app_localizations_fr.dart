// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appTitle => 'Cantiques du Message';

  @override
  String get navAccueil => 'Accueil';

  @override
  String get navCollections => 'Collections';

  @override
  String get navFavoris => 'Favoris';

  @override
  String get navMesChants => 'Mes chants';

  @override
  String get navParametres => 'Paramètres';

  @override
  String get bienvenueTitle => 'BIENVENUE';

  @override
  String get bienvenueSubtitle =>
      'Trouvez rapidement vos cantiques de louange et d\'adoration';

  @override
  String get searchHint =>
      'Rechercher par titre, numéro, contenu ou collection…';

  @override
  String get searchCollectionsHint =>
      'Rechercher un cantique dans toutes les collections...';

  @override
  String get searchInCollectionHint => 'Rechercher dans cette collection...';

  @override
  String get searchResultsTitle => 'Résultats de recherche';

  @override
  String get cantiquesRecentsTitle => 'Cantiques récents';

  @override
  String get versetDuJourTitle => 'Verset du jour';

  @override
  String get cantiqueDuMomentTitle => 'Cantique du moment';

  @override
  String get noRecentCantiques => 'Vos cantiques récents apparaîtront ici';

  @override
  String get noCantiqueFound => 'Aucun cantique trouvé';

  @override
  String get noResultsForQuery =>
      'Aucun résultat ne correspond à votre recherche.';

  @override
  String get noFavorites => 'Aucun favori';

  @override
  String get noFavoritesInCollection =>
      'Vous n\'avez aucun cantique favori dans cette collection.';

  @override
  String get noFavoritesMessage => 'Vos cantiques favoris apparaîtront ici.';

  @override
  String get noPersonalChants => 'Aucun chant personnel';

  @override
  String get noPersonalChantsMessage =>
      'Ajoutez vos propres chants pour les retrouver ici.';

  @override
  String get nouveauChant => 'Nouveau chant';

  @override
  String get enregistrer => 'Enregistrer';

  @override
  String get annuler => 'Annuler';

  @override
  String get supprimer => 'Supprimer';

  @override
  String get modifier => 'Modifier';

  @override
  String get partager => 'Partager';

  @override
  String get copier => 'Copier';

  @override
  String get tailleDuTexte => 'Taille du texte';

  @override
  String get themeTitle => 'Thème';

  @override
  String get apparenceTitle => 'Apparence';

  @override
  String get langueTitle => 'Langue d\'affichage';

  @override
  String get notificationsTitle => 'Notifications';

  @override
  String get notificationsSubtitle =>
      'Recevoir des rappels et édifications quotidiennes';

  @override
  String get preferencesTitle => 'Préférences';

  @override
  String get aProposTitle => 'À propos';

  @override
  String get versionApp => 'Version de l\'application';

  @override
  String get contactDev => 'Contact développeur';

  @override
  String get langueSysteme => 'Langue du système';

  @override
  String get langueFrancais => 'Français';

  @override
  String get langueAnglais => 'English';

  @override
  String get themeGreen => 'Vert Nature';

  @override
  String get themeBlue => 'Bleu';

  @override
  String get themePurple => 'Violet';

  @override
  String get themeAmber => 'Ambre';

  @override
  String get ouvrir => 'Ouvrir';

  @override
  String get chercher => 'Chercher';

  @override
  String get favori => 'Favori';

  @override
  String get mesChants => 'Mes Chants';

  @override
  String get reduire => 'Réduire';

  @override
  String get agrandir => 'Agrandir';

  @override
  String get titreChant => 'Titre du chant';

  @override
  String get parolesChant => 'Paroles du chant';

  @override
  String get auteurChant => 'Auteur (optionnel)';

  @override
  String get ajouterAuxMesChants => 'Ajouter à vos chants personnels';

  @override
  String get dejaDansMesChants => 'Déjà présent dans vos chants personnels';

  @override
  String get ajouteAuxMesChants => 'Ajouté à vos chants personnels';

  @override
  String get ajouteAuxFavoris => 'Ajouté aux favoris';

  @override
  String get retireDesFavoris => 'Retiré des favoris';

  @override
  String get parolesCopiees => 'Paroles copiées dans le presse-papier';

  @override
  String get tailleParolesDefault => 'Taille des paroles par défaut';

  @override
  String get choisirLangue => 'Choisir la langue';

  @override
  String get choisirTheme => 'Choisir le thème';

  @override
  String get modifierChant => 'Modifier le chant';

  @override
  String get informationsChant => 'Informations du chant';

  @override
  String get champObligatoire => 'Ce champ est obligatoire';

  @override
  String get titreChantHint => 'Ex. : Mon Dieu est grand';

  @override
  String get auteurChantHint => 'Ex. : Auteur inconnu';

  @override
  String get parolesContenuChant => 'Paroles / Contenu du chant';

  @override
  String get parolesChantHint => 'Saisissez les paroles du chant ici…';

  @override
  String get chargementChantsErreur => 'Impossible de charger vos chants.';

  @override
  String get ajoutChantErreur => 'Impossible d\'ajouter ce chant.';

  @override
  String get modificationChantErreur => 'Impossible de modifier ce chant.';

  @override
  String get suppressionChantErreur => 'Impossible de supprimer ce chant.';

  @override
  String get chantAjoute => 'Chant ajouté';

  @override
  String get chantMisAJour => 'Chant mis à jour';

  @override
  String get chantSupprime => 'Chant supprimé';

  @override
  String get supprimerChantQuestion => 'Supprimer ce chant ?';

  @override
  String supprimerChantConfirmation(String title) {
    return 'Voulez-vous vraiment supprimer « $title » ?';
  }

  @override
  String get chantsPersonnelsTitle => 'Vos chants personnels';

  @override
  String get rechercherParTitre => 'Rechercher par titre…';

  @override
  String get plusRecentDabord => 'Plus récent d\'abord';

  @override
  String get plusAncienDabord => 'Plus ancien d\'abord';

  @override
  String aucunChantPourRecherche(String query) {
    return 'Aucun chant ne correspond à « $query ».';
  }

  @override
  String get creerChant => 'Créer un chant';

  @override
  String modifieLe(String date) {
    return 'Modifié le $date';
  }

  @override
  String get favorisVidesMessage =>
      'Ajoutez des cantiques ou des chants personnels à vos favoris pour les retrouver facilement ici.';

  @override
  String get cantiquesFavoris => 'Cantiques favoris';

  @override
  String get chantsPersonnelsFavoris => 'Mes chants favoris';

  @override
  String aucunCantiquePourRecherche(String query) {
    return 'Aucun cantique ne correspond à « $query ».';
  }

  @override
  String descriptionCollection(String collection) {
    return 'Cantiques et hymnes de $collection';
  }

  @override
  String aucunCantiqueDansCollection(String collection) {
    return 'Aucun cantique trouvé dans $collection.';
  }

  @override
  String chercherDansCollection(String collection) {
    return 'Chercher dans $collection';
  }

  @override
  String get rechercherCantiqueHint => 'Rechercher un cantique…';

  @override
  String favorisCollection(String collection) {
    return 'Favoris — $collection';
  }

  @override
  String aucunFavoriDansCollectionNommee(String collection) {
    return 'Vous n\'avez aucun cantique favori dans $collection.';
  }

  @override
  String nombreFavorisDansCollection(int count, String collection) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count favoris',
      one: '1 favori',
      zero: 'Aucun favori',
    );
    return '$_temp0 dans $collection';
  }

  @override
  String get consulterPourRecents =>
      'Consultez des cantiques pour les retrouver rapidement sur cet écran.';
}
