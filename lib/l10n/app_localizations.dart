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
