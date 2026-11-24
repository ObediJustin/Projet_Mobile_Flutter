import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_fr.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('fr'),
  ];

  /// No description provided for @appTitle.
  ///
  /// In fr, this message translates to:
  /// **'Cantiques du Message'**
  String get appTitle;

  /// No description provided for @navAccueil.
  ///
  /// In fr, this message translates to:
  /// **'Accueil'**
  String get navAccueil;

  /// No description provided for @navCollections.
  ///
  /// In fr, this message translates to:
  /// **'Collections'**
  String get navCollections;

  /// No description provided for @navFavoris.
  ///
  /// In fr, this message translates to:
  /// **'Favoris'**
  String get navFavoris;

  /// No description provided for @navMesChants.
  ///
  /// In fr, this message translates to:
  /// **'Mes chants'**
  String get navMesChants;

  /// No description provided for @navParametres.
  ///
  /// In fr, this message translates to:
  /// **'Paramètres'**
  String get navParametres;

  /// No description provided for @bienvenueTitle.
  ///
  /// In fr, this message translates to:
  /// **'BIENVENUE'**
  String get bienvenueTitle;

  /// No description provided for @bienvenueSubtitle.
  ///
  /// In fr, this message translates to:
  /// **'Trouvez rapidement vos cantiques de louange et d\'adoration'**
  String get bienvenueSubtitle;

  /// No description provided for @searchHint.
  ///
  /// In fr, this message translates to:
  /// **'Rechercher par titre, numéro, contenu ou collection…'**
  String get searchHint;

  /// No description provided for @searchCollectionsHint.
  ///
  /// In fr, this message translates to:
  /// **'Rechercher un cantique dans toutes les collections...'**
  String get searchCollectionsHint;

  /// No description provided for @searchInCollectionHint.
  ///
  /// In fr, this message translates to:
  /// **'Rechercher dans cette collection...'**
  String get searchInCollectionHint;

  /// No description provided for @searchResultsTitle.
  ///
  /// In fr, this message translates to:
  /// **'Résultats de recherche'**
  String get searchResultsTitle;

  /// No description provided for @cantiquesRecentsTitle.
  ///
  /// In fr, this message translates to:
  /// **'Cantiques récents'**
  String get cantiquesRecentsTitle;

  /// No description provided for @versetDuJourTitle.
  ///
  /// In fr, this message translates to:
  /// **'Verset du jour'**
  String get versetDuJourTitle;

  /// No description provided for @cantiqueDuMomentTitle.
  ///
  /// In fr, this message translates to:
  /// **'Cantique du moment'**
  String get cantiqueDuMomentTitle;

  /// No description provided for @noRecentCantiques.
  ///
  /// In fr, this message translates to:
  /// **'Vos cantiques récents apparaîtront ici'**
  String get noRecentCantiques;

  /// No description provided for @noCantiqueFound.
  ///
  /// In fr, this message translates to:
  /// **'Aucun cantique trouvé'**
  String get noCantiqueFound;

  /// No description provided for @noResultsForQuery.
  ///
  /// In fr, this message translates to:
  /// **'Aucun résultat ne correspond à votre recherche.'**
  String get noResultsForQuery;

  /// No description provided for @noFavorites.
  ///
  /// In fr, this message translates to:
  /// **'Aucun favori'**
  String get noFavorites;

  /// No description provided for @noFavoritesInCollection.
  ///
  /// In fr, this message translates to:
  /// **'Vous n\'avez aucun cantique favori dans cette collection.'**
  String get noFavoritesInCollection;

  /// No description provided for @noFavoritesMessage.
  ///
  /// In fr, this message translates to:
  /// **'Vos cantiques favoris apparaîtront ici.'**
  String get noFavoritesMessage;

  /// No description provided for @noPersonalChants.
  ///
  /// In fr, this message translates to:
  /// **'Aucun chant personnel'**
  String get noPersonalChants;

  /// No description provided for @noPersonalChantsMessage.
  ///
  /// In fr, this message translates to:
  /// **'Ajoutez vos propres chants pour les retrouver ici.'**
  String get noPersonalChantsMessage;

  /// No description provided for @nouveauChant.
  ///
  /// In fr, this message translates to:
  /// **'Nouveau chant'**
  String get nouveauChant;

  /// No description provided for @enregistrer.
  ///
  /// In fr, this message translates to:
  /// **'Enregistrer'**
  String get enregistrer;

  /// No description provided for @annuler.
  ///
  /// In fr, this message translates to:
  /// **'Annuler'**
  String get annuler;

  /// No description provided for @supprimer.
  ///
  /// In fr, this message translates to:
  /// **'Supprimer'**
  String get supprimer;

  /// No description provided for @modifier.
  ///
  /// In fr, this message translates to:
  /// **'Modifier'**
  String get modifier;

  /// No description provided for @partager.
  ///
  /// In fr, this message translates to:
  /// **'Partager'**
  String get partager;

  /// No description provided for @copier.
  ///
  /// In fr, this message translates to:
  /// **'Copier'**
  String get copier;

  /// No description provided for @tailleDuTexte.
  ///
  /// In fr, this message translates to:
  /// **'Taille du texte'**
  String get tailleDuTexte;

  /// No description provided for @themeTitle.
  ///
  /// In fr, this message translates to:
  /// **'Thème'**
  String get themeTitle;

  /// No description provided for @apparenceTitle.
  ///
  /// In fr, this message translates to:
  /// **'Apparence'**
  String get apparenceTitle;

  /// No description provided for @langueTitle.
  ///
  /// In fr, this message translates to:
  /// **'Langue d\'affichage'**
  String get langueTitle;

  /// No description provided for @notificationsTitle.
  ///
  /// In fr, this message translates to:
  /// **'Notifications'**
  String get notificationsTitle;

  /// No description provided for @notificationsSubtitle.
  ///
  /// In fr, this message translates to:
  /// **'Recevoir des rappels et édifications quotidiennes'**
  String get notificationsSubtitle;

  /// No description provided for @preferencesTitle.
  ///
  /// In fr, this message translates to:
  /// **'Préférences'**
  String get preferencesTitle;

  /// No description provided for @aProposTitle.
  ///
  /// In fr, this message translates to:
  /// **'À propos'**
  String get aProposTitle;

  /// No description provided for @versionApp.
  ///
  /// In fr, this message translates to:
  /// **'Version de l\'application'**
  String get versionApp;

  /// No description provided for @contactDev.
  ///
  /// In fr, this message translates to:
  /// **'Contact développeur'**
  String get contactDev;

  /// No description provided for @langueSysteme.
  ///
  /// In fr, this message translates to:
  /// **'Langue du système'**
  String get langueSysteme;

  /// No description provided for @langueFrancais.
  ///
  /// In fr, this message translates to:
  /// **'Français'**
  String get langueFrancais;

  /// No description provided for @langueAnglais.
  ///
  /// In fr, this message translates to:
  /// **'English'**
  String get langueAnglais;

  /// No description provided for @themeGreen.
  ///
  /// In fr, this message translates to:
  /// **'Vert Nature'**
  String get themeGreen;

  /// No description provided for @themeBlue.
  ///
  /// In fr, this message translates to:
  /// **'Bleu'**
  String get themeBlue;

  /// No description provided for @themePurple.
  ///
  /// In fr, this message translates to:
  /// **'Violet'**
  String get themePurple;

  /// No description provided for @themeAmber.
  ///
  /// In fr, this message translates to:
  /// **'Ambre'**
  String get themeAmber;

  /// No description provided for @ouvrir.
  ///
  /// In fr, this message translates to:
  /// **'Ouvrir'**
  String get ouvrir;

  /// No description provided for @chercher.
  ///
  /// In fr, this message translates to:
  /// **'Chercher'**
  String get chercher;

  /// No description provided for @favori.
  ///
  /// In fr, this message translates to:
  /// **'Favori'**
  String get favori;

  /// No description provided for @mesChants.
  ///
  /// In fr, this message translates to:
  /// **'Mes Chants'**
  String get mesChants;

  /// No description provided for @reduire.
  ///
  /// In fr, this message translates to:
  /// **'Réduire'**
  String get reduire;

  /// No description provided for @agrandir.
  ///
  /// In fr, this message translates to:
  /// **'Agrandir'**
  String get agrandir;

  /// No description provided for @titreChant.
  ///
  /// In fr, this message translates to:
  /// **'Titre du chant'**
  String get titreChant;

  /// No description provided for @parolesChant.
  ///
  /// In fr, this message translates to:
  /// **'Paroles du chant'**
  String get parolesChant;

  /// No description provided for @auteurChant.
  ///
  /// In fr, this message translates to:
  /// **'Auteur (optionnel)'**
  String get auteurChant;

  /// No description provided for @ajouterAuxMesChants.
  ///
  /// In fr, this message translates to:
  /// **'Ajouter à vos chants personnels'**
  String get ajouterAuxMesChants;

  /// No description provided for @dejaDansMesChants.
  ///
  /// In fr, this message translates to:
  /// **'Déjà présent dans vos chants personnels'**
  String get dejaDansMesChants;

  /// No description provided for @ajouteAuxMesChants.
  ///
  /// In fr, this message translates to:
  /// **'Ajouté à vos chants personnels'**
  String get ajouteAuxMesChants;

  /// No description provided for @ajouteAuxFavoris.
  ///
  /// In fr, this message translates to:
  /// **'Ajouté aux favoris'**
  String get ajouteAuxFavoris;

  /// No description provided for @retireDesFavoris.
  ///
  /// In fr, this message translates to:
  /// **'Retiré des favoris'**
  String get retireDesFavoris;

  /// No description provided for @parolesCopiees.
  ///
  /// In fr, this message translates to:
  /// **'Paroles copiées dans le presse-papier'**
  String get parolesCopiees;

  /// No description provided for @tailleParolesDefault.
  ///
  /// In fr, this message translates to:
  /// **'Taille des paroles par défaut'**
  String get tailleParolesDefault;

  /// No description provided for @choisirLangue.
  ///
  /// In fr, this message translates to:
  /// **'Choisir la langue'**
  String get choisirLangue;

  /// No description provided for @choisirTheme.
  ///
  /// In fr, this message translates to:
  /// **'Choisir le thème'**
  String get choisirTheme;

  /// No description provided for @modifierChant.
  ///
  /// In fr, this message translates to:
  /// **'Modifier le chant'**
  String get modifierChant;

  /// No description provided for @informationsChant.
  ///
  /// In fr, this message translates to:
  /// **'Informations du chant'**
  String get informationsChant;

  /// No description provided for @champObligatoire.
  ///
  /// In fr, this message translates to:
  /// **'Ce champ est obligatoire'**
  String get champObligatoire;

  /// No description provided for @titreChantHint.
  ///
  /// In fr, this message translates to:
  /// **'Ex. : Mon Dieu est grand'**
  String get titreChantHint;

  /// No description provided for @auteurChantHint.
  ///
  /// In fr, this message translates to:
  /// **'Ex. : Auteur inconnu'**
  String get auteurChantHint;

  /// No description provided for @parolesContenuChant.
  ///
  /// In fr, this message translates to:
  /// **'Paroles / Contenu du chant'**
  String get parolesContenuChant;

  /// No description provided for @parolesChantHint.
  ///
  /// In fr, this message translates to:
  /// **'Saisissez les paroles du chant ici…'**
  String get parolesChantHint;

  /// No description provided for @chargementChantsErreur.
  ///
  /// In fr, this message translates to:
  /// **'Impossible de charger vos chants.'**
  String get chargementChantsErreur;

  /// No description provided for @ajoutChantErreur.
  ///
  /// In fr, this message translates to:
  /// **'Impossible d\'ajouter ce chant.'**
  String get ajoutChantErreur;

  /// No description provided for @modificationChantErreur.
  ///
  /// In fr, this message translates to:
  /// **'Impossible de modifier ce chant.'**
  String get modificationChantErreur;

  /// No description provided for @suppressionChantErreur.
  ///
  /// In fr, this message translates to:
  /// **'Impossible de supprimer ce chant.'**
  String get suppressionChantErreur;

  /// No description provided for @chantAjoute.
  ///
  /// In fr, this message translates to:
  /// **'Chant ajouté'**
  String get chantAjoute;

  /// No description provided for @chantMisAJour.
  ///
  /// In fr, this message translates to:
  /// **'Chant mis à jour'**
  String get chantMisAJour;

  /// No description provided for @chantSupprime.
  ///
  /// In fr, this message translates to:
  /// **'Chant supprimé'**
  String get chantSupprime;

  /// No description provided for @supprimerChantQuestion.
  ///
  /// In fr, this message translates to:
  /// **'Supprimer ce chant ?'**
  String get supprimerChantQuestion;

  /// No description provided for @supprimerChantConfirmation.
  ///
  /// In fr, this message translates to:
  /// **'Voulez-vous vraiment supprimer « {title} » ?'**
  String supprimerChantConfirmation(String title);

  /// No description provided for @chantsPersonnelsTitle.
  ///
  /// In fr, this message translates to:
  /// **'Vos chants personnels'**
  String get chantsPersonnelsTitle;

  /// No description provided for @rechercherParTitre.
  ///
  /// In fr, this message translates to:
  /// **'Rechercher par titre…'**
  String get rechercherParTitre;

  /// No description provided for @plusRecentDabord.
  ///
  /// In fr, this message translates to:
  /// **'Plus récent d\'abord'**
  String get plusRecentDabord;

  /// No description provided for @plusAncienDabord.
  ///
  /// In fr, this message translates to:
  /// **'Plus ancien d\'abord'**
  String get plusAncienDabord;

  /// No description provided for @aucunChantPourRecherche.
  ///
  /// In fr, this message translates to:
  /// **'Aucun chant ne correspond à « {query} ».'**
  String aucunChantPourRecherche(String query);

  /// No description provided for @creerChant.
  ///
  /// In fr, this message translates to:
  /// **'Créer un chant'**
  String get creerChant;

  /// No description provided for @modifieLe.
  ///
  /// In fr, this message translates to:
  /// **'Modifié le {date}'**
  String modifieLe(String date);

  /// No description provided for @favorisVidesMessage.
  ///
  /// In fr, this message translates to:
  /// **'Ajoutez des cantiques ou des chants personnels à vos favoris pour les retrouver facilement ici.'**
  String get favorisVidesMessage;

  /// No description provided for @cantiquesFavoris.
  ///
  /// In fr, this message translates to:
  /// **'Cantiques favoris'**
  String get cantiquesFavoris;

  /// No description provided for @chantsPersonnelsFavoris.
  ///
  /// In fr, this message translates to:
  /// **'Mes chants favoris'**
  String get chantsPersonnelsFavoris;

  /// No description provided for @aucunCantiquePourRecherche.
  ///
  /// In fr, this message translates to:
  /// **'Aucun cantique ne correspond à « {query} ».'**
  String aucunCantiquePourRecherche(String query);

  /// No description provided for @descriptionCollection.
  ///
  /// In fr, this message translates to:
  /// **'Cantiques et hymnes de {collection}'**
  String descriptionCollection(String collection);

  /// No description provided for @aucunCantiqueDansCollection.
  ///
  /// In fr, this message translates to:
  /// **'Aucun cantique trouvé dans {collection}.'**
  String aucunCantiqueDansCollection(String collection);

  /// No description provided for @chercherDansCollection.
  ///
  /// In fr, this message translates to:
  /// **'Chercher dans {collection}'**
  String chercherDansCollection(String collection);

  /// No description provided for @rechercherCantiqueHint.
  ///
  /// In fr, this message translates to:
  /// **'Rechercher un cantique…'**
  String get rechercherCantiqueHint;

  /// No description provided for @favorisCollection.
  ///
  /// In fr, this message translates to:
  /// **'Favoris — {collection}'**
  String favorisCollection(String collection);

  /// No description provided for @aucunFavoriDansCollectionNommee.
  ///
  /// In fr, this message translates to:
  /// **'Vous n\'avez aucun cantique favori dans {collection}.'**
  String aucunFavoriDansCollectionNommee(String collection);

  /// No description provided for @nombreFavorisDansCollection.
  ///
  /// In fr, this message translates to:
  /// **'{count, plural, =0{Aucun favori} =1{1 favori} other{{count} favoris}} dans {collection}'**
  String nombreFavorisDansCollection(int count, String collection);

  /// No description provided for @consulterPourRecents.
  ///
  /// In fr, this message translates to:
  /// **'Consultez des cantiques pour les retrouver rapidement sur cet écran.'**
  String get consulterPourRecents;

  /// No description provided for @recueilSpirituelLocal.
  ///
  /// In fr, this message translates to:
  /// **'Recueil spirituel local'**
  String get recueilSpirituelLocal;

  /// No description provided for @cantiqueAleatoire.
  ///
  /// In fr, this message translates to:
  /// **'Cantique aléatoire'**
  String get cantiqueAleatoire;

  /// No description provided for @soutenir.
  ///
  /// In fr, this message translates to:
  /// **'Soutenir'**
  String get soutenir;

  /// No description provided for @noterApplication.
  ///
  /// In fr, this message translates to:
  /// **'Noter l\'application'**
  String get noterApplication;

  /// No description provided for @partagerApplication.
  ///
  /// In fr, this message translates to:
  /// **'Partager l\'application'**
  String get partagerApplication;

  /// No description provided for @nousContacter.
  ///
  /// In fr, this message translates to:
  /// **'Nous contacter'**
  String get nousContacter;

  /// No description provided for @aProposDescription.
  ///
  /// In fr, this message translates to:
  /// **'Une bibliothèque locale de cantiques pour louer et adorer Dieu en toute simplicité.'**
  String get aProposDescription;

  /// No description provided for @fermer.
  ///
  /// In fr, this message translates to:
  /// **'Fermer'**
  String get fermer;

  /// No description provided for @contactQuestionSuggestion.
  ///
  /// In fr, this message translates to:
  /// **'Pour toute question ou suggestion :'**
  String get contactQuestionSuggestion;

  /// No description provided for @telephone.
  ///
  /// In fr, this message translates to:
  /// **'Téléphone'**
  String get telephone;

  /// No description provided for @soutienIndisponible.
  ///
  /// In fr, this message translates to:
  /// **'Merci de vouloir soutenir notre application !\n\nCette fonctionnalité sera bientôt disponible.\n\nEn attendant, vous pouvez partager l\'application avec vos proches.'**
  String get soutienIndisponible;

  /// No description provided for @noterApplicationMessage.
  ///
  /// In fr, this message translates to:
  /// **'Si vous aimez cette application, n\'hésitez pas à lui donner une note !'**
  String get noterApplicationMessage;

  /// No description provided for @merciTitle.
  ///
  /// In fr, this message translates to:
  /// **'Merci !'**
  String get merciTitle;

  /// No description provided for @merciNotation.
  ///
  /// In fr, this message translates to:
  /// **'Merci d\'avoir attribué {rating} étoile(s) à notre application !\n\nVotre soutien nous est précieux.'**
  String merciNotation(int rating);

  /// No description provided for @partageApplicationMessage.
  ///
  /// In fr, this message translates to:
  /// **'Découvre l\'application « Cantiques du Message » pour louer et adorer Dieu !'**
  String get partageApplicationMessage;

  /// No description provided for @reseauBientotDisponible.
  ///
  /// In fr, this message translates to:
  /// **'Suivez-nous sur {social}\n\nCette fonctionnalité sera bientôt disponible.'**
  String reseauBientotDisponible(String social);

  /// No description provided for @erreurFavori.
  ///
  /// In fr, this message translates to:
  /// **'Impossible de modifier ce favori.'**
  String get erreurFavori;

  /// No description provided for @supprimerQuestion.
  ///
  /// In fr, this message translates to:
  /// **'Supprimer ?'**
  String get supprimerQuestion;

  /// No description provided for @suppressionDefinitiveChant.
  ///
  /// In fr, this message translates to:
  /// **'Cette action supprimera définitivement ce chant personnel.\n\nVoulez-vous continuer ?'**
  String get suppressionDefinitiveChant;

  /// No description provided for @auteurValeur.
  ///
  /// In fr, this message translates to:
  /// **'Auteur : {author}'**
  String auteurValeur(String author);

  /// No description provided for @creationValeur.
  ///
  /// In fr, this message translates to:
  /// **'Création : {date}'**
  String creationValeur(String date);

  /// No description provided for @modificationValeur.
  ///
  /// In fr, this message translates to:
  /// **'Modifié : {date}'**
  String modificationValeur(String date);

  /// No description provided for @partageNumero.
  ///
  /// In fr, this message translates to:
  /// **'Numéro : {number}'**
  String partageNumero(int number);

  /// No description provided for @partageCollection.
  ///
  /// In fr, this message translates to:
  /// **'Collection : {collection}'**
  String partageCollection(String collection);

  /// No description provided for @tailleCourt.
  ///
  /// In fr, this message translates to:
  /// **'Taille'**
  String get tailleCourt;

  /// No description provided for @demarrageErreurTitle.
  ///
  /// In fr, this message translates to:
  /// **'Démarrage impossible'**
  String get demarrageErreurTitle;

  /// No description provided for @demarrageErreurMessage.
  ///
  /// In fr, this message translates to:
  /// **'L\'application n\'a pas pu accéder à ses données. Vos données n\'ont pas été supprimées.'**
  String get demarrageErreurMessage;

  /// No description provided for @reessayer.
  ///
  /// In fr, this message translates to:
  /// **'Réessayer'**
  String get reessayer;

  /// No description provided for @cetteCollection.
  ///
  /// In fr, this message translates to:
  /// **'Cette collection'**
  String get cetteCollection;

  /// No description provided for @toutesLesCollections.
  ///
  /// In fr, this message translates to:
  /// **'Toutes les collections'**
  String get toutesLesCollections;

  /// No description provided for @themeSysteme.
  ///
  /// In fr, this message translates to:
  /// **'Thème du système'**
  String get themeSysteme;

  /// No description provided for @themeClair.
  ///
  /// In fr, this message translates to:
  /// **'Thème clair'**
  String get themeClair;

  /// No description provided for @themeSombre.
  ///
  /// In fr, this message translates to:
  /// **'Thème sombre'**
  String get themeSombre;

  /// No description provided for @reinitialiserTailleTexte.
  ///
  /// In fr, this message translates to:
  /// **'Réinitialiser la taille du texte'**
  String get reinitialiserTailleTexte;

  /// No description provided for @actions.
  ///
  /// In fr, this message translates to:
  /// **'Actions'**
  String get actions;

  /// No description provided for @copierParoles.
  ///
  /// In fr, this message translates to:
  /// **'Copier les paroles'**
  String get copierParoles;

  /// No description provided for @mesListes.
  ///
  /// In fr, this message translates to:
  /// **'Mes listes'**
  String get mesListes;

  /// No description provided for @creerListe.
  ///
  /// In fr, this message translates to:
  /// **'Créer une liste'**
  String get creerListe;

  /// No description provided for @nouvelleListe.
  ///
  /// In fr, this message translates to:
  /// **'Nouvelle liste'**
  String get nouvelleListe;

  /// No description provided for @nomListe.
  ///
  /// In fr, this message translates to:
  /// **'Nom de la liste'**
  String get nomListe;

  /// No description provided for @nomListeHint.
  ///
  /// In fr, this message translates to:
  /// **'Ex. : Culte du dimanche'**
  String get nomListeHint;

  /// No description provided for @nomListeRequis.
  ///
  /// In fr, this message translates to:
  /// **'Le nom de la liste est obligatoire'**
  String get nomListeRequis;

  /// No description provided for @descriptionListe.
  ///
  /// In fr, this message translates to:
  /// **'Description (facultative)'**
  String get descriptionListe;

  /// No description provided for @descriptionListeHint.
  ///
  /// In fr, this message translates to:
  /// **'Ex. : Chants pour le culte...'**
  String get descriptionListeHint;

  /// No description provided for @modifierListe.
  ///
  /// In fr, this message translates to:
  /// **'Modifier la liste'**
  String get modifierListe;

  /// No description provided for @supprimerListe.
  ///
  /// In fr, this message translates to:
  /// **'Supprimer la liste'**
  String get supprimerListe;

  /// No description provided for @supprimerListeQuestion.
  ///
  /// In fr, this message translates to:
  /// **'Supprimer cette liste ?'**
  String get supprimerListeQuestion;

  /// No description provided for @supprimerListeConfirmation.
  ///
  /// In fr, this message translates to:
  /// **'Les cantiques ne seront pas supprimés de l\'application.'**
  String get supprimerListeConfirmation;

  /// No description provided for @ajouterALaListe.
  ///
  /// In fr, this message translates to:
  /// **'Ajouter à une liste'**
  String get ajouterALaListe;

  /// No description provided for @commencerLouange.
  ///
  /// In fr, this message translates to:
  /// **'Commencer la louange'**
  String get commencerLouange;

  /// No description provided for @listeVide.
  ///
  /// In fr, this message translates to:
  /// **'Aucun chant dans cette liste'**
  String get listeVide;

  /// No description provided for @listeVideMessage.
  ///
  /// In fr, this message translates to:
  /// **'Ajoutez des cantiques ou des chants personnels depuis leur page de lecture.'**
  String get listeVideMessage;

  /// No description provided for @aucuneListe.
  ///
  /// In fr, this message translates to:
  /// **'Aucune liste de chants'**
  String get aucuneListe;

  /// No description provided for @aucuneListeMessage.
  ///
  /// In fr, this message translates to:
  /// **'Créez votre première liste pour organiser vos chants de culte ou de prière.'**
  String get aucuneListeMessage;

  /// No description provided for @chantAjouteAListe.
  ///
  /// In fr, this message translates to:
  /// **'Chant ajouté à la liste'**
  String get chantAjouteAListe;

  /// No description provided for @chantRetireDeListe.
  ///
  /// In fr, this message translates to:
  /// **'Chant retiré de la liste'**
  String get chantRetireDeListe;

  /// No description provided for @reorganiser.
  ///
  /// In fr, this message translates to:
  /// **'Réorganiser'**
  String get reorganiser;

  /// No description provided for @nombreChants.
  ///
  /// In fr, this message translates to:
  /// **'{count, plural, =0{0 chant} =1{1 chant} other{{count} chants}}'**
  String nombreChants(int count);

  /// No description provided for @positionChant.
  ///
  /// In fr, this message translates to:
  /// **'{current} / {total}'**
  String positionChant(int current, int total);

  /// No description provided for @chantDejaDansListe.
  ///
  /// In fr, this message translates to:
  /// **'Déjà dans la liste'**
  String get chantDejaDansListe;

  /// No description provided for @selectionnerListes.
  ///
  /// In fr, this message translates to:
  /// **'Ajouter à une liste'**
  String get selectionnerListes;

  /// No description provided for @listeCreee.
  ///
  /// In fr, this message translates to:
  /// **'Liste créée avec succès'**
  String get listeCreee;

  /// No description provided for @listeModifiee.
  ///
  /// In fr, this message translates to:
  /// **'Liste modifiée'**
  String get listeModifiee;

  /// No description provided for @listeSupprimee.
  ///
  /// In fr, this message translates to:
  /// **'Liste supprimée'**
  String get listeSupprimee;

  /// No description provided for @retirerDeLaListe.
  ///
  /// In fr, this message translates to:
  /// **'Retirer de la liste'**
  String get retirerDeLaListe;

  /// No description provided for @modeLouange.
  ///
  /// In fr, this message translates to:
  /// **'Mode louange'**
  String get modeLouange;

  /// No description provided for @quitterModeLouange.
  ///
  /// In fr, this message translates to:
  /// **'Quitter le mode louange'**
  String get quitterModeLouange;

  /// No description provided for @lancerDefilement.
  ///
  /// In fr, this message translates to:
  /// **'Démarrer le défilement'**
  String get lancerDefilement;

  /// No description provided for @mettreEnPause.
  ///
  /// In fr, this message translates to:
  /// **'Mettre en pause'**
  String get mettreEnPause;

  /// No description provided for @vitesseDefilement.
  ///
  /// In fr, this message translates to:
  /// **'Vitesse du défilement'**
  String get vitesseDefilement;

  /// No description provided for @vitesseDefilementValeur.
  ///
  /// In fr, this message translates to:
  /// **'{speed} px/s'**
  String vitesseDefilementValeur(int speed);

  /// No description provided for @ralentir.
  ///
  /// In fr, this message translates to:
  /// **'Ralentir'**
  String get ralentir;

  /// No description provided for @accelerer.
  ///
  /// In fr, this message translates to:
  /// **'Accélérer'**
  String get accelerer;

  /// No description provided for @chantPrecedent.
  ///
  /// In fr, this message translates to:
  /// **'Chant précédent'**
  String get chantPrecedent;

  /// No description provided for @chantSuivant.
  ///
  /// In fr, this message translates to:
  /// **'Chant suivant'**
  String get chantSuivant;

  /// No description provided for @afficherCommandesLouange.
  ///
  /// In fr, this message translates to:
  /// **'Touchez l’écran pour afficher les commandes'**
  String get afficherCommandesLouange;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'fr'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'fr':
      return AppLocalizationsFr();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
