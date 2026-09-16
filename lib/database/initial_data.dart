import '../models/cantique.dart';
import '../models/collection.dart';

final DateTime initialDataTimestamp = DateTime(2026, 1, 1);

final List<CantiqueCollection> initialCollections = [
  CantiqueCollection(
    id: 'crois_seulement',
    name: 'Crois seulement',
    createdAt: initialDataTimestamp,
    updatedAt: initialDataTimestamp,
  ),
  CantiqueCollection(
    id: 'only_believe',
    name: 'Only Believe',
    createdAt: initialDataTimestamp,
    updatedAt: initialDataTimestamp,
  ),
  CantiqueCollection(
    id: 'hosanna',
    name: 'Hosanna',
    createdAt: initialDataTimestamp,
    updatedAt: initialDataTimestamp,
  ),
  CantiqueCollection(
    id: 'boanerges_tabernacle',
    name: 'Boanergès Tabernacle',
    createdAt: initialDataTimestamp,
    updatedAt: initialDataTimestamp,
  ),
  CantiqueCollection(
    id: 'nyimbo_za_wokovu',
    name: 'Nyimbo za Wokovu',
    createdAt: initialDataTimestamp,
    updatedAt: initialDataTimestamp,
  ),
  CantiqueCollection(
    id: 'petit_troupeau',
    name: 'Petit Troupeau Tab',
    createdAt: initialDataTimestamp,
    updatedAt: initialDataTimestamp,
  ),
  CantiqueCollection(
    id: 'cantiques_inspires',
    name: 'Cantiques Inspirés',
    createdAt: initialDataTimestamp,
    updatedAt: initialDataTimestamp,
  ),
];

final List<Cantique> initialCantiques = [
  Cantique(
    id: 'crois_seulement_001',
    titre: 'Crois seulement',
    collectionId: 'crois_seulement',
    collection: 'Crois seulement',
    contenu:
        '''1. Quand tout semble perdu,\nQue la nuit est venue,\nN'abandonne pas,\nCrois seulement.\n\nRefrain :\nCrois seulement,\nDieu est avec toi,\nIl ne te laissera pas,\nCrois seulement.''',
    numero: 1,
    auteur: 'Auteur inconnu',
  ),
  Cantique(
    id: 'crois_seulement_002',
    titre: 'Crois seulement',
    collectionId: 'crois_seulement',
    collection: 'Crois seulement',
    contenu:
        '''1. Quand tout semble perdu,\nQue la nuit est venue,\nN'abandonne pas,\nCrois seulement.\n\nRefrain :\nCrois seulement,\nDieu est avec toi,\nIl ne te laissera pas,\nCrois seulement.''',
    numero: 1,
    auteur: 'Auteur inconnu',
  ),
  Cantique(
    id: 'crois_seulement_003',
    titre: 'Crois seulement',
    collectionId: 'crois_seulement',
    collection: 'Crois seulement',
    contenu:
        '''1. Grâce étonnante! quel doux son, qui Sauva un vil comme moi! J'étais perdu, je suis retrouvé, Aveugle, maintenant je vois. Cette grâce m'a enseigné la crainte, Et elle ôta mes peurs;
Combien précieuse parut cette grâce Au moment où j'ai cru !
Dans les dangers, peines et pièges, Par où je suis passé;
Cette grâce qui m'a gardé sain et sauf Me conduira au Ciel.
Le Seigneur m'a promis du bien, Sa Parole me soutient,
sera mon Abri, ma Part Tant que j'aurai la vie. Après dix mille ans passés là, Brillants comme le soleil,
Nous aurons plus de temps qu'avant Pour louer notre Dieu.
Quand tombera cette robe de chair, Ma vie mortelle cessera;
Je posséderai dans l'au-delà Une vie de joie et paix.Quand tout semble perdu,\nQue la nuit est venue,\nN'abandonne pas,\nCrois seulement.\n\nRefrain :\nCrois seulement,\nDieu est avec toi,\nIl ne te laissera pas,\nCrois seulement.''',
    numero: 1,
    auteur: 'Auteur inconnu',
  ),
  Cantique(
    id: 'only_believe_001',
    titre: 'Only Believe',
    collectionId: 'only_believe',
    collection: 'Only Believe',
    contenu:
        '''1. Only believe, only believe,\nAll things are possible, only believe.\nOnly believe, only believe,\nAll things are possible, only believe.''',
    numero: 1,
    auteur: 'Paul Rader',
  ),
  Cantique(
    id: 'hosanna_001',
    titre: 'Hosanna',
    collectionId: 'hosanna',
    collection: 'Hosanna',
    contenu:
        '''1. Hosanna, hosanna,\nHosanna in the highest.\nHosanna, hosanna,\nHosanna in the highest.''',
    numero: 1,
    auteur: 'Auteur inconnu',
  ),
  Cantique(
    id: 'boanerges_tabernacle_001',
    titre: 'E YESU MSHINDAJI WA GOLGOTHA',
    collectionId: 'boanerges_tabernacle',
    collection: 'Boanergès Tabernacle',
    contenu:
        '''1. Hosanna, hosanna,\nHosanna in the highest.\nHosanna, hosanna,\nHosanna in the highest.''',
    numero: 1,
    auteur: '',
  ),
  Cantique(
    id: 'nyimbo_za_wokovu_001',
    titre: 'E’ YESU MSHINDAJI WA GOLGOTHA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. E YESU, Mshindaji wa Golgotha, twakusifu!\nBendera ya mapenzi ni alama ya kushinda.\nUlichukuwa dhambi zetu Juu ya msalaba wako.\nTwakuhimidi, Bwana na Mfalme! Haleluya!\n\n2. Twashinda na zaidi ya Kushinda kati' yote.\nKwa damu yako, Yesu, na Watuinua moyo.\nKatika vita na ’jaribu Twaipeleka kwa furaha\nBendera yako nzuri ya Kushinda kati’ vita.\n\n3. Mbinguni Mkombozi ni Mkuu mwenye sifa.\nAliondoa dhambi kwa Kutufilia wote.\nMwana Kondoo wake Mungu, Umestahili\nkupokea Uweza, Utukufu na Heshima. Haleluya!''',
    numero: 1,
    auteur: 'Lewi Pethrus, 1913',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_002',
    titre: 'KIJITO KIKO CHENYE DAMU',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. KIJITO kiko chenye damu Itokayo Mwokozi,\nKiwaoshacho wakosao :/: Na dhambi na uchafu. :/:\n\n2. Msalabani mnyang’anyi Alikiona hima.\nMnyonge mimi kama yeye :/: Nitakasike pia! :/:\n\n3. Mwokozi wetu, damu yako Daima ina nguvu\nYa kuokoa wenye dhambi :/: Wa makabila yote. :/:\n\n4. Kijito hicho cha ajabu Ni tumaini langu.\nUpendo wako nausifu, :/: Nasifu hata kufa. :/:\n\n5. Nimeamini, naamini Uliyenifilia,\nMsalabani umetoa :/: Maisha yako Yesu. :/:''',
    numero: 2,
    auteur: 'William Cooper, 1771',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_003',
    titre: 'KISIMA SAFI SANA CHATOKA MSALABA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. KISIMA safi sana chatoka msalaba,\nKimetufungukia, chatusafisha vema.\nTwaweza kusikia sauti yake Yesu: “Unifuate sasa kwa kiti cha neema!”\nKisima cha msalaba, Damu ya Yesu Kristo,\nChatusafisha sisi sote na dhambi na hatia.\n\n2. Ufike, mwenye dhambi, kisima ni karibu!\nUache dhambi zako, upumzike hapa!\nKatika damu yake kabisa utapona,\nTazama msalaba, kisima kitokako!\n\n3. Kisima hicho safi cha damu ya Mwokozi\nKinatutia afya na nguvu ya kushinda.\nMfalme wetu, Yesu, tumhimidi tena!\nFuraha yetu yote ni kushukuru Mungu!''',
    numero: 3,
    auteur: 'J.C. Bateman, 1886',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_004',
    titre: 'USIKU KABLA YA KUTESWA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. USIKU kabla ya kuteswa, Yesu Alikusanya wanafunzi wake;\nAlifahamu kwamba saa yake Ya kutolewa ilikaribia.\n\n2. Kwa roho aliona Gethsemane,\nMateso yake na huzuni nyingi;\nZaidi alihofu saa ile,\nAta’poachwa hata naye Mungu.\n\n3. Alitamani saa ya Pasaka\nPamoja na wapendwa wake huku.\nKatika pendo lake kubwa sana\nAliyashinda majaribu yote.\n\n4. Akautwa’ mkate aka’mega,\n“Twaeni, mle, hu’ ni mwili wangu!”\nNa akawapa wanafunzi wake.\nWa heri kila mtu ’aminiye.\n\n5. Ba’daye akawapa na kikombe,\nNa akasema: “Nyweni nyote hiki!\nNi damu yangu inayomwangika\nKwa ondoleo la makosa yote.’’''',
    numero: 4,
    auteur: 'Jane Crewdson',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_005',
    titre: 'DHAHABU NA FEDHA HAZINIOKOI',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. DHAHABU na fedha haziniokoi,\nHazina na mali haziponyi roho,\nLakini kwa damu ya Yesu Mwokozi\nNimenunuliwa nipate uhuru.\n\nNakombolewa pasipo mali,\nKwa neema nimeokoka!\nNi bei ghali: kwa damu yake\nAlilipa deni langu.\n\n2. Dhahabu na fedha hazinilipii\nMadeni makubwa ninayo kwa Mungu.\nMwokozi alinikomboa kwa damu\nNipate wokovu nitoke dhambini.\n\n3. Dhahabu na fedha haziufungui\nMlango waku’karibia Mwokozi,\nLakini kwa damu nimeifikia\nNeema ya Mungu aliye mkuu.\n\n4. Dhahabu na fedha hazinifikishi\nNyumbani mwa Mungu niliyemwasia,\nLakini nimekombolewa kwa damu,\nKwa hiyo nitachukuliwa mbinguni.''',
    numero: 5,
    auteur: 'J.M. Gray, 1900',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_006',
    titre: 'TWA’SIFU MUNGU KWA AJILI YA DAMU',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. TWA'SIFU Mungu kwa ajili Ya damu takatifu,\nInayotosha kuondoa makosa yetu yote.\n\n2. Wakristo wanakusanyika Karibu ya kisima,\nHawapungukiwi kitu kamwe, Wakaa kwa Mwokozi.\n\n3. Tuimbe duniani pote juu ya pendo kubwa,\nKwa kuwa tumefunguliwa kisima cha Golgotha.\n\n4. Kisima hicho: Yesu Kristo;\nNa maji: damu yake.\nWasumbukao wastarehe,\nWaburudishwe hapa!\n\n5. Na wenye dhambi wanaitwa\nKwa wingi wa rehema,\nNa wakosaji na maskini\nWasaidiwa sana.\n\n6. Tumeipata tunu kubwa,\nNeema kwa neema.\nApokeaye fungu lake,\nNi mtu wa uheri.\n\n7. Haleluya! Tuna’himidi\nMwenyezi na Mwanawe\nna Roho ’takatifu pia.\nHaleluya! Amina.''',
    numero: 6,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_007',
    titre: 'MWOKOZI AMEUTIMIZA WOKOVU',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. MWOKOZI ameutimiza wokovu Kwa neema kubwa,\nNa juu ya mwamba wa Neno la Mungu Najenga imani.\n\nAliniokoa kabisa!\nKwa damu alinisafisha.\nNinamshukuru Mwokozi kwa sababu\nAlinikomboa hakika!\n\n2. Mzigo wa dhambi aliuondoa Kwa neema kubwa.\nNaona furaha rohoni kabisa, Amani ya Mungu.\n\n3. Naweza kukaa mweupe rohoni Kwa neema kubwa;\nNa Roho ya Mungu inaniongoza Njiani daima.\n\n4. Karibu na Yesu nalindwa salama Kwa neema kubwa.\nAhadi za Mungu zanipa furaha Iliyo kamili.''',
    numero: 7,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_008',
    titre: 'YESU KRISTO ASIFIWE',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. YESU Kristo asifiwe! Alizichukua dhambi,\nNe’ma inatoka kwake kati’ damu.\nUmeosha moyo wako,\nUmekuwa safi, huru,\nUmeondolewa dhambi kati’ damu?\n:/: Kati’ damu :/:\nUmeosha moyo wako, umekuwa safi, huru?\n:/: Kati’ damu :/:\nUmeondolewa dhambi kati’ damu?\n\n2. Ukilia, ukijuta,\nDhambi hazitoki kamwe;\nHaki kweli uta’pata kati damu.\nMambo yakusumbuayo\nYesu a’ondoa mara,\nUnapata ukombozi kati’ damu.\n\n3. Yesu atatuchukua\nArusini mwake huko.\nUmevikwa nguo safi kati’ damu?\nJe, wajenga ju’ ya mwamba,\nMoyo wako u mzima,\nUnashinda kila saa kati’ damu?\n\n4. Bwana Yesu asifiwe!\nAlitoa damu yake,\nNa kwa damu ya thamani tutashinda.\nAsubuhi kubwa ile\nVita itakapokwisha,\nTutaimba kwa furaha ju’ ya damu.''',
    numero: 8,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_009',
    titre: 'NAIAMINI DAMU YAKO',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. NAIAMINI damu yako\nNa msalaba wako, Yesu.\nMwokozi wangu wa pekee,\nNapata yote kwako.\nUliyoyaahidi\nNa’pata kwa imani.\nHuwezi kuniacha mimi;\nNapata yote kwako.\n\n2. Kwa damu nimetakasika,\nNa mto wa uzima wako\nWaniletea nguvu tele,\nNapata yote kwako.\n\n3. Nafungwa kwa upendo wako,\nNjiani uniongoza,\nNa katika hatari zote\nNapata nguvu kwako.\n\n4. Ninakupenda, Bwana Yesu,\nWanisikia niombapo,\nWanipa jibu la maombi,\nNapata yote kwako.''',
    numero: 9,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_010',
    titre: 'DAMU YAKO YENYE BARAKA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. DAMU yako yenye baraka\nInayotuosha makosa,\nIlitoka msalabani,\nBwana Yesu, ulipokufa.\nNastahili ’pata hukumu,\nNa siwezi mimi kujiosha.\nUnioshe katika damu,\nNipate kuwa safi kabisa!\n\nSafi, safi kweli,\nSafi, safi kweli!\nUnioshe katika damu,\nNipate kuwa safi kabisa!\n\n2. Yesu, ulivikwa miiba,\nKuangikwa juu ya mti.\nUlivumilia mateso, maumivu na majeraha.\nNinataka kijito hicho,\nN’ende na nikasafishwe sana!\nUnioshe katika damu,\nNipate kuwa safi kabisa!\n\n3. Baba, kweli nina makosa,\nMoyo wangu wa udhaifu;\nMimi mwenye dhambi rohoni\nNitaona wapi Mwokozi?\nYesu, kwako msalabani\nNaja, ninakuamini sasa.\nUnioshe katika damu,\nNipate kuwa safi kabisa!\n\n4. Bwana, nimefika karibu,\nUnilinde kwako milele!\nUfungue kila kikamba,\nUnijaze moyo mwenyewe!\nNa karibu ya msalaba\nNitakaa hata kufa kwangu.\nUnioshe katika damu,\nNipate kuwa safi kabisa!''',
    numero: 10,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_011',
    titre: 'IKIWA WANANIULIZA MSINGI WA UZIMA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. IKIWA wananiuliza Msingi wa uzima,\nJe, twahitaji kuongeza Kwa kazi yake Yesu?\nKwa uhodari nitajibu:\n“Msingi wangu ni wa nguvu,\nNi damu yake Yesu Kristo,\nInanitosha sana.”\n\n2. U mwamba wa zamani sana,\nDaima utadumu.\nNa hata siku nita’kufa,\nnitautegemea.\nNitakapoondoka huku,\nNitaimbia majeraha,\nNa damu ya Mwokozi wangu,\nFunguo la mbinguni.''',
    numero: 11,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_012',
    titre: 'KWA BADALA YANGU KWELI',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. KWA badala yangu kweli Yesu alitoa damu.\nMimi huru na ni heri, Bwana Yesu asifiwe!\nYesu alinikomboa, lakini Si kwa dhahabu na mali ya dunia;\nBali damu ya Mwokozi ni malipo Kwa ajili yangu, Haleluya!\n\n2. Tu’inue msalaba,\nHata wote wataona\nMwana wake Mungu, hapo\nAlitoa damu yake!\n\n3. Dia kubwa, Yesu Kristo!\nWingi sana wa upendo:\nYesu aliacha mbingu,\nAlitufilia sote.\n\n4. Sitaweza kufahamu\nBei ya wokovu wangu,\nBali ninajua sana:\nYesu alinikomboa.''',
    numero: 12,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_013',
    titre: 'NANI AWEZA KUNIWEKA HURU?',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. NANI aweza kuniweka huru?\nNi Yesu Mwokozi, Yesu Mwokozi!\nNguvu ’kushinda nipate kwa nani?\nKwa damu ya Yesu Mwokozi!\n\nKuna nguvu, nguvu ya ajabu kuu,\nKati’ damu ya Mwokozi!\nKuna nguvu, nguvu ya ajabu kuu,\nKati’ damu yake Yesu!\n\n2. Nitawezaje kuvunja tamaa?\nKwa damu ya Yesu, damu ya Yesu!\nNikaribie kisima cha ’hai,\nKisima cha damu ya Yesu!\n\n3. Nitawezaje kuoshwa moyoni?\nKwa damu ya Yesu, damu ya Yesu!\nNitakasike katika kisima,\nKisima cha damu ya Yesu!\n\n4. Nitawezaje kutenda vizuri?\nKwa nguvu ya Yesu, nguvu ya Yesu!\nNitawezaje kufika mbinguni?\nKwa nguvu ya damu ya Yesu!''',
    numero: 13,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_014',
    titre: 'MWOKOZI WANGU ULIKWENDA JUU',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. MWOKOZI wangu ulikwenda juu\nKukaa kuumeni kwake Baba;\nUtakusanya sisi sote huko,\nMbinguni kwako utatufikishsa.\n:/: Makao mema wa’tuandalia,\nUnatungoja kwake Mungu Baba. :/:\n\n2. Mwombezi wetu Wewe, Yesu Kristo,\nKwa ’jili yetu mbele yake Baba.\nWachunga sana sisi, kundi lako,\nNa watusaidia ’jaribuni.\n:/: Na sikuzote unatuombea,\nWatushindia vita kali huku. :/:\n\n3. Mikono yako uliwanyoshea\nWalio wako, siku uli’kwenda;\nNa hivyo siku utakaporudi\nUtabariki wakuaminio.\n:/: Ulivyokwenda, utakavyorudi;\nNiombe, nikakeshe kwa imani! :/:''',
    numero: 14,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_015',
    titre: 'MUNGU, MOTO WAKO UNIUTUMIE',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. MUNGU, moto wako uniutumie,\nNinangoja nguvu yako!\nNipe na uzima na upendo wako,\nUnijaze, E’ Mwokozi wangu!\n\n2. Teketeza yote usiyoyapenda,\nNisafishe kati’ damu!\nNa kiburi yangu uivunje tena,\nUnioshe, Yesu, niwe safi!\n\n3. Unilinde, Yesu, sikuasi tena,\nUnifunge kwa upendo!\nMimi ni dhaifu, unitunze kwako,\n’niongoze kwa mkono wako!\n\n4. Huko juu kwako tutaona raha,\nNa huzuni itakwisha.\nNyimbo za shukrani zitajaza mbingu:\nUtukuzwe, Yesu, Mkombozi!''',
    numero: 15,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_016',
    titre: 'YO YOTE UONAYO HUKU',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. YO yote uonayo huku\nKatika mwendo wako,\nYafaa ku’mwambia Yesu,\nAtakusaidia.\nKwa kuwa kila aombaye\nMwokozi neema yake,\nataokoka na hatia,\nna atasifu Yesu.\n\n2. Ukichukiwa na wenzako\nNa ukijaribiwa,\nMwokozi Yu karibu sana,\nMaombi asikia.\n\n3. Ukiwa mwana mpotevu,\nNa mbali na Babako,\nAmani una’kosa sasa,\nUrudi kwake Yesu!\n\n4. Ukiwa na makosa mengi,\nNa roho yako ngumu,\nNeema yake yakutosha,\nUtubu dhambi zako!\n\n5. Ikiwa nguvu mara nyingi\nKuomba kwa bidii,\nUombe Baba, kama mwana,\nAkusikia kweli!''',
    numero: 16,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_017',
    titre: 'UKAE NAMI, GIZA INAFIKA!',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. UKAE nami, giza inafika!\nUsiniache, Mungu nakuomba!\nUnayejua udhaifu wangu,\nNategemea Wewe, ’kae nami!\n\n2. Maisha yangu ni mafupi sana,\nUzuri wa dunia utakwisha.\nKuna machozi, kufa huku chini,\nWewe Mwokozi wangu, ’kae nami!\n\n3. Nakuitaji Wewe sikuzote,\nUnayeweza sana kunilinda.\nWewe shujaa wa kushinda wote,\nKatika hali zote ’kae nami!\n\n4. Unionyeshe msalaba wako,\nNione nuru yako kati’ giza!\nNa nikiishi au nitakufa,\nWewe, Mwokozi wangu, ’kae nami!''',
    numero: 17,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_018',
    titre: 'MUNGU WETU YU KARIBU',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. MUNGU wetu Yu karibu\nKututia nguvu yake.\nMbingu ina maghubari,\nTuletee mvua sasa!\nTusikie, Mungu wetu,\nTubariki saa hii!\nTunangoja, tunangoja,\nTuonyeshe nguvu yako!\n\n2. Mungu wetu Yu karibu,\nHapa ni Patakatifu,\nSisi sote tunangoja\nKujalizwa naye Mungu.\n\n3. Mungu wetu Yu karibu,\nKwa imani tunaomba:\n“Tuwashie moto safi\nNdani ya mioyo yetu!”\n\n4. Mungu, ufungue mbingu,\nTwalilia nguvu yako!\nTubariki saa hii\nKwa rehema yako kuu!''',
    numero: 18,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_019',
    titre: 'MUNGU, TUNANGOJA WOTE',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. MUNGU, tunangoja wote\nRoho yako ’takatifu,\nTunaomba kwa imani:\n“Umtume hapa kwetu!”\n\nMungu wetu, Mungu wetu,\nUmimine Roho yako!\nMioyoni mwetu, Bwana,\nUtimize kazi yako!\n\n2. Washa moto wako tena\nNdani ya mioyo yetu,\nHata vyote vya majani\nVitateketea sana!\n\n3. Utakase roho zetu,\nNa kiburi uivunje!\nWewe U Mfalme wetu,\nUtawale watu wako!\n\n4. Utujaze sikuzote\nPendo lako kubwa, Mungu!\nSisi tuwe nyumba yake\nRoho ya utakatifu!\n\n5. Na karama zake Roho\nUtuzigawie, Bwana!\nNa wagonjwa uwaponye,\nWote wakuone, Mungu!''',
    numero: 19,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_020',
    titre: 'BWANA YESU, UNIONGOZE',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. BWANA Yesu, uniongoze\nBaharini huku chini,\nJuu ya mawimbi mengi,\nKatika dhoruba kali!\nBwana Yesu, uniongoze,\nNakutegemea Wewe!\n\n2. Bwana Yesu, uniongoze,\nUtulize moyo wangu!\nNeno moja toka kwako,\nMara shwari baharini.\nBwana Yesu, uniongoze,\nNipe utulivu wako!\n\n3. Bwana Yesu, uniongoze,\nNiyashinde majaribu!\nMengi ya kunidanganya,\nMengi ya kufunga macho!\nBwana Yesu, uniongoze,\nNiwe mshindaji kweli!\n\n4. Bwana Yesu, uniongoze,\nSiku nita’vuka ng’ambo!\nNikiona woga, giza,\nNipe nuru na amani!\nBwana Yesu, uniongoze,\nUwe nami hata mwisho!''',
    numero: 20,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_021',
    titre: 'JUU YA MBINGU ZOTE',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. JUU ya mbingu zote,\nNyota na jua pia,\nHapo yafika kweli\nMaombi ya mwenye dua.\nRoho ya mwanadamu\nYamfikia Mungu,\nHuko yabisha lango\nNa kumtafuta Baba.\n\n2. Roho haitaona\nRaha, amani huku;\nKuna bandari njema\nMbinguni kwa Mungu Baba.\nMoyo utatulia,\nNuru itatokea\nTukifuata njia ya\nsala na maabudu.\n\n3. Hata motto ’dogo\nMwenye kuomba Mungu,\nHana la kuogopa;\nKuomba kwafaa sana.\nTusisahau tena,\nPote twendapo huku\nKwamba maombi yetu\nYafika kwa Mungu Baba.''',
    numero: 21,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_022',
    titre: 'YESU KRISTO, BWANA WANGU',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. YESU Kristo, Bwana wangu,\nUna amri na uwezo\nZa kuziondoa dhambi,\nNa ’takasa roho yangu.\n’nitolee masamaha,\n’niokoe na jaribu,\nUnilinde hata mwisho,\nUnitwae kwako juu!\n\n2. Mbele nilikuwa mwovu,\nNilikukataa, Yesu,\nKwa hakika sikujua\nWewe na upendo wako.\n\n3. Bwana Yesu, usamehe\nDhambi nilizozifanya!\n’siitike majaribu,\nNguvu yako inilinde!\n\n4. Tangu sasa Wewe, Yesu,\nU Mwokozi na Rafiki,\nNimetengwa na Shetani,\nNiwe wako sikuzote.''',
    numero: 22,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_023',
    titre: 'NIKITAZAMA KWA IMANI',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. Nikitazama kwa imani\nMwokozi wangu, Yesu,\nNawaka kwa upendo wake,\nNa ninavutwa kwake;\nNaona majeraha yake,\nMikono na ubavu wake,\nNa humo najificha sana,\nMoyoni mwa upendo.\n\n2. Imanueli upendwaye,\nNilinde sikuzote,\nMpaka nihamie kwako\nMbinguni mwa uheri!\nMilele na milele huko\nHapana la kunizuia\nNisimsifu Bwana Yesu\nKwa damu na ’jeraha.''',
    numero: 23,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_024',
    titre: 'E’ MUNGU MWENYE KWELI',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. E' MUNGU mwenye kweli, nakuamini sana,\nManeno yako yote milele yatadumu.\n“Niite kati’ shida, nitakusaidia.”\nNategemea, Bwana, ahadi yako hiyo.\n\n2. Na katika uchungu ni heri kuamini,\nNaweka roho yangu kulindwa nawe, Baba,\nUliyenifundisha kuita jina lako\nNaona tumaini na tegemeo kwako!\n\n3. Ninavyoomba kweli, najua wasikia.\nYaliyo mema kwangu, najua wayafanya.\nKatika shida kali waweza kunilinda;\nWanichukua mimi na masumbuko yangu.''',
    numero: 24,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_025',
    titre: 'MVUA YA MBINGU UNYESHE',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. MVUA ya mbingu unyeshe,\nKama ulivyoahidi!\nJuu ya dunia yote\nInye kutubarikia!\n\nMvua ya mbingu,\nMvua ya mbingu utume!\nUtunyeshee neema,\nTunakuomba, E’ Mungu!\n\n2. Mvua ya mbingu unyeshe,\nItuamshe na sisi!\nJu’ ya vilima na bonde\nMvua ya mbingu ifike!\n\n3. Mvua ya mbingu unyeshe\nKatika dunia yote!\nWatu wa Mungu wapone,\nMbegu za roho ziote!\n\n4. Mvua ya mbingu unyeshe,\nTunapokuelekea!\nUtujalie baraka\nTunakuomba, E’ Mungu!''',
    numero: 25,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_026',
    titre: 'NAKUHITAJI, YESU',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. NAKUHITAJI, Yesu,\nMwokozi wangu mwema,\nSauti yako nzuri\nIniletee raha!\nNakuhitaji, Yesu,\nUsiku na mchana!\nKatika sala yangu\nUnibariki sasa!\n\n2. Nakuhitaji, Yesu,\nUnionyeshe njia!\nNa unitimizie\nAhadi za neema!\n\n3. Nakuhitaji, Yesu,\nUwe karibu nami,\nNipate kulishinda\nJaribu la Shetani!\n\n4. Nakuhitaji, Yesu,\nKatika mambo yote,\nKwa kuwa bila Wewe\nMaisha hayafai.\n\n5. Nakuhitaji, Yesu,\nNjiani huku chini,\nNipate kuwa kwako\nMilele na milele!''',
    numero: 26,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_027',
    titre: 'UNA UHODARI LEO WA KUMFUATA YESU',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. UNA uhodari leo\nWa kumfuata Yesu,\nHata ukichekwa sana\nNa kuteswa duniani?\n\n2. Una uhodari leo\nKuwa mtu wake Mungu?\nUkiona haya sana,\nKisha utaona nini?\n\n3. Mji unaonekana\nUkijengwa mlimani,\nHivyo na imani yetu\nInadhihirika sana.\n\n4. Ukipenda Yesu sana\nNa kuliko vitu vyote,\nUnataka kumkiri,\nMbele ya wenzako huku.\n\n5. Chuki au ’pendeleo\nKwako kitu bure tena,\nWatafuta siku zote\nSifa zake Yesu Kristo.\n\n6. Ujihoji nafsi yako\nUkitaka kuokoka!\nUliyekataa Mungu,\nTubu dhambi zako leo!\n\n7. Umsihi masamaha,\nAkuoshe kati’ damu!\nOmba uhodari tena\nWa kumfuata Yesu!\n\n8. Uchague Yesu leo,\nUwe mfuasi wake!\nUkitwaa msalaba\nUtaipokea taji!''',
    numero: 27,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_028',
    titre: 'NINATAKA KUFUATA YESU',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. NINATAKA kufuata Wewe, Yesu, sikuzote,\n’kiwa katika furaha\nAu shida na udhia.\nUnaponitangulia\nNinakuja nyuma mbio.\nNinajua ni karibu\nKuwasili huko kwako.\n\n2. Haifai niulize:\nBwana, unakwenda wapi?\nAu kwa kusitasita\nKuishika njia yako.\nKweli, hapa kazi moja:\nKufuata Wewe mbio,\nKwenda njia ile moja\nWewe unionyeshayo.\n\n3. Walakini kama kitu\nKinataka kunifunga,\nAu kuwa mgogoro\nKatika safari yangu,\n’kate kamba mara moja\nIfungayo roho yangu!\nNinataka kuwa huru\nKukutumikia vema.\n\n4. Bwana Yesu, unilinde,\nUhifadhi nia yangu!\nNikichoka kwa safari,\nNong’oneza kwa upendo:\n‘‘Mwana, u mtoto wangu,\nUniandamie punde,\nUtapumzika sana\nTena kwangu huko juu.’’''',
    numero: 28,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_029',
    titre: 'UNIVUTE, YESU, NIFUATE NYAYO ZAKO',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. UNIVUTE, Yesu, nifuate nyayo zako,\n’kiwa kwa rafiki au katika wageni,\nNa mahali pa furaha au sikitiko;\nSina budi kumkaribia Yesu.\n\nNimfuate, nimkaribie,\nSiku zote na po pote nimwandame Yesu!\nNimfuate, nimkaribie,\nYesu mbele, mimi nyuma, hata mwisho!\n\n2. Juu ya milima nitasikilia Yesu,\nHata mabondeni nitaandamana naye.\nJua, giza, afya, ’gonjwa, utulivu, vita,\nKati’ hayo yote Yesu Yu karibu.\n\n3. Nikiteka maji, au nikilima shamba,\nNikika’ nyumbani au ’kiwa safarini,\nHata huko soko neno moja ni halisi:\nSina budi kumkaribia Yesu.''',
    numero: 29,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_030',
    titre: 'TARUMBETA LAKE KRISTO LITALIA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. TARUMBETA lake Kristo linalia pande zote,\nNa wakristo wote wanajipangia ’piga vita\nJu’ ya mahodari wa Shetani.\nKweli tutashinda,\nKwani Yesu Yupo mbele.\n\nTwende, Yesu a’tuita,\nTwende na wakristo wote!\nTwende, tujivumilishe,\nYesu Yupo mbele yetu!\n\n2. Neno la Akida wetu lipo: ‘‘Mniandamie!’’\nNaye anatangulia, tunakuja wote mbio.\nKwa silaha zake Mungu kila mtu atashinda,\nKwani Yesu Yupo mbele.\n\n3. Na tukiwa mbali ya Akida wetu tutashindwa,\nTutafungwa na adui na pengine kupotea.\nWalakini kule mbele watu wote watashinda,\nKwani Yesu yupo mbele.\n\n4. Tarumbeta litalia tena, vita itakwisha,\nNa askari wote watapata raha na matunzo.\nWatapumzika na milele watashangilia,\nKwani Yesu yupo mbele.''',
    numero: 30,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_031',
    titre: 'KATIKA SAFARI YETU',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. KATIKA safari yetu\nKwenda huko juu\nTusilale usingizi,\nTuwe na bidii!\n\nKaza mwendo, tusifungwe,\nTwende mbio tu!\nYesu Kristo ni Mwokozi\nNa Mfalme ’kuu!\n\n2. Bwana Yesu anatupa\nMaji ya uzima,\nMaji hai ya milele\nYa kuburudisha.\n\n3. Njia na miiba mingi\nInatuumiza,\nHofu na hatari nyingi\nZinafadhaisha.\n\n4. Mungu wetu atungoja\nHuko kwake juu,\nYesu ni Mwokozi wetu,\nTufuate Yeye!''',
    numero: 31,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_032',
    titre: 'HAPO NILIKUWA CHINI',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. HAPO nilikuwa chini\nKatika dhambi nyingi,\nRoho yangu iliona\nKufa na giza tele.\nMungu alikisikia\nKilio changu huko,\nNaye akanipandisha,\nKuniponya.\n\n:/: Nimeokoka, nimeokoka!\nYesu Mwokozi wangu\nAliniokoa :/:\n\n2. Sasa Yesu amekuwa\nMakimbilio yangu,\nNa upendo wake ’kubwa\nUko moyoni mwangu.\nNe’ma yake kubwa sana\nInajaliza roho,\nNiwe mwaminifu kwake\nSiku zote!\n\n3. Ewe, mwenye sikitiko,\nKuna matumaini:\nYesu anakufahamu,\nAtakusaidia.\nAtakupandisha toka\nTope la kuteleza,\nUpokee ne’ma yake\nKwa wokovu!''',
    numero: 32,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_033',
    titre: 'HURU KAMA NDEGE BUSTANINI',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. HURU kama ndege bustanini,\nSasa nafurahi kwa sababu\nYesu ni Rafiki yangu ’kubwa;\nNina amani siku zote.\n\n2. Aliniokoa na mashaka,\nAlinipa tunu ya rehema.\nMimi ni mtoto wa Babangu,\nNa nuru inang’aa sana.\n\n3. Ninataka ku’shukuru Bwana,\nAlitupa dhambi zangu mbali,\nNa sitaziona tena kamwe,\nHazitanitawala tena.\n\n4. Jua likifichwa kwa mawingu,\nKiti cha rehema ni karibu,\nHapo ndipo shida ziishapo,\nNa roho yangu yatulia.\n\n5. Radhi kama mwana kwa babake,\nKwa salama kama bandarini\nNinapumzika kwa Mwokozi,\nMbali na shida na huzuni.\n\n6. Yesu Yu karibu sikuzote,\nAchukua mimi na mzigo.\nNapokea kwa mkono wake\nNeema na mateso pia.\n\n7. Nilimpa Yesu moyo wangu,\nNinapenda kumtumikia;\nNeno lake linapendwa nami,\nNa nira yake ni laini.\n\n8. Nafurahi sana kanisani\nKati ya watoto wa Babangu,\nRoho ya neema ni karibu,\nKunanifurahisha sana.\n\n9. Mimi ni mdogo duniani,\nTena msafiri na mgeni.\nKwetu ni mbinguni huko juu;\nBabangu ananiongoza.\n\n10. Saa za mashaka zitakwisha,\nKuja kwake Yesu ni karibu.\nNitaona raha kubwa sana\nKatika nyumba ya babangu.''',
    numero: 33,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_034',
    titre: 'KWA PENDO LAKE KUBWA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. KWA pendo lake kubwa\nAlitafuta mimi,\nNa alinichukua\nBegani mazizini.\nNa nyimbo zao malaika\nZikajaliza mbingu pia.\n\nAlinitafuta, akaniokoa,\nAkaniondoa matopeni,\nAkanichukua mazizini.\n\n2. Mchunga mwema Yesu\nAliniponya roho,\nNa akaniambia:\n‘‘Mtoto upendwaye.’’\nSauti yake ya upendo\nikanifarijia moyo.\n\n3. Ninakumbuka jinsi\nAlivyotoka damu,\nNa taji ya miiba,\nMateso na mauti.\nNa penye msalaba wake\nNinashukuru Bwana Yesu.\n\n4. Namfuata Yeye\nKatika nuru yake,\nWaridi za ahadi\nZapamba njia yangu.\nMilele nitaendelea\nKusifu Yesu kwa furaha.\n\n5. Na saa zinapita,\nNangoja asubuhi\nUtakaponiita,\nniende kwako juu.\nNitasimama kwa amani\nMbinguni mbele yako, Yesu.''',
    numero: 34,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_035',
    titre: 'NIMEFIKA KWAKE YESU',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. NIMEFIKA kwake Yesu,\nNa rohoni mwangu sasa\nJua lake la neema\nLinang’aa kila siku.\nRoho yangu inaimba,\nNimefunguliwa kweli.\nNimekaribia Yesu,\nNinaimba kwa furaha.\n\n2. Pepo za neema yake\nZinavuma ndani yangu,\nNa mawimbi ya wokovu\nYananijaliza sasa.\n\n3. Sasa Bwana Yesu Kristo\nAmefanya kao kwangu.\nNimepewa Mfariji,\nRoho ya ahadi yake.\n\n4. “Siku Roho afikapo\nMtajua kwa hakika\nKwamba ninakaa kwenu”,\nHivyo Yesu alisema.\n\n5. Kweli, amefika kwetu,\nSasa yumo ndani yetu.\nUjitoe kwake Mungu,\nAioshe roho yako!\n\n6. Yesu atakapokuja\nKatita utakatifu,\nNitafananishwa naye,\nNitamshukuru sana.\nZitakuwa nyimbo nyingi\nTuta’poingia mbingu,\nNa milele tutaimba\nNa kusifu Mungu wetu.''',
    numero: 35,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_036',
    titre: 'YESU AMENIOKOA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. YESU ameniokoa,\nAmenipa utulivu.\nKwake ninaona raha,\nNinataka kumsifu.\n\nHaleluya, Haleluya!\nNimefika bandarini.\nHaleluya, Haleluya!\nJina lake ni mnara.\n\n2. Kwa furaha ninaimba\nWimbo mpya wa wokovu.\nNisichoke kamwe hapa\nKumwimbia Mkombozi!\n\n3. Ni habari za neema\nZa kupasha pande zote.\nMhubiri, enda mbio\nKufikia nchi zote!\n\n4. Yesu, siku nita’kufa\nNa maisha ni tayari,\n’nichukue kwako juu\nPenye raha ya milele!''',
    numero: 36,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_037',
    titre: 'BWANA YESU ALINIOKOA KWELI',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. Bwana Yesu aliniokoa kweli,\nNinataka kufuata Yeye sasa.\nKila siku nimtumikie vema,\nYeye anipaye yote kwa neema!\n\nNafuata njia nzuri\nYa Mfalme Yesu Kristo,\nNa katika njia hiyo\nMwendo ni pamoja naye.\n\n2. Sitaifuata njia mbaya tena,\nNimewekwa huru kweli naye Yesu.\nKumtumikia ni furaha yangu,\nAnanishibisha kwa fadhili zake.\n\n3. Huko mbele ninaona mji mwema,\nNimeacha njia ndefu nyuma yangu.\nNuru ya Babangu yaniangazia,\nNitembee kwa salama siku zote.''',
    numero: 37,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_038',
    titre: 'NILIKWENDA MBALI SANA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. NILIKWENDA mbali sana,\n’kufuata njia mbaya,\nNikamsahau Yesu\nAnayenipenda sana.\nNina raha na furaha,\nYesu alinitafuta,\nAkaniokoa kweli,\nMimi wake siku zote.\n\n2. Na sikufikiri siku\nNitakapodhihirishwa\nMbele ya Mwenyezi Mungu,\nNa kuhukumiwa naye.\n\n3. Dhambi zilinichokeza,\nNikageukia Mungu,\nAkasema neno zuri\nLa amani na faraja.''',
    numero: 38,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_039',
    titre: 'YESU AMEINGIA KATIKA ROHO YANGU',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. YESU ameingia katika roho yangu,\nAmenifungulia kamba za dhambi zangu.\nTena amenijaza Roho Mtakatifu.\nNinamsifu sasa kwa wimbo mpya.\n\nYesu ni yote kwangu,\nYote na’pata kwake.\nAmeondoa dhambi,\nAmetakasa mimi.\nShangwe rohoni mwangu\nNi kama maji mengi,\nNamshukuru sana\nMwokozi wangu.\n\n2. Siku si ndefu tena, kazi si ngumu sasa,\nNjia yanipendeza, ’kiwa nyembamba sana.\nKatika hali zote ninamwimbia Yesu,\nYeye Mfalme wangu, ninamsifu!\n\n3. Katika mwendo wangu ninazidishwa shangwe,\nHata wakinicheka, mwovu akijaribu.\nHima Mwokozi wangu atanyakua mimi\nToka machoni pao. Haleluya!''',
    numero: 39,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_040',
    titre: 'AMENIWEKA HURU KWELI',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. AMENIWEKA huru kweli,\nNaimba sasa: Haleluya!\nKwa msalaba nimepata\nKutoka katika utumwa.\nNimeokoka, nafurahi!\nNa dhambi zangu zimetoka.\nNataka kumtumikia\nMwokozi wangu siku zote.\n\n2. Zamani nilifungwa sana\nKwa minyororo ya Shetani,\nNikamwendea Bwana Yesu,\nAkaniweka huru kweli.\n\n3. Neema kubwa! Nilipata\nKuacha njia ya mauti,\nNa nguvu ya wokovu huo\nYanichukua siku zote.\n\n4. Na siku moja nitafika\nMbinguni kwake Mungu wangu.\nMilele nitamhimidi\nNa kumwimbia kwa shukrani.''',
    numero: 40,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_041',
    titre: 'SIKU NYINGI NILIFANYA DHAMBI',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. SIKU nyingi nilifanya dhambi,\nSikujua Neno la Mwokozi,\nSikujua maumivu yake\nKwa ’jili yangu.\nBwana Yesu alinirehemu,\nDhambi zangu alizichukua.\nNamsifu Yesu kwa ajili ya msalaba.\n\n2. Niliposikia Neno lake,\nMoyo wangu ukalia sana.\nNikaona maumivu yake\nKwa ’jili yangu.\n\n3. Bwana Yesu ni Mwokozi wangu,\nJua na Mfalme na Uzima.\nNinamhibidi kwa ajili ya msalaba.''',
    numero: 41,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_042',
    titre: 'BWANA YESU AMEVUNJA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. BWANA Yesu amevunja\nMinyororo ya maovu,\nNimewekwa huru kweli\nMbali na makosa yangu.\n\nHaleluya, Haleluya!\nYesu Kristo ni Mwokozi!\nHaleluya, Haleluya!\nYesu alinikomboa.\n\n2. Nilipoungama dhambi,\nNikawekwa huru kweli.\nMoyo wangu unawaka\nKwa upendo ’takatifu.\n\n3. Kamba zilizonifunga\nZimetoka, nafurahi.\nDhambi zilizo ’sumbua\nZimetupwa mbali sana.\n\n4. Ninataka kuhubiri:\n“Nimewekwa huru kweli!”\nNipeleke kwa furaha\nNeno zuri la Mwokozi.''',
    numero: 42,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_043',
    titre: 'JUU YA MWAMBA UMEJENGA KANISA LAKO',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. JUU ya mwamba umejenga\nKanisa lako duniani,\nUmeliweka huru kweli\nKatika damu yako, Yesu.\n\nJuu ya mwamba, juu ya mwamba\nHuru na safi umelijenga.\nJuu ya mwamba, juu ya mwamba,\nHuru na safi tusimame!\n\n2. Neema kubwa! Nimepata\nSehemu yangu kanisani.\nVita ya roho imekwisha,\nUmenijaza utulivu.\n\n3. Kati’ hekalu lake Mungu\nNimefanyika jiwe hai.\nNinashiriki mwili wake\nKama kiungo chake Kristo.\n\n4. Ju’ ya msingi huo safi\nLiwe kanisa lako zima!\nVyote vikiondoka huku,\nLitasimama, litashinda.''',
    numero: 43,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_044',
    titre: 'TU WATU HURU, HURU KWELI',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. TU watu huru, huru kweli\nKatika Yesu Kristo.\nTunahubiri Neno lake\nKwa moto ’takatifu.\nTuendelee mbele, mbele,\nTukashinde majaribu!\nTwapiga vita ya imani,\nTuvumilie yote!\n\n2. Tu jeshi kubwa la askari,\nTu safi kati’ damu.\nMfalme wetu, Yesu Kristo,\nNi Kiongozi wetu.\nKwa nguvu yake kubwa mno\nTutadumu hata kufa.\nTuendelee mbele, mbele,\nTumshukuru Mungu.\n\n3. Kwa Yesu tuna uhodari\nNa mamlaka kubwa,\nMaana tunayaamini\nManeno yake yote.\nKisima wazi, cha ajabu,\nKinatoka msalaba,\nTuliyakunywa maji yake,\nNi maji ya uzima.\n\n4. Mbinguni, nchi ya asili,\nYa haki na amani,\nTuta’pofika huko juu\nTutamwimbia Yesu.\nNa kila chozi litafutwa\nNa mkono wa Mwokozi.\nKwa shangwe kubwa tutarithi\nUfalme wa ahadi.''',
    numero: 44,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_045',
    titre: 'WAISRAELI WALIKA’BABELI UTUMWANI',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. WAISRAELI walika’ Babeli utumwani,\nWakawa na huzuni tu\nKwa ’jili ya Sayuni.\nHapo amri ilifika\nWaliweza kuondoka,\nShangwe gani mioyoni mwao!\nWalitwa’ vinubi vyote,\nKwa kuimba wakaenda\nHata rithi na nchi yao.\n\n2. Wakati wa utumwa hu’\nVinubi ha’kupigwa,\nNa walikaa kimya tu\nMahali pa ugeni.\n\n3. Walipotoka Babeli,\nIkawa kama ndoto;\nFuraha nyingi rohoni,\nFaraja na uheri.\n\n4. “E’ Mungu amefanyaje?”\nWa’nena mataifa,\n‘‘Utumwa wanatoka na\nWawekwa huru tena!”\n\n5. Katika ulimwengu hu’\nNi wengi wafungwao.\nUhuru ni kwa Yesu tu\nKwa kila ’aminiye.\nNdiye ameleta amri:\nTunaweza kuokoka,\nShangwe ku’kwa kila ’aminiye!\nNjoo sasa, twa’ kinubi,\nTufuate kwa kuimba\nHata rithi nchi yetu!''',
    numero: 45,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_046',
    titre: 'HAIFAI KUYASUMBUKIYA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. HAIFAI kuyasumbukia\nMambo yatakayokuwa kesho.\nBaba yangu anajua yote,\nNi vizuri nikumbuke hivyo.\nYeye mwenye moyo wa upendo\nAnanipa yafaayo kweli,\nKama sikitiko au shangwe,\nNa amani yake kila siku.\n\n2. Sikuzote Yu karibu nami,\nNa neema anapima sawa.\nAchukua masumbuko yote,\nYeye aitwaye Mungu Baba.\nKunitunza hivyo kila siku,\nMambo hayo ame’tadariki.\n“Kama siku, kadhalika nguvu!”\nNi ahadi niliyoipewa.\n\n3. Mungu, unisaidie tena\n’kaa kimya kwako siku zote!\nNiamini sana Neno lako,\n’sipoteze bure nguvu yako!\nNa katika mambo yote huku\nNipokee kwa mikono yako\nNguvu na neema ya kutosha,\nHata nitakapofika kwako!''',
    numero: 46,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_047',
    titre: 'NIKIONA UDHAIFU NA IMANI HABA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. NIKIONA udhaifu na imani haba,\nNikijaribiwa sana,\nYesu anilinda.\nAnilinda vema,\nAnilinda vema,\nKwani Yesu anipenda,\nAnilinda vema.\n\n2. Peke yangu sitaweza kuambata Yeye,\nPendo langu ni dhaifu;\nYesu anilinda.\n\n3. Mimi mali yake sasa, alinikomboa,\nAlitoa damu yake;\nYesu anilinda.\n\n4. Haniachi kupotea, anilinda sana.\nKila ’mwaminiye kweli,\nYesu amlinda.''',
    numero: 47,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_048',
    titre: 'SIWEZI MIMI KUFAHAMU SANA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. SIWEZI mimi kufahamu sana\nNeema yake Mungu kwangu,\nZamani nilikuwa mkosaji,\nLakini alinisamehe.\n\nBali namjua Mungu,\nAnayeweza kunilindia\nUrithi wangu juu\nHata siku yake Yesu.\n\n2. Siwezi mimi kufahamu sana\nUpendo wake ’kubwa mno;\nNimeamini Neno lake kweli,\nNa ninaona raha tele.\n\n3. Siwezi kufahamu kazi kubwa\nYa Roho yake ndani yetu,\nAnayeweza kufundisha mtu\nKutegemea Yesu Kristo.\n\n4. Sijui mimi siku zangu tena\nZa kutembea duniani.\nNa labda nitaona shida huku,\nTaabu na huzuni nyingi.\n\n5. Sijui mimi kama siku moja\nNitakuona kufa huku,\nAu kwa hima nitabadilika,\nAjapo Bwana na mawingu.''',
    numero: 48,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_049',
    titre: 'NJIA YOTE NAONGOZWA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. NJIA yote naongozwa\nKwa mkono wa Mwokozi,\nNionapo wema wake,\nSina shaka, hofu tena.\nNina raha ya mbinguni,\nNinakaa kwa salama.\n:/: Na katika mambo yote\nAnanitendea mema. :/:\n\n2. Njia yote naongozwa,\nNamtegemea Yesu.\nAnilinda jaribuni,\nAnitia nguvu pia.\nNikiona kiu hapa,\nNikichoka safarini,\n:/: Mwamba uliopasuka\nUnabubujika maji. :/:\n\n3. Njia yote naongozwa\nKwa upendo wake bora,\nAtanituliza tena\nKwa babake huko juu.\nMiguuni pake Yesu\nNinataka kusujudu,\n:/: Nakusifu Yeye, kwani\nAliniongoza huku. :/:''',
    numero: 49,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_050',
    titre: 'SITASUMBUKA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. SITASUMBUKA kwa kuwa Mungu\nAnanitunza daima,\nAnachukua mizigo yangu\nNyakati zote za mwendo.\nSijaiona nyingine siku,\nNa jana imetoweka,\nNa leo Mungu anazijua\nHitaji zote ninazo.\n\n2. Sitasumbuka kwa kuwa Mungu\nNi Baba yangu kabisa.\nHawezi kunisahau mimi\nIngawa akijificha.\n\n3. Sitasumbuka kwa kuwa Mungu\nAnishibisha neema,\nAnipa yote yanifaayo\nKwa roho yangu na mwili.\n\n4. Maua yote anayavika,\nNa ndege wote wa anga\nWanapokea chakula chao\nPasipo shamba na ghala.\n\n5. Ninafurahi katika Bwana,\nNa kama ndege naimba.\nNajua kwamba nyakati zote\nBabangu ananitunza.''',
    numero: 50,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_051',
    titre: 'NAONA AMANI GOLGOTHA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. NAONA amani Golgotha\nAlipojitoa Mwokozi,\n:/: Na huko nina kimbilio\nKwa Yesu aliyenipenda. :/:\n\n2. Sitaki ’tamani fahari\nNa dhambi katika dunia,\n:/: Sababu wokovu ninao\nKatika ’jeraha ya Yesu. :/:\n\n3. Aliziondoa kabisa\nMizigo na kamba ya dhambi.\n:/: Na niliokoka halisi\nKwa Neno la Mungu wa ’hai. :/:\n\n4. Maneno ya Mungu ni kwetu\nChakula na dawa ya roho,\n:/: Na nguvu ya kusaidia\nMkristo katika safari. :/:\n\n5. Ni sasa hekalu la Roho,\nAnayemiliki moyoni;\n:/: Na Yesu ananiongoza\nKwa njia ya ahadi zake. :/:\n\n6. Uliye dhambini ufike\nKwa Yesu Mwokozi wa wote!\n:/: Anakunyoshea mikono\nYa pendo kukusaidia. :/:''',
    numero: 51,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_052',
    titre: 'KWA SALAMA BABA MUNGU AWALINDA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. KWA salama Baba Mungu\nAwalinda watu wake,\nHata nyota za mbinguni\nSi salama kama wao.\n\n2. Mungu awalinda hivyo\nKatika upendo wake.\nWanakumbatiwa naye,\nWanarehemiwa sana.\n\n3. Hawavutwi toka kwake\nKwa furaha wala shida.\nYeye ni rafiki ’kubwa\nWa walio watu wake.\n\n4. Wanalishwa, wanavikwa,\nWanafarijiwa naye.\nHata nywele za kichwani\nZimehesabiwa zote.\n\n5. Enyi kundi lake dogo,\nMungu atawakingiza!\nNa adui watashindwa\nKwa uwezo wake ’kubwa.\n\n6. Akitoa, akiwapa,\nBaba yetu hageuki.\nNa mapenzi yake ndiyo:\nWana wapatishwe wema.''',
    numero: 52,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_053',
    titre: 'KATI’ MIKONO YAKE YESU',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. KATI’ mikono yake\nYesu ananilinda.\nKatika pendo kubwa\nNinapumzika sana.\nSasa sauti nzuri\nItokeayo juu\nInanikumbukia mbingu\nna raha yake.\n\nKati’ mikono yake\nYesu ananilinda.\nKatika pendo kubwa\nninapumzika sana.\n\n2. Kati’ mikono yake\nNitakaa daima,\nSitatetema tena,\nYeye ni uwezo wangu.\nShaka sinayo sasa,\nWala sioni woga,\nHata ikiwa shida,\nYesu anifariji.\n\n3. Yesu Mwokozi wangu\nAlikomboa mimi.\nUfa wa mwamba ule,\nNitapumzika humo.\nKatika saa ngumu\nYa majaribu tele\nNinasaburi ’ona\nJua la asubuhi.''',
    numero: 53,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_054',
    titre: 'USIOGOPE MATESO YAKO',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. USIOGOPE mateso yako,\nMungu anakulinda,\nBali tazama mapenzi yake,\nMungu anakulinda!\n\nMungu anakulinda\nSiku kwa siku njiani mwake.\nAnakulinda salama,\nMungu anakulinda.\n\n2. Ukichukuwa mizigo ’zito,\nMungu anakulinda,\nKati’ hatari za njia yako\nMungu anakulinda.\n\n3. Anakumbuka hitaji zako,\nMungu anakulinda.\nUtashiriki ujazi wake,\nMungu anakulinda.\n\n4. Katika njia ya migogoro\nMungu anakulinda.\nMfunulie fadhaa zako,\nMungu anakulinda.''',
    numero: 54,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_055',
    titre: 'TUPATE KWA NANI FARAJA YA ROHO?',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. TUPATE kwa nani faraja ya roho?\nKwa Yesu, kwa Bwana Yesu.\nU wapi msingi wa kutegemea?\nKwa Yesu, kwa Bwana Yesu.\n\nKwa Yesu, kwa Yesu\nNinashangilia kwa roho na moyo.\nUheri wa huko haufasiriwi,\nMoyoni wafahamiwa.\n\n2. Na maji mazima yapatwa kwa nani?\nKwa Yesu, kwa Bwana Yesu.\nNa wapi twapata mikate nyikani?\nKwa Yesu, kwa Bwana Yesu.\n\n3. Mahali tutapostarehe ni wapi?\nKwa Yesu, kwa Bwana Yesu.\nNa nguvu ya kuendelea ni wapi?\nKwa Yesu, kwa Bwana Yesu.\n\n4. Ni nani anayebatiza kwa Roho?\nNi Yesu, ni Bwana Yesu.\nUpendo wa ndugu watoka kwa nani?\nKwa Yesu, kwa Bwana Yesu.\n\n5. Wakristo watakusanyika kwa nani?\nKwa Yesu, kwake mbinguni.\nKwa nini watashangilia milele?\nKwa Yesu na pendo lake.''',
    numero: 55,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_056',
    titre: 'YESU, NINAKUTOLEA VYOTE NINAKUWA NAVYO',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. YESU, ninakutolea\nVyote ninakuwa navyo,\nNikupende, nifuate\nWewe siku zote hapa!\n\nNinakupa vyote,\nNinakupa vyote,\nBwana Yesu upendwaye,\nNinakupa vyote.\n\n2. Miguuni pako, Yesu,\nNinakusujudu sasa.\nNinakutolea vyote:\nRoho, moyo na maungo.\n\n3. Najitoa kwako, Yesu,\nNafsi yote iwe yako!\nBwana Yesu, nakusihi:\nNiwashie moto wako!\n\n4. Yesu, ninakupa vyote,\nUnijaze Roho yako!\nNisikie moto wako\nUkiwaka ndani yangu!\n\n5. Vyote ninakupa, Bwana,\nViwe mali yako kweli!\nNa fahari ya dunia\nNaiona ni ya bure.''',
    numero: 56,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_057',
    titre: 'YESU, ULIYEKUFA KWA AJILI YANGU',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. YESU, uliyekufa kwa ajili yangu,\nNinajitoa kwako, niwe mali yako!\nBwana, nivute kwako,\nNifahamishe pendo,\nNiwe dhabihu hai katika shukrani!\n\n2. Yesu, nafika kwako, kao la rehema;\nBwana, nitie nguvu kwa neema yako!\nNiuchukue tena\nKwa radhi msalaba,\nNi’tumikie Wewe, Mkombozi wangu!\n\n3. Bwana, uniumbie moyo haki, safi,\nKwako niishi tena hata kufa kwangu!\nNiwatafute wenye\nDhambi na udhaifu,\nNiwapeleke kwako, Bwana wa upendo!\n\n4. Vyote ninavyo huku nimepewa nawe,\nUkivitaka, Bwana, uvitwae vyote!\nNina urithi wangu\nkwako mbinguni juu,\nNitakuona huko kwa furaha kuu!''',
    numero: 57,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_058',
    titre: 'UNIPE RAHA TELE KAMA MTO',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. UNIPE raha tele kama mto,\nNipite jangwa huku kwa furaha;\nUnipe na imani tena, Yesu,\nNingoje siku yako kwa bidii!\n\n2. Kwa siku chache ninaona shida,\nDhoruba zinanisumbua huku.\nNapanda mbegu zangu nikilia,\nLakini nitavuna kwa furaha.\n\n3. Kwa siku chache ninaburudishwa\nMtoni penye njia yangu huku,\nLakini siku kubwa itafika,\nNita’inywea chemchemi yake.\n\n4. Kwa siku chache naitunza taa,\nNadumu kwa kuomba na kungoja.\nNa siku za uchungu ziishapo,\nNitamkuta Yesu huko juu.''',
    numero: 58,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_059',
    titre: 'YESU, NINAKUTOLEA MOYO NA MAISHA YANGU',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. YESU, ninakutolea\nMoyo na maisha yangu,\nNiwe mfuasi wako,\nSafi na mtakatifu!\n\n:/: Mungu wangu, :/:\nNitakase saa hii!\n\n2. E’ Mwokozi, ’nitakase,\nUnijaze pendo lako,\nNa maisha yangu yote\nYawe yako, Bwana wangu!\n\n3. Ninataka kuheshimu\nWewe, Mkobozi mwema;\nNifanane nawe, Yesu,\nKati’ watu wa dunia!\n\n4. Nikikaa kimya kwako\nKama yule Mariamu,\nNifundishwe nawe, Bwana,\nSitahangaika tena.\n\n5. Tawi lake mzabibu\nUlitunze na ’safisha,\nIli kwa uweza wako\nLitaza’ matunda mengi!''',
    numero: 59,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_060',
    titre: 'NI HERI KUONA NDUGU',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. NI heri kuona ndugu\nNjiani pa kwenda mbingu.\nTukinyong’onyea sana\nKwa kuwa tu peke yetu,\nKushirikiana kwa ndugu\nKunaturudisha moyo,\nNa Mungu atupa nguvu\nTukiyainua macho.\n\n2. Twafungamana rohoni,\nTulio wa nyumba yake,\nHuoni ulimwenguni\nKushirikiana kwetu.\nNa tuna Mwokozi mmoja,\nImani ni moja pia,\nWatoto wa Baba ’moja\nTwashika sheria yake.\n\n3. Furaha ya ulimwengu\nHaitatuvuta tena,\nTwaona kung’aa kwake\nNi bure na bila kisa.\nLakini tukikusanyika\nKwa jina la Mungu Baba,\nAtuandalia kweli\nKaramu ilio bora.\n\n4. Tukivumilia hata\nUkomo wa mashindano,\nMbinguni tutawaona\nWakristo wapenzi wote.\nHatutatawanyika huko,\nTu wote umoja kweli,\nMilele tuta’pokaa\nNyumbani mwa Baba yetu.''',
    numero: 60,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_061',
    titre: 'ENYI WATU WA SAYUNI',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. ENYI watu wa Sayuni,\nKundi dogo la Mwokozi,\nYesu aliwanunua\nKuwa mali yake Mungu.\nSasa mnapita njia\nYa miiba na hatari\nKati’ nchi ya ugeni;\nBali mbingu mtafika.\n\n2. Kumwamini, kumpenda\nYesu ni uheri wetu;\nAmri zote zinashikwa\nKwa upendo na imani.\nKwa imani twaokoka,\nPendo ni uzima wetu.\nYesu utusaidie,\nUtujaze pendo lako!\n\n3. Juu ya msingi huo,\nYesu, unijenge mimi,\nNa zaidi niungane\nNawe na kanisa lako!\nSisi tu matawi yako,\nTushirikiane sana,\nNa katika kundi zima\nIwe nia moja kweli!''',
    numero: 61,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_062',
    titre: 'MUNGU, NIVUTE KWAKO',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. MUNGU, nivute kwako,\nKaribu kwako,\nHata ikiwa shida\nIkinisukuma!\nKatika yote hapa\n’takuwa wimbo wangu:\nMungu, nivute kwako,\nKaribu kwako.\n\n2. ’kiwa katika mwendo\nJua likichwa,\nGiza yanizunguka,\nPeke yangu mimi,\nKwako, E’ Baba yangu,\nNafika, nakuomba:\nMungu, nivute kwako,\nKaribu kwako!\n\n3. Unionyeshe njia\nYa kwenda juu,\nNijue kupokea\nYote toka kwako!\nUnifariji sana,\nNiimbe tena hivi:\nMungu, nivute kwako,\nKaribu kwako!\n\n4. Katika mambo yote\nNikushukuru,\nMajaribuni pote\nNikumbuke wewe!\nUnifundishe hivi:\nOmba katika yote!\nMungu, nivute kwako,\nKaribu kwako!\n\n5. Nikimaliza mwendo\nWa msafiri,\nMungu utaniita\nKwako huko juu.\nNa nitaimba tena\nKati’ watakatifu:\nUmenivuta, Mungu,\nKaribu kwako!''',
    numero: 62,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_063',
    titre: 'YESU, NIVUTE KARIBU NAWE',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. YESU, nivute karibu nawe,\n’kiwa kwa shida, ikiwa kwa raha!\nUliyekufa msalabani,\n:/: ’nifahamishe upendo na ne’ma! :/:\n\n2. Yesu, nivute, mimi maskini,\nSina vipaji vya kukutolea,\nMoyo ninao wenye uchafu,\n:/: Uupokee, ’uoshe kwa damu! :/:\n\n3. Yesu, nivute, nikutolee\nYote ninayo, E’ Bwana mpendwa,\nNinakuomba: Uyaondoe\n:/: Yote yanayonitenga na Mungu! :/:\n\n4. Yesu, nivute karibu nawe\nHata ukomo wa vita na shida!\nTena mbinguni nitakuwapo\n:/: Karibu nawe, E’ Yesu Mwokozi! :/:''',
    numero: 63,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_064',
    titre: 'KIMYA, E’ MOYO WANGU',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. KIMYA, E’ moyo wangu,\nMbele za Bwana Yesu!\nUnahitaji sana\n’kaa daima kwake.\nNjia salama ipi\nUlimwenguni huku\nBila kumfuata Yesu\nna Neno lake?\n\nUniongoze, Bwana,\nKatika njia yako!\nHata ikiwa shida\nNitawasili kwako.\n\n2. Kimya, E’ moyo wangu,\nOmba kwa tumaini!\nNuru itatokea\nUkiamini Mungu,\nNa umwambie Yesu\nShaka uliyo nayo,\nAtakuosha sana,\nAtakuonya njia.\n\n3. Kimya, E’ moyo wangu,\nMsikilize Mungu!\nAkuletea nguvu,\nTena hekima kweli.\nNa ukiendelea\nKatika Neno lake,\nMungu atakujaza\nNguvu na uthabiti.''',
    numero: 64,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_065',
    titre: 'HUKO JU’ YA NYOTA ZOTE',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. HUKO ju’ ya nyota zote\nKuna nchi yenye mema,\nMji wake ni Yerusalemu;\nDhambi haitakuwamo,\nWala kufa na huzuni,\nKwake Yesu nitapata kao.\n\nSikitiko na machozi\nHayatakuwako huko,\nWala giza au vita ya dunia.\nHuko hatutayaona\nMambo ya kutuumiza,\nU Yerusalemu ’takatifu!\n\n2. Nifikapo mji huo\nNitaona Yesu kwanza,\nAliyechukua dhambi zangu.\nNitaona uso wake,\nNitamshukuru Yeye\nAliyeniweka huru kweli.\n\n3. Huko nitaona tena\nJeshi la walioshinda\nKwa imani huku duniani,\nNa pamoja nao wote\nNita’sifu Mungu sana\nJuu ya neema yake kubwa.''',
    numero: 65,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_066',
    titre: 'WAKRISTO WA NCHI ZOTE',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. WAKRISTO wa nchi zote\nWatakusanyika huko\nMbinguni kwa Yesu, mezani pake,\nKati’ ufalme wake;\nKuona uzuri wake,\nKujazwa neema yake.\nWataimba huko ju’ milele na milele.\n\nWatoka bahari zote,\nWatoka katika shida,\nWatoka milima,\nWatoka mabonde\nKufika kwa Mungu Baba,\nKuvikwa mavazi safi,\nKuona Mwokozi wao,\nYeye ali’wafilia ju’ ya msalaba.\n\n2. Watakusanyika wengi\nWaliookoka huku.\nMateso na kufa, shida na giza\nHawata’ona kamwe.\nYa kale hayatakuwa,\nLo! Yote ni mapya huko!\nItakuwa raha tu pamoja na faraja.\n\n3. Tazama mlango huko\nUliokufunguliwa,\nNa kuna mahali, Yesu aita:\n“Njoo nyumbani kwangu!”\nWenzetu waliofika\nWanatungojea huko,\nMalaika wanaimba kutukaribisha.''',
    numero: 66,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_067',
    titre: 'TUNAKARIBIA KAO LA MBINGUNI',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. TUNAKARIBIA kao la mbinguni,\nHata jua likifichwa na mawingu.\nTufuate Bwana Yesu sikuzote,\nNi furaha yetu kumwandama Yeye!\n\nTunakaribia mbingu kati’ yote,\nHaleluya! ’sifuni Mungu!\nJipe moyo safarini, kwani Yesu\nYu pamoja nasi hata mwisho!\n\n2. Tunakaribia kao la mbinguni,\nHata tukiona pepo na dhoruba.\nBwana Yu karibu, na uwezo wake\nNi makimbilio yetu hatarini.\n\n3. Njia yetu inapita kati’ jangwa,\nNa miguu inauma mara nyingi,\nWalakini tunakwenda tukiimba\nNa kusifu Yesu, Mwokozi wetu.\n\n4. Mwendo wetu utaisha siku moja,\nTutapata kustarehe huko juu.\nTukiona shaka, shida hapa chini,\nTutapata utulivu kwake Yesu.\n\nTunakaribia mbingu kati’ yote,\nHaleluya! ’sifuni Mungu!\nTunataka kufuata hata mwisho.\nE’ rafiki, utuandamie!''',
    numero: 67,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_068',
    titre: 'MBINGUNI KWA MWOKOZI WANGU MWEMA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. MBINGUNI kwa Mwkozi wangu mwema\nNitaamka asubuhi moja,\nNitayaona majeraha yake,\nSauti yake nitaisikia.\n\n2. Makao ya milele ni tayari,\nAli’waandalia watu wake.\nTutamsifu Yesu sana huko,\nAliyetuokoa na hatari.\n\n3. Na nyimbo za wokovu zinaimbwa\nMbinguni mbele ya Mwokozi wetu;\nTungesikia huku nusu ndogo,\nVitani tungepata ushujaa.\n\n4. Lakini Yesu Yupo nasi leo,\nUsiku kama moto mbele yetu.\nNa Neno lake ni upanga wetu,\nAhadi ni safina ju’ ya maji.\n\n5. Tungoje Yesu siku chache tena!\nTwakaribia mwisho wa safari.\nTungoje asubuhi huko juu!\nAtatukaribisha Bwana Yesu!''',
    numero: 68,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_069',
    titre: 'JE, TUTAONANA TENA HUKO NG’AMBO',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. JE, tutaonana tena\nHuko ng’ambo ya Yordani,\nNa pamoja na wakristo\n’ona raha ya milele?\n\nTuonane, tuonane\nHuko ng’ambo ya bahari!\nTuonane kwa furaha,\nHuko shida ikomapo!\n\n2. Je, tutaonana tena,\nBa’da ya dhoruba zote\nHuko katika bandari\nYa salama na amani?\n\n3. Je, tutaonana tena\nKati’ mji wa dhahabu,\nPenye mto wa uzima\nNayo miti ya matunda?\n\n4. Je, tutaonana tena\nNa kusifu Mungu wetu\nMiongoni mwa wakristo\nWaimbao huko juu?\n\n5. Tutaona na wapenzi\nWaliotuacha huku?\nJe, tutawaona wote\nKatika makao mema?\n\n6. Tutaona Bwana Yesu\nKatika kutano huko,\nTutakaribishwa naye\nKatika karamu kuu.''',
    numero: 69,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_070',
    titre: 'KUNA MJI HUKO JUU',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. KUNA mji huko juu,\nUmejengwa naye Mungu,\nHumo kuna mto ’moja\nWenye maji mazima kabisa.\n\nTutakusanyika huko\nKwa raha penye mto mwema sana,\nTutakusanyika na wakristo\nPenye mto wa maji mazima.\n\n2. Huko pwani nchi nzuri,\nBila dhambi na huzuni,\nTutaimba nyimbo mpya,\nNyimbo njema ’kusifu Mwokozi.\n\n3. Kama twamwamini Yesu,\nKama hatufichi dhambi,\nKama moyo ni mweupe,\nTutafika mtoni pa mbingu.\n\n4. Tu karibu ya kufika\nNa kuona mto ule.\nMungu atatupa raha\nNa kutustarehesha daima.''',
    numero: 70,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_071',
    titre: 'NIMEKWISHA KUINGIA NCHI NZURI',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. NIMEKWISHA kuingia nchi nzuri ya ahadi,\nNchi njema ya wokovu wake Mungu.\nHuko ni vijito vingi vya baraka na furaha,\nHuko shida haifiki.\n\nNimekwisha kuingia\nNchi nzuri ya ahadi.\nMoyo wangu hufurahi,\nNinaishi kwa neema.\n\n2. Nimefika Kanaani, hapo ni urithi wangu,\nNa sitaki kuondoka tena kamwe.\nSasa nira ni laini na mzigo si mzito,\nYesu ni furaha yangu.\n\n3. Nimekwisha kuingia nchi ya amani kuu,\nHata mwili wangu unatiwa nguvu.\nNchi hiyo ni ya raha na faraja imo pia,\nHapo tunaka’ salama.\n\n4. Nime’ngia nchi hiyo, ndiye Bwana Yesu Kristo,\nNinakaa katika urithi wangu.\nKwa imani ninakunywa maji hai ya kisima,\nHuku ni furaha kubwa.\n\n5. Nitafika hata mbingu, nchi ya hazina yangu,\nDhambi na mateso hazitakuwako,\nWala giza ya usiku, wala sikitiko chungu,\nWala shida, wala kufa.''',
    numero: 71,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_072',
    titre: 'MIMI MGENI KATIKA DUNIA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. MIMI ngeni katika dunia,\nNinasafiri kufika mbinguni.\nHata ikiwa hatari njiani,\nNitaishinda pamoja na Mungu.\nKama Ibrahimu majaribuni\nNita’vyoshinda kwa nguvu ya Mungu.\nNitavumilia nifike mbinguni,\nNdilo kusudi la moyo.\n\n2. Nikitembea gizani kabisa\nMimi mnyonge pamoja na Yesu,\nNa nikipita motoni, majini,\nNakusudia kufika mbinguni.\nMungu ajua mapito jangwani,\nNaye Mwenyezi atanifikisha.\nNitavumilia nifike mbinguni,\nNdilo kusudi la moyo.\n\n3. Tusisumbuke katika safari,\nTuwatazame wali’tangulia!\nYesu Mwokozi alitukomboa,\nMsalabani alitufilia;\nNaye atatufikisha mbinguni;\nHivi tuimbe kwa muda kitambo:\nTutavumilia tufike mbinguni,\nNdilo kusudi la moyo!''',
    numero: 72,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_073',
    titre: 'NAJUA NJIA MOJA YA KU’FIKIA MBINGU',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. NAJUA njia moja\nYa ku’fikia mbingu,\nIngawa ikipita\nKatika majaribu,\nLakini iendako\nMjini huko juu,\n:/: Na njia hiyo Yesu. :/:\n\n2. Najua na amani\nIliyo ya milele,\nHuwezi kuipewa\nKwa fedha na dhahabu;\nNi tunu ya rehema\nIliyotoka Baba.\n:/: Amani hiyo Yesu. :/:\n\n3. Najua nguvu moja\nYa kuniponya roho,\nInitiayo raha,\nAmani na faraja,\nInanilinda vema\nNa nguo yangu safi,\n:/: Na nguvu hiyo Yesu:/:\n\n4. Najua na kifiko\nMbinguni huko juu,\nNa siku ni karibu\nKita’poonekana.\nYafa’ kukaza mwendo,\nKupiga mbio sana!\n:/: Kifiko ni mbinguni. :/:''',
    numero: 73,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_074',
    titre: 'MGENI MIMI HAPA MAHALI PA UGENI',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. MGENI mimi hapa\nMahali pa ugeni,\nNa kwetu mbali mno\nKatika nchi nzuri.\nNa ni mjumbe huku\nKutoka Mungu wetu,\nNina habari ya Mfalme.\n\nHabari yake nzuri sana,\nFuraha yao malaika:\n“Mpatanishwe sasa\nNa Mungu Baba yetu!”\nHabari yake ndiyo hiyo.\n\n2. Salamu ya Mwokozi\nKwa kila mtu hapa:\nUrudi kwake Mungu,\nUtoke utumwani!\nUfike kwake Yesu,\nTubia dhambi zako!\nHabari hiyo ya Mfalme!\n\n3. Mbinguni nchi nzuri,\nYapita vitu vyote,\nFuraha huko tele\nNa raha ya milele.\nUkiamini Yesu\nUta’pokaa huko.\nHabari hiyo ya Mfalme!''',
    numero: 74,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_075',
    titre: 'NILIYE MSAFIRI, MGENI DUNIANI',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. NILIYE msafiri, mgeni duniani;\nSioni kwangu hapa, ni huko ju’ mbinguni.\nNinatamani nami kukaa siku zote\nPamoja naye Baba katika utukufu.\n\nKwangu mbinguni, kwangu,\nUzuri wa mbinguni\nWapita yote huku.\n\n2. Mwokozi Yuko huko, Rafiki yangu mwema,\nAliyenikomboa na ku’chukua dhambi.\nNa hata nikiona furaha siku zote\nNingali natamani makao ya mbinguni.\n\n3. Na nikipewa huku vipawa vya thamani,\nNa wakiimba nyimbo za kunifurahisha,\nRafiki zangu wote wakipendeza mimi,\nNingali natamani makao ya mbinguni.\n\n4. Upesi nitaona kifiko cha mbinguni,\nMwokozi wangu Yesu atanikaribisha;\nNa huko nitaona nilivyotumaini,\nKinubi nita’piga kumshukuru Yesu.''',
    numero: 75,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_076',
    titre: 'MGENI MIMI, NINASAFIRI',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. MGENI mimi, ninasafiri\nSiku chache, siku chache huku chini.\nMsinipinge, niwafuate\nWatakatifu walioshinda!\nMgeni mimi, ninasafiri\nSiku chache, siku chache huku chini.\n\n2. Nashika njia, napiga mbio,\nSina budi kuukaza mwendo wangu.\nNa kwa mkono natwaa gongo,\nNazo silaha nimejivika.\nNashika njia, napiga mbio,\nSina budi kuukaza mwendo wangu.\n\n3. Ulimwenguni sipati raha,\nNatamani ku’fikia mji mpya.\nMachozi, kufa, maombolezo\nSitayaona mbinguni tena.\nUlimwenguni sipati raha,\nNatamani ku’fikia mji mpya.\n\n4. Mchunga mwema, ninakuomba,\n’tangulie, niongoze njia yote,\nKwa kuwa giza na dhambi tena\nZaniwekea mitego mingi!\nMchunga mwema, ninakuomba,\n’tangulie, niongoze njia yote!''',
    numero: 76,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_077',
    titre: 'NAIFUATA NJIA YA KU’FIKIA MBINGU',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. NAIFUATA njia ya ku’fikia mbingu\nNa mji mwema ule alio’jenga Mungu.\nNinasafiri sasa kutoka duniani\nNifike nchi hiyo ya raha na uzima.\n\nNaifuata njia ya ku’fikia mbingu\nNa mji mwema ule alio’jenga Mungu.\n\n2. Sijauona bado uzuri wake bora\nWa mji wa mbinguni, usio na machozi;\nLakini siku moja, kwa shangwe ya milele\nNitamsifu Yesu katika mji ule.\n\n3. Nifikapo mjini, mlango wake wazi,\nNa hapo malaika watanikaribisha;\nShindano la dunia halitakuwa huko,\nNa nitaona raha milele na milele.''',
    numero: 77,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_078',
    titre: 'NINA UZIMA WA MILELE',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. NINA uzima wa milele,\nNa tumaini ni imara,\nMbinguni nitaona Yesu,\nMwokozi wangu, kwa furaha.\n\n2. Nina urithi bora huko\nUnaolindwa hata mwisho.\nNa kila siku ya jaribu\nNatiwa nguvu naye Baba.\n\n3. Namshukuru Mungu wangu!\nAnanitunza siku zote\nKatika shida na taabu,\nKwa hiyo sisumbuki tena.\n\n4. Rohoni mwangu ni amani,\nNaimba kwa furaha kubwa.\nNikiongozwa naye Yesu\nNaendelea kwa salama.\n\n5. E’ Bwana Yesu, unifunze\nKu’tumikia Wewe vema\nWakati ubakio tena\nWa mwendo wangu duniani!''',
    numero: 78,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_079',
    titre: 'MAISHA MAFUPI YA HUKU DUNIA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. MAISHA mafupi ya huku dunia\nYanaifanana safari chomboni.\nTwapita bahari katika hatari,\nLakini Mwokozi anatuongoza.\n\nIkiwa Mwokozi anatuongoza\nTwaweza kuona amani na raha,\nAtatufikisha salama mbinguni,\nNa humo hatutakumbuka safari.\n\n2. Twapita katika baridi na pepo,\nManeno ya Mungu ni nuri gizani.\nHatari na hofu na chombo kibaya\nHatuta’kumbuka karibu na Yesu.\n\n3. Ingawa mawimbi yapiga kwa nguvu,\nTunakaribia bandari upesi,\nNa humo hakuna dhoruba na pepo;\nSafari tutaimaliza salama.\n\n4. Tutakapofika bandari ya mbingu\nTutamshukuru Mwokozi mkuu.\nHatutaziona hatari na hofu\nKaribu na Yesu mwenyewe mbinguni.''',
    numero: 79,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_080',
    titre: 'ZITAKAPOTIMIA SIKU ZA HUDUMA YANGU',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. ZITAKAPOTIMIA siku za huduma yangu\nNitaona asubuhi ya uzima.\nHuko juu mbinguni nitamwona Bwana Yesu,\nNa “Karibu” yake nitaisikia.\n\nNitamtambua Yeye,\nNa karibu na Yesu nitakaa.\nNitamtambua Yeye kwa alama za majeraha yake.\n\n2. Itakuwa furaha kuuona uso wake\nNa uzuri utokao macho yake.\nMoyo utafurika kwa uheri na furaha,\nJu’ ya kao aliloniandalia.\n\n3. Na walio mbinguni wananingojea kwao,\nNakumbuka siku tulipoachana.\nWataimba kabisa kunikaribisha huko,\nWalakini nitamwona Yesu kwanza.''',
    numero: 80,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_081',
    titre: 'ALIPOKUFA YESU JU’ YA MSALABA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. ALIPOKUFA Yesu ju’ ya msalaba wake\nAkaishinda dhambi na uwezo wa Shetani.\nAliniweka huru, niwe mbali na hatia;\nNa tena atanichukua kwake.\n\nMbinguni niendako\nHaitakuwa dhambi,\nNi nchi nzuri ya salama mno.\nNa Bwana, Mungu wetu,\nAtatuangazia;\nTukusanyane sisi sote humo!\n\n2. Ninafuata njia ya Mwokozi wangu sasa,\nAniongoza vema, anafuta kila chozi.\nAnanilinda katika hatari za njiani,\nKaribu naye vita yatulia.\n\n3. Mbinguni nchi yangu, na bendera ni upendo,\nNa Roho arabuni ya urithi wangu huko;\nNa Neno lake ni chakula changu safarini;\nNeema inanipeleka kwake.''',
    numero: 81,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_082',
    titre: 'NINAJUA NCHI NZURI',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. NINAJUA nchi nzuri,\nHuko Mungu alifanya\nNyumba na makao kwetu;\nNatamani kufikako.\n\nMbinguni, kao la malaika!\nMbinguni vyote vinamulika!\nMbinguni Mungu atualika\nTukusanyane mbinguni kwake!\n\n2. Katika safari yangu\nNinajiuliza sana\nKama nami nitafika\nPenye Mungu ndiye jua.\n\n3. Kwa neema yake kubwa\nNitakaa kwake Mungu,\nBwana Yesu atanipa\nTaji nzuri ya uzima.\n\n4. Sasa ninapiga mbio,\nNifikie nchi hiyo\nYa uzima na furaha,\nNchi ya tamani yangu!''',
    numero: 82,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_083',
    titre: 'NINAJUA NCHI HUKO JUU',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. NINAJUA nchi huko juu,\nHapo Mungu alijenga mji,\nNa aita ’moja moja kwake,\nWaliomaliza mwendo huku.\nShida, kufa na huzuni\nHazitakuwapo huko.\nYesu atafuta kila chozi,\nTutaona shangwe, nayo tele.\n\n2. Huko hawataingia kamwe\nWenye dhambi, wala cha kinyonge,\nE’ rafiki, ujihoji leo\nKama wewe utaona mbingu!\n\n3. Utazame, mto ungaliko\nUwezao kusafisha sana!\nUjioshe kati’ damu safi\nYa Mwokozi wetu Yesu Kristo!\n\n4. Nafurahi kwani ninajua\nKao langu liko huko juu,\nNatamani sana kufikako.\nNjoo, Yesu, unitwae mbio!''',
    numero: 83,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_084',
    titre: 'NINAKUMBUKA SAYUNI',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. NINAKUMBUKA Sayuni,\nNchi ya heri mbinguni,\nBahari kama kioo\nNa’furahia rohoni.\nNyuma kimeta cha nuru\nNaona mji wa mbingu,\nNyimbo za nyumba ya Baba\nNasikiliza daima.\nMapambazuko mbinguni\nYataondoa utaji,\nVyote tulivyoamini\nTutaviona milele.\n\n2. Mauti haina nguvu,\nYesu a’vunja uchungu,\nNaye aliwakomboa\nWote: wafalme, watumwa.\nNinamtwika Mwokozi\nDhambi, huzuni na shida;\nMbavuni mwake nafasi\nKama bandari salama.\n\n3. Kuna ’jaribu njiani,\nMengi ya kunizuia,\nNa mara nyingi miiba\nInaumiza miguu.\nNikikumbuka Sayuni\nmoyo huwaka kabisa,\nMbingu ninaitazama\nNa ku’himiza safari.''',
    numero: 84,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_085',
    titre: 'TWAPASHA HABARI YA MBINGU',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. TWAPASHA habari ya mbingu,\nMahali pa watu wa heri,\nNa tunatamani ku’ona\nUfuko wa nchi ya mbingu.\n\nSikitiko wala shida\nHazitakuwapo mbinguni.\nHuko juu, huko juu\nTutashangilia milele.\n\n2. Twapasha habari ya mbingu\nNa mji mzuri ajabu,\nNa jeshi la watakatifu\nWaliomaliza safari.\n\n3. Twapasha habari ya pendo,\nAmani na nguo nyeupe,\nNa raha baada ya vita,\nMakao karibu na Mungu.\n\n4. Twapasha habari ya Yesu,\nAlituokoa na dhambi.\nIngawa ni shida njiani\nAtatufikisha mbinguni.''',
    numero: 85,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_086',
    titre: 'TUTAONA FURAHA MBINGUNI',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. TUTAONA furaha mbinguni,\nNi makao ya watu wa heri.\nTutakuwa pamoja na Mungu\nNa kusifu Mwokozi wetu.\n\nTutafurahi na tutaabudu\nHuko juu kwake Mungu.\nTutafurahi na tutaabudu\nSiku tutakapofika.\n\n2. Mara nyingi furaha ya hapa\nYapinduka machozi machungu,\nWalakini hazitakuwapo\nSikitiko na shida huko.\n\n3. Kama shida na shaka zafika\nKuzuia safari ya hapa,\nTutazame daima mbinguni,\nHuko juu ni raha yetu!''',
    numero: 86,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_087',
    titre: 'MWISHO WA NJIA YA MUNGU NI MBINGU',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. MWISHO wa njia ya Mungu ni mbingu;\nYesu ananiongoza salama.\nKama Shetani akinijaribu\nNakitazamia kifiko.\n\nKwetu mbinguni hatutatawanyika,\ndhambi na mateso hayatakuwapo,\nNa hatutaona machozi na shida,\nIla furaha milele.\n\n2. Tutawaona walioishinda\nDhambi, Shetani na mambo mabaya,\nNa tutaona Mwokozi mpenzi;\nTutafananishwa na yeye.\n\n3. Nani ataka kufika mbinguni?\nYesu ni njia, uzima na kweli.\nNjoo kwa Yesu! Akuandalia\nKao la milele mbinguni.\n\n:/: Malaika wanangoja :/:\nMalaika wanangoja huko mbinguni!\n:/: Malaika wanangoja:/:\nkutusalimu: “Karibu”!''',
    numero: 87,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_088',
    titre: 'MPONYI APITAYE WOTE',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. MPONYI apitaye wote\nAmefika hapa.\nAwaponyesha watu moyo,\nYesu wa upendo.\nJina liyapitalo yote\nJuu na chini, pote pia,\nJina kubwa, jina jema:\nYesu wa upendo!\n\n2. Awasamehe watu dhambi\nWakizitubia,\nAwapokea kwa neema,\nWaipate afya.\n\n3. Tukiwa na masikitiko,\nYesu afariji.\nAkitubarikia sana,\nWoga waondoka.\n\n4. Watoto walipenda sana\nJina lake Yesu,\nLiwalindalo na mabaya,\nWakijaribiwa.\n\n5. Shetani aogopa sana\nJina lake Yesu.\nKatika vita ju’ ya dhambi\nLatutia nguvu.\n\n6. Mbinguni tena kwa furaha\nTutamwona Yesu.\nTutasahau shida zote,\nTutamshukuru.''',
    numero: 88,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_089',
    titre: 'NAJUA JINA MOJA ZURI',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. NAJUA jina moja zuri,\nLapita kila jina huku,\nLanipa raha na amani,\nNa jina hilo Yesu.\n\nYesu, jina zuri mno!\nYesu, unapenda wote,\nYesu, tunalindwa vema\nKatika jina lako.\n\n2. Napenda jina hilo jema,\nLinanivuta kwake Mungu.\nNa katika huzuni yangu\nLanifariji sana.\n\n3. Siwezi mimi kueleza\nUzuri wake jina hili,\nLakini namwimbia Yesu,\nNasifu jina lake.''',
    numero: 89,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_090',
    titre: 'YESU, YESU, JINA KUBWA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. YESU, Yesu, jina kubwa,\nNyimbo zao malaika!\n:/: Limekuwa ndani yangu\nMto wa furaha bora. :/:\n\n2. Jina lake kama nyota\nLinanionyesha njia.\n:/: Katika jaribu, shida,\nNa usiku duniani. :/:\n\n3. Ni mikono ya upendo\nYenye kunikumbatia.\n:/: Hapo najificha vema\nKama chombo bandarini. :/:\n\n4. Jina hilo liwe kwangu\nWimbo wa safari yangu!\n:/: Niletewe wema nalo\nToka nchi nzuri juu! :/:''',
    numero: 90,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_091',
    titre: 'YESU, JINA HILI JEMA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. YESU, jina hili jema\nLichukue siku zote!\nLina raha na faraja,\nLichukue uendako!\n\nJina kubwa, jina zuri\nLa matumaini yetu!\nJina kubwa, jina zuri\nLa furaha ya mbinguni!\n\n2. Lichukue jina hilo\nLenye nguvu ya kushinda!\nUkijaribiwa huku,\nTaja jina lake Yesu!\n\n3. Yesu, jina jema mno,\nLatutia shangwe kubwa,\nNi makimbilio yetu,\nNgome, msaada pia.\n\n4. Na kwa jina lake Yesu\nKila goti litakunjwa,\nWatu wote watakiri\nKwamba Yesu ni Mfalme''',
    numero: 91,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_092',
    titre: 'YESU! JINA HILI LINAPITA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. YESU! Jina hili linapita\nKila jina duniani pote.\nYesu, Yesu! Jina hilo\nNi marhamu iliyomiminwa.\nJina hili ni lenye nguvu ya\nKuondoa dhambi zangu zote.\nYesu, Yesu! Jina hilo\nLanitia shangwe na furaha.\n\n2. Si jingine jina duniani\nLenye nguvu, kweli na uzima.\nYesu, Yesu! Jina hilo\nWaliloimbia malaika.\n\n3. Jina hili lina wema mno,\nLimejaza mbingu tangu mwanzo.\nYesu, Yesu! Jina hilo\nLitaimbwa duniani pote.\n\n4. Sitaweza kusahahu Yesu,\nJina lake ni wokovu wangu.\nYesu, Yesu! Nitamwona\nHuko kwake tena kwa furaha.''',
    numero: 92,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_093',
    titre: 'SIKU CHACHE',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. SIKU chache, na tena wakristo\nWatakwenda kumwona Mwokozi,\nSiku chache, na wataipewa\nThawabu na taji ya uzima.\nNangoja sana Bwana Yesu\nKama zamu angojavyo asubuhi.\n\n:/: Kwa dalili zote ninaona sasa\nKwamba Yesu Yu karibu ya kurudi:/:\n\n2. Siku chache za vita ya huku,\nTena Yesu Mfalme ’takuja;\nTutaona furaha na raha,\nAtatupeleka kwake juu.\n\n3. Siku chache machozi ya shida,\nMungu atayafuta kabisa.\nNa baada ya siku si nyingi\nKwa lango nitaingia mbingu.\n\n4. Baragumu la mwisho ’talia,\nWaminifu watachukuliwa;\nWote wataingia mbinguni\nKukaa pamoja na Mwokozi.''',
    numero: 93,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_094',
    titre: 'LO! NURU INAPAMBAZUKA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. LO! Nuru inapambazuka,\nNa vivuli vya usiku vi’kimbia;\nUnaulizwa: “U tayari?”\nYesu yuaja upesi!\n\nNa kama vile ’pepo uvumavyo po pote\nHabari iendavyo ulimwenguni mwote.\nNi neno la furaha, matumaini yetu:\n“Yesu yuaja upesi!”\n\n2. Vizazi wengi wamefungwa\nKatika utumwa, minyororo ’gumu;\nUhuru ni kwa Bwana Yesu,\nNaye yuaja upesi!\n\n3. Na watu wengi waamka,\nNuru ya Injili yafukuza giza.\nTutatwaliwa ju’ mbinguni;\nYesu yuaja upesi!''',
    numero: 94,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_095',
    titre: 'NCHI NZURI YATUNGOJA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. NCHI nzuri yatungoja\nHuko juu ya mawingu,\nWatakapokusanyika wateule.\nSiku zina’tubakia\nZinapita mbio sana;\nWaminifu watarithi nchi nzuri.\n\n:/: Lo! Ufalme wake Mungu u karibu!:/: \nUwe safi, roho yangu,\nUkakeshe siku zote!\nLo! Mfalme wake Yesu\nYu karibu!\n\n2. Twaamini tutaona\nNchi ile kwa uwazi,\nTunangoja sana Mkombozi wetu;\nKwa dalili tunaona\nSiku yake ni karibu;\nZinatuarifu Yesu aja hima.\n\n3. Maandiko yanasema:\nMkombozi atakuja,\nKatika mawingu ataonekana.\nHaleluya! Haleluya!\nAtafunga yule mwovu,\nAliyejaribu kutuangamiza.\n\n4. Katika kungoja Yesu\nWatu wengi wamechoka;\nWaamshe, uwaonye kwa dalili!\nKwani Neno lake Mungu\nLatimizwa mbio sana,\nTunaona kwamba Yesu Yu karibu.''',
    numero: 95,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_096',
    titre: 'MWOKOZI WETU ALIAHIDI',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. MWOKOZI wetu aliahidi\nYa kwamba atakuja siku moja\nKutupeleka mbinguni kwake.\nYawezekana upesi sana.\n\nSioni shaka, nina amani\nKwa Mkombozi na damu yake,\nNa Roho yake Mtakatifu\nNi arabuni ya ’rithi wangu.\n\n2. Wajumbe wengi wa Bwana Mungu\nWatumwa sasa duniani pote.\nWaitangaza habari njema\nYa Yesu Kristo na pendo lake.\n\n3. Na watu wengi wanaamini,\nWanaitika mwito wake Mungu.\nKwa roho moja twakaza mwendo,\nTufikilie thawabu yetu.\n\n4. Twakaribia wakati ule\nWa kuja kwake Bwana Yesu Kristo;\nNa tujiweke tayari wote\nKuchukuliwa mbinguni kwake!''',
    numero: 96,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_097',
    titre: 'BADO KIDOGO JUA LITAPANDA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. BADO kidogo jua litapanda,\nSiku tuta’pofika huko juu.\nHuko mbinguni tutapumzika\nNa ’pata raha na furaha ya milele.\nTutamlaki Bwana Yesu Kristo,\nAliyetuokoa kweli hapa chini.\nHuko mbinguni tutamwona Yeye,\nTutamsifu kwa upendo wake ’kuu.\n\n2. Bado kidogo tutaona vyote\nVitageuka kuwa vipya tena,\nNa hapo Yesu, Mkombozi wetu,\nAtatufungulia lango la mbinguni.\n\n3. Safari yetu ina majaribu,\nTutafurahi kwa kufika mbingu.\nHatutaona giza, shaka tena,\nTutamshangilia Mkombozi wetu.''',
    numero: 97,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_098',
    titre: 'SIKU MOJA TUTAONA UTUKUFU',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. SIKU moja tutaona\nUtukufu wake Yesu,\nKama nuru ya umeme\nAtakavyoonekana.\nUhubiri Neno lake,\nKwa bidi’ mahali pote!\nSiku ni karibu sasa :\nBwana Yesu atakuja.\n\n2. Tangu kale tumengoja\nSiku ya uhuru wetu.\nHata nguvu ya mauti\nItaisha siku ile.\n\n3. Heri gani ya wakristo\nKumlaki Bwana Yesu!\nWatavikwa nguo safi\nHuko juu kwa Mwokozi.\n\n4. Pasha hi’ habari njema,\nNa wagonjwa uwaponye!\nUokoe wapotevu!\nWende mbio, usikawie!\n\n5. Kwa dalili tunaona\nKwamba Yesu Yu karibu,\nNa Mfalme atakuja\n’tupeleka kwake juu.''',
    numero: 98,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_099',
    titre: 'SIKU MOJA NITAMWONA BWANA YESU',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. SIKU moja nitamwona\nBwana Yesu uso wake.\nNa milele kwa furaha\nNitaka’ karibu naye.\nNitamtazama Yesu\nJu’ ya nyota zote pia,\nHuko kwa ukamilifu\nNitajua nguvu yake.\n\n2. Hapa ninaufahamu\nKwa sehemu wema wake,\nHuko nitamtazama\nNa kushiba kwa kuona.\n\n3. Shangwe gani kwake Yesu!\nShida zote zitaisha,\nGiza haitakuwapo,\nNa huzuni itakoma.\n\n4. Yesu atafika mbio,\nLo! Mwenyewe atashuka!\nTutanyakuliwa juu\nIli kumlaki Bwana.''',
    numero: 99,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_100',
    titre: 'LO! BENDERA INATWEKWA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. LO! Bendera inatwekwa,\nYatutangulia!\nTusione hofu, wenzi,\nTwende kwa kushinda!\nBwana Yesu atakuja,\nTuilinde ngome!\nKwa uwezo wake Yesu\nTutashinda yote.\n\n2. Ibilisi azunguka,\nAkitutafuta;\nAnataka tuanguke,\nTufe, tupotee.\n\n3. Vita kubwa, vita kali\nInaendelea,\nTuwe watu wa ’hodari!\nTwende, tutashinda!\n\n4. Basi, kwa bendera yake\nTunashikamana.\nAtutie nguvu yake\nHata kuja kwake!''',
    numero: 100,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_091',
    titre: 'YESU, JINA HILI JEMA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. YESU, jina hili jema\nLichukue siku zote!\nLina raha na faraja,\nLichukue uendako!\n\nJina kubwa, jina zuri\nLa matumaini yetu!\nJina kubwa, jina zuri\nLa furaha ya mbinguni!\n\n2. Lichukue jina hilo\nLenye nguvu ya kushinda!\nUkijaribiwa huku,\nTaja jina lake Yesu!\n\n3. Yesu, jina jema mno,\nLatutia shangwe kubwa,\nNi makimbilio yetu,\nNgome, msaada pia.\n\n4. Na kwa jina lake Yesu\nKila goti litakunjwa,\nWatu wote watakiri\nKwamba Yesu ni Mfalme''',
    numero: 91,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_092',
    titre: 'YESU! JINA HILI LINAPITA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. YESU! Jina hili linapita\nKila jina duniani pote.\nYesu, Yesu! Jina hilo\nNi marhamu iliyomiminwa.\nJina hili ni lenye nguvu ya\nKuondoa dhambi zangu zote.\nYesu, Yesu! Jina hilo\nLanitia shangwe na furaha.\n\n2. Si jingine jina duniani\nLenye nguvu, kweli na uzima.\nYesu, Yesu! Jina hilo\nWaliloimbia malaika.\n\n3. Jina hili lina wema mno,\nLimejaza mbingu tangu mwanzo.\nYesu, Yesu! Jina hilo\nLitaimbwa duniani pote.\n\n4. Sitaweza kusahahu Yesu,\nJina lake ni wokovu wangu.\nYesu, Yesu! Nitamwona\nHuko kwake tena kwa furaha.''',
    numero: 92,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_093',
    titre: 'SIKU CHACHE',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. SIKU chache, na tena wakristo\nWatakwenda kumwona Mwokozi,\nSiku chache, na wataipewa\nThawabu na taji ya uzima.\nNangoja sana Bwana Yesu\nKama zamu angojavyo asubuhi.\n\n:/: Kwa dalili zote ninaona sasa\nKwamba Yesu Yu karibu ya kurudi:/:\n\n2. Siku chache za vita ya huku,\nTena Yesu Mfalme ’takuja;\nTutaona furaha na raha,\nAtatupeleka kwake juu.\n\n3. Siku chache machozi ya shida,\nMungu atayafuta kabisa.\nNa baada ya siku si nyingi\nKwa lango nitaingia mbingu.\n\n4. Baragumu la mwisho ’talia,\nWaminifu watachukuliwa;\nWote wataingia mbinguni\nKukaa pamoja na Mwokozi.''',
    numero: 93,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_094',
    titre: 'LO! NURU INAPAMBAZUKA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. LO! Nuru inapambazuka,\nNa vivuli vya usiku vi’kimbia;\nUnaulizwa: “U tayari?”\nYesu yuaja upesi!\n\nNa kama vile ’pepo uvumavyo po pote\nHabari iendavyo ulimwenguni mwote.\nNi neno la furaha, matumaini yetu:\n“Yesu yuaja upesi!”\n\n2. Vizazi wengi wamefungwa\nKatika utumwa, minyororo ’gumu;\nUhuru ni kwa Bwana Yesu,\nNaye yuaja upesi!\n\n3. Na watu wengi waamka,\nNuru ya Injili yafukuza giza.\nTutatwaliwa ju’ mbinguni;\nYesu yuaja upesi!''',
    numero: 94,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_095',
    titre: 'NCHI NZURI YATUNGOJA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. NCHI nzuri yatungoja\nHuko juu ya mawingu,\nWatakapokusanyika wateule.\nSiku zina’tubakia\nZinapita mbio sana;\nWaminifu watarithi nchi nzuri.\n\n:/: Lo! Ufalme wake Mungu u karibu!:/: \nUwe safi, roho yangu,\nUkakeshe siku zote!\nLo! Mfalme wake Yesu\nYu karibu!\n\n2. Twaamini tutaona\nNchi ile kwa uwazi,\nTunangoja sana Mkombozi wetu;\nKwa dalili tunaona\nSiku yake ni karibu;\nZinatuarifu Yesu aja hima.\n\n3. Maandiko yanasema:\nMkombozi atakuja,\nKatika mawingu ataonekana.\nHaleluya! Haleluya!\nAtafunga yule mwovu,\nAliyejaribu kutuangamiza.\n\n4. Katika kungoja Yesu\nWatu wengi wamechoka;\nWaamshe, uwaonye kwa dalili!\nKwani Neno lake Mungu\nLatimizwa mbio sana,\nTunaona kwamba Yesu Yu karibu.''',
    numero: 95,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_096',
    titre: 'MWOKOZI WETU ALIAHIDI',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. MWOKOZI wetu aliahidi\nYa kwamba atakuja siku moja\nKutupeleka mbinguni kwake.\nYawezekana upesi sana.\n\nSioni shaka, nina amani\nKwa Mkombozi na damu yake,\nNa Roho yake Mtakatifu\nNi arabuni ya ’rithi wangu.\n\n2. Wajumbe wengi wa Bwana Mungu\nWatumwa sasa duniani pote.\nWaitangaza habari njema\nYa Yesu Kristo na pendo lake.\n\n3. Na watu wengi wanaamini,\nWanaitika mwito wake Mungu.\nKwa roho moja twakaza mwendo,\nTufikilie thawabu yetu.\n\n4. Twakaribia wakati ule\nWa kuja kwake Bwana Yesu Kristo;\nNa tujiweke tayari wote\nKuchukuliwa mbinguni kwake!''',
    numero: 96,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_097',
    titre: 'BADO KIDOGO JUA LITAPANDA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. BADO kidogo jua litapanda,\nSiku tuta’pofika huko juu.\nHuko mbinguni tutapumzika\nNa ’pata raha na furaha ya milele.\nTutamlaki Bwana Yesu Kristo,\nAliyetuokoa kweli hapa chini.\nHuko mbinguni tutamwona Yeye,\nTutamsifu kwa upendo wake ’kuu.\n\n2. Bado kidogo tutaona vyote\nVitageuka kuwa vipya tena,\nNa hapo Yesu, Mkombozi wetu,\nAtatufungulia lango la mbinguni.\n\n3. Safari yetu ina majaribu,\nTutafurahi kwa kufika mbingu.\nHatutaona giza, shaka tena,\nTutamshangilia Mkombozi wetu.''',
    numero: 97,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_098',
    titre: 'SIKU MOJA TUTAONA UTUKUFU',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. SIKU moja tutaona\nUtukufu wake Yesu,\nKama nuru ya umeme\nAtakavyoonekana.\nUhubiri Neno lake,\nKwa bidi’ mahali pote!\nSiku ni karibu sasa :\nBwana Yesu atakuja.\n\n2. Tangu kale tumengoja\nSiku ya uhuru wetu.\nHata nguvu ya mauti\nItaisha siku ile.\n\n3. Heri gani ya wakristo\nKumlaki Bwana Yesu!\nWatavikwa nguo safi\nHuko juu kwa Mwokozi.\n\n4. Pasha hi’ habari njema,\nNa wagonjwa uwaponye!\nUokoe wapotevu!\nWende mbio, usikawie!\n\n5. Kwa dalili tunaona\nKwamba Yesu Yu karibu,\nNa Mfalme atakuja\n’tupeleka kwake juu.''',
    numero: 98,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_099',
    titre: 'SIKU MOJA NITAMWONA BWANA YESU',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. SIKU moja nitamwona\nBwana Yesu uso wake.\nNa milele kwa furaha\nNitaka’ karibu naye.\nNitamtazama Yesu\nJu’ ya nyota zote pia,\nHuko kwa ukamilifu\nNitajua nguvu yake.\n\n2. Hapa ninaufahamu\nKwa sehemu wema wake,\nHuko nitamtazama\nNa kushiba kwa kuona.\n\n3. Shangwe gani kwake Yesu!\nShida zote zitaisha,\nGiza haitakuwapo,\nNa huzuni itakoma.\n\n4. Yesu atafika mbio,\nLo! Mwenyewe atashuka!\nTutanyakuliwa juu\nIli kumlaki Bwana.''',
    numero: 99,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_100',
    titre: 'LO! BENDERA INATWEKWA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. LO! Bendera inatwekwa,\nYatutangulia!\nTusione hofu, wenzi,\nTwende kwa kushinda!\nBwana Yesu atakuja,\nTuilinde ngome!\nKwa uwezo wake Yesu\nTutashinda yote.\n\n2. Ibilisi azunguka,\nAkitutafuta;\nAnataka tuanguke,\nTufe, tupotee.\n\n3. Vita kubwa, vita kali\nInaendelea,\nTuwe watu wa ’hodari!\nTwende, tutashinda!\n\n4. Basi, kwa bendera yake\nTunashikamana.\nAtutie nguvu yake\nHata kuja kwake!''',
    numero: 100,
    auteur: 'Auteur inconnu',
  ),
  Cantique(
    id: 'nyimbo_za_wokovu_101',
    titre: 'E’ MLINZI, TWAULIZA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. E’ mlinzi, twauliza:\n“Yesu atakuja lini?\nAsubuhi ya Sayuni\nNi karibu? Tuambie!’’-\n‘‘Msafiri, yainue\nMacho yako, angalia!\nAsubuhi ni karibu,\nUsimame, usimame!’’\n\n2. Siku heri ya sabato\nYa milele ni karibu,\nNa dalili yake Yesu\nHapo itaonekana.\nNa rohoni tunaona\nNchi nzuri ya ahadi.\nAsubuhi ni karibu,\nNa ahadi zatimia.\n\n3. Katika Yerusalemu,\nMji mpya wa mbinguni,\nYesu atatumiliki\nKwa upendo na amani.\nBaragumu italia,\nNasi tutaisikia.\nYesu ni karibu sana\nKutukaribisha kwake.''',
    numero: 101,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_102',
    titre: 'SAYUNI, ULAKI BWANAKO',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. SAYUNI, ulaki Bwanako,\nUmshangilie Mfalme!\nJipambe kwa Bwana arusi,\nUjitengeneze tayari!\n\nFurahi, furahi!\nUmshangilie Bwanako!\nFurahi, furahi!\nUmsujudie Mfalme!\n\n2. Kutoka ’tukufu wa Baba\nNa kiti cha enzi mbinguni\nMwokozi alitufikia\nKulazwa mtoto horini.\n\n3. Akawa dhabihu kamili,\nAkasulibiwa Golgotha,\nAkafa kwa ’jili ya wote,\nTupewe wokovu wa Mungu.\n\n4. Alitushindia mauti\nNa kumharibu Shetani;\nakaufunua uzima,\nTupate kuishi milele.\n\n5. Afika kwa wenye huzuni\nKuwapa faraja na heri,\nNa atamiliki milele,\nMfalme wa pendo na haki.''',
    numero: 102,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_103',
    titre: 'SIKU KUBWA YA MASHANGILIO',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. SIKU kubwa ya mashangilio\nInatufikia tena.\nUsikie neno hili zuri:\n“Yesu amefika kwetu!”\nImba duniani pote pia,\nImba, wote wasikie!\nSifa zina Mungu wetu juu,\nNa amani kwetu!\n\n2. Utajiri, fedha na dhahabu\nSina ya kukuletea,\nIlakini roho yangu tupu\nNina’kutolea, Yesu.\n\n3. Sisi sote tumsifu Mungu\nKwa upendo wake kwetu!\nAlitutumia Mkombozi,\nMwana wake Yesu Kristo.''',
    numero: 103,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_104',
    titre: 'LO! HORINI BETHLEHEMU',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. LO! Horini Bethlehemu,\nNdani ’nyumba ya ng'ombe,\nBwana Yesu alilala\nUsingizi wa kitoto.\nNyota zilizo mbinguni\nKimya ziliangazia\nBwana Yesu, Mtulivu,\nJuu ya ulalo wake.\n\n2. Wachungaji wa kondoo\nWalikuja kumwabudu,\nNa majusi walifika\nWakamtolea tunu.\nMungu mwenye macho\nYanayotazama nchi yote,\nAlivunja makusudi\nYa kuua ya adui.\n\n3. Nakupenda, Bwana Yesu,\nKwani unaufahamu\nUdhaifu wa mtoto,\nHali yake ya kitoto.\nNawe sasa unaweza\nKunisaidia sana\nKila saa ya hatari,\nMajaribu na mashaka.\n\n4. Nakuomba, Bwana Yesu,\nUnilinde njia yote,\nUwe mwenzi wangu mwema\nKila saa na dakika!\nUsichoke nami kamwe,\nNami sitaona hofu;\nYesu unikumbatie\nSiku zote na milele!''',
    numero: 104,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_105',
    titre: 'WAKATI WA NOELI',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. WAKATI wa Noeli\nNafika kwenye hori,\n:/: Alipolala Yesu,\nMaskini, mtulivu. :/:\n\n2. Mwokozi wangu mwema,\nKwa pendo ulifika,\n:/: Nitoke dhambi zangu,\nNipate kuwa wako:/:\n\n3. Nakuhitaji, Yesu,\nRafiki wa watoto:\n:/:Sitaki kuumiza\nKwa dhambi Wewe tena. :/:\n\n4. Nitashukuru Yesu\nMilele na milele.\n:/: Maana alifika\nKutuokoa sisi. :/:''',
    numero: 105,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_106',
    titre: 'TUIMBE ASUBUHI HII',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. TUIMBE asubuhi hii\nJuu ya siku manabii\nWalioitabiri!\nNi siku kubwa, siku nzuri,\nUpendo umedhihirika,\nUpendo wake Mungu.\nSisi sote tufurahi,\nTumwimbie na kusifu\nYesu, Mkombozi wetu!\n\n2. Yu sura yake Mungu Baba,\nLakini mtu, ili sisi\nTupate kumjua.\nYuaja na amani kwetu,\nKuwatafuta wapotevu\nNa kuwaponya wote.\nSisi sote tuungane\nNaye Yesu na tupate\nPendo na uzima wake!\n\n3. Ataliona sikitiko\nNa kufahamu shida yetu\nAsaidie sisi!\nAtafundisha haki, kweli,\nNa kutufahamisha pendo\nKatika kufa kwake,\nSisi sote tuokoke,\nNa tufufuliwe naye,\nMbingu zitufunguliwe!\n\n4. Aliye jua la neema\nAfika na wokovu kwetu,\nNa atuangazia.\nMchunga wetu yupo nasi,\nAnatutaka tuwe wake,\nTumfuate kweli!\nSisi wake tumjue,\nTuingie kwake juu,\nTufanane naye Yesu!''',
    numero: 106,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_107',
    titre: 'ALIPOTESWA YESU PEKE’',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. ALIPOTESWA Yesu peke’\nKatika Gethsemane,\nAkakinywea kwa upendo\nKikombe cha uchungu.\n\nMwokozi wangu\nAlichukua yote,\nUzima wake ali’toa;\nKutuokoa alitufilia.\n\n2. Akasimama peke yake\nKuchekwa na kupigwa,\nKichwani akatiwa taji\nIliyo ya miiba.\n\n3. Akachukua msalaba\nNjiani kwa Golgotha,\nNa akajeruhiwa sana\nKwa ’jili yetu sisi.\n\n4. Na sasa, wewe mwenye dhambi,\nTazama pendo lake!\nNeema kubwa yakungoja,\nUache dhambi zako!''',
    numero: 107,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_108',
    titre: 'MWANA-KONDO’ WA MUNGU',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. MWANA-KONDO’ wa Mungu,\nUli’filia sisi\nJuu ya msalaba\nKati’ macheko mengi.\nUmeondoa dhambi\nNa umeshinda kufa.\nUtupe raha, Yesu!''',
    numero: 108,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_109',
    titre: 'YESU, UNIONYE TENA MSALABA WAKO!',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. YESU, unionye tena\nMsalaba wako!\nHuo ni kisima safi\nChenye kusafisha.\n\nMsalaba wako, Yesu,\nNausifu sana.\nYesu, unilinde huko\nHata nikuone!\n\n2. Huko niliona kwanza\nNe’ma yako kubwa,\nNuru ikafika kwangu\n’toka msalaba.\n\n3. Yesu, unilinde huko,\nUnifahamishe\nJinsi ulivyochukua\nDhambi zangu zote!\n\n4. Unilinde siku zote\nPenye msalaba,\nNikuone, nikupende\nSasa na milele!''',
    numero: 109,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_110',
    titre: 'MWAMBA ULIOPASUKA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. MWAMBA uliopasuka,\nNdani yako nijifiche!\nMaji yale, damu ile\nItokayo mbavu zako,\nIwe dawa ya kuponya\nRoho yangu na ubaya!\n\n2. Kazi za mikono yangu\nHaziwezi kukomboa.\nHata ningelia sana\nNa kutenda kazi nyingi\nSingeweza kuokoka,\nPeke yako U Mwokozi.\n\n3. Ndani yangu sina kitu,\nNaushika msalaba.\nUchi mimi, univike!\nSina nguvu, ’nichukue!\nNi mchafu, unioshe!\nWewe U Mwokozi wangu.\n\n4. Kwa maisha yangu yote\nHata nitatoa roho,\nHata saa ya kuitwa\nMbele ya Mfalme wangu,\nMwamba uliopasuka,\nNijifiche ndani yako!''',
    numero: 110,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_111',
    titre: 'E’ YESU, SITAUSAHAU',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. E' YESU, sitausahau\nUchungu wako ’kubwa,\nUlipoteswa Gethsemane\nUsiku peke yako.\nMateso uliyoyaona,\nUchungu na machozi,\nUsiku ule Gethsemane,\nSiyasahau kamwe.\n\n2. Naona Wewe Gethsemane,\nUlivyoteswa huko\nKwa ’jili ya makosa yangu,\nNa kuitoa damu.\n\n3. Huzuni nyingi uliona\nKatika teso lako\nUlipoachwa peke yako\nNa wanafunzi wako.\n\n4. Na ukiona roho yangu\nHaina pendo kwako,\nUniongoze Gethsemane,\nNione teso lako!''',
    numero: 111,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_112',
    titre: 'ULINDE ROHO NA NAFSI YANGU',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. ULINDE roho na nafsi yangu\nChini ya damu, chini ya damu!\nMakosa, hofu na shaka ziwe\nChini ya damu yako!\n\nChini ya damu yako, Yesu,\nNdani ya mto huo safi,\nUnilinde kwa siku zote,\nChini ya damu yako!\n\n2. Makimbilio ya mwenye dhambi\nChini ya damu, chini ya damu,\nNi ukombozi kwa watu wote\nChini ya damu yako!\n\n3. Nijaze nguvu na pendo lako\nChini ya damu, chini ya damu,\nNipate tena kutii Wewe\nChini ya damu yako!\n\n4. Amani kubwa moyoni mwangu\nChini ya damu, chini ya damu,\nKarama zako zanipa raha\nChini ya damu yako.\n\n5. Nijazwe Roho Mtakatifu\nChini ya damu, chini ya damu,\nDaima niwe na moyo safi,\nChini ya damu yako.''',
    numero: 112,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_113',
    titre: 'MSALABANI MWOKOZI WANGU',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. MSALABANI Mwokozi wangu\nAlijitoa kuniokoa,\nNa damu yake ilimwagika\nKwa ’jili yangu, kunikomboa.\n\nE’ Golgotha, E’ Golgotha,\nAlipoteswa Bwana Yesu!\nE’ Golgotha, E’ Golgotha,\nNilipopata raha kweli!\n\n2. Na nchi ile ilitetema,\nMbinguni jua likafunikwa\nWakati Yesu alipokufa,\nAkichukua hatia yangu.\n\n3. Likapasuka pazia lote,\nKwa hiyo Neno limetimizwa.\nNaona njia ya mbingu wazi:\nNikutakaswa kwa damu yake.\n\n4. Mwokozi wangu, upendo gani:\nUliutoa uzima wako!\nKunikomboa ulisikia\nMateso yote ya msalaba.''',
    numero: 113,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_114',
    titre: 'IMBA HABARI NJEMA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. IMBA habari njema:\nMungu apenda wote!\nUihubiri damu,\nItuponyayo roho!\nTaja karama kubwa:\nMwana alitujia,\nPasha habari hiyo\nKwa kila mtu!\n\nYesu msalabani\nAlifilia wote,\nAlitupatanisha\nNa Mungu, Baba yetu.\nPazia la hekalu\nLikapasuka huko,\nNjia imefunguka\nKwa wewe, nami!\n\n2. Uwaimbie wenye\nShida na sikitiko\nNa wapigao vita\nKatika majaribu!\nImba katika miji,\nPasha habari njema:\nYesu awatafuta\nKwa pendo kubwa!\n\n3. Imba katika giza,\nHalifikapo jua,\nUwaimbie wote,\nWatu wa kila hali!\nImba mapema sana,\nNa adhuhuri pia,\nSifu Mwokozi hata\nUsiku waja!''',
    numero: 114,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_115',
    titre: 'PENDO LA MUNGU NI KUBWA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. PENDO la Mungu ni kubwa,\nPasha habari hiyo!\nPendo la Mungu ni kubwa,\nMwanzo wa nyimbo zote.\nMalaika waliimba,\nWachunga wakasikia.\nTunafurahi kujua:\nPendo la Mungu ni kubwa.\n\nPendo kuu, Pendo kuu,\nPendo kuu,\nPendo la Mungu ni kubwa!\n\n2. Pendo la Mungu ni kubwa\nKwako uliye mbali.\nPendo la Mungu ni kubwa,\nAnakuhurumia.\nUkiendee kisima\nKinachotoka Golgotha,\nUtaupata uzima\nKatika pendo la Mungu.\n\n3. Pendo la Mungu ni kubwa,\nLatufikisha mbingu.\nPendo la Mungu ni kubwa,\nTutafurahi sana!\nHuko hakuna jaribu\nWala ugonjwa na kufa.\nTumeokoka sababu\nPendo la Mungu ni kubwa.''',
    numero: 115,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_116',
    titre: 'TUIMBIE, TUMSIFU YESU JU’ YA MSALABA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. TUIMBIE, tumsifu Yesu ju’ ya msalaba!\nAliteswa na akafa,\nYote kwa ajili yetu.\nAkashinda, ’kafufuka,\nNi Mwokozi ’kamilifu.\n\n2. Yesu alitukomboa,\nNa akawa haki yetu.\nDhambi aliziondoa,\nAkatupa tumaini:\nTutarithi utukufu,\nNuru, raha na uheri.\n\n3. Yesu alipofufuka\nAkatushindia kufa,\nAkapewa nguvu zote\nDuniani na mbinguni.\nSisi sote tumepona\nKwa kupigwa kwake Yesu.\n\n4. Tushukuru Mungu Baba\nKwa ajili ya upendo!\nTumsifu Yesu Kristo\nKwa neema yake kubwa!\nTumfungulie moyo\nKwake Roho ’takatifu!''',
    numero: 116,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_117',
    titre: 'NILIPOFIKA GOLGOTHA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. NILIPOFIKA Golgotha,\nNikaiona huko\nNeema kubwa kama mto,\nNeema ya ajabu.\n\nNeema ya Golgotha\nNi kama bahari kubwa,\nNe’ma tele na ya milele,\nNe’ma ya kutosha!\n\n2. Nilipofika moyo wangu\nUlilemewa sana,\nSikufahamu bado vema\nNeema yake kubwa.\n\n3. Nilipoona kwamba Yesu\nAlichukua dhambi,\nNeema ikadhihirika,\nNa moyo ukapona.\n\n4. Mbinguni nitakapofika,\nFuraha itakuwa\nKuimba juu ya neema\nMilele na milele.''',
    numero: 117,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_118',
    titre: 'NI MWOKOZI MUZURI NINAYE',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. NI Mwokozi mzuri ninaye,\nAlikufa kuniokoa.\nAlitoa uzima wake\nKwa ajili ya watu wote.\n\nAlikufa msalabani,\nAlikufa msalabani.\nKwa ajili ya dhambi zangu zote\nAlikufa msalabani.\n\n2. Aliacha makao juu,\nAkafika ulimwenguni;\nAliteswa kwa ’jili yangu\nNa kunifungulia mbingu.\n\n3. Dhambi zangu ali’chukua,\nKujitwika huzuni yangu,\nNa alijeruhiwa ili\nAniponye na ’nipa raha.\n\n4. Bwana Yesu alifufuka,\nAkarudi mbinguni kwake;\nNa yuaja upesi tena\nAchukue walio wake.''',
    numero: 118,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_119',
    titre: 'TUIMBIE MSALABA WA MWOKOZI',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. TUIMBIE msalaba wa Mwokozi,\nDamu yake inatusafisha sana!\nTunaweza kuwa huru, kwani Yesu\nAlikufa ili ku’ondoa dhambi.\n\nHaleluya, anipenda!\nHaleluya, nafurahi!\nHaleluya, siku moja\nNitamwona Yesu!\n\n2. Twafurahi, kwa neema yake kubwa,\nAlikuja ili tuwe na uzima.\nKama njia ni nyembamba duniani,\nYesu atatupa nguvu na ’hodari.\n\n3. Tuuimbe moto ule ’takatifu\nUli’tupwa na Mwokozi duniani!\nTuvipige vita vilivyo vizuri,\nNasi tutapewa taji ya uzima!''',
    numero: 119,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_120',
    titre: 'MSALABANI NILIMWONA YESU',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. MSALABANI nilimwona Yesu,\nMwokozi wangu aliyeniponya;\nRohoni mwangu giza ikatoka,\nNinafuata Yesu sasa.\n\nNimeokoka kutoka dhambi,\nNa siku zote ninaimba kwa furaha.\nNi vita kali kushinda yote,\nLakini Yesu Yu karibu.\n\n2. Mwokozi wangu ananipa nguvu,\nNikiuona udhaifu huku.\nNa vita yote itakapokwisha,\nNitaipata raha kwake.\n\n3. Mwokozi wangu, ninakufuata,\nFuraha yako inanituliza.\nNa siku moja utakuja tena\nKunichukua huko kwako.''',
    numero: 120,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_121',
    titre: 'YESU NI FURAHA YANGU',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. YESU ni furaha yangu,\nAmejaa pendo kweli.\nAnaweza kusimika\nKila mwenye udhaifu.\nAnanipa ujasiri,\nNguvu, raha na faraja.\nHata nikionja kufa,\nYesu ni Mchunga wangu.\n\n2. Nimefungwa na Mwokozi\nKwa kifungu cha upendo,\nHata kufa hakuwezi\nKunitenga naye Yesu.\nMimi wake siku zote,\nNinataka kumtii.\nKwa neema nimepona,\nNisitumikie dhambi.\n\n3. Kwa mikono ya upendo\nNinakumbatiwa naye,\nSitaweza kutafsiri\nPendo lake kubwa kwangu.\nNapokea nguvu yake,\nYanijaza moyo wangu.\nYesu ananiongoza\nKatika safari yangu.''',
    numero: 121,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_122',
    titre: 'MWOKOZI KAMILI NI YESU PEKEE',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. MWOKOZI kamili ni Yesu pekee,\nMwokozi mzuri halisi.\nKatika wokovu wa Mungu mkuu\nNinalindwa naye kabisa.\n\nKatika wokovu nalindwa salama,\nNaishi kwa maji ya ’hai.\nUpendo wa Mungu unanizunguka\n:/: Na kanihifadhi daima. :/:\n\n2. Baraka ya mbingu inanijaliza\nKwa Roho ya Utakatifu.\nNasifu Mwokozi katika furaha,\nWokovu umenifikia.\n\n3. Mwokozi mzuri ni Yesu pekee,\nAniondoaye mizigo.\nNjiani ananiongoza vizuri,\nAnipa na nguvu ya mwendo.\n\n4. Nitakapomwona Mwokozi mbinguni\nBaada ya shida za huku,\nNitamhimidi na kumshukuru\nBwanangu ninayempenda.''',
    numero: 122,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_123',
    titre: 'MWOKOZI MZURI NINAYE',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. MWOKOZI mzuri ninaye,\nZamani sikumfahamu,\nNa sasa ninamhubiri,\nWengine wapate kuona.\n\nWote watamwona,\nWote watamwona\nMwokozi mzuri ninaye;\nLo! Wote watamwona.\n\n2. Shetani akinizuia\nNisimfuate Mwokozi,\nNajua Bwanangu hodari\nHutaka kunisaidia.\n\n3. Apita wo wote kwa wema,\nMfano ’tukufu wa Baba,\nLakini anitaja ndugu,\nNiliye maskini kabisa.\n\n4. Natoa maisha na pendo\nKwa Yesu aliyenipenda.\nKatika ishara za Mungu\nUpendo wapita yo yote.''',
    numero: 123,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_124',
    titre: 'NAONA PENDO KUBWA MNO',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. NAONA pendo kubwa mno,\nLatoka kwa Mwokozi wangu,\nNi tele kama maji mengi\nYatembeayo baharini.\nLanitolea tumaini\nYa kwamba nitatiwa nguvu;\nNa niwe mhodari tena\nKwa pendo kubwa la Mwokozi!\n\nHaleluya! Ni pendo kubwa\nLinalotoka moyo wako!\nE’ Mungu wangu, nakuomba:\nNijaze pendo lako tele!\n\n2. Na pendo hilo kubwa mno\nHuyaondoa majivuno,\nNa kunifunza haki, kweli,\nUongo wote niuvue!\nHunituliza moyo wangu,\nHuruma nayo hunitia.\nNa sote tuwe na umoja\nKatika pendo la Mwokozi.\n\n3. Nijazwe pendo hilo kubwa,\nLinibidishe siku zote!\nRononi niwe na juhudi\nNitumikie Bwana Yesu!\nHazina yako ’nipeleke\nKwa watu waliopotea,\nWafahamishwe pendo kubwa\nUlilo nalo, Mungu wangu!''',
    numero: 124,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_125',
    titre: 'HALELUYA! NAFURAHI',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. HALELUYA! Nafurahi,\nNinaimba kila siku\nSifa zake Mungu wangu,\nAliyeniweka huru.\n\nHaleluya! Bwana Yesu\nAliniokoa kweli!\nHaleluya! Mimi wake,\nYeye ni Mwokozi wangu!\n\n2. Heri! Niliyeokoka\nKwa neema yake kubwa\nNinataka kumsifu\nMungu na wokovu wake.\nWakinung’unika wote,\nSitawafuata wao;\nNitasifu Mungu wangu\nSiku zote na milele.\n\n3. Kama ndege waimbavyo\nAsubuhi bustanini,\nNa sauti ya mawingu\nIvumavyo baharini,\nHivyo nitamshukuru\nBwana wangu kwa furaha.\nRoho yangu itaimba:\nHaleluya! Sifu Mungu!\n\n4. Haleluya! Furahini\nMbele yake Mungu wetu!\nNa watakatifu wote,\nMwimbieni jina lake!\nMalaika wote pia\nMsifuni Bwana Mungu!\nMbingu zote zitajibu:\n“Haleluya, Haleluya!”''',
    numero: 125,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_126',
    titre: 'E’ MTAKATIFU, MUNGU WA MAJESHI',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. E’ MTAKATIFU, Mungu wa majeshi,\nLeo asubuhi tunaimba mbele yako!\nE’ Mtakatifu, Mungu wa rehema,\nBwana Mwenyezi, tunakuabudu!\n\n2. E’ Mtakatifu, huko ju’ mbinguni,\nLo! Wazee huzitupa taji mbele zako.\nJeshi la mbinguni wanakusujudu\nUliye hai sasa na milele.\n\n3. E’ Mtakatifu! Mtu mwenye dhambi\nHataweza kuuona utukufu wako.\nWewe tu ni mwema, tunakuheshimu,\nE’ mwenye nguvu, pendo na uwezo.\n\n4. E' Mtakatifu, jina lako kubwa\nLisifiwe hapa chini, juu na po pote!\nMungu wa neema, nguvu na uwezo,\nMwenye baraka, tunakushukuru!''',
    numero: 126,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_127',
    titre: 'NIMEUONA MTO SAFI',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. NIMEUONA mto safi,\nKisima cha ajabu,\nNi damu yake Yesu Kristo,\nInayonitakasa.\n\nNimeuona mto safi\nUnioshao moyo wangu.\nNamshukuru Mungu wangu,\nAliniweka huru kweli!\n\n2. Kwa nia na dhamiri safi\nNaendelea mbele,\nNinasafiri kwenda mbingu\nKuona raha yake.\n\n3. Neema kubwa, nimeonja\nUheri wa mbinguni,\nMaana damu yake Yesu\nImeniponya moyo!''',
    numero: 127,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_128',
    titre: 'NINA RAFIKI MWEMA, NAYE ALINIFILIA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. NINA Rafiki mwema, naye alinifilia;\nAlinivuta kwake na amenifanya mpya.\nNi mali yake Yesu tu, ninaongozwa naye,\nAlikomboa mimi kwa agano la upendo.\n\n2. Nina Rafiki mwema, na aliondoa dhambi,\nAliniweka huru na kunipa Roho yake.\nNa vitu vyote ninavyo ninavitoa kwake,\nMaisha yangu ni yake tu, yaimba sifa zake.\n\n3. Nina Rafiki mwema na anayeweza yote,\nPamoja naye Yesu tu nashinda majaribu,\nAtanitwaa kwake ju’ mbinguni kwa furaha,\nNitastarehe katika makao ya milele.''',
    numero: 128,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_129',
    titre: 'NINATAKA KUMSIFU YESU KRISTO',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. NINATAKA kumsifu Yesu Kristo\nAliyeondoa dhambi zangu zote.\nTwende sote sasa tumsifu Yeye\nNa pendo kubwa la Mwokozi!\n\nHaleluya! Yu Mfalme ’kuu!\nHaleluya! Asifiwe!\nAlinisamehe dhambi zote;\nAnilinda kwa salama!\n\n2. Na baraka yake anaimimina,\nKama mvua ikunyavyo juu yangu.\nNastarehe mikononi mwake Yesu,\nRehema yake inatosha.\n\n3. Siku moja nitamwona Yesu Kristo\nKati’ nchi nzuri sana ya furaha,\nMacho yangu yatamtazama Yeye,\nKuona sura ya Mfalme.''',
    numero: 129,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_130',
    titre: 'NINATAKA KUMSIFU YESU BWANA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. NINATAKA kumsifu Yesu,\nBwana wangu mwema.\nAliteswa hata kufa,\nIli niwe huru kweli.\n\nMwimbieni Bwana Yesu\nkwa upendo wake ’kubwa!\nAlilipa deni langu,\nNimewekwa huru kweli.\n\n2. Ninataka ’shuhudia\nPendo kubwa la Mwokozi,\nJinsi alivyoniponya\nNilipopotea mbali.\n\n3. Ninasifu Mwokozi\nKwa uwezo wake bora;\nNaye anitia nguvu\nNimshinde yule mwovu.\n\n4. Ninataka kumwimbia\nYesu Kristo, Bwana wangu.\nAliniokoa kweli,\nNiwe heri siku zote.''',
    numero: 130,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_131',
    titre: 'MIMI MKRISTO, NITA’VYOKUWA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. MIMI mkristo, nita’vyokuwa\nKatika yote mpaka kufa.\nMimi mkristo, ’navyoshuhudu,\nDunia yote ikinicheka.\nMimi mkristo kwa moyo wote\nSababu ninampenda Kristo,\nAliyekufa kwa ’jili yangu,\nAnastahili kupendwa nami.\n\n2. Mimi mkristo, neema kubwa!\nNiliokoka kutoka dhambi.\nMimi mkristo, hata ikiwa\nKatika shida na mapigano.\nMimi mkristo, na ni askari,\nNafanya vita kushinda dhambi.\nAkida wangu ni Bwana Yesu,\nPamoja naye ’tashinda yote.\n\n3. Mimi mkristo, na ni mgeni,\nNimeifunga safari yangu;\nNa sitamani yaliyo huku,\nNinatafuta yaliyo juu.\nMimi mkristo, na nchi yangu\nNi huku juu katika mbingu,\nHamna njaa na shida humo.\nWakristo wote washiba mno.\n\n4. Mimi mkristo! Ni neno zuri\nLa kufariji moyoni mwangu,\nLinanitwaa ju’ ya huzuni,\nNipumzike kwa Mungu wangu;\nMkristo katika kila hali,\nNa nikiitwa na kufa tena,\nKwa raha kubwa nitakubali\nKuchukuliwa mbinguni juu.''',
    numero: 131,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_132',
    titre: 'YESU MWOKOZI, UNANIPENDA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. YESU Mwokozi, unanipenda,\nNa pendo lako ni kubwa kabisa.\nUlinivuta karibu nawe,\nMimi ni wako daima dawamu.\n\n2. Yesu Mwokozi, unanipenda,\nNa pendo lako lapita akili.\nLinanifunza kuzifahamu\nRaha, upole na utu adili.\n\n3. Yesu Mwokozi, unanipenda,\nMimi maskini, dhaifu, mnyonge.\nNimetakaswa kwa damu yako;\nNinakuomba, ’nijaze upendo!\n\n4. Yesu Mwokozi, unanipenda,\nUmenitilia wimbo kinywani\nWa kukusifu hata milele,\nNitakuona halisi mbinguni.''',
    numero: 132,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_133',
    titre: 'UFURAHI, MOYO WANGU',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. UFURAHI, moyo wangu,\nHeri nyingi umepata!\n:/: Sikitiko limekwisha,\nYesu ni wangu nami wake. :/:\n\n2. Ameponya roho yangu,\nYeye ni mpozi mwema;\n:/: Na kwa Roho ’takatifu\nAnabatiza watu wake. :/:\n\n3. Jina langu ni mbinguni,\nYesu ameliandika.\n:/: Mimi mali ya Mwokozi\nHata milele na milele.:/:\n\n4. Na moyoni mwangu sasa\nNinaimba: ‘‘Mungu, Baba!’’\n:/:Ni furaha kubwa sana,\nNina rafiki kila saa. :/:\n\n5. Nimeondolewa dhambi,\nNisitende ovu tena!\n:/: Kwani Yesu aokoa\nKila wakati na dakita. :/:\n\n6. Nyimbo za kusifu Mungu\nZinajaa mbingu zote.\n:/: Moyo wangu unajibu:\n‘‘Amina. Mungu asifiwe’’ :/:''',
    numero: 133,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_134',
    titre: 'WATU WA MUNGU, MSHANGILIENI',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. WATU wa Mungu, mshangilieni kabisa,\nNa mwimbieni Mfalme wa mbingu na nchi!\nMungu Yu nasi\nKwa pendo kubwa, kamili\nIli tupate wokovu.\n\n2. Ona ajabu! Mwokozi aliyejidhili!\nPendo kamili na neema nyingi ya Mungu:\nAlizaliwa,\nAkawa Mwana Adamu,\nAtukomboe na dhambi!\n\n3. Sisi wakristo tumwimbie tena pamoja\nYesu Mwokozi aliye dhabihu ya kweli!\nNa atukuzwe\nHapa na huko mbinguni,\nKwani alitufilia!\n\n4. Yesu Mfalme, kwa pendo uliniokoa,\nNikufuate, nikutumikie daima!\nHuko mbinguni\nNitakusifu milele\nKatika watakatifu.''',
    numero: 134,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_135',
    titre: 'SIFU BWANA, NINYI WATU WAKE',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. SIFU Bwana, ninyi watu wake wote\nKwa neema yake juu yenu!\nYesu Kristo Yu karibu, atulinda\nNa ’ongoza njia yote.\n\nSifu Mungu! Sifu Mungu,\nKwa sababu analinda sisi sote!\nSifu Mungu! Sifu Mungu\nKwa ulinzi wake mwema!\n\n2. Yesu alikusamehe dhambi zote,\nAkuponya udhaifu wako;\nAmekufariji, amefuta chozi,\nNa neema yakutosha.\n\n3. Anakutilia afya, nguvu mpya,\nAkuvika vazi la kushinda.\nKatika mapito yake waongozwa\nNa kulindwa kwa salama.\n\n4. Kaa ndani yake Bwana Yesu Kristo,\nHaki yetu, utakaso wetu,\nNa wokovu na hikima vilevile,\nMkombozi ’timilifu.\n\n5. Bwana Yesu atakuja siku moja,\nAtukaribishe wote kwake.\nTutamtukuza Yeye, Bwana wetu,\nKwani alitukumboa.\n\nUje mbio! Uje mbio!\nBwana Yesu, utukaribishe kwako!\nUje mbio! Uje mbio!\nTunaomba wote: Uje!''',
    numero: 135,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_136',
    titre: 'TUINUE MOYO TUKISIFU YEYE',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. TUINUE moyo tukisifu Yeye,\nAliyechukua dhambi zetu!\nYesu, Mkombozi, asifiwe,\nAliyetufia sisi!\n\nYesu! Tumwabudu Yeye!\nYesu! Sifu jina lake!\nTuimbe kwa furaha\nDuniani pote!\nTumsifu, tumwabudu Yesu!\n\n2. Malaika wote, msifuni Yesu!\nNasi tushukuru Mkombozi!\nWatu wote wasikie sasa\nKwamba Mungu ni upendo!\n\n3. Tushukuru Bwana Yesu, sisi sote,\nTukumbuke pendo lake kuu!\nLisifiwe jina lake jema\nSiku zote na milele!''',
    numero: 136,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_137',
    titre: 'NAFURAHI KWA SABABU KATI’ DAMU',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. NAFURAHI kwa sababu\nKati’ damu ya Yesu\nMoyo umetakaswa,\nNimepata amani.\n\nHaleluya! Haleluya!\nMkombozi asifiwe!\nHaleluya! Haleluya!\nHaleluya! Amina!\n\n2. Sina nguvu, ni dhaifu\nBila Yesu Mwokozi,\nIla kwa nguvu zake\nNasimama imara.\n\n3. Moyo wangu, ufurahi,\nMimi mtu wa Yesu!\nNampenda daima\nNa kumtumikia.\n\n4. Pendo kubwa la Mwokozi\nLanijaza rohoni.\nNina raha kamili,\nMoyo unastarehe.\n\n5. Sifu Mungu, Baba yetu,\nYesu Kristo Mwokozi,\nRoho Mtakatifu!\nHaleluya, Amina!''',
    numero: 137,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_138',
    titre: 'SASA TAYARI KWETU SIKU YA KUOKOKA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. SASA tayari kwetu\nSiku ya kuokoka,\nYesu alitimiza\nYote msalabani.\nWengi wanamjia\nYesu Mwokozi wao,\nWapate kustarehe,\nWapone nafsi zao.\n\nMwana-Kondo’ wa Mungu\nTunakusifu sana!\nUzima uliweka\nKwa ’jili yetu sisi.\nUmetufanya kuwa\nMitume yake Mungu.\nKati’ majina yote\nLako ni kubwa mno.\n\n2. Wewe kwa damu yako\nUlikomboa sisi,\nNa jua la neema\nLinatuangazia.\nTumefahamu sasa\nPendo la Mungu wetu.\nDamu imetuunga\nKati’ agano jipya.\n\n3. Njoo upesi nawe\nUliyesitasita!\nMungu atakujaza\nNeema yake kubwa,\nRaha rohoni mwako\nInayokutuliza,\nMatumaini, nguvu,\nPendo lililo bora.''',
    numero: 138,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_139',
    titre: 'NINA FURAHA KUBWA, NAPUMZIKA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. NINA furaha kubwa,\nNapumzika sana,\nKwa kuwa nimefika\nKwa Mungu, Baba yangu.\nAmeniweka huru\nNa mbali na utumwa,\nNa sasa nakaa salama.\n\n2. Zamani nilidhani\nKuacha dhambi zote,\nLakini sikuweza\nKushinda peke yangu.\nNinamwamini sasa\nMwokozi wangu, Yesu,\nNa yeye ananishindia.\n\n3. Mwokozi wangu, Yesu,\nAliyenifilia,\nAliokoa mimi,\nAngali anipenda;\nNahesabiwa haki\nKatika damu yake,\nInayosafisha kabisa.\n\n4. Na nikijaribiwa\nNa mwili wangu tena,\nNinakumbuka Yesu,\nApita vitu vyote.\nNeema yake kubwa\nKuliko dhambi zangu.\nNinamshukuru Mwokozi.\n\n5. Na sasa Bwana Yesu\nAkaa ndani yangu,\nNeema yake kubwa\nYanizunguka mimi.\nSitasumbuka tena,\nNimejiweka kwake,\nNa Mungu anilinda vema.\n\n6. Shetani akitaka\nKufanya vita sasa,\nSitaogopa yeye\nNa mamlaka yake.\nManeno yake Mungu,\nNi yenye nguvu sana\nKwa wote wanaoamini.\n\n7. Ninaenenda sasa\nKwa jina lake Yesu,\nSalama nitafika\nNyumbani mwa Babangu.\nLakini safarini\nNaimba siku zote,\nNikimshukuru Mwokozi.''',
    numero: 139,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_140',
    titre: 'UKICHUKULIWA NA MASHAKA YAKO',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. UKICHUKULIWA na mashaka yako\nNa kuona hofu kwamba utakwama,\nUhesabu mibaraka yake Mungu,\nNa utashangaa kwa rehema yake.\n\nUhesabu mibaraka yote\nMungu aliyoyakubariki!\nUkumbuke mambo yote pia,\nNa utashangaa kwa rehema yake!\n\n2. Na ukiudhiwa na huzuni nyingi,\nUkiona msalaba ni mzito,\nUhesabu mibaraka kuchwa pia,\nNa kwa moyo wote utasifu Mungu.\n\n3. Wengi watamani mali ya dunia;\nUtajiri wako ni Mwenyezi Mungu.\nUhesabu mibaraka na kumbuka:\nMali haiwezi kufungua mbingu.\n\n4. Na katika mambo yote huku chini\nUkumbuke pendo kubwa la Mwokozi!\nNa ujumlishe mibaraka yote,\nTena mwisho atakuchukua kwake!''',
    numero: 140,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_141',
    titre: 'MWOKOZI WETU ANATUPA FURAHA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. MWOKOZI wetu anatupa\nFuraha duniani,\nAtuongoza kwa neema\nNa anatushibisha.\nTazama, Yupo pamoja nasi,\nNeema haitaisha kamwe!\nHaleluya, Haleluya,\nHaleluya, Amina!\n\n2. Ni vema kumpenda Mungu\nAliyetukomboa,\nVizuri kuwa mtu wake,\nSitapotea kamwe.\nFuraha yetu itabakia,\nIkiwa vyote vingetoweka.\nHaleluya, Haleluya,\nHaleluya, Amina!\n\n3. Ikiwa giza mara nyingi,\nNa jua likifichwa,\nNa tukijaribiwa huku,\nTwajuwa ni kwa muda.\nMbinguni hatutaona kamwe\nHuzuni wala machozi tena.\nHaleluya, Haleluya,\nHaleluya, Amina!\n\n4. Na tusisumbukie tena\nChakula wala nyumba,\nMaana vyote twavipata\nKwa ne’ma yake Mungu.\nNjiani yote atuongoza,\nAichukuwa mizigo yetu.\nHaleluya, Haleluya,\nHaleluya, Amina!\n\n5. Ikiwa vema huku chini\nKutegemea Yesu,\nFuraha gani huko juu\nKuona uso wake!\nTutaiona furaha tele,\nNa utukufu hautaisha,\nHaleluya, Haleluya,\nHaleluya, Amina!''',
    numero: 141,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_142',
    titre: 'KWA NAMNA NYINGI NILITAFUTA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. KWA namna nyingi nilitafuta\nKupata raha moyoni mwangu.\nUnyonge wangu haukukoma\nIla kwa Bwana Yesu.\n\n2. Na moyo wenye hatia nyingi\nNilimwendea Mwokozi wangu,\nNa alinipa wokovu wake\nNa nguvu ya kushinda.\n\n3. Kwa pendo kubwa Mwokozi wangu\nAliuweka uzima wake,\nSi kitu mimi ulimwenguni,\nNina wokovu kwake.\n\n4. Ijapo ninachukiwa huku\nNi mteule wa Bwana Yesu,\nNapenda sasa kumfuata,\nNifike kwake Mungu!''',
    numero: 142,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_143',
    titre: 'HERI HALISI, YESU NI WANGU',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. HERI halisi, Yesu ni wangu!\nYeye Mchunga, mimi ni wake.\nHeri yakini, yote ni heri,\nRoho na moyo zimeokoka.\n\nYesu ni wimbo na raha yangu,\nNitamsifu hata milele!\nNa nitamwona huko mbinguni.\nYesu ni wangu na mimi wake.\n\n2. Nilijitoa kwa Bwana Yesu,\nNa nilipewa wokovu wake.\nHuko mbinguni kuna furaha\nJuu ya mtu aliyetubu.\n\n3. Sasa naweza kusifu Yesu,\nNa roho yangu inafurahi.\nMimi si kitu mbele ya Mungu,\nBali ni heri. Namshukuru!\n\n4. Nimebatizwa katika Roho,\nShangwe ya mbingu imo rohoni.\nMoto moyoni, pia kinywani,\nNashuhudia pendo la Mungu.''',
    numero: 143,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_144',
    titre: 'SAWA NA KISIMA SAFI',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. SAWA na kisima safi,\nChenye maji mengi, mema,\nNi upendo wa Mwokozi,\nUkaao ndani yake.\nYesu amelifungua\nLango zuri la mbinguni\nIli niingie humo\nKwa neema yake kuu.\n\n2. Kama ndege awindavyo\nMara nyingi nili’umwa,\nMoyo wangu ulilia,\nYesu hakunifukuza.\n\n3. Ni ajabu kubwa kweli,\nAlinisamehe yote!\nJuu ya rehema yake\nNinaimba kwa furaha.\n\n4. Asubuhi ya uzima\nNitafika mlangoni;\nKwa ajili ya upendo\nNitapata kuingia.''',
    numero: 144,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_145',
    titre: 'MUNGU WANGU MKUU WANIJAZA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. MUNGU wangu mkuu,\nWanijaza Mwenyewe,\nNa uzima u katika Wewe.\nNina raha moyoni\nNa amani halisi,\nNinaishi katika upendo.\n\n2. Sasa ninakusifu Wewe,\nYesu Mwokozi,\nUnakaa rohoni daima.\nKila ’nachohitaji\nWanijaza kwa pendo.\nWewe yote, na mimi si kitu.\n\n3. Jina lako ni “Pendo” ,\nKulijua hakika\nKunafanya safari nyepesi.\nMimi mtu dhaifu,\nIla kwako ni nguvu;\nNiongoze katika safari!\n\n4. Mbele ya uso wako\nGiza yote yatoka;\nNuru inaangaa moyoni.\nYamepita ya kale,\nSasa yote ni mapya.\nNi maisha ya heri ajabu!''',
    numero: 145,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_146',
    titre: 'KARIBU NA WENZANGU NILIPOTEA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. KARIBU na wenzangu nilipotea njia,\nRohoni mwangu njaa, na sikuona raha,\nLakini sasa Yesu ni Mchungaji wangu,\nNaandamana naye siku zote.\n\n2. Katika shamba lake nimefuata Yesu,\nNinapajua anapolisha kundi lake.\nNa penye maji hai napunzika sana,\nNaona raha hapo siku zote.\n\n3. Lakini Mchungaji apita vitu vyote,\nUzima aliweka kwa ’jili ya kondoo.\nNikumbukapo Yesu, sioni kitu tena\nCha kupendeza ila Yeye, Bwana.\n\n4. Naimba kwa furaha rohoni mwangu hivi:\n“Upendo wako, Yesu, ninausifu sana!”\nNa jina lake Yesu ni kama manukato;\nAnanilinda vema siku zote.''',
    numero: 146,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_147',
    titre: 'MWENYEZI MUNGU WA ZAMANI ZOTE',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. MWENYEZI Mungu wa zamani zote\nNi kimbilio la vizazi vyote.\nKatika vita anawashindia\nNa ku’okoa watu wake wote.\n\nMfalme ’kubwa ndiye Mungu,\nVitani anatushindia.\nKwa shangwe kubwa tumsifu\nNa tumwimbie Mungu wetu!\n\n2. Mwenyezi Mungu wa zamani zote\nAliokoa watu utumwani,\nKwa njia kavu katika bahari\nWakafikishwa ng’ambo kwa salama.\n\n3. Mwenyezi Mungu wa zamani zote\nKarmeli alishinda yule Ba’li,\nAkasikia ombi la Eliya,\n’katuma moto juu ya sadaka.\n\n4. Mwenyezi Mungu wa zamani zote\nAkawa naye Daudi vitani;\nAki’tupia jiwe Goliati,\nShujaa alikufa mara moja.\n\n5. Mwenyezi Mungu wa zamani zote,\nUshenzi wote utashindwa naye.\nAtamseta yule mdanganyi,\nShetani, chini ya miguu yake.\n\n6. Mwenyezi Mungu wa zamani zote\nAtuongoza kwa mikono yake;\nAnatulinda hatarini huku,\nMbinguni tutafika kwa salama.''',
    numero: 147,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_148',
    titre: 'NGUVU ILE ILISHUKA JU’ YA WANAFUNZI',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. NGUVU ile ilishuka ju’\nYa wanafunzi wote\nMjini mwa Yerusalem’\nSiku ya Pentekoste,\nLo! Nguvu hiyo ya Mwokozi\nNi sawa leo; shukuru Mungu!\n\nKarama, karama, karama yake Mungu\nNi sawa hata leo, ni sawa hata leo!\nKarama, karama, karama yake Mungu\nNi sawa hata leo!\n\n2. Yesu aliwapa ahadi:\n“Mtapokea nguvu!’’\nNa Roho akashuka na\nWakamsifu Mungu.\nWalio wenye udhaifu,\nWakahubiri kwa uthabiti.\n\n3. Roho yule aingiapo\nAnatutia nguvu,\nTupate kwa imani ku’\nKushinda yule mwovu.\nKwa moyo wenye moto safi\nTuite watu kwa Mkombozi!\n\n4. Uingie sasa rohoni,\nUwashe moto wako,\nTupate kusimama kwa\nUsafi siku zote!\nUfike sasa kama mbele\nWakati huo wa Pentekoste!''',
    numero: 148,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_149',
    titre: 'UZIMA NINAO MOYONI DAIMA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. UZIMA ninao moyoni daima,\nUzima ni Yesu Mwokozi,\nAliyeingia rohoni hakika,\nAkanitilia ’hodari.\nNashiba rohoni kwa raha ya Mungu,\nNa moto wa mbingu ulimo.\nNapata kukaa nuruni kabisa,\nNa nuru ni Yesu Mwokozi.\n\n2. Baraka zilizo katika wokovu\nNilizozipata kwa bure,\nNilipoungama makosa na dhambi\nKwa Yesu Mwokozi wa wote.\n\n3. Mwokozi aliniondoa porini;\nNatunzwa shambani mwa Mungu.\nNa sasa kwa mvua na jua la mbingu\nNinamzalia matunda.\n\n4. Naona maisha ni yenye maana:\nNi ku’tumikia Mwokozi.\nKuishi ni Kristo na kufa faida\nKwa kila mkristo wa kweli.''',
    numero: 149,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_150',
    titre: 'NATAKA KUPOKEA BARAKA YAKE MUNGU',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. NATAKA kupokea baraka yake Mungu,\nNataka kubatizwa kwa Roho ’takatifu.\nJu' ya ahadi yake napumzika sana,\nAliahidi mimi kupata Roho yake.\n\nSawa na bahari, sawa na bahari\nNi neema yake anileteayo.\nAnayenijaliza,\nAnayeniponyesha,\nNi Mwokozi wangu. Asifiwe sana!\n\n2. Kanisa lake Mungu linaipata mvua,\nVijito vya baraka vinamiminwa sasa.\nFuraha ya uzima ni kubwa kati yetu.\nTuimbe haleluya! Tumshukuru Yesu!\n\n3. Mawimbi ya wokovu yanatujia sasa.\nE’ Mungu, tunaomba: Ujaze sisi sote!\nWatakatifu wako watakasike sana!\nTuimbe haleluya! Tumshukuru Yesu!\n\n4. Mawimbi ya wokovu yaliyofika kwetu,\nE’ Mungu, uyatume ulimwenguni mwote,\nMaelfu kati’ watu wapate kuokoka,\nWaimbe haleluya, Wamshukuru Yesu!''',
    numero: 150,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_151',
    titre: 'MWOKOZI, MOTO SAFI, WAZI, TUNATAKA MOTO',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. MWOKOZI, moto safi,\nTunataka moto wako juu yetu!\nTwaomba kwako leo, Mungu:\nWasha moto ndani yetu, washa moto!\nTazama sisi hapa leo,\nNa tupe Roho yako, Mungu!\nTupate Pentekoste yetu!\nTunangoja moto wako juu yetu!\n\n2. E’Mungu wetu, usikie,\nTunaomba moto wako juu yetu!\nTwadumu katika kuomba:\nWasha moto ndani yetu, washa moto!\nTunahitaji nguvu yako\nIli tutakasike sana\nNa kuyashinda majaribu.\nTunangoja moto wako juu yetu.\n\n3. Mioyo iliyo baridi\nInataka moto wako juu yao.\nHitaji zote tutajazwa,\nTukipata moto wako ndani yetu.\nSiwezi mimi peke yangu\nKushinda mambo ya Shetani,\nLakini ninaomba, Mungu:\nWasha moto ndani yangu, washa moto!\n\n4. Naomba moto juu yangu\nIli nihudumu huku kwa upendo;\nNauhitaji moto wako,\nNiwe na bidii nyingi na ’hodari.\nJu’ ya madh’bahu takatifu\nNakuwekea moyo wangu, Mungu,\nWasha moto, washa moto, washa moto!''',
    numero: 151,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_152',
    titre: 'YESU ALIPOLALA KATI’ KABURI',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. YESU alipolala\nKati’ kaburi,\nGiza ilifunika\nYesu Mwokozi.\n\nAlifufuka hakika, akavunja nguvu ya mauti,\nMshindaji ju’ ya mamlaka yote;\nNi Mfalme wa milele na milele,\nAlikuwa amekufa,\nNa tazama amefufuka!\n\n2. Walinzi wa kaburi\nWalikimbia,\nMuhuri na vifungo\nVilivunjika.\n\n3. Kufa hakukushika\nMawindo yake.\nAlilivunja pingo,\nYesu Mwokozi.''',
    numero: 152,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_153',
    titre: 'YESU KRISTO ALIFUFUKA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. YESU Kristo alifufuka,\nAkatoka kaburini.\nFurahini na msifuni,\nKwani alishinda kufa!\n\nHabari njema:\nAlifufuka katika wafu!\nYesu Yu hai,\nNaye atakuja tena.\n\n2. Nguvu za mauti na dhambi\nYesu Kristo ali’shinda;\nNasi sote tutashinda kwa\nNguvu yake ya ajabu.\n\n3. Kundi dogo, msiogope,\nBwana Yesu ni Uzima!\nAliziondoa dhambi na\nAnawafariji moyo.\n\n4. E’ wakristo, shangilieni,\nYesu aliyefufuka\nYu karibu, atakuja na\nAtatufufua sote!''',
    numero: 153,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_154',
    titre: 'E’ RAFIKI, SHAKA ZAKO ZIPELEKE',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. E’ RAFIKI, shaka zako\nZipeleke kwake Yesu!\nAliyemwamini Yeye\nHataona haya kamwe.\n\nNaamini, naamini,\nNinakuamini, Yesu.\nNaamini, naamini,\nNaamini Neno lako.\n\n2. Dhambi zote ziungame\nNa kwa damu utakaswe,\nAkuvike haki yake!\nAtakufikisha kwake.\n\n3. Masumbuko yako yote\nUyaweke mbele yake!\nUkipita uvulini,\nBwana Yesu yupo nawe.\n\n4. Na furaha yako pia\nIjulike kwake Yesu,\nYeye, Bwana ju’ ya yote,\nAkubarikie yote!\n\n5. Ujitoe kwake Yesu:\nRoho, mwili na akili!\nVyote vya maisha yako\nAnataka ku’takasa.''',
    numero: 154,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_155',
    titre: 'KATIKA MATUMAINI KWA MUNGU',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. KATIKA matumaini\nKwa Mungu wangu\nNakaa katika raha\nNa utulivu.\nNa Yeye ni mwamba wangu,\nImara sana;\nKatika dhoruba zote\nAnanilinda.\n\n2. Mwenyezi ni ngome yangu,\nSitatetema;\nSiwezi kuhofu tena\nHuzuni, shida.\nIkiwa ni vita kali,\nSitaogopa;\nNi msaidizi wangu\nKaribu nami.\n\n3. Mahali pa kustarehe\nKwa Yesu Kristo;\nNapata amani, raha,\nFuraha kubwa.\nFaraja katika shida,\nGizani nuru,\nNa katika pepo nyingi\nBandari nzuri.''',
    numero: 155,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_156',
    titre: 'WALIAMINIO NENO LAKE MUNGU',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. WALIAMINIO Neno lake Mungu\nWatapata nguvu kuwa washindaji,\nKwani Bwana Yesu alituahidi\nAtathibitisha Neno kwa ishara.\n\nShinda, shinda, nguvu ya kushinda!\nShinda, shinda, shinda kila saa!\nMungu atatupa nguvu ya kushinda,\nTumtii Yesu, nasi tutashinda!\n\n2. Kati’ vita kali\nTuwe na ’hodari,\nMungu ndie nguvu yetu ya ajabu!\nTu’amini Neno:\nNa ishara kubwa\nZitafuatana na waaminio.\n\n3. Nguvu ya kupiga vita ya imani,\nNguvu ya kupinga hila za Shetani!\nYesu amesema:\nNa ishara kubwa\nZitafuatana na waaminio.''',
    numero: 156,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_157',
    titre: 'HAIDHURU KWANGU HUKU CHINI',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. HAIDHURU kwangu huku chini\nUtajiri au umaskini,\nIla Bwana Yesu awe nami;\nNinatunzwa naye siku zote.\n\n2. Haidhuru kama ninakuta\nShida nyingi katika safari,\nIla Mchungaji wangu mwema\nAnilinde na kuniongoza.\n\n3. Haidhuru kama tunakaa\nKatika baridi au hari,\nKwa sababu ukombozi wetu\nUnakaribia. Haleluya!\n\n4. Haidhuru kama sitapata\nUtukufu na heshima huku;\nNikifanywa kama takataka,\nYanipasa kupendeza Bwana!\n\n5. Haidhuru kama njia yangu\nInanichokeza mara nyingi,\nBasi, nisigombe na wenzangu,\nNa pamoja tutashangilia!\n\n6. Haidhuru kama tukiona\nSisi si wakubwa huku chini.\nTuwe watumishi wake wema,\nNa tutaingia kwake Bwana!\n\n7. Haidhuru kama twasafiri\nKatika dhoruba ya bahari,\nKwani Yesu ni nahodha wetu,\nAtatufikisha bandarini.''',
    numero: 157,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_158',
    titre: 'HERI MTU ANAYE AMINI MUNGU BABA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. HERI mtu anayeamini\nMungu Baba na Yesu Mwokozi!\nHeri mtu aifuataye\nNjia nzuri ’endayo mbinguni!\n\nUsifiwe, Yesu Kristo!\nU Mwokozi mzuri kabisa!\nUsifiwe, Yesu Kristo!\nBwana, nitakuona mbinguni.\n\n2. Kwa furaha tunakusanyika\nKusikia Maneno ya Mungu,\nNa mbinguni karibu ya Yesu\nTutamshangilia daima.\n\n3. Kuamini pasipo kuona\nInafaa katika safari.\nSiku moja atatuchukua,\nTutakaa milele mbinguni.''',
    numero: 158,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_159',
    titre: 'NASIKIA BWANA YESU ANIITA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. NASIKIA Bwana Yesu\nAniita ku’fuata.\nAliponitangulia\nNifuate Yeye njia yote!\n\nNifuate nyayo zake,\nNifuate nyayo zake,\nNifuate nyayo zake,\nNifuate Yeye njia yote!\n\n2. Nifuate njia yote,\nNa kwa maji nibatizwe,\nNa kujazwa Roho wake!\nNifuate Yesu njia yote!\n\n3. Nifuate, nihubiri\nNeno lake la uzima\nKati’ watu wa dunia!\nNifuate Yesu njia yote!\n\n4. Nifuate Bwana Yesu\nKatika mateso, kufa,\nNa nifufuliwe naye!\nNifuate Yesu njia yote!\n\n5. Atanipa ne’ma yake\nKwa kudumu hata mwisho,\nHata nitakapomwona\nBwana Yesu huko ju’ mbinguni.''',
    numero: 159,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_160',
    titre: 'AHADI ZOTE ZA MUNGU WETU',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. AHADI zote za Mungu wetu\nZinasimama hata milele.\nMilima yote ikianguka,\nAhadi hazipunguki.\n\nAhadi zake zinasimama,\nHazipinduki hata milele.\nIkiwa nyota zingezimika,\nAhadi zake zinadumu.\n\n2. Ahadi zake zinasimama\nKatika shida, katika giza.\nNa nikichoka kwa vita kali,\nAhadi hazipunguki.\n\n3. Ahadi zake zinasimama\nKatika homa, katika kufa.\nNafarijiwa na Baba yangu,\nAhadi hazipunguki.\n\n4. Ahadi zake zinasimama;\nNitaamshwa katika kufa.\nKwa Baba nitapokea taji;\nAhadi hazipunguki.''',
    numero: 160,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_161',
    titre: 'UMESHIRIKIANA NAYE YESU',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. UMESHIRIKIANA naye Yesu\nKama tawi ndani yake mzabibu?\nUna raha iliyo timilifu,\nUmejazwa Roho yake ’takatifu?\n\nUmeshirikiana naye Yesu\nKama tawi ndani yake mzabibu?\nKuna raha na starehe\nKatika kuomba Mungu;\nAkutia nguvu ya kushinda yote.\n\n2. Umepata imani ishindayo\nKatika mashaka, shida huku chini?\nUmepata neema ya kudumu\nInayokulinda katika hatari?\n\n3. Kwake Yesu mahali pa amani,\nHuko ndiko pa kuburudika sana;\nAtujaza mioyo utulivu,\nTunakaa raha na mstarehe pia.\n\n4. Twafurahi kwa wema wake wote,\nTwamsifu kwa ulinzi wake pia.\nHata tukiudhiwa huku chini,\nAtatufikisha kwake huko juu.''',
    numero: 161,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_162',
    titre: 'BWANA YESU UWE NAMI',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. BWANA Yesu, uwe nami,\nBila Wewe nina hofu,\nUnikaribie sana,\nUwe Kiongozi wangu!\n\nSitaona hofu tena,\nYesu Kristo Yu karibu.\nNinataka kufuata\nNjia yako siko zote.\n\n2. Bwana Yesu, uwe nami,\nKwani mimi ni dhaifu;\nNa unifariji moyo\nKila siku ya huzuni!\n\n3. Bwana Yesu, uwe nami\nSiku zote safarini,\nZikiwako shida huku\nAu raha na amani!\n\n4. Bwana Yesu, uwe nami!\nNahitaji nuru yako\nHata nitafika mbingu,\nKao letu la milele!''',
    numero: 162,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_163',
    titre: 'AHADI ZOTE ZA MUNGU ZINASIMAMA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. AHADI zote za Mungu\nZinasimama kweli,\nNa zilitiwa muhuri\nKwa damu yake Yesu.\nMbingu zikiondoka,\nNchi ikitoweka,\n’aminiye ’taona:\nAhadi zinadumu.\n\n2. Fanya kama Ibrahimu:\nUangalie juu!\nNyota ukizihesabu,\nImani itaota.\n\n3. Katika giza njiani\nTutaamini tu.\nMuda kitambo, na tena\nJua litaangaa.\n\n4. Watu wakitusumbua,\nTutaamini tu.\nYesu atusaidia\nMajaribuni pote.\n\n5. Kama rafiki wakosa,\nTutaamini tu.\nYesu, Rafiki mkubwa,\nAtabaki daima.\n\n6. Katika mambo yo yote\nTutaamini tu.\nTutaviona mbinguni\nTulivyoviamini.''',
    numero: 163,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_164',
    titre: 'ISRAELI WAKE MUNGU, KIMYA SANA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. ISRAELI wake Mungu, kimya sana,\nWa’zunguka Yeriko kwa imani.\nMalaika wake aliwaongoza,\nNa waliendelea kwa kushinda.\n\nTwende kwa kushinda, twende kwa kushinda!\nKwa damu yake Yesu twende kwa kushinda!\nTegemea Mungu, anatuongoza,\nNa kwa imani twende kwa kushinda!\n\n2. Na Daudi, mchungaji, alikwenda\nMbele yake Goliathi bila woga;\nKwa imani alitupa jiwe lake,\nKwa jina lake Mungu akashinda.\n\n3. Danieli aliomba kila siku,\nHakuhofu pango la simba kamwe;\nKatika imani aliomba Mungu,\nAkaokoka katika hatari.\n\n4. Hata safarini huku kwenda mbingu\nNikipita katika jangwa kavu,\nNa kupatwa na ’jaribu mbalimbali,\nNajua kwa imani nitashinda.\n\n5. Na imani inashinda hali zote,\nInaruka juu ya mambo yote.\nNiliye dhaifu sitahofu kamwe,\nKwa kuwa Mungu ananiokoa.''',
    numero: 164,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_165',
    titre: 'NITAZAMAPO KWA IMANI MWOKOZI',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. NITAZAMAPO kwa imani\nMwokozi wangu, nafurahi,\nNaona utajiri wake\nAnao Mungu, Baba yangu.\nHaleluya! Furaha kubwa,\nAniongoza siku zote!\nNikiuona udhaifu,\nAnichukuwa mikononi.\n\n2. Sitasumbuka mimi tena,\nFuraha inanijaliza;\nNa kwa upendo na rehema\nAnisikia, nikiomba.\nHaleluya! Ananitunza,\nNinastarehe kwa salama.\nNa ukitaka raha yake,\nMfungulie moyo wako!\n\n3. Nilipokaa kati’ dhambi\nNikaliona sikitiko,\nLakini shaka na hukumu\nZimeondoka kwangu sasa.\nHaleluya! Anipa nguvu\nYa kuyashinda majaribu.\nRohoni mwangu nina raha,\nNalindwa nayo siku zote.\n\n4. Dhihaka na mateso yote\nSi kitu kwangu kwa sababu\nNafarijiwa na Mwokozi,\nNakumbatiwa na babangu.\nHaleluya! Mwokozi wangu\nAnanitunza kwa neema.\nNikiwa na ’dhaifu tena,\nNatiwa nguvu kwa imani.''',
    numero: 165,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_166',
    titre: 'TUKIENDA PAMOJA, KUSHIKANA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. TUKIENDA pamoja,\nKushikana na Mungu,\nTunapata amani na raha;\nTukifanya daima\nYanayompendeza,\nYu karibu kutusaidia.\n\nRaha, furaha\nTwazipata kwa Yesu,\nTukidumu katika\nKuamini, kutii.\n\n2. Ikiwapo dhoruba,\nNa mawimbi ya’vuma,\nYanakoma kwa Neno la Yesu.\nTukiona jaribu\nNa kuhofu adui,\nTutashinda kwa nguvu ya Yesu.\n\n3. Tukibeba mizigo\nAnatustarehesha,\nTunapata furaha halisi.\nMasumbuko yatoka,\nGiza inageuka\nKuwa nuru njiani mwa Mungu.\n\n4. Tuna raha ya Mungu\nKatika mashindano\nTukitii na tukiamini.\nJua lake la pendo\nLinawaangazia\nWatiio na waaminio.''',
    numero: 166,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_167',
    titre: 'NINAJUA RAFIKI MWEMA, ANITUNZA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. NINAJUA Rafiki mwema,\nAnitunza sana kila siku.\nAyaponya majeraha\nNa machozi ayafuta.\nJina lake ni Yesu Kristo.\n\nNajua Rafiki mwema,\nNa Yeye ajaa ne’ma.\nNikiomba asikia,\nAfariji nikilia.\nNdiye Yesu, na si mwingine.\n\n2. Nimepata Rafiki mwema,\nAfariji na kunipa raha.\nNikitegemea Yeye\nSitahofu maadui;\nNa rafiki ni Yesu Kristo.\n\n3. Nifikapo mtoni pale\nPaitwapo kufa na mtego,\nSitafadhaika hapo,\nYesu atakuwa nami;\nNi Rafiki mkubwa mno\n\n4. Pwani nzuri ya huko juu\nNifikapo kwa neema kuu,\nNitaimba kwa kinubi,\nNitasifu Yesu sana\nKwa upendo na urafiki.''',
    numero: 167,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_168',
    titre: 'NINA USHIRIKA NA FURAHA KUBWA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. NINA ushirika na furaha kubwa,\nNamtegemea Bwana Yesu.\nWingi wa uheri kwa waaminio:\nKustarehe mikononi mwake!\n\nRaha, raha,\nraha kwa Yesu, na amani!\nRaha, raha,\nNastarehe mikononi mwake.\n\n2. Raha ya ajabu ni rohoni mwangu,\nNamtegemea Bwana Yesu.\nNuru huangaza njia niendayo;\nNastarehe mikononi mwake.\n\n3. Woga na huzuni zinatoka kwangu,\nNikitegemea Bwana Yesu.\nNinafarijiwa siku zote naye,\nNastarehe mikononi mwake.''',
    numero: 168,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_169',
    titre: 'ASKARI WA IMANI SISI',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. ASKARI wa imani sisi,\nKwa shangwe tunaendelea,\nHata vita ’kiwa kali\nTuna nguvu na ’hodari.\nTuna upanga wa imani,\nNi neno lake Mungu wetu;\nNa kwa jina lake Yesu\nTunashangilia sasa.\n\nMbio tutaacha huku,\nVita ikiisha.\nTutaingiamo mbingu\nKustarehe humo.\nWao washindao huku,\nWatapewa taji\nKwa mkono wa Mwokozi,\nAnayewapenda.\n\n2. Tuvae kila mtu sasa\nSilaha zote zake Mungu.\nNa mishale ya Shetani\n’tazimika mbele yetu.\nTukimtii Bwana wetu,\nTwaendelea kwa ’hodari,\nNa kwa nguvu za ahadi\nTutakuwa washindaji.\n\n3. Na ukipungukiwa nguvu,\nKatika vita ukishindwa,\nYesu atakutilia\nNguvu mpya ya kushinda.\nKwa nyimbo za kushangilia,\nUtahimili shida zote,\nNa kupata kuokoa\nWenye dhambi na makosa.''',
    numero: 169,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_170',
    titre: 'NIKIONA SHIDA HUKU KATIKA SAFARI',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. NIKIONA shida huku\nKatika safari,\nYesu aninong’oneza\nNeno la faraja.\nAnanipa raha tele\nNa furaha ya ajabu.\nNinaandamana naye\nSasa na milele.\n\n2. Tena njia ikienda\nJuu ya milima,\nNinakaribia mbingu,\nNuru inang’aa.\nNa katika nuru hii\nNinaona kwa uwazi\nNchi ya ahadi yake\nNa urithi wangu.\n\n3. Kwa imani ninaimba,\nHata hatarini,\nNjia ’kiwa ndefu huku,\nNitavumilia.\nNyota za ahadi zake\nZinang'aa kwa usiku,\nZinaniongoza vema\nHata huko juu.\n\n4. Kama Musa ali’ona\nNchi ya ahadi,\nKadhalika natazama\nNchi yangu juu;\nNinaisalimu sasa\nKwa uheri na imani.\nNatamani kufikako,\nKwa urithi wangu.\n\n5. Vya hatari vikifika\nKati’ njia tena,\nYesu Yu pamoja nami,\nAnichunga vema.\nNinaendelea mbele,\nNa mbinguni nifikapo\nNyimbo nzuri nitaimba\nNa wakristo wote.''',
    numero: 170,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_171',
    titre: 'MWENYEZI MUNGU NGOME KUU',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. MWENYEZI Mungu ngome kuu,\nSilaha ya imara!\nKatika shida na huzuni\nTwategemea Yeye.\nMwovu akikaribia\nKututia woga,\nAkijithibitisha\nKwa hila na jeuri,\nTusimwogope yeye!\n\n2. Kwa nguvu yetu tu dhaifu,\nNa tungeshindwa hima,\nIla Mwenyezi Yupo nasi,\nTwaambatana naye.\nUkitaka jina lake,\nNdilo Yesu Kristo;\nAliye Mshindaji\nNa mwenye mamlaka,\nMfalme wa milele.\n\n3. Dunia yote ikijaa\nMajeshi ya gizani,\nTuliye naye Mungu wetu,\nHatutaona hofu.\nMwovu amehukumiwa,\nHana nguvu tena\nYa kutuangamiza\nMaungo wala robo;\nAshindwa na Mwenyezi.\n\n4. Maneno yake Mungu wetu,\nTushikamane nayo!\nHatushindii vya dunia,\nVya juu twatafuta.\nTu hodari siku zote,\nHata hatarini;\nUzima twauweka\nKutii Mungu wetu:\nUfalme una Yeye.''',
    numero: 171,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_172',
    titre: 'SISI TU VIUNGO VYA MWILI ’MOJA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. SISI tu viungo vya mwili ’moja,\ntunasaidiana.\nUtumishi wetu tunaupenda\nna twasaidiana.\n\nTwasaidiana sote,\nTwasaidiana sote.\nTwamaliza kwa Shangilio na\nKwa bidii kazi yetu.\n\n2. Twafurahi kwa utumishi,\nhata tukiwa peke yetu;\nWalakini heri zaidi\nkama tukisaidiana.\n\n3. Ikiwezekana kwa mchwa ’dogo\nkujenga kisuguu,\nSisi nasi kwa nguvu yake Mungu\ntutamaliza kazi.\n\n4. Na umoja wetu ni wa thamani,\nunapendeza Mungu;\nAnatubariki kwa neema,\nanatupa tunu kubwa.\n\n5. Twakuomba, Bwana,\n’tuunganishe, tujaze pendo lako!\nNa kwa Roho yako utubatize,\ntuhudumie Wewe!''',
    numero: 172,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_173',
    titre: 'MAISHA KATIKA DUNIA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. MAISHA katika dunia\nNi kama kupanda na ’vuna:\nApandaye katika mwili\nAtavuna uharibifu;\nTukitumikia Mwokozi\nTutapata thawabu mbinguni;\nYafaa kuishi na kufa\nKatika Maneno ya Mungu.\n\n2. Kwa neema kubwa kabisa\nTumekubaliwa na Mungu,\nKwa neema kubwa zaidi\nTwapata kumtumikia.\nKuishi kwa ’jili ya Yesu\nKati’ yote ya dunia hii\nNa kuitangaza Injili\nNi faida kwetu kabisa.\n\n3. Wakristo wata’poingia\nMbinguni kusifu Mwokozi,\nNa mimi nataka kufika\nKuimba pamoja na wao.\nTutamshukuru Mwokozi\naliyetununua kwa damu;\nWaliohudumu kwa pendo\nWatamhimidi milele!''',
    numero: 173,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_174',
    titre: 'PENDO KUBWA LA BABANGU LINANG’AA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. PENDO kubwa la Babangu\nLinag’aa sikuzote,\nWalakini anataka\nSisi tuwe nuru huku!\n\nNuru yetu iangae\nMbele ya wenzetu huku,\nHata mtu ’moja moja\nAione njia njema!\n\n2. Dhambi zimetia giza\nHuku chini duniani,\nWalakini watu wengi\nWanatazamia nuru.\n\n3. Ndugu yangu, angalia,\nTaa yako iwe safi!\nNa kwa nuru waokoe\nWenzi waliopotea!''',
    numero: 174,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_175',
    titre: 'SHAMBA LA MUNGU LIMEIVA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. SHAMBA la Mungu limeiva,\nLi tayari sasa kuvunwa.\nWavunaji, mfike mbio\nKuyavuna mavuno yake!\n\nBwana Yesu, twakuomba,\nUwatume watenda kazi\nWakusanye miganda yote\nKwako Yesu, Mwokozi mwema!\n\n2. Uwatume mapema sana,\nNa wengine kati’ mchana,\nHata saa ya magharibi\nUwaite wavuni wako!\n\n3. E’ mkristo, anakuita,\nWende mbio, usichelewe!\nMacho yako uyainue,\nKwani Yesu aja upesi!''',
    numero: 175,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_176',
    titre: 'MUNGU AKUTAKA KATI’ SHAMBA LAKE',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. MUNGU akutaka kati’ shamba lake,\nNenda na wengine kumtumikia!\nUjitowe kweli kwake Mungu wetu!\nUhubiri Neno lake pande zote!\n\n2. Ukumbuke Yesu, jinsi apendavyo!\nAnawatafuta waliopotea.\nUwapende nawe kwa upendo wake,\nNaye atakupa nguvu na baraka!\n\n3. Uliyemwamini, nenda mbio sana\nKati’ shamba lake, usingoje bure!\nUtumike vema, omba kwa bidii,\nNa thawabu yako utaipokea!''',
    numero: 176,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_177',
    titre: 'NIPE HABARI YA YESU, UIANDIKE ROHONI',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. NIPE habari ya Yesu,\nUiandike rohoni!\nUniimbie zaburi\nYa kumsifu Mwokozi,\nSifa iliyotangazwa\nNa malaika zamani:\nMungu wa ju’ atukuzwe,\nIwe amani duniani!\n\nNipe habari ya Yesu,\nUiandike rohoni!\nUniimbie zaburi\nYa kumsifu Mwokozi!\n\n2. Nipe habari ya Yesu,\nJinsi alivyohimili\nShida, jaribu na teso\nNa umaskini na bezo!\nMaradhi zangu na dhambi\nAka’chukuwa mwenyewe,\nKila wakati tayari\nKusaidia wahitaji.\n\n3. Nipe habari ya Yesu,\nYa msalaba na kufa,\nTaja kaburi mwambani,\nAlipotoka Mwokozi!\nPendo la Yesu ni kubwa,\nAliyekufa Golgotha,\nAkafufuka hakika,\nNamshukuru siku zote!''',
    numero: 177,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_178',
    titre: 'YESU KUTOKA MBINGUNI ALIINGIA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. YESU kutoka mbinguni\nAliingia huku\nNchi ya giza na dhambi,\nIli atuokoe.\n\nNenda, nenda!\nFanya mapenzi ya Yesu!\nOmba kupata sehemu\nKati’ mavuno makubwa!\n\n2. Wanapotea gizani\nWengi wa ndugu zako.\nNenda kapashe habari:\n“Leo wokovu uko!”\n\n3. Nenda kawahubirie\nWatu wa mataifa\nNeno la Yesu Mwokozi!\nAnakuita leo.''',
    numero: 178,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_179',
    titre: 'SIKU MOJA MAVUNO YATAISHA KABISA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. SIKU moja mavuno\nYataisha kabisa,\nBaada ya hayo hukumu.\nJua litazimika\nSiku hiyo ya mwisho,\nNa hutasikia injili.\n\nAtakusanya ngano\nKwa furaha ghalani,\nBali makapi yote\nYatatupwa motoni.\nRafiki, utakuwa wapi?\n\n2. Mahubiri na nyimbo\nZa wokovu wa Mungu\nZitakaponyamaza huku,\nUliyelikataa\nNeno zuri la Mungu,\nUtakaa wapi milele?\n\n3. Watu wote wa Mungu\nWafikapo mbinguni\nKukaa pamoja na Yesu,\nWataimba kabisa\nKwa sauti ya nguvu\nKumshangilia Mwokozi.''',
    numero: 179,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_180',
    titre: 'BWANA YESU ANATUULIZA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. BWANA Yesu anatuuliza:\n“Nimtume nani mavunoni?\nWatu wenye dhambi wapotea;\nWatolee Neno la neema!”\n\n‘‘Mungu wangu, sema nami!\nUniguze sasa kwa makaa!\nMungu wangu, sema nami!\nMimi hapa, unitume sasa!"\n\n2. Mtumishi wake Bwana Mungu\nAlisema: ‘‘Mimi sistahili.’’\nAliposikia moto safi,\nAkasema: ‘‘Unitume mimi!’’\n\n3. Mataifa mengi wanakufa,\nHawajui Yesu na wokovu.\nTwende kwao mbio, tuhubiri\nNeno la wokovu wake Yesu!\n\n4. Siku za mavuno zitapita,\nWatumishi watarudi kwao.\nBwana wao atawapokea\nNa kusema: “Ulifanya vema!”''',
    numero: 180,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_181',
    titre: 'TUTAZAME KULE MBELE',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. TUTAZAME kule mbele,\nAsubuhi inakuja!\nTuamini Mungu wetu,\nAtafanya kazi yake,\nKufukuza mashetani,\nKumiliki nchi yote.\nTutashinda tukiomba,\nMungu anatusikia.\n\n2. Tarumbeta linalia,\nTuamke sote sasa!\nMungu wetu anataka\nSisi sote tutakaswe!\nKila mtu awe safi\nKatika kanisa lake!\nUliache nung’uniko,\nUtapata nguvu yake!\n\n3. Imba ninyi, watu wake,\nBwana Yu pamoja nasi!\nTutashinda majaribu\nKwa uwezo wake Yesu.\nTwende tumhudumie\nKwa kumpa mali yetu;\nHata roho na akili\nZimtumikie Bwana!\n\n4. Watu wengi hawajui\nNjia yakufika mbingu,\nWanakuwa wamefungwa\nKwa mikono ya Shetani.\nTwende tukawatafute,\nTuwavute kwa Mwokozi,\nNa kuomba na kukesha\nHata kuja kwake Yesu!''',
    numero: 181,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_182',
    titre: 'KISA CHA KALE NIPE HABARI',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. KISA cha kale nipe,\nHabari ya mbinguni,\nYa Bwana Mtukufu,\nYa pendo lake Yesu!\nNiambie Neno lake,\nNipate kusikia,\nMnyonge mimi huku,\nMjinga, mkosaji.\n\nKisa cha kale nipe,\nKisa cha kale nipe,\nKisa cha kale nipe,\nCha pendo lake Yesu!\n\n2. Sema kwa taratibu\nNipate kuelewa\nHabari ya wokovu\nNa damu ya Mwokozi!\nSimulia mara nyingi,\nNisije kasahau,\nNiikumbuke tena\nMaisha yangu yote!\n\n3. Taja habari hiyo\nKwa wema na kwa pendo,\nMwokozi alikufa\nKutukomboa sote.\nNa ikiwa unataka\nKunifariji mimi,\nNisimulie ile\nhabari ya zamani!\n\n4. Nipe habari hiyo\nIkiwa waniona\nNinaipendelea\nFahari ya dunia!\nSiku nitakapokufa\n’tapenda kusikia\nHabari ya zamani:\nMponyi mwema Yesu.''',
    numero: 182,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_183',
    titre: 'PANDA MBEGU NJEMA ANZA ASUBUHI',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. PANDA mbegu njema, anza asubuhi,\nNa uwaokoe watu wa Shetani!\nKwa wakati wake vuno litaiva,\nChumo utapata kwa furaha kuu.\n\n:/: Twende tukavune, twende tukavune,\nKwa furaha kubwa twende tukavune! :/:\n\n2. Panda mbegu njema juu ya milima!\nNa tuendelee hata mabondeni!\nNeno lake Mungu litawafungua\nWatu wa gizani, kwa furaha kuu.\n\n3. Panda mbegu njema hata kwa machozi,\nUkumbuke Yesu, leo uhubiri!\nBwana wetu, Yesu, atakuja tena\nNa thawabu yetu kwa furaha kuu.''',
    numero: 183,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_184',
    titre: 'NITAKWENDA MAHALI PA GIZA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. NITAKWENDA mahali pa giza na dhambi\nKuhubiri Injili ya nuru,\nIli watu wasiosikia habari\nWafahamu upendo wa Yesu.\n\nNitakwenda mahali pa giza na dhambi,\nHata wote wapate kuona wokovu.\n\n2. Akitaka niende kwa watu wagumu\nNa kuacha rafiki na ndugu,\nHata wakinitaja: ‘‘’pumbavu’’ na ‘‘bure’’,\nNachagua mapenzi ya Yesu.\n\n3. Uliyezipoteza dakika na saa\nKwa tamaa ya mambo ya huku,\nUamke na uwaokoe wenzako,\nHata wasipotee kwa dhambi!\n\n4. Watu wengi wangali watumwa gizani,\nWanangoja kupata uhuru.\nYesu ananituma,\nNiende upesi\nKuhubiri maneno ya nuru.''',
    numero: 184,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_185',
    titre: 'NEEMA KUBWA YA MUNGU WETU',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. NEEMA kubwa ya Mungu wetu:\nAlikutuma kwa kazi yake\nKwenda kuzipanda mbegu njema\nKatika roho za wenzako!\n\nNenda, E’ mvunaji,\nNenda, E’ mvunaji!\nNenda kapande mbegu njema,\nNenda, E’ mvunaji!\n\n2. Njia ikionekana ndefu,\nNeno la Mungu ni aminifu:\n‘‘Kwa macho yangu nakuongoza,\nJangwani nitafanya njia.’’\n\n3. Ikiwa ndugu hawakuoni,\nMtumikie Mwokozi vema!\nBwana anayetazama wewe,\nAnampenda mwaminifu.\n\n4. Hata ukiwa mdogo sana,\nNenda upesi shambani mwake,\nLabda utaliokota suke\nLililoachwa na wenzako.\n\n5. Neno na nyimbo hazitatosha\nKuwaamsha wafanya dhambi,\nBali mwenendo ulio safi\nUtawavuta ndugu zako.\n\n6. Na usichoke kupanda mbegu\nKatika pendo na tumaini!\nUkizipanda kwa shida nyingi,\nKwa shangwe kubwa utavuna!\n\n7. Siku za kazi zita’pokwisha\nTutahamia mbinguni juu;\nTutawaona wenzetu wote\nTuliovuta kwa Mwokozi.''',
    numero: 185,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_186',
    titre: 'FANYIA MUNGU KAZI, MBIO USIKU',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. FANYIA Mungu kazi,\nMbio usiku waja!\nMtumikie Mungu\nSiku zako zote!\nAnza mapema sana,\nDumu mchana kutwa!\nMbio usiku waja,\nKazi itakwisha.\n\n2. Fanyia Mungu kazi\nKama kungali jua,\nUsipoteze bure\nSiku zako huku!\nUyatimize yote\nBila kukosa neno!\nMbio usiku waja,\nKazi itakwisha.\n\n3. Fanyia Mungu kazi,\nSaa yapita mbio!\nFanya bidii sana\nKuokoa ndugu!\nMtumikie Mungu\nKwa nguvu yako yote!\nMbio usiku waja,\nKazi itakwisha.''',
    numero: 186,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_187',
    titre: 'TU WAVUNAJI WAKE MUNGU',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. Tu wavunaji wake Mungu,\nKwa neno lake tunakwenda\nKuvuna ngano zake Yesu\nalizojinunulia.\nKwa shangwe tunaliingiza\nmwake vuno lake.\nTunamsifu Yesu\naliyekomboa vuno lake.\n\nTwende kati’ shamba lake,\nBwana a’tuita!\nVuno linaiva sana,\nUsikie mwito!\nSiku zetu za mavuno\nZinatupitia mbio.\nSiku zetu,\nSiku zetu\nZinabaki chache.\n\n2. Tu wavunaji, twende sasa\nTukalivune vuno lake,\nNa kwa bidii na imani\ntukusanye ngano ghali!\nKatika pendo kubwa mno\nAnawataka wote, Yesu,\nNa tukiacha suke dogo\nataona mara moja.\n\n3. Wakati wetu ni mfupi,\nA’ita tena, twende mbio!\nAtujalize uhodari,\nnguvu ya kuvumilia!\nUsichelewe bure sasa,\nWatenda kazi ni wachache!\nE’ mvunaji wake Yesu,\nutumike kwa bidii!''',
    numero: 187,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_188',
    titre: 'WENGI WAKASEMA: “BADO”',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. WENGI wakasema: “Bado”,\nWalipoitwa na Mwokozi,\nLakini tena wakaona\nWamechelewa kuokoka.\n\nNjoo mbio, njoo mbio,\nYesu akuita leo!\nNjoo mbio, njoo mbio,\nUsichelewe, ndugu yangu!\n\n2. Nawe usemaye: “Bado”,\nUnapoitwa naye sasa,\nRafiki, labda utakuta\nMlango umekwisha fungwa.\n\n3. “Bado leo”, alisema\nKijana ’moja kwa ujinga.\nUsiku alikufa mara,\nNa akaenda hukumuni.\n\n4. “Bado leo”, wamwambia\nRafiki yako bora, Yesu.\nAtaondoka kwa huzuni,\nUtafanyaje bila Yeye?\n\n5. “Bado leo”, ukumbuke\nNi neno la hatari kwako!\nWaweza kupotea pia,\nKukosa kuingia mbingu.''',
    numero: 188,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_189',
    titre: 'UNIHUBIRI HABARI NJEMA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. UNIHUBIRI habari njema,\nNeno la ukombozi,\nHata ikiwa siufahamu\nWingi wa neema!\nNilipokuwa katika giza,\nNdipo Mwokozi alinijia,\nNa akanipa wokovu,\nRaha na tumaini.\nMimi kipofu, naona sasa,\nAnasikia maombi yangu,\nNaye hatanisahau,\nKwani ananipenda.\n\n2. Amefungua mkono wake,\nKuna wokovu humo;\nUkilemewa moyoni mwako,\nUje kwake Yesu!\nUliyechoka kwa dhambi zako,\nUmtazame Mwokozi wako,\nNa utapata wokovu,\nNjoo, anakupenda.''',
    numero: 189,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_190',
    titre: 'KISIMA CHA LEHI KINGALI',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. KISIMA cha Lehi kingali\nKwa kila aliye na kiu.\nKinatoa maji mazima\nYaliyo ya kuburudisha.\n\nKisima chema\nCha maji safi\nHakikauki hata milele.\nNi heri yangu,\nNapumzika,\nNa roho yangu inatulia.\n\n2. Ulie na kiu rohoni,\nUkinyong’onyea njiani,\nTazama kisima jangwani\nKilicho na afya, uzima!\n\n3. Mtungi ukiwa mtupu,\nUkipungukiwa imani,\nUfike kisima cha maji\nYabubujikayo daima!\n\n4. Na penye kisima cha Lehi\nUpange na kupumzika!\nUketi kivulini mwake,\nNa moyo utaburudishwa!''',
    numero: 190,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_191',
    titre: 'YAPIGWA HODI KWANGU, MGENI',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. YAPIGWA hodi kwangu, mgeni a’fika,\nAkiniomba: ‘‘Nifungulie!\nUmande umeshuka kichwani usiku,\nNa nywele zangu zimelowa maji.’’\n\n2. A! Huyu si mgeni, ni Yesu Mwokozi,\nSauti yake nzuri na’jua.\nNinamfungulia, naona ni Yesu;\nNa siku hiyo sitaisahau.\n\n3. Anong’oneza sasa rohoni: ‘‘U wangu’’,\nKaribu naye ninatulia.\nAnanitia nguvu, baraka ya mbingu;\nDaima nitakaa kwake Yesu.\n\n4. Ni kweli, mimi ni wa Mwokozi milele,\nAmenitaja: ‘‘Ndugu, mpenzi.’’\nAnanikarimia hazina za mbingu,\nNinaingoja siku ya arusi.''',
    numero: 191,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_192',
    titre: 'SAUTI MOJA ILINIULIZA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. SAUTI moja iliniuliza:\n‘‘Wajua nilikufanyia nini?\n:/: Kwa ’jili yako niliteswa sana;\nUfike kwangu, kwani nakupenda!’’ :/:\n\n2. ‘‘Nilipokuwa huku duniani\nWakanitia taji ya miiba,\n:/: Na sikupambwa fedha na dhahabu,\nLakini majeraha na uchungu.’’:/:\n\n3. ‘‘Golgotha nilifika siku moja,\nNa nilikufa ju’ ya msalaba.\n:/: Tazama, katika mikono yangu\nNimekuchora, E’ mtoto wangu.’’:/:\n\n4. Heleluya, rohoni ninaimba!\nNimejiweka mikononi mwake.\n:/: Na Yesu ananiongoza sasa,\nNifike nchi nzuri huko juu. :/:''',
    numero: 192,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_193',
    titre: 'NI NENO ZURI LA ’AMINIWA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. NI neno zuri la ’aminiwa,\nListahililo kukubaliwa,\nYa kwamba Yesu alitujia\nAwaokoe wenye makosa.\n\n2. Wa kwanza mimi wa wenye dhambi,\nLakini ninafurahi sasa\nSababu Yesu, Mwokozi wangu,\nAliniosha kwa damu yake.\n\n3. Mwokozi wetu Yu nasi hapa,\nAtenda kazi kwa nia yake;\nAwasha moto rohoni mwetu,\nUwezo gani utampinga?\n\n4. Viziwi wanasikia sasa,\nViwete wanatembea sawa,\nWenye ukoma watakasika,\nInjili yake yahubiriwa.\n\n5. E’ Bwana Yesu, tupulizie,\nTujaze Roho Mtakatifu!\nUwaamshe waliokufa\nKatika dhambi, uwaangaze!\n\n6. Fungua mbingu, unyeshe mvua\nPanapo kiu na jangwa tupu!\nUligeuze, likachanue\nNa kufurahi kwa shangwe kuu!\n\n7. Na mataifa wakusujudu\nMahali pa miguuni pako!\nAmina. Wako ni utukufu\nNa sifa zote! Haleluya!''',
    numero: 193,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_194',
    titre: 'USIKIE BWAN YESU ANAYEKUITA LEO',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. USIKIE Bwana Yesu\nAnayekuita leo!\nAliteswa, alikufa\nKwa ajili yako wewe.\n\nUsikie Bwana Yesu!\nAnabisha mlangoni.\nUmfungulie moyo,\nUmkaribishe sasa!\n\n2. Siku zote ulicheza,\nKupendeza mwili wako;\nUlimsahau Yesu,\nNaye alikufilia.\n\n3. Unasema: “Nitakuja\nKusikia Neno lake”.\nE’ rafiki, ukumbuke,\nUnaweza kufa leo!\n\n4. Yesu akuita leo\nKwa neema na upendo.\nLeo siku ya wokovu,\nUmfungulie moyo!\n\n5. Tunampa Bwana Yesu\nMoyo na wakati wetu.\nYeye ni Mfalme wetu\nWa milele na milele.''',
    numero: 194,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_195',
    titre: 'TUNASIKIA LEO HABARI, INAWAITA WATU',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. TUNASIKIA leo habari,\nInawaita watu wafike;\nWatu wa hapa, watu wa mbali,\nWote wapate sasa wokovu!\n\n2. Mtu wa dhambi, uje upesi,\nYesu angoja kukuokoa!\nTena kwa nini unachelewa?\nLeo ni siku ya kuokoka.\n\n3. Ulikimbia Yesu Mwokozi\nAliyekukomboa kwa damu.\nUsikimbie mbali zaidi,\nIla urudi, uje upesi!\n\n4. Katika dhambi hutaiona\nRaha halisi, hata kidogo.\nYesu mwenyewe atakujaza\nRaha ya kweli ndani ya roho.\n\n5. Mtu wa heri katika shida,\nKatika mambo yote ya huku,\nNi hali ya mkristo wa kweli,\nMtu wa heri hata milele.''',
    numero: 195,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_196',
    titre: 'USIYEFANYA BIDII KABISA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. USIYEFANYA bidii kabisa,\nHutaingia mbinguni.\nUikinge roho kwa Neno la Mungu,\nUsipotee milele!\nNjia ni nyembamba na mlango ’dogo,\nUjitahidishe kuingia humo!\nUkubali leo wokovu wa Mungu\nIli ufike mbinguni!\n\n2. Vizuio vingi katika safari,\nMwovu anakujaribu.\nUvishinde vyote vinavyozuia,\nVyote katika dunia!\nUsimfuate kila aitaye,\nUngeweza kupoteza roho yako!\nBwana Yesu anakupenda daima;\nUjitahidi kabisa!\n\n3. Pasipo imani huwezi kufika\nHata bandari salama\nWala kuingia katika uzima;\nHilo ni Neno la Mungu.\nKwa imani tupu utaokolewa,\nUsikie sasa Neno la wokovu!\nTubu dhambi zako, amini Mwokozi;\nHiyo ni njia, hakika.\n\n4. Mungu anaita, wo wote wafike,\nWaupokee uzima!\nAtakupa nawe hazina ya mbingu,\nUkitafuta kwa kweli.\nMungu Baba anapenda roho yako,\nYesu anataka kuokoa wewe,\nRoho ’takatifu anakuamsha.\nUkiitika u heri!''',
    numero: 196,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_197',
    titre: 'HAPO NILIPOKUWA DHAMBINI',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. HAPO nilipokuwa dhambini,\nniliumwa katika roho.\nSasa ninafurahi kwa shangwe\nKwani Yesu ameniponya.\n\nNdiyo kazi kubwa ya ajabu:\nMwokozi aliniokoa!\nNaye anapenda watu wote,\nAtakuokoa wewe.\n\n2. Dhambi zote nilizozitenda\nZimefutwa na Bwana Yesu.\nSikitiko kwa ’jili ya dhambi\nZilikoma nilipotubu.\n\n3. Sasa mimi sitaki kurudi,\nNachukia kabisa dhambi.\nNimeonja furaha ya Mungu\nNa amani na raha yake.''',
    numero: 197,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_198',
    titre: 'E’ MTU MWENYE KIU, UFIKE KWAKE',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. E’ MTU mwenye kiu,\nUfike kwake Yesu,\n:/: Upate maji ya uzima,\nHutaona kiu kamwe! :/:\n\nNjoo kwa Yesu,\nUyanywe maji hai!\nUfike, na utapewa\nUzima na uhodari!\n\n2. Tazama, ndugu wengi\nZamani wamekunywa!\n:/: Na heri kubwa, maji hayo\nHayatakauka kamwe! :/:\n\n3. Na kunywa wewe tena,\nUpate nguvu sana!\n:/: Tumia katika shindano\nUpanga wa Neno lake! :/:\n\n4. Na mwendo wa imani\nUta’poumaliza,\n:/: Utayakunywa maji bora\nKwa Mungu mbinguni juu. :/:''',
    numero: 198,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_199',
    titre: 'NJONI WOTE MTESWAO!',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. NJONI wote mteswao!\nWote wenye sikitiko\nKwa ajili ya makosa,\nMje sasa kwa Mwokozi!\nKwake mtaona raha,\nUtulivu na amani.\nMatulizo mioyoni\nMtapata kwake Yesu.\n\n2. Hataacha sikitiko\nKulemea moyo wako;\nYesu ni Mchunga mwema,\nAkuficha mazizini.\nPendo lake lina nguvu,\nHuchukua masumbuko,\nHufariji roho yako,\nHukutwaa kwake Mungu.\n\n3. Yesu kama nyota nzuri\nIng’aayo asubuhi,\nMtu amfuataye\nAtaona njia wazi.\nHata nyota za mbinguni\nZikiteketea zote,\nNyota hiyo ya milele\nHaitazimika kamwe.''',
    numero: 199,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_200',
    titre: 'NJONI WOTE, MLE, MNYWE',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. “NJONI wote, mle, mnywe!”\nYesu anasema hivyo.\n“Nimetoa mwili wangu\nKwa ajili yenu ninyi.”\nKila mtu mwenye njaa\nAje na apate kula!\nNa aliye na makosa\nAtasamehewa yote.\n\n2. Ninakuja kwako, Yesu,\nUnithibitishe moyo!\nUliona umaskini,\nNiwe mwenye utajiri.\nNishibishe mema yako\nNa karama takatifu!\nUnijaze Roho yako\nKama ulivyoahidi!\n\n3. Yesu, ninakuja kwako\nNiungane nawe, Bwana!\nMimi mwenye udhaifu,\nNakutegemea Wewe.\nNa kwa damu yako, Yesu,\nninatakasika sasa.\nNashiriki mwili wako\nKatika agano jipya.''',
    numero: 200,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_201',
    titre: 'NJOO, MWENYE HUZUNI NYINGI',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. NJOO, mwenye huzuni nyingi!\nYesu anakungoja.\nUje, atoe mzigo wako,\nAta’okoa wewe!\n\nNjoo, uliye na huzuni!\nNjoo kwa Mungu wa neema!\nRoho ya Mungu anakuita,\nYesu anakungoja.\n\n2. Njoo, mwenye makosa mengi!\nYesu anakungoja.\nKwake neema na pendo tele!\nAta’okoa wewe.\n\n3. Njoo, leo uache dhambi!\nYesu anakungoja.\nUkilemewa moyoni mwako,\nUje kwa Yesu mbio!\n\n4. Njoo, sasa, E’ mwenye dhambi!\nYesu anakungoja.\nNa ukitaka kumfuata,\nAta’okoa wewe.''',
    numero: 201,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_202',
    titre: 'NJOO KWA YESU MWOKOZI',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. NJOO kwa Yesu Mwokozi,\nUnayeteswa rohoni!\nDamu iliyomwagika\nItakuosha kabisa.\nNjoo kwa Yesu Mwokozi,\nNaye atakuokoa!\nUlimwenguni ni dhiki,\nKwake ni raha halisi.\n\n2. Mbona kukawa dhambini\nBila uzima wa Mungu?\nUje upesi kwa Yesu\nili upate amani!\n\n3. Saa zapita upesi,\nHazitarudi kabisa.\nBado kidogo na tena\nUtapelekwa kuzimu.\n\n4. Yesu atamchukua\nBibi-arusi mbinguni,\nNa tutaimba milele\nSifa za Mwana-Kondoo.\nHuko karibu na Yesu,\nMbali ya mambo ya nchi,\nHuru na heri rohoni\nNitafurahi milele!''',
    numero: 202,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_203',
    titre: 'HATUA MOJA KATI YA WEWE NA MWOKOZI',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. HATUA moja kati\nYa wewe na Mwokozi.\nWakawilia nini?\nUfike kwake leo!\n\nHatua moja, hatua moja,\nNjoo, akungoja!\nNjoo kutubu dhambi,\nAtasamehe zote!\nUsikatae tena\nWokovu wake Mungu!\n\n2. Hatua moja mbele,\nAnakungoja sasa.\nAmini Neno lake,\nNa utapata raha!\n\n3. Hatua moja mbele,\nUzima uta’ona.\nSiku si nyingi huku,\n’jitoe kwake Mungu!\n\n4. Hatua moja mbele,\nKwa nini kukawia?\nOmba: E’ Bwana Yesu,\nUnipokee sasa!''',
    numero: 203,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_204',
    titre: 'PENDO LA MWOKOZI KUBWA MNO!',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. PENDO la Mwokozi kubwa mno!\nYesu akuita,\nUfike kwake sasa!\n\nAkungoja, ’kubishia, ufungue!\nAkungoja, ’kubishia, ufungue!\n\n2. Amengoja wewe siku nyingi,\nAnalia sana\nJuu ya dhambi zako.\n\n3. Kwa huruma nyingi akuita.\n’geukie Mungu,\nAnakungoja sasa!\n\n4. Yesu atakupa raha kubwa\nNa uzima tele\nUlio wa milele.''',
    numero: 204,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_205',
    titre: 'YESU MWOKOZI AITA KWA PENDO',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. YESU Mwokozi aita kwa pendo\nMimi na wewe na wote,\nNa Yu tayari kukukaribisha\nWewe uliye dhambini.\n\nUrudi, urudi,\nSasa urudi kwa Yesu!\nAnakuita na anakungoja.\nLeo urudi kwa Yesu!\n\n2. Mbona kukawa anapokuita?\nAnakungoja, ufike!\nKuna nafasi karibu na Yesu;\nNjia ni wazi kwa wote.\n\n3. Nyakati zetu zapita upesi,\nHazitarudi kabisa.\nNjoo kwa Yesu, upate amani,\nLeo ungali mzima!\n\n4. Ona upendo mkubwa wa Yesu,\nUnaenea kwa wote!\nNa kwa neema anatukumbuka\nWewe na mimi na wote.''',
    numero: 205,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_206',
    titre: 'RAFIKI YANGU TAZAMA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. RAFIKI yangu, tazama,\nWapita njia ya wapi!\nMilele, je? utakaa wapi\nUkikataa Mungu?\n\nUjiandae sasa,\nUtakutana na Mungu!\nLazima uwe tayari kwa\nSababu utamwona!\n\n2. Dunia haina raha,\nAmani wala salama.\nFahari yake ikikuloga,\nUtapotea njia.\n\n3. Lo! Yesu anakuita!\nKwa nini unachelewa?\nUshike njia ufike kwake!\nAtaja jina lako.\n\n4. Uache haya na hofu,\nMwokozi anakupenda!\nKwa damu alikomboa wewe,\nAnakutaka sasa.\n\n5. Ikiwa unachelewa\nKupatanishwa na Mungu,\nUtamkuta Mwokozi kama\nMwamuzi mwenye haki.''',
    numero: 206,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_207',
    titre: 'UMGEUKIE MWOKOZI, JITENGE NA UOVU',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. UMGEUKIE Mwokozi,\nJitenge na uovu na dhambi!\nBabako angoja ufike;\nUsiangamie milele!\n\n2. Kijana, unafurahia\nMaisha na mambo ya nchi.\nBaada ya muda kitambo\nUtahukumiwa na Mungu.\n\n3. Kwa nini kujiangamiza\nKatika tamaa za huku?\nUsijipoteze dhambini!\nDunia isikuharibu!\n\n4. Umkimbilie Mwokozi,\nAtakupokea kwa pendo,\nNa utaokoka hakika\nKwa nguvu ya damu ya Yesu!\n\n5. Walio mbinguni waimba,\nWanayo mavazi meupe;\nHutaki sehemu pamoja\nNa wao nyumbani mwa Baba?\n\n6. Je, mwisho utaona wapi\nMahali pa kujisetiri?\nDunia itakapochomwa\nUtakosa makimbilio.\n\n7. Ujipatanishe na Mungu,\nNa usichelewe, rafiki!\nUkimkataa Mwokozi,\nUtatupwa nje gizani.\n\n8. Chagua pasipo kukawa!\nMwokozi atakupokea.\nAngoja ufike kutubu;\nAtakutakasa kwa damu.''',
    numero: 207,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_208',
    titre: 'PIGA MAKENGELE YA FURAHA LEO',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. PIGA makengele ya furaha leo\nKwa sababu mtu ametubu!\nMwana mpotevu amerudi sasa,\nBaba amemsamehe yote.\n\nNyimbo za furaha ya mbinguni,\nNyimbo za furaha za wakristo!\nTuna’sifu Mungu kwa sababu sasa\nMtu huyu amwamini Yesu.\n\n2. Piga makengele, ni furaha nyingi;\nMkosaji amefunguliwa!\nYesu alivunja minyororo yake,\nAlimpa roho ya kimwana.\n\n3. Piga makengele! Hiyo ni habari\nYa kupasha mbali na karibu.\nMtu amepata kuwa mtu mpya,\nDhambi zake zimeondolewa!''',
    numero: 208,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_209',
    titre: 'UWATAFUTE WANAOPOTEA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. UWATAFUTE wanaopotea,\nNa kwa upendo watoe dhambini!\nLia pamoja na wenye huzuni,\nUwapeleke kwa Yesu Mwokozi!\nUwatafute wanaopotea!\nYesu Mwokozi awahurumia.\n\n2. Anatafuta waliokimbia,\nAnawangoja warudi upesi.\nUwafundishe kwa pendo na kweli\nJu’ ya neema na haki ya Yesu!\n\n3. Ndani ya roho na katika siri\nLabda waona shauku ya Mungu.\nUwaongoze kwa Yesu Mwokozi,\nWafahamishe upendo wa Mungu!\n\n4. Uwatafute wanaopotea!\nMungu atoa upendo na nguvu.\nUwapeleke kwa Yesu Mpozi,\nMwenye huruma na afya kwa wote!''',
    numero: 209,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_210',
    titre: 'IMBA INJILI YA YESU KWA MOYO',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. IMBA Injili ya Yesu\nKwa moyo na roho kabisa!\nLango la neema yake\nNi wazi kwa watu wote.\n\nImba, imba Injili,\nNa watu wasikilize!\nImba Injili ya Yesu,\nManeno ya pendo lake!\n\n2. Imba Injili ya Yesu!\nYaleta uhuru kwa wote.\nImba habari ya damu\nInayotakasa moyo!\n\n3. Imba Injili ya Yesu,\nKwa wimbo utawafundisha!\nImba habari ya Yesu!\nAweza kuwaokoa.\n\n4. Imba Injili ya Yesu,\nYa raha na matumaini!\nImba habari ya haki,\nWapate kujua Mungu!\n\n5. Imba Injili ya Yesu,\nHubiri amani kwa wote!\nNa tumsifu Mwokozi\nAfanyaye yote vema!''',
    numero: 210,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_211',
    titre: 'NJOO KWA YESU USISHANGAE',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. NJOO kwa Yesu, usishangae!\nAkuonyeshe njia ya mbingu.\nMsikilize, anakusihi:\nMtu wa dhambi, njoo!\n\nHeri, heri, tutakusanyika\nKwake Mungu kwa furaha kuu!\nShida na shaka hazitakuwa\nKwetu mbinguni juu.\n\n2. Yesu aita, wote wafike,\nAtatuliza wenye huzuni,\nKuwatolea pendo na raha.\nUsikiaye, njoo!\n\n3. Sasa wakati wa kuokoka,\nUje upesi, umkubali!\nMwenye masikitiko na dhambi,\nNjoo kwa Yesu sasa!''',
    numero: 211,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_212',
    titre: 'SAUTI YA YESU NILIISIKIA, KWA PENDO',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. SAUTI ya Yesu niliisikia,\nKwa pendo aliniambia:\n‘‘Ufike, nataka kukusaidia,\nNangoja, nangoja, ufike!’’\n\nNjoo kwa Yesu, ufike upesi,\nUupokee wokovu wa Mungu!\nMbona kukawa dhambini, rafiki?\nYesu anakuita, njoo!\n\n2. Ukiwa na hofu kufika kwa Yesu,\nUliye na dhambi rohoni,\nKumbuka ya kuwa huruma ni tele;\nUfike kwa Yesu, angoja!\n\n3. Ukiwa maskini, dhaifu kabisa,\nMwokozi anakufahamu.\nAnakuambia: ‘‘Pokea neema,\nUache mzigo wa dhambi!’’\n\n4. Na kama nilivyo ninamfikia\nMwokozi aliyenipenda.\nNinaupokea wokovu na raha;\nKwa shangwe ninamshukuru!''',
    numero: 212,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_213',
    titre: 'KAMA UNATAKA KUWA MTU WAKE YESU',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. KAMA unataka kuwa mtu wake Yesu,\nKama unataka kufuata Yeye,\nKama unataka Yeye akusaidie:\nMpe Yesu moyo wako!\n\nAtaondoa dhambi zako zote,\nNa utaipokea nguvu yake!\nUkiokoka utaona kwamba\nNi vizuri kufuata Yesu kweli.\n\n2. Kama unataka kuwa mtu mwenye heri,\nUfungue moyo, Yesu aingie!\nKama unataka utulivu na faraja,\nMpe Yesu moyo wako!\n\n3. Kama unataka kumtumikia Yesu\nNa kuifuata njia yake hapa,\nKama unataka kuingia huko mbingu:\nMpe Yesu moyo wako!''',
    numero: 213,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_214',
    titre: 'NAMTAFUTA MWANA WANGU',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. NAMTAFUTA mwana wangu,\nMtoto yu wapi leo?\nAliyenifurahisha mbele,\nNingali ninampenda.\n\nMwanangu yu wapi leo?\nMwanangu yu wapi leo?\nMwanangu, urudi, ninakutafuta,\nMwanangu, mpendwa wangu!\n\n2. Uliyekuwa safi sana\nKatika utoto wako,\nUliichafua roho yako\nKwa dhambi na njia mbaya.\n\n3. Ninatamani kukuona\nKatika usafi tena,\nNa kukusikia ukiomba\nNa kumshukuru Yesu.\n\n4. Nitafutie mpotevu\nKwa pendo na tumaini!\nUnisalimie mwana wangu,\nYa kwamba ninamngoja!''',
    numero: 214,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_215',
    titre: 'MWENYEZI MUNGU ANAFANYA ISHARA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. MWENYEZI Mungu anafanya\nIshara kubwa duniani,\nAnaondoa minyororo\nInayofunga watu huku.\nAvunja nyavu za Shetani,\nNa wakosaji waokoka.\n\n2. Maneno yake yana nguvu\nKushinda yote ya zamani.\nNa watu wanapiga mbio\nKuomba ne’ma ya Mwokozi.\nWakiyapata masamaha,\nWaimba wote: “Sifu Mungu!”\n\n3. Tazama, ndugu wengi sana\nWanafuata Yesu leo;\nKatika kila nchi sasa\nMaelfu wanapenda Mungu.\nWengine wanavutwa naye\nMwenyezi Mungu, Baba yetu.\n\n4. Inua macho, mvunaji,\nMavuno yanaiva sana!\nUende kutafuta watu,\nUwapeleke kwake Yesu!\nE’ ndugu wote, amkeni,\n’kawaokowe wenye dhambi!\n\n5. Wengine wanapoingia\nUfalme wako, Yesu Kristo,\nNisibakie huku chini,\nNeema hiyo nakuomba!\nNakaa mikononi mwako,\nUnifikishe huko kwako!\n\n6. Najua siku ni karibu\nMwokozi atakaporudi,\nAwachukue watu wake\nMpaka nchi ya amani.\nE’ siku ya uheri bora,\nNakutamani. Uje mbio.''',
    numero: 215,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_216',
    titre: 'NAFASI INGALIKO ARUSINI',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. NAFASI ingaliko arusini\nIta’yokuwa kwake Mungu Baba.\nNjoo kwake,\nNafasi ingaliko!\n\n2. Njiani mwako jua linakuchwa,\nJioni inakaribia sasa.\nNjoo mbio,\nNafasi ingaliko!\n\n3. Karamu ya arusi ni tayari,\nNa Bwana anakualika wewe.\nNjoo mbio,\nNafasi ingaliko!\n\n4. Wanaingia watu wengi huko,\nUfanye hima, uingie nawe!\nNjoo mbio,\nNafasi ingaliko!\n\n5. Tazama, lango limefunguliwa,\nNeema gani: Utakaribikshwa!\nNjoo mbio,\nNafasi ingaliko!\n\n6. Ufike mbio, utaona heri,\nYesu atoa wingi wa neema!\nNjoo mbio,\nNafasi ingaliko!\n\n7. Je, utaona shangwe ya mbinguni?\nBwana-arusi akungoja sana.\nNjoo mbio,\nNafasi ingaliko!\n\n8. Uliyesitasita unaitwa,\nUjiazimu kuja kwake Mungu!\nNjoo mbio,\nNafasi ingaliko!\n\n9. Ukichelewa, lango litafungwa,\nNa utalisikia neno hili:\n‘‘Ondokeni! Sikuwajua ninyi!’’''',
    numero: 216,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_217',
    titre: 'BWANA YESU ATAKUJA KUTOKA MBINGUNI',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. BWANA Yesu atakuja\nKutoka mbinguni,\nAtawachukua wote\nWanaomwamini.\n\nKama nyota za mbingu\nWatu wake watang’aa\nKatika taji yake,\nKuwa sifa ya Yesu.\n\n2. Atawakusanya wote\nWaliompenda,\nWatakuwa tunu yake\nMilele mbinguni.\n\n3. Na watoto watakuwa\nPamoja na Yesu,\nWatang’aa kama lulu\nNyumbani mwa Baba.''',
    numero: 217,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_218',
    titre: 'MTOTO MIMI NI MASKINI',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. MTOTO mimi ni maskini,\nLakini nafurahi\nKwa kuwa Baba yangu mwema\nAnanitunza vema.\n\n2. Babangu anipenda sana,\nAnionyesha njia.\nUpendo wake unapita\nUzuri wa dunia.\n\n3. Katika shida na huzuni\nNaimba kwa furaha:\n“Nina makimbilio yangu\nKwa Mungu Baba yangu”''',
    numero: 218,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_219',
    titre: 'HATUMJUI RAFIKI MWEMA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. HATUMJUI rafiki mwema,\nIla Yesu, ila Yesu;\nYeye mwenyewe atufahamu,\nYeye Bwana peke yake.\n\nYesu anatujua, pia\nYesu anatuonya njia.\nYesu Rafiki kupita wote,\nWote pia wa dunia.\n\n2. Hatumjui rafiki mwema\nKama Yesu, Bwana Yesu.\nNa pendo lake ni la ajabu,\nLinadumu siku zote.\n\n3. Je, ataweza kutusahau?\nHataweza ku’sahau.\nTwafarijiwa kwa pendo lake\nKila siku, kila siku.\n\n4. Nani ashika agano lake?\nBwana Yesu peke yake.\nAlikataa kusaidia?\nHataweza kukataa.\n\n5. Nani Rafiki mpendwa wangu?\nBwana Yesu peke yake.\nAnastahili kupata sifa\nHuku chini na mbinguni.''',
    numero: 219,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_220',
    titre: 'YESU, WEWE U MCHUNGA WETU',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. YESU, Wewe U mchunga wangu,\nTwakuomba: Utulinde!\nUtulishe sisi kundi lako,\nTukashibe Neno lako!\n\nYesu mwema, Yesu mwema,\nTushibishe kwa neema!\nYesu mwema, Yesu mwema,\nTushibishe kwa neema!\n\n2. Tuongoze kwa mapito yako\nHata maji matulivu!\nTuhuishe roho zetu huko\nTukajazwe uhodari!\n\nYesu mwema, Yesu mwema,\nUtutie nguvu yako!\nYesu mwema, Yesu mwema,\nUtutie nguvu yako!\n\n3. Yesu, uwe nasi hata mwisho,\nTutakapokata roho!\nTupeleke katika makao\nUliyotuandalia!\n\nYesu mwema, Yesu mwema,\nTufikishe hata kwako!\nYesu mwema, Yesu mwema,\nTufikishe hata kwako!''',
    numero: 220,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_221',
    titre: 'E’ MTOTO, YAINUE MACHO YAKO',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. E’ MTOTO, yainue\nMacho yako mbinguni!\nBwana Yesu huko juu,\nKwa upendo akuone.\n\n2. Ukiomba asikia,\nAkulinda mashakani;\nNa anakuandalia\nKao zuri huko kwake.\n\n3. Penda Yesu, mfuate,\nTii Neno lake pia!\nTena malaika wake\nWatakuchukua kwake.''',
    numero: 221,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_222',
    titre: 'BWANA YESU ANASEMA, DHAIFU WEWE',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. BWANA Yesu amesema:\n“Dhaifu wewe sana.\nMimi ni mchunga mwema.”\nNa kwa hiyo namwandama.\n\nYesu alikufa kwa ajili yangu,\nAliziondoa dhambi,\nFuraha kubwa kwangu!\n\n2. Pendo la Mwokozi wangu\nLimeyeyusha moyo.\nAmetoa dhambi zangu\nNa kiburi na uchoyo.\n\n3. Sina kitu mkononi\nCha kunifaidia;\nUdhaifu u moyoni,\nYesu ninamlilia.\n\n4. Mungu akisaidia\nNitamaliza mwendo.\n‘‘Yesu alinifilia’’,\nNitaimba huko ng’ambo.\n\n5. Siku moja nitafika\nMbinguni huko juu,\nNitaimba kadhalika\nKatika shukrani kuu.''',
    numero: 222,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_223',
    titre: 'NI UHERI BORA KUMWAMINI BWANA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. NI uheri bora kumwamini Bwana Yesu\nKwa wakati wa ujana wetu,\nKabla hatujazionja\nDhambi na mashaka\nZinazoharibu roho zetu.\nNi uheri bora kumwamini Bwana Yesu,\nNa kumfuata kila siku.\nNa ujana wetu ukitukimbia tena,\nShangwe ya wokovu itabaki\n\n2. Ni uheri bora kumtii Bwana Yesu\nKwa wakati wa ujana wetu.\nHivyo tutakuwa na dhamiri safi, njema\nKwa maisha yetu yote pia.\n\n3. Ni uheri bora kumtumikia Yesu\nKwa wakati wa ujana wetu.\nBwana Yesu akumbuka kila tendo dogo,\nAtalipa kwa neema yake.\n\n4. Ni uheri bora kumngoja Bwana Yesu\nKwa wakati wa ujana wetu.\nAtatuchukua kwake kwa furaha kubwa,\nTutakuwa naye siku zote.''',
    numero: 223,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_224',
    titre: 'YESU, MWENYE PENDO KUBWA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. YESU, mwenye pendo kubwa,\nUsinipitie!\nKatika maombi yangu\nUnibarikie!\n\nYesu, Yesu, unisikilie!\nUkiwabariki wote,\nUsinipitie!\n\n2. Ninakiendea sasa\nKiti cha neema;\nKutokuamini kwangu\nU’ondoe vema!\n\n3. Nakutegemea, Bwana,\nNjia unionye!\nRoho yangu imevunjwa,\nYesu, uniponye!\n\n4. Wewe, Yesu, ni kisima\nCha furaha yetu.\nNani ni Mchunga mwema,\nIla Bwana wetu!''',
    numero: 224,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_225',
    titre: 'LO! BENDERA MBELE YAKO',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. LO! Bendera mbele yako, usihofu sasa!\nUsimame kwa imara kama Danieli!\n\nUwe mhodari kama Danieli!\nWeka makusudi mema bila kuogopa!\n\n2. Wenye hofu hawawezi kuingia mbingu.\nTweka tu bendera yetu, endelea mbele!\n\n3. Mashujaa wa Shetani wangeshindwa sana\nWakikuta jeshi la askari wa imani.\n\n4. Endelea kwa kushinda, Yesu ni Mfalme!\nTaji ya uzima utapata huko juu.''',
    numero: 225,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_226',
    titre: 'MACHO YANGU KUMTAZAMA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. MACHO yangu ya kumtazama,\nMasikio ya kumsikia,\nNa miguu ya kumfuata Yesu,\nRafiki yangu!\n\n2. Roho yangu yampenda Yesu,\nNa ulimi unamshukuru,\nKwa mikono namtumikia Yesu,\nRafiki yangu!''',
    numero: 226,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_227',
    titre: 'MUNGU ALIYE MBINGUNI',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. MUNGU aliye mbinguni\nAlitupa kiongozi,\nNaye ni rafiki wa watoto wote.\nUkijua jina lake,\nUlitaje sasa hivi!\nAnapenda wote, hata wewe, nami.\nMbingu na ufalme wake\nWa wototo wote sasa!\nMbio tuishike njia\nIendayo kwake Yesu\nIli tuione raha ya mbinguni!\n\n2. Yesu mwenye pendo kubwa\nAwakumbatia wote,\nAnawabariki kwa huruma yake.\nHatuoni huku chini\nMtu mwema kama Yeye,\nHasahau mtu, hata mnyang’anyi.\n\n3. Yesu ni Mchunga mwema,\nAnawakusanya sasa\nMkononi mwake wana wa kondoo.\nKifuani mwake tena\nAnawachukua wote\nHata kwa ufalme wake huko juu.''',
    numero: 227,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_228',
    titre: 'WAKATI WA UTOTO WAKO',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. WAKATI wa utoto wako,\nHujapoona shida bado,\nSauti ilikuambia:\n“Unipe sasa moyo wako!”\n\nWajua ni nani huyu\nAnayekuita sasa?\nNi Yesu, Rafiki yako;\nAnakuita: ‘‘Njoo kwangu!’’\n\n2. Na katika ujana wako\nWausikia mwito wake,\nNa jinsi utakavyoshinda\nShetani akikujaribu.\n\n3. Wakati wa uzee wako\nDhambini ukiendelea\nHata kukaribia kufa,\nMwokozi akuita tena.''',
    numero: 228,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_229',
    titre: 'MWOKOZI, MFALME, ULISULIBIWA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. MWOKOZU Mfalme, ulisulibiwa,\nE’ Pasaka wetu, ulidhihakiwa.\nUkatoka damu, ’kaona uchungu\nUlipotimiza mapenzi ya Mungu.\n\nHuku Gethsemane ulihuzunika,\nKwa neno la mbingu ukafarijika.\nKatika kuomba ukatiwa nguvu,\nNa mwisho ukafa tupate wokovu.\n\n2. Kwa ’jili ya mimi ulijeruhiwa,\nUkaonja kufa, nipate uzima.\nUlijisahau, ukanikumbuka,\nUliwaombea waliokutesa.\nNa ulijitoa dhabihu ya kweli,\nNa kuusikia uchungu mkali.\nKwa pendo kamili ulikusudia\nKuonja mauti kwa ’jili ya wote.\n\n3. Je, kupatanishwa na Mungu ni nini?\nNi kwamba laana la dhambi lakoma.\nKufika karibu na Mungu ni nini?\nNi kuwa rafiki wa Mungu wa mbingu.\nNa sasa ufike kutoka dhambini,\nUtie hatia na dhambi nuruni!\nMwokozi mpendwa akuhurumia,\nAtakufungua na ’kusaidia.''',
    numero: 229,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_230',
    titre: 'GOLGOTHA MWOKOZI ALITUNDIKWA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. GOLGOTHA Mwokozi alitundikwa\nMtini kwa ’jili ya wote.\nNa damu akaitoa Mwokozi\nIli kutangua dhambi.\n\nPenye msalaba niliokolewa\nKwa damu ya Yesu iliyotolewa.\nMwamuzi mwenyewe alinikomboa,\nAkanilipia deni.\n\n2. Golgotha nami nimesulibiwa\nPamoja na Yesu Mwokozi;\nNa njia kwa Mungu Baba ni wazi,\nPazia limepasuka.\n\nNimesulibiwa pamoja na Kristo,\nNa mtu wa kale alikufa hapo.\nNa mambo ya kale yamekwisha ’pita,\nLo! yote ni mapya sasa!\n\n3. Niliunganishwa naye Mwokozi,\nNa sasa ni hai kwa Mungu.\nKuishi ni Kristo, siri ajabu,\nNa kufa faida kwangu!\n\nKwa damu ya Yesu nimetakasika,\nHatia na dhambi zimeondolewa.\nShetani hawezi kunidhuru tena,\nNimewekwa huru kweli.''',
    numero: 230,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_231',
    titre: 'MWOKOZI ALITOA DAMU KWA\'JILI YA WAOVU',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. MWOKOZI alitoa damu kwa ’jili ya waovu,\nMsalabani alikufa\nKuniokoa mimi.\n\nE’ Yesu, niokoe sana,\nNifunze kuamini!\nNa unilinde tena, Bwana,\nNisipotee kamwe!\n\n2. Alijitwika dhambi zetu,\nHuzuni na maradhi;\nNeema kubwa, wema wingi,\nUpendo wa ajabu!\n\n3. Na hapo jua likafichwa,\nIkawa giza kuu;\nMuumba alitufilia\nKutulipia deni.\n\n4. Magoti yangu nayapiga\nMsalabani pake,\nNa kwa machozi natazama\nMateso yake huko.\n\n5. Nitakurudishia nini,\nMwokozi wangu mwema?\nE’ Bwana, nikutumikie\nMaisha yangu yote!''',
    numero: 231,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_232',
    titre: 'NILIPOFIKA KWA BWANA YESU',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. NILIPOFIKA kwa Bwana Yesu,\nNikapaaza sauti yangu:\n“Yesu Mwokozi, unirehemu!”\nAkaniokoa.\n\n:/: Yesu asifiwe! :/:\nAlisikia kilio changu,\nYesu asifiwe!\n\n2. Nilipofika kwa Bwana Yesu,\nNikamsihi Mwokozi wangu:\n“Unitakase, nifanye safi!”\nAkanisikia.\n\n:/: Yesu asifiwe! :/:\nAlisikia maombi yangu,\nYesu asifiwe!\n\n3. Ona kisima cha msalaba,\nLeo kingali chabubujika\nKuniokoa na kusafisha!\nYesu asifiwe!\n\n:/: Yesu asifiwe! :/:\nAniokoa, anisafisha,\nYesu asifiwe!\n\n4. Njoo kwa Yesu, kisima hicho,\nUnywe, uoshwe katika maji!\nKiu yapoa, na watakaswa,\nYesu asifiwe!\n\n:/: Yesu asifiwe! :/:\nKiu yapoa, na watakaswa,\nYesu asifiwe!''',
    numero: 232,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_233',
    titre: 'TAZAMA MWOKOZI ALIYEKUFILIA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. TAZAMA Mwokozi aliyekufilia\nIli wewe upate uzima!\nTazama, kwa pendo atakusaidia,\nUsidumu dhambini daima!\n\nYainue macho!\nTazama Mwokozi aliyekufilia,\nIli upate uzima!\n\n2. Mwokozi alisulibiwa ju’ ya mti\nIli sisi tupate wokovu.\nAlitukomboa kwa damu yake safi,\nKwake Yeye twapata wongofu.\n\n3. Hakuna majuto yaweza’ kutuponya,\nIla damu ya Yesu Masiya.\nUfike kwa Yesu apate kukuonya\nJinsi yaondokavyo hatia!\n\n4. Rafiki, waitwa na Mungu kwa wokovu,\nAnataka ufike upesi.\nKwa nini kukawa,\nUfike bila hofu,\nUondoke katika hatari!\n\n5. Ufike, pokea uzima wa milele,\nBwana Yesu ali’tuletea!\nKarama ya mbingu ni tumaini letu,\nIpokee na hutapotea!''',
    numero: 233,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_234',
    titre: 'UTUKUFU WA MBINGUNI NI WA HERI',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. UTUKUFU wa mbinguni\nNi wa heri na amani,\nDhambi hazitakuwamo.\nVitu vyote vilivyomo\nNi vya tunu na thamani,\nDhambi hazitakuwamo.\n\nDhambi hazitaingia\nMbingu ya utakatifu.\nUkidumu mwenye dhambi\nBila kutakaswa huku,\nHutaingia mbinguni.\n\n2. Kama unatumaini\nKufikia nchi ile\nNa kuona Bwana Yesu,\nUtafute utakaso\nNa kupata moyo safi!\nDhambi hazitakuwamo.\n\n3. Unaweza ’tenda dhambi\nNa kukana Bwana Yesu,\nWalakini ukumbuke:\nDhambi zako zitafunga\nLango la mbinguni, kwani\nDhambi hazitakuwamo.\n\n4. Na ukiwa mkaidi\nhata sa’ ya kufa kwako,\nUtaitwa hukumuni,\nNa utaambiwa huko:\n“Ondokeni, siwajui!"\nDhambi hazitakuwamo.\n\nUkitaka kufikako\nMbingu ya utakatifu,\nTubu sasa, acha dhambi,\nUtafute moyo safi,\nNa utaingia mbingu!''',
    numero: 234,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_235',
    titre: 'TUMEKOMBOZWA KATIKA NCHI',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. TUMEKOMBOZWA katika nchi,\nUsikilize vema, rafiki!\n:/: Tumeokoka tufike juu,\nTaji kutiwa, furaha kuu! :/:\n\n2. Tumekombozwa katika watu,\nHata tu’chekwe kitambo huku.\n:/: Twavumilia katika shida,\nTwatazamia ’heri wa mbingu. :/:\n\n3. Tumekombozwa, tuwe wa huru,\nTukichokozwa haitudhuru.\n:/: Tutaondoka, ’hamia mbingu,\nTutasimama mbele ya Mungu. :/:\n\n4. Tumekombozwa, furaha kuu,\nTwaandaliwa karamu kuu!\n:/: Salamu hiyo uitangaze,\nWafike mbio na waokoke! :/:\n\n5. E’ mama, baba, mbona kungoja?\nNdugu na dada, fika pamoja!\n:/: Mwenye kukawa hataingia,\nLeo waitwa na Yesu pia. :/:''',
    numero: 235,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_236',
    titre: 'DHAIFU, MWENYE DHAMBI',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. DHAIFU, mwenye dhambi,\nNilipotea njia,\nLakini Bwana Yesu alinihurumia.\nNategemea Yeye,\nNajua pendo lake,\nAjaza roho yangu,\nninavyo vyote mwake.\n\nAjaza roho yangu,\nApita vitu vyote.\nAmani na upendo\nNi zangu siku zote.\nAjaza roho yangu,\nNeema kubwa kwangu!\nNamhimidi Yesu:\nYu yote ndani yangu.\n\n2. Sitaki dhambi tena, haiku’faidia;\nRafiki yangu, Yesu, ananisaidia.\nAlitangua dhambi kwa msalaba wake,\nKwa Yeye ukombozi, na vyote vimo mwake.\n\n3. Napenda kufuata daima nyayo zake,\nNibadilishwe sana, nifananishwe naye!\nNa tena siku moja atanikaribisha\nNyumbani mwake Baba, na atanijaliza!''',
    numero: 236,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_237',
    titre: 'MWOKOZI WANGU NI MWAMBA BORA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. MWOKOZI wangu ni mwamba bora,\nAhadi kama milima;\nZaniletea amani tele,\nNa mibaraka daima.\nKatika mwamba ni raha kuu,\nBaraka tele kutoka juu.\nNakaa humo, ninastarehe,\nNi heri sana milele.\n\n2. Makimbilio ni mwamba huo\nKatika teso lo lote;\nNisikimbie adui ’kuu,\nNishinde katika vyote!\nDunia yote ikitingika,\nAhadi zake hazipunguki.\nNakaa humo, ninastarehe,\nNi heri sana milele.\n\n3. Nakaa mbali ya udhalimu,\nHatia, dhambi, hukumu.\nNa kwa imani nikisimama,\nAdui atakimbia.\nNayo mawazo ya giza tupu\nHayatapata nafasi huko.\nNakaa humo, ninastarehe,\nNi heri sana milele.\n\n4. Nafurahia baraka zote\nZa ulimwengu wa roho.\nKarama hizo nalizipewa\nKatika kufa kwa Yesu.\nHakuna woga na shaka huko,\nHayatakuwa manung’uniko.\nNakaa humo, ninastarehe,\nNi heri sana milele.''',
    numero: 237,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_238',
    titre: 'NIFANANISHWE NAWE MWOKOZI',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. NIFANANISHWE nawe Mwokozi,\nNi haja yangu iliyo kuu.\nNinakuomba, na kwa machozi,\nNikufuate, Bwana wa juu!\n\nNifananishwe nawe Mwokozi,\nMwenye upendo, safi halisi!\nUnitakase, Unijalize!\nNifananishwe nawe zaidi!\n\n2. Nifananishwe nawe Mwokozi,\nMwenye rehema, pendo ajabu!\nNiwapeleke kwa Mkombozi\nWalioshindwa na majaribu!\n\n3. Nifananishwe nawe Bwanangu,\nMtakatifu, mwenye saburi!\nNiwe mnyofu kazini mwangu,\nMtu thabiti bila jeuri!\n\n4. Nifananishwe nawe Mwokozi!\nNinakuomba: Unijalize!\nVyote ninavyo nakutolea,\nUniongoze, uniagize!\n\n5. Nifananishwe nawe Mwokozi!\nNimiminie pendo moyoni!\nNibadilishe, E’ Mkombozi,\nNiwe tayari kwenda mbinguni!''',
    numero: 238,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_239',
    titre: 'NENO BAYA LISITOKE KAMWE',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. NENO baya lisitoke\nKamwe kwa ulimi wako!\nPendo likuchunge pote,\nHata na maneno yako!\n\nAmri ya Yesu ni ‘‘Mpendane’’!\nKama watoto wema tumtii!\nAmri ya Yesu ni ‘‘Mpendane’’!\nKama watoto tumtii!\n\n2. Pendo ni la mbingu, safi,\nUrafiki ’takatifu.\nTusiyaharibu tena\nKwa maneno yetu ’gumu!\n\n3. Neno moja la hasira\nAu tendo la uovu\nKwa upesi linavunja\nFungu la upendo safi.''',
    numero: 239,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_240',
    titre: 'NAVUTWA KWAKE YESU',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. NAVUTWA kwake Yesu na ninamfurahia,\nUzuri wake unapita vyote vya dunia.\nSiwezi kuupima kweli kwa fikara zangu.\nUzuri wake unazidi kuwa bora kwangu!\n\nSiwezi kueleza\nUzuri wake huku,\nLakini niaufahamu\nHuko ju’ mbinguni.\n\n2. Upendo wa ajabu mno nausifu sana,\nUkanivuta kwa upole, nije kwake Bwana!\nUkaondoa mimi katika unyonge wangu,\nUpendo wake unazidi kuwa bora kwangu!\n\nSiwezi kueleza\nUpendo wake huku,\nLakini nitaufahamu\nHuko ju’ mbinguni.\n\n3. Wokovu wake wakupendwa mno nausifu,\nUliondoa woga, ukanipa utulivu.\nNapenda Yesu aliyechukuwa dhambi zangu,\nWokovu wake unazidi kuwa bora kwangu.\n\nSiwezi kueleza\nWokovu wake huku,\nLakini nitaufahamu\nHuko ju’ mbinguni.''',
    numero: 240,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_241',
    titre: 'SITASHAWISHIWA TENA NA DUNIA HUKU',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. SITASHAWISHIWA tena na dunia huku,\nMema yote ni kwa Yesu, nampenda Yeye.\nKatika safari yangu, Bwana Yesu wimbo wangu.\nMbali, kwetu, kila saa namsifu Yesu.\n\n2. Mimi mtu heri sasa, nampenda Yesu.\nVyote nimempa Yeye, namtumikia.\nTumaini langu kuu nimeweka huko juu.\nMbali, kwetu, kila saa Namtumikia.\n\n3. Njia yote kwenda mbingu\nNifuate Yesu!\nNifanane naye Bwana,\nNiwe nuru huku!\nNimkiri Yesu pote na katika hali zote!\nMbali, kwetu, kila saa nifanane naye!''',
    numero: 241,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_242',
    titre: 'MAISHA YANGU YOTE NI MALI YA MWOKOZI',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. MAISHA yangu yote\nNi mali ya Mwokozi.\nMaungo, roho na akili,\nYeye ameyabadili.\nSiku zangu zote\nNi mali ya Mwokozi.\n\nWakati wangu wote\nNi mali ya Mwokozi.\nMachoni pake ni amani,\nNatumika kwa shukrani.\nNamsifu Yesu,\nAmenihurumia!\n\n2. Maisha yangu yote\nNi mali ya Mwokozi.\nNaomba niwe mpendevu,\nNitafute wapotevu!\nAliwanunua\nKwa damu takatifu.\n\n3. Maisha yangu yote\nNi mali ya Mwokozi.\nUnijalie kati’ mwendo\nKuongoza kwa upendo\nWana wapotevu,\nWapate kuokoka.\n\n4. Maisha yangu yote\nNi mali ya Mwokozi.\nNakaa miguuni pake,\nSiku moja huko kwake\nInapita elfu\nPengine bila Yesu!''',
    numero: 242,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_243',
    titre: 'UKICHOKA KWA SAFARI NGUMU',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. UKICHOKA kwa safari ngumu,\nSema na Yesu, sema na Yesu!\nWaogopa kwamba hutadumu,\nSema na Yesu daima!\n\nSema na Yesu, sema na Yesu,\nYeye Rafiki amini!\nAkupenda kwa upendo bora.\nSema na Yesu kwa yakini!\n\n2. Ukilia ’chozi ya majuto,\nSema na Yesu, sema na Yesu!\nUkiteswa ju’ ya dhambi nzito,\nSema na Yesu daima!\n\n3. Je, wahofu jua likifichwa?\nSema na Yesu, sema na Yesu!\nKwa taabu ukihuzunishwa,\nSema na Yesu daima!\n\n4. Ukisumbukia kufa kwako,\nSema na Yesu, sema na Yesu!\nUkiteswa kwa maisha yako,\nSema na Yesu daima!''',
    numero: 243,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_244',
    titre: 'SAFARI YANGU HUKU',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. SAFARI yangu huku ikiwa hatarini,\nNa ikipita katika giza na jaribu,\nNajua kwa hakika: Mwokozi Yu karibu,\nNinamfuata mahali po pote.\nNikiwa pamoja na Yesu sina hofu.\nAnipa furaha na heri rohoni mahali pote.\nIkiwa nitayashiriki mateso yake,\nNitamfuata Mwokozi hata mwisho.\n\n2. Nikitangaza Neno la Mungu duniani\nKatika mataifa walio wakaidi,\nNina furaha kubwa moyoni mwangu, kwani\nMwokozi Yu nami mahali po pote.\n\n3. Na Bwana akitaka nibaki hapa kwangu,\nWengine wakitumwa mahali pa ugeni,\nKusudi langu moja: nidumu mwaminifu,\nNa nimfuate mahali po pote!\n\n4. Si lazima nijue makusudio yote,\nNi kazi yangu huku kumfuate Yeye.\nIkiwa nitabaki, ikiwa nitakwenda,\nNitamfuata Mwokozi po pote.''',
    numero: 244,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_245',
    titre: 'MIKWAJU ITIAPO GIZA NA KIVULI',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. MIKWAJU itiapo giza na kivuli\nKatika nchi ya Bersheba ya zamani,\nAlitembea Ibrahimu asubuhi,\nNa maumivu na huzuni ni rohoni,\nKwa kuwa aliitwa na Mwenyezi Mungu\nKutii amri yake bila nung’uniko.\nNa hapo akaomboleza: “E’ Bwanangu,\nWataka nitakutolea mwana wangu?”\n\n2. Sauti ya Bwanake aliifahamu:\n“Mtwae sasa mwana wako wa pekee,\nUkamtoe mwana juu ya madh’bahu;\nKafara ya thamani ukanitolee!”\nNa moyo wake ukamtulia sana,\nAkitukuza Mungu na kutumaini\nYa kuwa Yeye atamfufua mwana;\nAlimjuwa Yeye aliye mwamini.\n\n3. Akaamka Ibrahimu alfajiri,\nAkatandika punda, akatwaa kuni.\nPamoja na mwanawe tena ’kasafiri,\nNa roho yake ikalia kwa huzuni.\nMwanawe Isak’ aliyemfurahia:\nKipeo cha furaha ya uzee wake,\nMatumaini yake yote ya dunia,\nKafara atakayotoa kwa Bwanake.\n\n4. Katika njia ya mlima wa Moriya\nMtoto akamsaili baba yake:\n“Tazama moto uko, kuni ziko pia,\nKondoo mume kwa kafara yuko wapi?”\nNa Ibrahimu akajibu kwa imani\nIsiyoona shaka wala kudhania:\n“Kondoo mume kwa kafara ya shukrani,\nNinasadiki Mungu atajipatia.”\n\n5. Je, awezaje Ibrahimu kusahau\nWakati huo wa uchungu na huzuni,\nNa jinsi akajenga huko madhabahu,\nNa tena akamweka mwana ju’ ya kuni?\nAkakitwaa kisu amchinje mwana,\nHalafu aliposikia neno tamu:\n‘‘Usifanyie neno sasa kwa kijana,\nNajua wanipenda sana Ibrahimu!’’\n\n6. Akainua macho yake kwa haraka,\nTazama dume la kondoo, nyuma yake,\nAliyenaswa pembe zake kwa kichaka!\nAkamtoa akomboe mwana wake.\nNa malaika akamwita, akasema:\n‘‘Umenitii nami nitakubariki.\nNa kwa uzao wako mataifa tena\nwa’barikiwa kwani umenisadiki.’’\n\n7. Machozi yamekuwa mengi tangu hapo;\nWakristo wamekamilika kwa jaribu.\nNa mlimani mwa Moriya wazikapo\nMatumaini yao, pendo na nasibu.\nLakini juu ya mlima wa kafara\nMwenyezi Mungu abariki watu wake.\nAwajulisha nguvu zake na ishara,\nAwajaliza Roho ya ahadi yake.''',
    numero: 245,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_246',
    titre: 'HESHIMA NA SIFA ZINA BABA MBINGUNI',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. HESHIMA na sifa\nZina Baba mbinguni,\nAliyetupenda\nZamani na sasa!\n\nHaleluya, usifiwe!\nHaleluya! Amina.\nHaleluya, usifiwe!\nHaleluya! Amina.\n\n2. Heshima na sifa\nZina Yesu Mwokozi,\nAlitufilia\nKwa ’jili ya dhambi!\n\n3. Heshima na sifa\nZina Roho wa kweli,\nAnashuhudia\nMwokozi na damu!''',
    numero: 246,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_247',
    titre: 'NAPENDA SANA KUMSHUKURU MWOKOZI',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. NAPENDA sana kumshukuru\nMwokozi wangu kwa nia huru;\nKwa wimbo wangu nashuhudia\nUpendo wake na damu pia.\n\n2. Nikidhukuru mateso yake\nMsalabani na kufa kwake,\nNataka katika wimbo wangu\nKumtolea shukrani yangu.\n\n3. Naimba sasa, nina faraja,\nKatika Yesu nina taraja.\nNi mambo tunayofunuliwa,\nKwa wenye dhambi yamefichiwa.\n\n4. Kwa Neno lake aniambia\nYa kwamba ananihurumia,\nNa ukombozi ninao sasa\nKwa damu iliyonitakasa.\n\n5. Na msione ajabu sana\nYa kuwa namshukuru Bwana!\nNinamwimbia kidogo sasa,\n’taendelea mbinguni hasa.\n\n6. Anipa vyote kwa pendo lake,\nUrithi wangu wachungwa kwake\nHata wakati wa kuhamia\nMbinguni, na nitashangilia.''',
    numero: 247,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_248',
    titre: 'YESU AKINIONGOZA SITAANGUKA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. YESU akiniongoza\nSitaanguka, sitaanguka.\nNi Mfalme mtukufu,\nMwokozi wangu, Mwokozi wangu.\nWakati huu, hata milele\nApita vyote vya dunia.\nYesu amenichagua,\nMwokozi wangu, Mwokozi wangu.\n\n2. Yesu amenipa raha,\nNi kiongozi, ni kiongozi.\nAnaka’ moyoni mwangu,\nYesu Mwokozi, Yesu Mwokozi.\n\n3. Nilikuwa kama chungu\nKilichovunjwa, kilichovunjwa.\nSasa nimeokolewa\nNa Bwana Yesu, Na Bwana Yesu.\n\n4. Nitakapofika mbingu\nNitamsifu, nitamsifu\nYesu kwa upendo wake,\nMwokozi wangu, Mwokozi wangu.''',
    numero: 248,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_249',
    titre: 'ZAMANI MJINI MWA YERUSALEMU',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. ZAMANI mjini mwa Yerusalemu\nWaisrael’ waliabudu.\nWakristo wa sasa wanakusanyika\nKuomba, kusifu Mwokozi.\n\nMsifuni, msifuni Mungu wetu,\nKwani ametutendea mema!\nTutamsifu tu Aliyetoka ju’,\nShangilieni Mwokozi mwema!\n\n2. Mwokozi Yu nasi, ame’fumbulia\nUweza wa kutuokoa.\nNa Yu mwaminifu, atusikiliza,\nApenda kutupa baraka.\n\n3. Twaomba baraka na mvua ya mbingu\nKuithibitisha Injili!\nWagonjwa wapone, vipofu waone,\nTupate ’batizo wa Roho!''',
    numero: 249,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_250',
    titre: 'IKAWA SIKU KUBWA KWANGU',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. IKAWA siku kubwa kwangu\nAliponiokoa Yesu.\nE’ roho yangu, umsifu\nMwokozi wako, Yesu Kristo!\n\nSiku kuu, siku kuu\nAliponiokoa Yesu!\nNa kwa neema na upendo\nAkaondoa dhambi zangu!\nSiku kuu, siku kuu\nAliponiokoa Yesu!\n\n2. Nimeokoka, nafurahi!\nAnanitaja mwana wake!\nAlinivuta kwa upendo,\nNikafuata mwito wake.\n\n3. Ni shangwe ku’ moyoni mwangu\nNikifuata Bwana Yesu.\nAnipimia ne’ma sawa\nWakati wote ma maisha.\n\n4. Kwa pendo kubwa na rehema\nAnanitunza siku zote.\nSitasahau siku ile\nAliyoniokoa Yesu.''',
    numero: 250,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_251',
    titre: 'HERI MIMI KWANI MKOMBOZI',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. HERI mimi kwani Mkombozi wangu\nAlitoa dhambi zote!\nShangwe na furaha zanijaza mno,\nKila siku nafurahi!\n\nKila siku nafurahi!\nKila siku nafurahi!\nHeri mimi kwani Mkombozi wangu\nAlitoa dhambi zote!\n\n2. Heri mimi, Yesu alinifilia;\nni furaha ku’; Yu hai!\nNi Rafiki kweli anayetuweka\nHuru toka minyororo.\n\nKila siku nafurahi!\nKila siku nafurahi!\nHeri mimi, Yesu alinifilia;\nNi furaha ku’: Yu hai!\n\n3. Heri mimi kwani ananiongoza;\nNafuata nyayo zake.\nNikiyasikia tu maneno yake,\nSitaweza kupotea.\n\nKila siku nafurahi!\nKila siku nafurahi!\nHeri mimi kwani ananiongoza,\nSitaweza kupotea!''',
    numero: 251,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_252',
    titre: 'NINAKUSHUKURU MUNGU KWA FADHILI ZAKO',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. NINAKUSHUKURU Mungu\nKwa fadhili zako zote,\nKwa furaha na uchungu,\nKwa neema njia yote!\nKwa kipupwe na masika,\nKwa wakati wa machozi\nNa kwa raha kadhalika\nNa’shukuru Mkombozi!\n\n2. Ninakushukuru Bwana\nKwa kunifunua siri,\nKwa kusikiliza sana\nOmbi, na kulifikiri!\nNa kwa msaada wako,\nKwa wakati wa jaribu.\nKwa agano la Mwanako\nNashukuru! U karibu.\n\n3. Nashukuru Wewe pia\nKwa uzuri wa mbinguni,\nNuru uliyoitia,\nNa kwa jambo la huzuni!\nKwa jaribu na kwa giza\nNa kwa siri ya imani,\nTena kwa kunijaliza\nNinakuwa na shukrani!\n\n4. Kwa waridi za njiani\nNa miiba yao pia,\nKwa mahali pa amani\nUliopotuandalia,\nKwa agano la upendo,\nKwa kutupa tumaini,\nKwa kifiko cha mwenendo:\nNashukuru! U amini!''',
    numero: 252,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_253',
    titre: 'SIKU YA FURAHA INATUFIKIA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. SIKU ya furaha inatufikia,\nSiku nzuri katika nchi.\nMungu asifiwe\nMbali na karibu!\nMalaika wanamshukuru Bwana.\n\n2. Huko Bethlehemu alipozaliwa\nYesu Kristo Mwokozi wetu,\nPendo la Mwenyezi\nLikadhihirika;\nRaha ya mbinguni imefika kwetu!\n\n3. Ni karama kubwa tuliyoipewa\nKwa mkono wa Baba Mungu.\nRoho Mfariji anatuongoza,\nAtuonya njia iendayo kwake.''',
    numero: 253,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_254',
    titre: 'E’ ROHO YANGU, SIKILIZA VEMA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. E’ ROHO yangu, sikiliza vema,\nWimbo wa juu unatufikia!\nShangwe na raha unatuletea,\nAmezaliwa Mkombozi wetu.\nAhimidiwe Mungu wa mbingu!\nNa duniani iwe raha na amani!\n\n2. Ninafurahi kwani wimbo huo\nTungali tunausikia huku.\nNa kwa upendo Mungu anaita:\n‘‘Mfike kwangu, nitawapa raha!’’\n\n3. Katika nchi, mbali na karibu,\nSauti ya Mwokozi inavuma.\nWatu wa dhambi wanakuja kwake,\nAwapokea na awaokoa.''',
    numero: 254,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_255',
    titre: 'ZIMETIMIZWA AHADI NJEMA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. ZIMETIMIZWA ahadi njema:\nAmezaliwa Mwokozi wetu!\nNa yote Mungu aliyosema\nKwa manabii kwa ’jili yetu,\nTumeyapata na kuyaona\nKatika Yesu, mwanawe Mungu.\nAlitujia na tumepona,\nTwaweza wote kufika mbingu.\n\n2. Alijidhili kuwa maskini,\nNa alifika ulimwenguni,\nMwokozi wetu, twaiamini.\nWalimlaza katika hori.\nNa utukufu kwa Baba yake\nAliuacha, rehema kuu!\nNa twende sote horini kwake,\nTumsujudu Aliye juu!\n\n3. Mtoto huyo - mfano wetu,\nSi mtu tu, bali Mungu pia.\nAkawa mwenye kutukomboa,\nNa Golgotha alitufilia.\nTumepotea vibaya sana\nKatika dhambi na ukaidi,\nKwa umaskini wa Yesu Bwana\nTwapata kuwa wote tajiri.''',
    numero: 255,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_256',
    titre: 'ASUBUHI NA MAPEMA SIKU YA HABARI',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. ASUBUHI na mapema\nSiku ya habari njema\nTwende sote Bethlehemu!\nMungu ameturehemu!\n\n2. Nyota kubwa inang’aa\nJu’ ya nyumba ana’kaa\nMwana wake wa pekee.\nMbele yake tujiweke!\n\n3. Wachungaji wasikia\nNyimbo zao malaika:\n‘‘Asifiwe Mungu juu,\nDuniani raha kuu!’’\n\n4. Mariamu anachoka,\nSafarini wana’toka,\nAnalaza mwana ndani\nYa sanduku la majani.\n\n5. Wachungaji wanafika,\nNa magoti wana’piga;\nWaliacha kundi lote\nKushukuru Yesu wote.\n\n6. Mwana yule ni Mwokozi,\nMsaada, Mkombozi.\nNeno la kuaminiwa,\nMungu ametushukia!''',
    numero: 256,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_257',
    titre: 'SIKU YA KUISIKIA PARAPANDA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. SIKU ya kuisikia parapanda yake Mungu,\nIkiita wateule wake wote,\nKwa neema tutakaribishwa na Mwokozi wetu\nKatika kutano kubwa huko juu.\n\nTutakaribishwa kwake, tutakaribishwa kwake,\nTutakaribishwa kwake\nKatika kutano kubwa huko juu.\n\n2. Mungu atawafufua wafu wake siku ile,\nNa wakristo hai watabadilika,\nWote watanyakuliwa kumkuta Bwana Yesu,\nTutakusanyika wote huko juu!\n\n3. Wimbo wa mbinguni kama maji utakapovuma,\nUtukufu wake Yesu tuta’ona.\nNami pia kwa neema nitafika siku ile\nKusikia neno lake la ‘‘Karibu!’’''',
    numero: 257,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_258',
    titre: 'MKUTANO ’KUBWA GANI MLIMANI',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. MKUTANO ’kubwa gani\nMlimani mwa Sayuni\nAsubuhi ya milele?\nHawa walinunuliwa,\nTena walitakasiwa,\nWawe malimbuko kwa Mwokozi.\n\n2. Hata kufa huku chini\nWalikuwa waamini,\nWalimfuata Yesu.\nSasa wanaka’ mbinguni,\nWametoka jaribuni,\nWamerithi raha ya kipeo.\n\n3. Ukamili wa uzuri\nWa muziki na zaburi\nUnatoka huko juu!\nNi sauti tamu mno\nYa kinubi na ya wimbo\nKandokando ya Mwokozi wetu!\n\n4. Wimbo huo ni wa nani,\nWa sauti ya tufani,\nWa kutia raha kuu?\nNdio wimbo mpya ule\nUimbwao sasa kule\nIli kuhimidi Mkombozi.\n\n5. Bwana, unilinganishe,\nNa ulimi u’safishe,\nNami nikaimbe huko!\nNipe vazi la rohoni,\nSafi sana, la kitani\nLifaalo asubuhi hiyo!''',
    numero: 258,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_259',
    titre: 'NAFIKIRI SIKU TUTAKAYOFIKA MBINGUNI',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. NAFIKIRI siku tutakayofika\nMbinguni huko kwetu,\nNa malaika kwa furaha\nWatatukaribisha.\nWataimba wimbo wa kutupokea:\n‘‘Karibuni! Karibuni wote kwetu!’’\nMalaika wa Mungu watatulaki\nkwa nyimbo za furaha:\n‘‘Twawasalimu! Karibu kwetu!’’\n\n2. Mkutano ’kubwa umekwenda mbele\nNa sasa uko kule.\nHuimba kwa sauti kuu\nUkimsifu Mungu.\n\n3. Sisi nasi tutakusanyika huko\nYerusalemu mpya,\nNa mkutano wa wakristo\nUtatuamkia.\n\n4. Bwana Yesu naye atatupokea,\nAtatukumbatia\nKatika nyumba ya mbinguni\nIliyo ya milele.''',
    numero: 259,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_260',
    titre: 'MWENYEZI AMEJENGA MJI',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. MWENYEZI amejenga mji,\nMfalme wa huko ni Yesu,\nYohana aliouona\nKushuka kutoka mbinguni.\nUkuta ukawa wa jaspi,\nNa njia ya dhahabu safi.\nWakati nitakapohama,\nNitachukuliwa Sayuni.\n\nMjini mle mtakatifu\nYesu atuandalia makao.\nSasa nangoja, nautamani\nMji mzuri kutoka mbinguni.\n\n2. Na dhambi hazitafikapo,\nUchafu hautaingia,\nMateso, ugonjwa na kufa\nHazitakuwapo mjini.\nNa mle tutayasahau\nMashaka, ’jaribu na vita;\nHatutaachana milele.\nHakuna uchungu rohoni!\n\n3. Mjini hatutayaona\nKilio na maombolezo.\nNa huko hatutadanganywa,\nHaitakuwapo husuda.\nNa wana wa Mungu waona\nUzuri na utakatifu;\nNitakapofika mjini\nNitashangilia daima.\n\n4. Wapenzi, rafiki na wale\nWaliomaliza safari,\nWatashangilia kabisa\nKwa ’jili ya damu ya Yesu.\nNa tutawaona mjini\nKatika makao ya raha.\nTumaini letu ni hili:\nTutakusanyika mbinguni.''',
    numero: 260,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_261',
    titre: 'MSAFIRI ULIE NJIANI',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. MSAFIRI uliye njiani,\nWatamani nyumba ya Babako.\nSikiliza nyimbo za mbinguni!\nU karibu sana kufikako.\n\nUtakuwako huko,\nKatika mkutano wa wakristo\nHuko mbinguni kwa raha ipitayo fahamu?\nUtakuako huko\nWakati wa kuimba wimbo mpya\nWa kumsifu Mwokozi siku zote?\n\n2. Sikiliza sasa makengele\nYapigwayo huko juu kwetu,\nIli kutuita sisi mbele\nYa jioni ya maisha yetu!\n\n3. Labda siku ile ni karibu\nNitakapokwenda, nitahama!\nSitaona tena majaribu,\nNitajazwa kwa kumtazama.\n\n4. Lango la mbinguni wazi sasa,\nYesu amelifungua kwako.\nUtaweza kuokoka hasa,\nUsiahirishe heri yako!''',
    numero: 261,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_262',
    titre: 'KITAMBO BADO- VITA ITAISHA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. KITAMBO bado — vita itaisha,\nKitambo, na dhoruba zitapoa.\nNa tena nitalaza kichwa changu\nMbavuni mwake anayenipenda.\n\n:/: Nitaziona raha na amani,\nMbinguni hazitakuwapo dhambi. :/:\n\n2. Kitambo bado — roho yaumizwa,\nKitambo katika usiku huku.\nMachozi nina’toka mara nyingi\nSababu sijaona bado Yesu.\n\n:/: Lakini asubuhi ya milele\nHuko mbinguni sitalia tena. :/:\n\n3. Kitambo bado — ya kuchoka huku,\nKitambo — tena nitaona Yesu.\nNa huru mbali na hatari zote\nNitastarehe mikononi mwake.\n\n:/: Uvuli wote utaondolewa\nKwa nuru huko kamilifu kweli. :/:\n\n4. Mateso yangu hayadhuru tena,\nNitasahau yote kwake Yesu.\nNikisumbuka muda duniani,\nMbinguni sitaona shida, kufa.\n\n:/: Na Mungu atafuta kila chozi,\nAtaondoa maumivu yote. :/:''',
    numero: 262,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_263',
    titre: 'ENYI KUNDI LAKE MUNGU',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. ENYI kundi lake Mungu,\nMuda haba mhimili!\nKati’ nchi ya milele\nMtaona raha tele.\n\n:/: Muda haba, muda haba,\nTena vita itakwisha. :/:\n\n2. Usilogwe na dunia,\nUsiache Mungu wako!\nKatika mabaya, mema\nUfuate Bwana Yesu.\n\n:/: Siku zote, siku zote!\nHivyo utashinda vyote. :/:\n\n3. Ukichoka safarini,\nUkiona njia ndefu\nNa hatari za jangwani,\nMungu akuburudisha.\n\n:/: Raha huko, raha huko\nYatuliza msafiri. :/:\n\n4. Kwa imani tunaona\nNchi yetu ya ahadi.\nNi habari nzuri sana:\nMajaribu yatakoma.\n\n:/: Mbio sana, mbio sana\nHuko ju’ tutaonana. :/:\n\n5. Tukiitwa na mauti\nKwa furaha tutahama.\nTulivyovitumaini,\nNg’ambo huko tutaona.\n\n:/: Heri tele, heri tele:\n’ona raha ya milele! :/:''',
    numero: 263,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_264',
    titre: 'E\' MSAFIRI JANGWANI, TAZAMA JUU',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. E’ MSAFIRI jangwani,\nTazama juu mbinguni!\nHapo utaona nyota\nZa faraja na tumaini.\n\nHuko hutayaona\nMachozi wala shida.\nMungu atatuliza\nMsafiri mbinguni kwake.\n\n2. Ukisumbuka gizani\nKatika pepo, dhoruba,\nBado wakati mfupi,\nNuru itatokea tena.\n\n3. Ukililia wapendwa\nWaliokutangulia,\nUtakutana na wote,\nHutalia machozi tena.\n\n4. Na penye moyo wa Yesu\nUtastarehe daima,\nHutakumbuka mbinguni\nShida, kufa na sikitiko.''',
    numero: 264,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_265',
    titre: 'TU WASAFIRI, TWAKARIBIA NCHI',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. TU wasafiri, twakaribia\nNchi ya mbingu kwa Mungu Baba.\nTusiogope bonde la kufa,\nYesu atuongoza kwake!\n\n:/: Tu wasafiri :/:\nTutakutana nyumbani mwa Baba.\nE’ Bwana Yesu, utuongoze,\nTufike sote mbinguni!\n\n2. Wengi katika wapendwa wetu\nWamevuka mto wa kufa.\nWalifuata mwito wa Mungu.\nWakahamia nchi nzuri.\n\n3. Katika mwendo wa duniani\nWalitazama Mwokozi wao,\nNa waliacha mambo ya huku,\nWalipendeza Bwana Yesu.\n\n4. Ndugu wapendwa, tuendelee,\nHata ikiwa shida njiani!\nYesu ni njia, kweli, uzima;\nTumfuate siku zote!''',
    numero: 265,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_266',
    titre: 'AYALA NAYE ANAYO SHAUKU YA MAJI',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. AYALA naye anayo shauku\nYa maji ya kisima;\nNa vivyo hivyo ninaona kiu\nKwa Mungu wa uzima.\nKama ayala aonavyo\nShauku mito ya maji safi,\nNa vivyo hivyo rohoni mwangu\nNaona kiu kwa Mungu wangu.\n\n2. E’ Mungu wangu, Mungu wa fadhili,\nNakutafuta Wewe!\nJe, nikuone lini kwa ’kamili,\nNiburudishwe nawe!\n\n3. Nazifikiri siku za zamani\nNiliposhangilia.\nNijaze tena raha na amani,\nNakutumainia!\n\n4. Na usifadhaike moyo wangu,\nAmini Mungu wako!\nFadhili zake hata huko mbingu\nZatosha sana kwako!''',
    numero: 266,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_267',
    titre: 'BABA NAKUOMBA LEO NA MAPEMA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. BABA, nakuomba leo na mapema:\nNiongoze pote kwa mapito mema!\n\nBaba yangu, sikiliza\nOmbi langu leo!\nBaba, nakusifu!\nUnanisikia.\n\n2. Nistahimilipo kazi za mchana,\nUnitie nguvu, nakuomba, Bwana!\n\n3. Hata jua kuchwa liagapo njia,\nBaba, nakuomba: Unilinde pia!\n\n4. Maadui wengi watuwindawinda,\nKwa maisha yetu Mungu ni mlinda.\n\n5. Katika utoto na ujana tena,\nNa uzee pia: Omba, kesha, shinda!''',
    numero: 267,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_268',
    titre: 'E’ YESU, INGIA ROHONI KABISA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. E’ YESU, ingia rohoni kabisa,\nUniweke huru na kunitakasa,\nNipate kushirikiana na Wewe\nKatika mateso na raha daima!\n\n:/: E’ Bwana, nijaze\nUpendo wa mbingu\nNao uthabiti,\nNiwe mshindaji! :/:\n\n2. Siombi ufalme, siombi heshima,\nNaomba kupewa neema daima,\nNijue yakini ya Neno la Mungu:\nMtoe miili na iwe dhabihu!\n\n3. Nishike rohoni, unichungulie,\nNa katika yote unisaidie,\nNipate kabisa kusudi na nia\nKujitoa kwako, kukutumikia!\n\n4. Hakuna la huku litanizuia\nNisilingamane na Yesu Masiya.\nNitumainije kufika mbinguni\nNisiposhiriki Mwokozi mpendwa!''',
    numero: 268,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_269',
    titre: 'KATIKA BONDE NA MILIMA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. KATIKA bonde na milima,\nKwa mataifa mahali pote,\nPeleka Neno la wokovu!\nMsifu Yesu sana!\n\nMsifuni Bwana,\nMsifuni Bwana!\nNa tangazeni Neno lake,\n’sifuni Yesu sana!\n\n2. Mapema na jioni pia\nHubiri Neno la Bwana Yesu!\nTangaza njia ya wokovu,\nMsifu Yesu sana!\n\n3. Lo! Paradiso malaika\nWanahimidi Mwokozi wetu.\nTuimbe nasi sifa yake,\nTu’sifu Yesu sana!\n\n4. Usiyeona kufa bado,\nUipokee neema leo!\nUjisafishe kati’ damu,\nMsifu Yesu Kristo!''',
    numero: 269,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_270',
    titre: 'SIMAMA FANYA VITA PAMOJA NA MFALME',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. SIMAMA, fanya vita\nPamoja na Mfalme!\nBendera tuishike\nIliyo ya Mwokozi!\nMwenyezi huongoza\nMajeshi yake huku.\nAdui wote pia\nWashindwa mbele yake.\n\n2. Sikia baragumu,\nLinatuita sasa!\nTuendelee mbele,\nKusudi ni kushinda!\nTusiogope kamwe\nHatari ya shindano,\nPigana na adui\nkwa nguvu yake Mungu!\n\n3. Simama, fanya vita\nKwa jina lake Yesu!\nHatuna nguvu sisi,\nTunamtegemea.\nNa kwanza tuzivae\nSilaha zake Mungu!\nTukeshe siku zote,\nTuombe kwa bidii!\n\n4. Shindano letu hapa\n’takwisha siku moja;\nTwapiga vita leo,\nBaada pumziko.\nNa kila mshindaji\nAtapokea taji,\nNa utukufu tele\nKaribu na Mfalme.''',
    numero: 270,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_271',
    titre: 'UWATAFUTE WENZAKO WAPOTEAO',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. UWATAFUTE wenzako\nWapoteao mbali!\nYesu mwenyewe apenda\nKuwaokoa wote.\n\nUwatafute wenzako\nWapoteao mbali!\nPasha habari ya Yesu\nNa ya wokovu wake!\n\n2. Uwatafute wenzako\nKwa neno la upendo!\nMungu atalibariki\nna kulithibitisha.\n\n3. Uwatafute wenzako\nKwa ’jili ya Mwokozi!\nAliwakomboa wote,\nNi mali yake kweli.\n\n4. Uwatafute wenzako\nKabla ajapo Yesu!\nWasipotee kabisa,\nUwaokoe mbio!''',
    numero: 271,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_272',
    titre: 'NANI NI WA YESU? AMTUMIKIE',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. NANI ni wa Yesu? Amtumikie!\nAtafute watu na kuwahubiri!\nNani anataka kujitoa leo,\nKufuata Yesu katika mateso?\n\nNani ni wa Yesu? Amtumikie!\nNani atakaye, na amwitikie!\nMimi ni wa Yesu, nimtumikie,\nNitafute watu, kwake warudie!\n\n2. Kwa upendo wake tunalazimishwa\nKutafuta wenye dhambi na makosa.\nTunaendelea kuwavuta kwake,\nHata wanaomba: Mungu tuokoe!\n\n3. Yesu alitununua sisi sote\nJu’ ya msalaba na kwa damu yake.\nKwake tumepata raha na uhuru;\nTunataka sasa kuwa waminifu!\n\n4. Hata vita ikiongezeka huku\nTunayo bendera ya kushinda kwetu.\nSiku ya hatima inakaribia,\nItaibadili vita iwe shangwe.''',
    numero: 272,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_273',
    titre: 'NI UHERI KUMWAMINI MUNGU',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. NI uheri kumwamini Mungu\nKama Ibrahimu wa zamani.\nHakutiwa shaka kwa uchungu,\nIla alitii kwa imani.\nNi uheri kuendea sawa\nKatika mapito ya sheria.\nUkijaribiwa na kukawa,\nMwisho Mungu atakujalia.\n\n2. Mashujaa wote wa Biblia\nHawakufurahi kwa anasa.\nWakafunzwa kutumainia\nMungu na uweza wake hasa.\nTena wakaenda kwa imani ya\nkutetemesha ulimwengu,\nWakashinda giza na Shetani.\nSifa na heshima zina Mungu!\n\n3. Yesu atakayekuzwa naye\nKwanza adhiliwe kuwa vumbi;\nMwana wake mwema na ambaye\nBaba humpenda, humrudi.\nHivyo Mungu awakamilisha\nWatu wake kwa mateso huku,\nNa zaidi kuwafahamisha\nKulijua pendo lake kuu.\n\n4. Na ikiwa raha ya dunia\nYatoweka katika jaribu,\nMwaminifu atafurahia\nMungu wake, kwani Yu karibu.\nNa mavuno ya taabu yake\nYakichomwa na kuharibika,\nAtategemea Bwana wake,\nNa kwa hiyo hatanung’unika.''',
    numero: 273,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_274',
    titre: 'NINAFURAHIA KISIMA DAIMA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. NINAFURAHIA kisima daima,\nKisima cha damu ya Yesu.\nKatika upendo nalindwa salama,\nNasifu Mwokozi mpendwa.\n\nKisima cha maji kinabubujika,\nKinaniletea uzima.\nNa kando ya maji ninaburudika,\nNinashangilia daima.\n\n2. Nakaa karibu ya kisima hiki,\nNaishi kwa maji ya ’hai.\nYananilietea kupita kipimo\nUzima na shangwe rohoni.\n\n3. Nakaa karibu na kisima hiki,\nNaishi katika uheri.\nUfike upesi uliye na kiu,\nKisima kinabubujika!\n\n4. Nakaa karibu ya kisima hiki,\nNaona furaha na raha.\nNa kando ya maji nafasi kwa wote,\nWaweza kupona kabisa.''',
    numero: 274,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_275',
    titre: 'E’ MUNGU MWENYE HAKI UNIONGOZE',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. E’ MUNGU mwenye haki,\nUniongoze huku\nKatika mambo yote\nYanayokupendeza!\nNikiwa huku bila Wewe,\nVitisho, hofu na mashaka\nYananitia tetemeko mpaka kufa.\n\n2. Ni heri siku zote\nKutegemea Yesu\nNa kuenenda sawa\nKatika nyayo zake,\nKwa kuwa Yeye ni Mchunga\nAnayeniongoza vema,\nNipate kuingia katika raha yake.\n\n3. Safari yangu sasa\nYaelekea mbingu,\nMwokozi yuko huko,\nLazima nifikeko\nNa siku nitakapofika\n’tashangilia kwa furaha\nKuona Yeye aliyeninunua kwake.\n\n4. Ulimwenguni humu,\nMatata na kuchoka.\nNikihitaji kitu\nNafadhahika bure,\nLakini siku ile kuu\nNita’pomwona Mkombozi,\nNatumaini sitakosa thawabu yangu!\n\n5. Mbinguni sitaona\nAdui zangu tena.\nHayatakuwa mambo\nYa kupokonya pale.\nSauti nitamtolea,\nKusema: Mungu, Haleluya!\nMikono nitaipepea kwa shangwe kuu!''',
    numero: 275,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_276',
    titre: 'MATENDO YA MUNGU YAPITA FAHAMU',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. MATENDO ya Mungu yapita ’fahamu,\nNi nani ayaona wazi?\nLakini najua mapito ya Mungu\nKwa mimi yafaa halisi.\n\n2. Njiani sijui maana ya yote,\nLakini nitayafahamu.\nKwa nini kuzisumbukia kwa bure\nTaabu na shida za muda?\n\n3. E’ Bwana, unayo magari maelfu,\nNa lenye linalonifaa,\nU’lichagulie mwenyewe, Bwanangu,\nNifike salama mbinguni!\n\n4. Na kama Elia upesi kabisa\nNitakavyoacha dunia,\nUchungu na shida za huku ’takwisha,\nMilele nitashangilia.\n\n5. Tutamsujudu Mwokozi daima,\nKuimba maelfu pamoja:\nE’ Mungu, U haki na mwenye neema\nKatika shauri na tendo.\n\n6. Halafu nangoja kwa uvumilivu\nKujua maana kwa wazi.\nNa matumaini ni yenye uzima:\nUrithi ninao mbinguni.''',
    numero: 276,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_277',
    titre: 'NITAOGOPA NINI GIZANI DUNI',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. NITAOGOPA nini gizani duniani?\nSikuachiwa peke’ mbali ya tumaini!\nMwokozi Yu karibu, asiyebadilika.\n\n:/: Hutunza ndege ndogo na mimi kadhalika :/:\nNamshukuru Mungu asiyebadilika.\nHutunza ndege ndogo na mimi kadhalika.\n\n2. “E’ usifadhaike moyoni mwako, mwana”,\nAnong’oneza Yesu, “Nitegemee sana!”\nNa hapo woga wangu waruka kwa hakika.\n\n:/: Hutunza ndege ndogo na mimi kadhalika:/:\n\n3. Na nikijaribiwa na jua lifichwapo,\nHata sioni raha, wala faraja hapo,\nNakimbilia Yesu, na yote yapinduka.\n\n:/: Hutunza ndege ndogo na mimi kadhalika :/:''',
    numero: 277,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_278',
    titre: 'NINAINUA MACHO YANGU KWA MUNGU',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. Ninainua macho yangu\nKwa Mungu aketiye juu,\nAliye msaada wangu,\nNjiani pangu nuru kuu.\nAliyefanya vyote,\nMaombi huyasikia.\nKatika njia zangu zote\nAtanilinda pote pia.\n\n2. Bwanangu asiache tena\nMguu wangu usogezwe,\nKwa kuwa ni Mlinzi mwema,\nNaye hatasinzia kamwe.\nAlinda roho yangu\nNisije nikapotea.\nHitaji za maisha yangu\nBaraka yake ya’enea.\n\n3. Aniokoa na uovu,\nNa roho yangu imepona.\nKwa Yeye nguvu na wokovu,\nNilizionja naku’ona.\nAnanilinda pote:\nKutoka na kuingia;\nAnijaliza mema yote\nNikiwa kutumainia.''',
    numero: 278,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_279',
    titre: 'UPENDO WAKE MUNGU UNATUUNGANISHA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. UPENDO wake Mungu\nUnatuunganisha.\n’shirika wa watakatifu —\nUheri wa mbinguni.\n\n2. Katika sala zetu\nTwakaribia Baba\nKwa tumaini, ujasiri\nNa kwa imani moja.\n\n3. Upendo wa kikristo\nHa’vunji urafiki.\nTwalia naye wa uchungu,\nFuraha twa’shiriki.\n\n4. Tunaachana huku\nKwa sikitiko sana.\nKwa shangwe tena kwake Mungu\nTwaweza kuonana.''',
    numero: 279,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_280',
    titre: 'JINA LAKE YESU KRISTO LINADUMU',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. JINA lake Yesu Kristo\nLinadumu siku zote;\nJina hili la milele\nHaliwezi kunyauka;\nLinafaa watu wote,\nNa wazee na vijana;\nLinaweza kuongoza\nKila mtu kwake Mungu.\n\nJina hili nalipenda,\nLimewasha moyo wangu;\nNa kwa jina hili jema\nNimepata kuokoka.\n\n2. Jina hili linavuma\nPande zote za dunia,\nNa kwa wote linaleta\nTumaini na faraja.\nJina hili laondoa\nMachukio na ubaya,\nHata milki ya Mwokozi\nitaanza kutawala.\n\n3. Na katika giza huku\nJina hili linang’aa,\nLaonyesha msafiri\nNjia wazi ya uzima.\nJua likitiwa giza,\nJina hili litadumu;\nNa milele lisifiwe\nHapa na mbinguni juu.''',
    numero: 280,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_281',
    titre: 'YOTE NINAYO NILIYAPOKEA KWA WEMA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. YOTE ninayo niliyapokea\nKwa wema wake unaonea.\nNasifu Yesu, namtegemea,\nAliniokoa kwa neema.\n\nNiliyekuwa nimetoroka,\nKwa pendo lake nimeokoka.\nYesu Yu mwema\nNa mwenye rehema,\nNimeokolewa kwa neema!\n\n2. Nilitembea zamani dhambini\nKatika njia ya kufa, lakini\nYesu alinitafuta porini,\nAkaniokoa kwa neema.\n\n3. Natakasiwa na Yesu Mwokozi,\nSi kwa majuto na si kwa machozi,\nBali kwa damu, ninao ’kombozi;\nNimeokolewa kwa neema.\n\n4. Raha ya mbingu imeniingia,\nKwa shangwe kubwa ninafurahia\nYesu, kwa kuwa anirehemia;\nNimeokolewa kwa neema.''',
    numero: 281,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_282',
    titre: 'UKIONA KIU SANA UJALIVU WA MWOKOZI',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. UKIONA kiu sana ujalivu wa Mwokozi,\nRoho yake safi pia,\nLiamini Neno la Babako na atakujazi,\nNawe utashangilia.\nAtakujaliza hata utashiba.\nBwana Yesu akuita: ‘‘Njoo bila ’sitasita!’’\nAtakujaliza hata utashiba\nRoho na uwezo wake.\n\n2. Vichukue vyombo vyako, uvioshe safi sana\nKisimani pa Golgotha!\nAfadhali kujitoa lote kwa Mungu Bwana,\nNa imani itaota.\n\n3. Na mafuta ya neema hayakomi.\nAsifiwe!\nTunakuwa na shukrani!\nAnataka kumimina Roho ya ahadi yake.\nMpokee kwa imani!''',
    numero: 282,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_283',
    titre: 'NIMEYASIKIA MENGI ALIYOYAFANYA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. NIMEYASIKIA mengi aliyoyafanya Yesu\nKatika maisha yake huku chini:\nPote alitenda mema, alisaidia wote.\nKwa furaha ninaimba: ‘‘Yesu Yeye yule leo!’’\n\nYesu Kristo Yeye yule\nJana, leo, siku zote.\nHutafuta wapotevu,\nHuokoa na waovu.\nMwokozi wetu Yeye yule!\n\n2. Na kipofu yule, jina lake ndilo Bartimayo,\nAliposikia Yesu Yu karibu,\nKwa imani akaomba, akapona kwa neema.\nNafurahi kwa kuimba: ‘‘Yesu Yeye yule leo!’’\n\n3. Watu wote wenye dhambi na wagonjwa na maskini\nWanaitwa kwake Yesu kwa rehema.\nUiguse nguo yake, sawa mwanamke yule,\nUtapewa nguvu yake,\nKwani Yesu Yeye yule!\n\n4. Nimeyasikia tena jinsi alivyoombea\nMaadui wake ju’ ya msalaba.\nAliteswa kwa miiba, aliona maumivu.\nNinaimba kwa furaha: ‘‘Yesu Yeye yule leo!’’''',
    numero: 283,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_284',
    titre: 'USIMTAFUTE YESU KATI\' WAFU',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. USIMTAFUTE Yesu\nKati’ wafu kaburini!\nYu mzima, tumsifu,\nHakushindwa na kuzimu!\n\n:/: Yesu hai, Yesu hai,\nMshindaji wa mauti! :/:\n\n2. Maadui walifunga\nBwana Yesu kaburini,\nMungu alimfufua\nMwana wake. Furahini!\n\n:/: Yesu hai, Yesu hai,\nImba hivyo duniani! :/:\n\n3. Yesu hai, ni habari\nYa kupasha pande zote.\nYu Mwokozi wetu kweli,\nAlitufilia sote.\n\n:/: Yesu hai, Yesu hai,\nMkombozi asifiwe! :/:''',
    numero: 284,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_285',
    titre: 'NENO LA MUNGU NDANI YA BIBLIA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. NENO la Mungu ndani ya Biblia\nLimetolewa na Mwenyezi Mungu.\nBiblia yetu inatuambia:\nNjoo kwa Yesu, Mkombozi wetu!\nNeno la Mungu tulilolipewa,\nNjia ya mbingu limetuonyesha;\nNuru gizani ya kutuongoza\nKatika mwendo wetu kwenda mbingu.\n\n2. Siku za giza zinakaribia,\nKama walivyosema manabii.\nBiblia yetu itatuangaza\nNa kutuonya njia hata mwisho.\n\n3. Katika Neno la Biblia yetu\nTunaupata utajiri wote.\nMbingu na nchi zitaangamia,\nNeno la Mungu litashinda yote.''',
    numero: 285,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_286',
    titre: 'YESU, ULIKARIBISHWA ARUSINI',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. YESU, ulikaribishwa\nArusini huko Kana;\nHapo ikadhihirishwa\nNguvu yako kwa ishara.\n\n2. Leo tunakuhitaji,\nWabariki ndugu hawa:\nBwana na bibiarusi!\nNdoa yao iwe sawa!\n\n3. Katika taabu, raha\nWafungane kwa upendo!\nWatumike kwa furaha,\nW’andamane kati’ mwendo!\n\n4. Yesu, U mlinzi wao,\nUwalinde na mabaya!\nUhifadhi nyumba yao!\nTunaomba mema haya!''',
    numero: 286,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_287',
    titre: 'TUNAMTIA MIKONONI MWAKO MTOTO',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. TUNAMTIA mikononi mwako\nMtoto huyu, umtunze sana,\nNa kila siku kwa neema yako\nUmbariki, Bwana Yesu Kristo!\n\n2. Ulimwenguni kuna majaribu\nMahali pote, shida na mitego.\nLakini uwe mchungaji wake,\nNa umwongoze, E’ Rafiki mwema!\n\n3. Mwokozi kwa upendo ’mchukue,\nAsije akashindwa safarini!\nNa umlinde kwa rehema yako,\nApate kuwa wako siku zote!\n\n4. Utume nuru ya neema kwake\nNa maji ya uzima toka kwako\nE’ Bwana Yesu. Twakuomba\nLeo ulinde mwana wetu kwa salama.''',
    numero: 287,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_288',
    titre: 'MUNGU WETU, UTULINDE',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. MUNGU wetu, utulinde\nNa utubariki sote!\nBwana, uturehemie,\nTutolee nuru pote!\nUtuangazie uso,\nTupe na amani yako!\nMungu Baba, Roho, Mwana,\nTunakushukuru sana!''',
    numero: 288,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_289',
    titre: 'NINATAMANI KWENDA MBINGU',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. NINATAMANI kwenda mbingu nchi yangu\nNiliyopewa na Mungu kwa imani.\nNi shangwe bora kuona mji ule;\nKwa kwenda kule sitaogopa kitu.\n\nE’ Baba yangu, niongoze,\nUnisafishe kwa damu ya Mwokozi!\nNifananishwe na theluji,\nUnibatize kwa Roho ’takatifu!\n\n2. E’ Mungu, tumepata Mwana Yesu Kristo,\nKipawa kweli kinachoshinda yote.\nAnahubiri amani kwao wote\nWalio huku karibu, nao mbali.\n\n3. Kwa Yesu tumepata mwisho wa upendo\nNa njia ya kumwendea Baba Mungu.\nSi wapitaji na tena si wageni,\nTunatumika kwa roho ya upendo.\n\n4. Amani kwetu na matumaini tele,\nSalamu toka kwa Mungu wa milele\nNi posho ya watumishi wa upendo;\nTunaurithi uzima wa milele.''',
    numero: 289,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_290',
    titre: 'BARAGUMU LITALIA SANA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. BARAGUMU litalia sana,\nWatu wote watalisikia.\nWaliokufa watafufuka\nNa wazima watabadilika.\n\n:/: Nani anayeweza?\nYesu, Mweza yote. :/:\n\n2. Na wenye uwezo wa dunia\nWatatetemeka siku ile,\nNa hawataweza kuinuka\nKutazama uso kama jua.\n\n:/: Nani anayeweza?\nYesu, Mweza yote. :/:\n\n3. Najua Mchunga wangu mwema,\nAnichunga kwa maisha yangu.\nNa siku ya mwisho nikishinda,\nSitaona uchungu wa kufa.\n\n:/:Nani Mchunga mwema?\nYesu, Mweza yote. :/:\n\n4. Mbinguni hakitafika kitu\nCha uchafu, dhambi na kuasi.\nWasiomwamini Bwana Yesu,\nGadhabu ya Mungu yawangoja.\n\n:/: Nani atahukumu?\nYesu, Mweza yote. :/:\n\n5. Mimi Yesu mzabibu kweli,\nBaba Mungu ndiye mkulima,\nNa ninyi matawi ndani yangu,\nNa hamwezi neno bila mimi.\n\n:/: Nani ni mzabibu?\nYesu, Mweza yote. :/:\n\n6. Unayempenda Baba Mungu,\nLazima upende ndugu yako;\nUkiwa hupendi ndugu yako,\nHuwezi kupenda Baba Mungu.\n\n:/:Nani aliyesema?\nYesu, Mweza yote. :/:\n\n7. Nawapenda, mwisho wa upendo,\nNa ninyi mpate kupendana;\nHivyo mataifa wataona\nYa kwamba m watu wangu kweli.\n\n:/: Nani mwenye upendo?\nYesu, Mweza yote. :/:\n\n8. Sisi watumishi wake Mungu\nTu watu maskini kati’ yote.\nTutakapowekwa pa kuume\nKelele la sifa litashinda.\n\n:/: Tutamsifu nani?\nYesu, Mweza yote. :/:''',
    numero: 290,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_291',
    titre: 'MIMI MWENYE HATIA NILIKOMBOLEWA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. MIMI mwenye hatia nilikombolewa,\nMwokozi alipojitoa.\nDhambi zangu na zako alizichukua,\nKwa damu aliniokoa.\nDhambi zimetundikwa msalabani\nAlipojitoa, Mwokozi.\nAlidharauliwa na kukataliwa\nAtupatanishe na Mungu.\n\n2. Yesu mwenye upole na mwenye upendo\nAnanitakasa rohoni.\nNimepata uhuru kwa Yesu Mwokozi,\nAlikufa msalabani.\n\n3. Namwambata Mwokozi, sitaki kumwacha,\nKwa kuwa alinifilia.\nNakusifu, E’ Yesu, unayenipenda,\nDaima nakushangilia.''',
    numero: 291,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_292',
    titre: 'KATIKA DAMU TAKATIFU YA MWOKOZI',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. KATIKA damu takatifu ya Mwokozi wangu\nNimesafishwa.\nNa nguvu ya Mwokozi wangu tu\nYaweza kunilinda safi.\n\nMungu ahimidiwe, Mungu ashukuriwe\nKwa ajili ya wokovu na nguvu ya kushinda!\nMungu ahimidiwe, Mungu ashukuriwe\nKwa ajili ya wokovu wake!\n\n2. Kwa wingi wa neema yake tu\nNimeokoka, nimeokoka.\nWokovu ni kwa ’jili yako na\nKwa kila ’aminiye kweli.\n\n3. Kwa nguvu yangu sitashinda na\nSiwezi neno, Siwezi neno.\nNinajuliwa na Mwokozi na\nAtanisaidia pote.\n\n4. Babangu mwema anipenda na\nAnanilinda, Ananilinda.\nSitaogopa giza huku kwa\nMaana Yu pamoja nami.''',
    numero: 292,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_293',
    titre: 'NCHI NZURI YA RAHA AJABU',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. NCHI nzuri ya raha ajabu,\nKwa imani twaona si mbali.\nBaba atungojea sababu\nAmetuandalia mahali.\n\n:/: Tukutane sisi sote\nHuko juu nyumbani mwa Baba! :/:\n\n2. Huko juu kwa raha, amani\nTutaimba na kushangilia,\nKutolea Mwokozi shukrani\nKwa sababu alitufilia.\n\n3. Baba wetu mpendwa na mwema\nKwake kuna furaha ya tele.\nTwamsifu kwa kuwa neema\nYatutosha kabisa milele.''',
    numero: 293,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_294',
    titre: 'UTUME ROHO YAKO JUU YETU',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. UTUME Roho yako juu yetu\nKama ulivyofanya hapo kale!\n:/: Uwashe moto wako ndani yetu,\nTusiwe watu wa uvuguvugu! :/:\n\n2. Utume Roho yako juu yetu\nKama ulivyofanya siku ile.\n:/: Mtume Petro alipohubiri\nKatika nyumba yake Kornelio! :/:\n\n3. Utume Roho yako juu yetu,\nUtupe nasi Pentekoste yetu!\n:/: Maelfu wenye dhambi waokoke,\nNa Neno lako lienee pote!: /:\n\n4. Utume Roho yako juu yetu!\nMikono yako uinyoshe sasa,\n:/: Ishara za ajabu zifanyike,\nWagonjwa uwaponye kati yetu! :/:\n\n5. Uwaamshe waliosinzia,\nWaliochoka huku safarini!\n:/: E’ Bwana utujie kama kale\nUlivyowabariki watu wako! :/:''',
    numero: 294,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_295',
    titre: 'E’, FURAHINI WATU WAKE MUNGU',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. E', furahini watu wake Mungu!\nMwokozi wetu alituokoa.\nNeema kubwa, pendo la ajabu!\nTusifu Mungu sana siku zote!\n\nE’ Mungu ana mamlaka yote,\nNi ngao na makimbilio yangu;\nNi Baba yangu, na anasikia\nMaombi yangu. Asifiwe!\n\n2. E’, furahini watu wake Mungu!\nTuimbe nyimbo za furaha nyingi!\nTusiogope ila tumwamini\nNa twende mbele kwa uweza wake!\n\n3. E’, furahini watu wake Mungu!\nTukimshangilia Mungu wetu,\nJirani zetu wasioamini\nWatatamani kumjua Yesu.\n\n4. E’, furahini watu wake Mungu!\nMfalme wetu Yu pamoja nasi.\nKitambo bado — na tutahamia\nMbinguni kwake Mkombozi wetu.''',
    numero: 295,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_296',
    titre: 'DHAMBI, HATIA ZIMEONDOLEWA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. DHAMBI, hatia zimeondolewa,\nYote ya kale yamepita sasa.\nDamu ya Yesu imenisafisha;\nNinamfurahia Mkombozi wangu.\n\nMavazi safi na kao nzuri\nNinayo huko ju’ mbinguni.\nThawabu nita’pewa huko,\nNi taji ya uzima.\nNa Yesu ni Mwokozi wangu.\nAlinikomboa,\nAlilipa deni langu.\nPendo lake kubwa\nNina’sifu siku zote,\nNinamfurahia Mkombozi.\n\n2. Siku za nung’uniko zimekwisha,\nNimeokoka katika utumwa.\nSasa naona raha na furaha\nSababu Bwana Yesu alinikomboa.\n\n3. Shaka na hofu zimeondolewa,\nNa siogopi kufa kwangu tena.\nKatika Yesu nina tumaini,\nNa ninalindwa vema naye sikuzote.\n\n4. Roho ya Mungu amenijaliza,\nAnifariji katika mwenendo.\nYesu Mwokozi Yu karibu nami,\nAliye ngao yangu na makimbilio.''',
    numero: 296,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_297',
    titre: 'NIPE SAA MOJA NAWE YESU',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. NIPE saa moja nawe Yesu\nNikichoka huku duniani!\nHata nikiona vita kali,\nWanistarehesha sikuzote.\n\nNipe saa moja nawe Yesu,\nKwani giza iko duniani!\nNatamani kukukaribia,\nKusikia Neno lako zuri.\n\n2. Nipe saa moja nawe Yesu\nKatika jaribu na taabu!\nU makimbilio yangu mema\nKatika hatari na ghasia.\n\n3. Nipe saa moja nawe Yesu\nUliyechukua dhambi zangu.\nNinataka kueleza yote,\nKwani unanifahamu sana.''',
    numero: 297,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_298',
    titre: 'NINAO WIMBO WAKUNIFURAHISHA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. NINAO wimbo wa kunifurahia\nWa Mwokozi, wa Mwokozi.\nNamshukuru kwa roho yote pia,\nMwokozi mzuri ninaye!\n\nMwokozi — wimbo wangu,\nMwokozi, Mwokozi!\nMahali pote na siku zote\nNitamsifu Yesu kati’ yote.\nMwokozi ni wimbo wangu\nWa huku na Mbinguni.\n\n2. Na jina moja ni lenye pendo tele:\nYesu, Yesu, ndilo jina!\nAnipa yote niliyokosa mbele,\nMwokozi mzuri ninaye.''',
    numero: 298,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_299',
    titre: 'JE, UMELISIKIA JINA ZURI',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. Je, umelisikia jina zuri,\nJina la Mwokozi wetu?\nLinaimbiwa duniani pote\nNa katika watu wote.\n\nYesu, jina hilo linapita\nMajina yote kwa uzuri!\nNi lenye nguvu ya kutuokoa\nNa hatia na makosa.\n\n2. Linafariji moyo wa huzuni,\nLatutia raha kuu.\nKatika shida na hatari huku\nJina hili latulinda.\n\n3. Katika giza huku jina hili\nLinang’aa kama nyota,\nLanipa utulivu na ’hodari\nSiku zote hata kufa.\n\n4. Majina yote yasahauliwa,\nIla jina lake Yesu\nMilele litang’aa huko juu.\nYesu, jina nzuri mno!''',
    numero: 299,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_300',
    titre: 'MUNGU AWABARIKIE NYOTE',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. MUNGU awabarikie nyote\nNa awe pamoja nanyi!\nAwalinde kwa amani!\nMungu n’ awe nanyi siku zote!\n\nMungu n’ awe nanyi dahari\nHata mwisho wenu wa safari!\nMungu n’ awe nanyi dahari\nHata tuonane huko juu!\n\n2. Mungu wetu awalinde pote\nNa kuwahifadhi vema\nKwa mikono ya rehema!\nMungu n’ awe nanyi siku zote!\n\n3. Mungu awaangazie nuru,\nNa awashibishe sana\nKwa fadhili zake Bwana!\nMungu n’ awe nanyi siku zote!\n\n4. Mungu awainulie uso!\nNa wakati wa kuhama\nMpelekwe kwa salama!\nMungu n’ awe nanyi siku zote!\n\n5. Mungu awabarikie nyote,\nAwalinde mwe huru,\nAwaangazie nuru!\nAwainulie uso wake!''',
    numero: 300,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_301',
    titre: 'NJIONI TUMWIMBIE BWANA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. Njioni (sic) tumwimbie Bwana tumfanyie shangwe kuu.\nMwamba wa wokovu wetu, tuje kwake na shukrani,\ntumfanyie shangwe kuu, Bwana ni Mungu mkuu,\nna Mfalme wa wafalme, tena Bwana wa mabwana.\n\n2. Mikononi mwake zimo bonde zote za dunia.\nNa vilele vya milima ndiye aliyezifanya,\naliifanya bahari na nchi akaiumba,\nnjioni (sic) wote tuabudu, tusujudu Mungu wetu.\n\n3. Tupige magoti yetu mbele ya Muumba wetu.\nKwani ndiye Mungu wetu nasi tupo mali yake,\nna kondoo zake yeye, ingekuwa heri leo,\nmsikie neno lake msifanye mioyo gumu.\n\n4. Kama huko kwa Moria siku za Munga jangwani.\nHapo walinijaribu babu zenu hapo kale.\nWakanipima kuona matendo yangu makuu,\nkwa miaka arobaini nikahuzunishwa nao.\n\n5. Nikasema watu hawa waliopotoka mioyo.\nHawakuzijua njia zangu niliwaonyesha,\nnakaapa kwa hasira yangu na kusema hivi:\nWasiingie rahani mwangu ya huko Kanaani.''',
    numero: 301,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_302',
    titre: 'MUNGU WETU ALITUAMBIA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. Mungu wetu alituambia, tusichoke kumtumikia.\nWale watakaoshindwa huku watabaki huku duniani.\nMungu wetu tunangoja sisi,\nMwenye enzi Yesu Mkombozi\n\n:/: Twawekewa makao mazuri:/: (Huku hakuna njaa)\nTwawekewa makao mazuri (Hakuna masumbuko)\nTwawekewa makao mazuri (Na hakuna kilio)\nTwawekewa makao mazuri (Wala masikitiko)\nTwawekewa makao mazuri (Na hakuna magonjwa)\nTwawekewa makao mazuri (Ni nchi ya milele)\nTwawekewa makao mazuri (Kuna fasi kwa wote)\nTwawekewa makao mazuri\n\n2. Bwana Mungu hakutukataa kwa dunia hii ya makosa.\nWatu ndio wanamkataa.\nWamwamini adui shetani.\n\n3. Watu watakaoshinda huku, watapata raha ya milele.\nMungu alitutumia Roho, kutuonya njia yake Yesu.''',
    numero: 302,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_303',
    titre: 'NITAMWIMBIA MUNGU NA F',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. Nitamwimbia Mungu na furaha, kwa sababu alishinda shetani.\n:/: Kwa furaha punda zote za Farao,\nwalizozipanda wote wakafa. :/:\n\n:/: Kule ngambo, kule ngambo wa israeli walivuka,\nwalipomwimbia nyimbo za Musa:/:\n\n:/: Kule ngambo walivuka na furaha\nwalipomwimbia nyimbo za Musa. :/:\n\n2. Gari zote za askari kwa kupita,\nkwa kuwashambulia watu wa Mungu.\n:/: Wale wote mashujaa wa Farao,\nMungu aliwafunikiza majini. :/:\n\n3. Wanawake waliimba kwa furaha.\nWakapiga vinubi kwatika shangwe\n:/: na nabii Miriamu akasema,\nmsifuni Mungu wetu kwa furaha.:/:\n\n4. Mwenyezi Mungu ni tumaini langu,\ntena Mungu anakuwa wimbo wangu.\n:/: Mwenyezi Mungu anipitia mbele,\nna tena ni yeye yuko ngao yangu. :/''',
    numero: 303,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_304',
    titre: 'SIFA, UWEZO NA HESHIMA KWAKE YESU',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. Sifa, uwezo na heshima, kwake Yesu Mwana kondoo.\nSifa, uwezo na heshima, ni Mfalme wetu.\n\nSifa, sifa, mwimbie kwa shangwe\nSifa, sifa, Mwana Kondoo.\n\n2. Siku ya kuja kututwaa, tutakwenda kumlaki.\nNa tena tutamfanana, sifa Mwana Kondoo.\n\n3. Nitafurahi kuondoka nchi hii ya mateso.\nNitamkuta Bwana wangu, na Mwokozi wangu.\n\n4. Ninamwimbia tu kidogo, hapa chini duniani,\nnitamwimbia mara nyingi, huko kwake mbingu.''',
    numero: 304,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_305',
    titre: 'SIFA NA SIFA NINAKUPA YESU',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. :/: Sifa na sifa ninakupa Yesu,\nkweli nimwimbie Mungu :/:\n\n:/: Sifa, sifa na sifa kwa Yesu. :/:\n\n2. :/: Maombi yangu Bwana yakufikie, ee!\nMungu wa heri yangu.:/:\n\n3. :/: Sitaki kuomba-omba kama ndege,\nkulia-lia porini. :/:\n\n4. :/: Na sasa roho yangu inasimama.\nKweli nimwimbie Mungu. :/:\n\n5. :/: Na watakatifu wanasimama,\nwanamwimbia Mwokozi. :/:\n\n6. :/: Tuna huzuni ya wandugu wetu.\nWako kwa giza ya dhambi. :/:''',
    numero: 305,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_306',
    titre: 'NINAKUHITAJI MWOKOZI, KUJAZWA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. Ninakuhitaji Mwokozi, kujazwa na Roho yako.\nMapema, mchana, jioni, nikutumikie Yesu.\n\n:/: Ninakuhitaji Yesu, nijazwe upendo wako.\nNa siku kwa siku, Mwokozi, nikutumikie vema. :/:\n\n2. Ikiwa ni siku za kazi, ikiwa ni siku kuu.\nNinakuhitaji Mwenyezi, kujazwa na Roho yako.\n\n3. Nyumbani mwa baba na mama, kondeni mwa watu wengi.\nPopote ninapopitia, nilinde na niongoze.\n\n4. Ninakuhitaji, Mwokozi, katika maombi yangu.\nNiombe kwa mapenzi yako, nipate yanifaayo.\n\n5. Katika kitabu cha Mungu, twasoma ahadi zake.\nAombaye atapewa, kwa jina la Yesu Kristo.''',
    numero: 306,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_307',
    titre: 'WALIOKOMBOLEWA WAIMBA JUU',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. Walikombolewa waimba juu, wakisujudu mbele zake Bwana.\nHuzuni na taabu zake dunia Bwana amewaondolea zote.\nWanamwimbia Mwana Kondoo aliyekufa,\nsasa yu hai, ameyashinda mauti.\n\n2. Wanashika vinubi mikononi wakiimba wimbo\nwa Mwana Kondoo na Musa mtumishi wake Mungu,\nwakifurahia kushinda kwake.\n\n3. Wasiopenda kumsujudia, katika dunia hii ya sasa.\nHawataonekana mbele zake, watateketea motoni kweli.\n\n4. Mda unaobaki ni mfupi, tujitayarisheni ndugu sasa.\nBwana ajapo tuwepo tayari, tutaimba naye kule mbinguni.''',
    numero: 307,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_308',
    titre: 'NAONA MAAJABU LEO',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. Naona maajabu leo (yatoka) yatoka Bwana Mungu wetu (wa kweli)\nKatika maahadi yake, (Ishara) Ishara zinaonekana.\n(Naona) naona majabu kubwa, (Napenda) napenda kushukuru Bwana.\n(Kwa nini) kwa kuwa anapenda mimi,\n(Ishara) ishara kubwa kutoka Mungu.\n\n2. Kati dunia yote hii (ni mambo) ni mambo mengi ya ajabu\n(ni Yesu) ni Yesu anapita wote\n(kufanya) kufanya maajabu mengi.\n\n3. Ni kama tetemeko kubwa (itembe' ) itembeayo ndani yangu\n(nikiku') ninikumbuka Yesu Kristo\n(ya kuwa) angali anipenda mimi\n\n4. Viziwi na viwete vyote (na bubu),\nvipofu na wakoma wote (na wafu),\nna wafu walifufuliwa (kwa jina)\nkwa jina lake Yesu Kristo.\n\n5. Mapendo yake Mungu kwangu (makubwa),\nyananibembeleza vema (upendo),\nupendo wake Yesu Kristo (ni dawa),\nni dawa manukato kwangu.\n\n(Sauti), sauti ya Mungu yasema:\n(Ni huyu), ni huyu Mwanangu mpendwa\n(Napenda), napendezwa na kazi yake,\n(Sikia), sikieni maneno yake''',
    numero: 308,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_309',
    titre: 'MUNGU AKASEMA IWE NURU',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. Mungu akasema iwe nuru, ikawa nuru,\nMungu akaona nuru yakwamba ni njema.\nMungu akatenga nuru na giza,\nMungu akaiita nuru mchana, na giza akaliita usiku.\nIkawa asubuhi, ikawa jioni, siku moja.\n\n2. Mungu akasema na liwe anga, katikati ya maji.\nLikayatenge maji na maji, Mungu akalifanya anga.\nAkayatenga yale maji yaliyo juu ya anga,\nna yale maji yaliyo chini ya anga.\nIkawa hivyo. Mungu akaliita lile anga mbingu.\nIkawa jioni, ikawa asubuhi, siku ya pili.\n\n3. Mungu akasema, maji yaliyo chini ya mbingu,\nna yakusanyike mahali pamoja, ili pakavu paonekane,\nikawa hivyo. Mungu akapaita pale pakavu nchi.\nNa makusanyiko ya maji akayaita bahari.\nMungu akaona ya kuwa ni vyema kuwa ni vyema''',
    numero: 309,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_310',
    titre: 'UKITAFUTA WOKOVU, DHAMBI ZIVUTWE',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. Ukitafuta wokovu, dhambi zivutwe.\nTwakuletea habari, Yesu anakuita.\n\nYesu Mwokozi akuita, akuita, akuita\nYesu Mwokozi akuita, akuita wewe leo.\n\n2. Ukipotea dhambini mbali na Mungu wako,\nYesu aliyekufia anakuita leo.\n\n3. Wewe uliyesikia mwito wa Yesu leo,\nusichelewe kufika, wakati wako leo.\n\n4. Wengine walisikia, bali walipotea.\nHawakujuwa wakati wao wakuokolewa.''',
    numero: 310,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_311',
    titre: 'MARA KWA MARA YESU AITA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. Mara kwa mara Yesu aita, umwitikie sasa.\nYawezekana ni mara mwisho, anakuita sasa.\nWewe uliye dhambini, Yesu akutafuta.\nAkusamehe makosa, usichelewe ndugu.\n\n2. Machangamko ya kidunia hayatakupata (sic) raha.\nNa mapendezo ya wenye dhambi yakudanganya sasa.\n\n3. Giza ya kufa huja upesi, siku usipojua.\nRafiki yangu usichelewe, kumpokea Yesu.\n\n4. Roho ikiwa nzito na dhambi, Yesu anakujua.\nAkupokea vile ulivyo, tena utaokoka.\n\n5. Mwito wa Mungu unakujia, mara kwa mara ndugu.\nUkikataa kumpokea, utapotea kweli.''',
    numero: 311,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_312',
    titre: 'ZABURI 117: 1-2',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. Zaburi 117:1-2. Enyi mataifa yote, msifuni Bwana,\nenyi watu wote mhimidi.\nMaana fadhili zake, kwetu sisi ni kuu,\nna uaminifu wa Bwana ni wa milele.\n\nZaburi 118: 1-7,2. Mshukuruni Bwana, kwa kuwa ni mwema.\nKwa kuwa fadhili zake ni za milele.\nIsraeli na aseme sasa, ya kwamba fadhili zake,\nya kwamba fadhili zake ni za milele.\n\n2. Mlango wa Haruni na waseme sasa,\nya kwamba fadhili zake ni za milele.\nWamchao Bwana na waseme sasa,\nya kwamba fadhili zake ni za milele.\n\n3. Katika shida yangu nalimwita Bwana.\nBwana yuko upande wangu, sitaogopa;\nmwanadamu atanitenda nini?\nBwana yuko upande wangu, msaidizi wangu,\nmsaidizi wangu.''',
    numero: 312,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_313',
    titre: 'KUMBE WAKATI WAPITA MBIO',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. Kumbe wakati wapita mbio, ni sawa jana mlipofika,\nmlitumika pamoja nasi, na sisi wote tulifurahi.\n\n2. Na kazi yenu tuliipenda, hamkuchoka kutufurahisha.\nTaabu yenu haiko bure, ni Bwana Yesu atawalipa.\n\n3. Mnaporudi mlikotoka twaomba Mungu mrudi tena.\nKutumika pamoja nasi, kazi ni nyingi zinazowangoja.\n\n4. Machozi mengi yalengalenga kwa macho yetu mnapotuacha,\nni siku gani tutaonana. Mwenyezi Mungu ndiye ajua.\n\n5. Salamu sana kwa nchi yenu, kwa makanisa na wakristo,\nsema Mwokozi ni Yesu peke, aliyekwisha kutusamehe.\n\n6. Pasha habari ya ile hati ya mashitaki\nimetundikwa na imekazwa kwa nguvu sana,\nmsalabani ifedheheke.\n\n7. Na ile hati ya adui, ni Bwana Yesu ameifuta,\nhakuna tena hukumu kwetu tunaokaa ndani ya Yesu.''',
    numero: 313,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_314',
    titre: 'KUOMBA NI AGIZO JEMA MNO',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. Kuomba ni agizo jema mno, kupata ni ahadi tamu kweli.\nLikiwa nene nguvu na matata; tazama afungaye kwa upendo.\n\nSifa kwa Mungu Baba wetu,\nAnawaunga wawili leo,\nAlicho unganisha Mungu\nMwana adamu asitenganishe.\n\n2. Tuombe kwa agizo la Mwokozi, tuliokuwa wenye kupotea,\nlakini sasa tunaunganishwa kwa jina lake Bwana Yesu Kristo.\n\n3. Uwe rafiki yake Bwana Yesu, msiharibu pendo kwa maneno,\nmkiheshimu Mungu kati yote, amani ya Yesu 'takuwa nanyi.\n\n4. Mungu aliumba mme na mke na ikingali hivyo hata leo,\nna ninyi ndugu mnaunganishwa, katika jina lake Bwana Yesu.\n\n5. Salamu hii toka sisi wote, neno la Mungu la kuwafariji.\nWakolosai kwa sura ya tatu haya ya kumi na nane inatosha.''',
    numero: 314,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_315',
    titre: 'BABA MUNGU AKIFUNGA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. Baba Mungu akifunga, hata moja tafungua.\nNa kama akifungua, wakufunga anakosa.\nSiku utatufungua tutaruka kama njiwa,\nEh Mzaliwa wa kwanza wa viumbe vyake Mungu.\n\n2. Sisi watumishi wako, umetuachia kazi.\nIli tuifanye kwa bidii na tungoje kuja kwako,\nwatumishi wako Bwana.\nTunaomba utulinde,\nEh Mzaliwa wa kwanza wa viumbe vyake Mungu.\n\n3. Mara nyingi tunaona uchokozi wa dunia,\nkutupima roho zetu, kwa kutesa mwili wetu.\nHaleluya tutasifu Mkombozi wetu Yesu,\neh Mzaliwa wa kwanza wa viumbe vyake Mungu.''',
    numero: 315,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_316',
    titre: 'NYOTA KUBWA INANG’AA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. Nyota kubwa inang'aa, inang'aa nguvu sana,\nahadi ya zamani.\nIling'aa tangu mbele manabii wali'ona,\nilingoja wakati.\n\n:/: Iling'aa, nyota kubwa yang'aa. :/:\n\n2. Manabii waliona nyota ile iling'aa ilikuwa kwa mbali.\nNa Bwana aliona nyota kutoka Yakobo kwa maono rohoni.\n\n:/: Iling'aa, nyota toka Yakobo. :/:\n\n3. Mashauri ya mbinguni yalipokuwa tayari Mwokozi alifika.\nNyota yake itang'aa kwa milele na milele,\nhaizimike kamwe.\n\n:/: Itang'aa, itang'aa milele. :/:\n\n4. Iling'aa, iling'aa, iling'aa, iling'aa,\nilikuwa kwa mbali.\nNi majusi walipata kuiona mashariki nyota ya Bwana Yesu.\n\n:/: Iling'aa, iliangaza wazi. :/:\n\n5. Ni Isaya anasema kama mwana tumepewa,\nMwokozi azaliwa.\nAnaitwa Wa ajabu na Mkuu wa amani,\nwatu wake furahi.\n\n:/: Wa ajabu, Wa ajabu Masiya. :/:\n\n6. Mashariki, Magaribi, Kaskazini na Kusini inaangaza pote.\nWatu wote wameisha kusikia Neno lake linaangaza wote.\n\n:/: Wa ajabu, Wa ajabu Masiya. :/:''',
    numero: 316,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_317',
    titre: 'SISI TULIOKOKA NA TUNASHANGILIA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. Sisi tuliokoka na tunashangilia,\ntwapita unlimwengu na tuna amani.\n\n2. Mwapenda vya dunia mbona hamvishibe,\nhata wababu zenu hawakuviweza.\n\n3. Dunia itaisha na vyote vilivyomo.\nNyumba na mashamba, akili na pombe.\n\n4. Vinavyowadanganya havitawaokoa,\nvitakuwa majivu, arudipo Bwana.\n\n5. Na wenye roho ngumu, tuwafanyie nini?\nMbona tunawaonya na mnakataa?\n\n6. Hatuna la kufanya, tutahamia mbingu.\nTunasikitika ju' ya wenye dhambi.\n\n7. Tutakwenda mbinguni, kuona wateule,\nvijana 'takatifu waliotakaswa.\n\n8. Tutashirikiana na makabila tena,\nila waliotubu na kuoshwa na Yesu.''',
    numero: 317,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_318',
    titre: 'NIMELIONA PENDO KUBWA MNO',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. Nimeliona pendo kubwa mno, na pendo hilo nalifurahia.\nNa jina lake mwenye kunipenda,\nNi Mungu Baba tena Yesu Mwana.\n\n:/: Upendo wako nausifu sana,\newe Mungu nawe Yesu Kristo. :/:\n\n2. Mimi mtoto mdogo mbele yako, nakuhitaji unisaidie.\nKwa kila kazi na kwa hali zote, kwa majaribu katika dunia.\n\n:/: Usiniache mimi peke yangu,\nuwe nami kwa safari yangu. :/:\n\n3. Nikikuomba uje kwangu Yesu, ukija tena ninaona hofu.\nUtanishika mimi mwanadamu, sitendi vema mimi mwenye shaka.\n\n:/: Nilipendalo silitendi tena,\nninafanya nisilolipenda. :/:\n\n4. Nilipokuwa mtoto mchanga, na niliwaza mambo ya utoto.\nNa kwa wakati wakuwa mzima, nilibadili mambo ya utoto.\n\n:/: Matumaini na imani yangu,\ninakwamilishwa kwa injili. :/:\n\n5. Nimeliona pendo la Mwokozi, aliyenikomboa kati damu.\nNa damu hiyo si damu ya nyama,\nni damu yake Bwana Yesu Kristo.\n\n:/: Ee! Mwenye haki kwa wasio haki,\numetoa maisha na pendo.:/:''',
    numero: 318,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_319',
    titre: 'NAFURAHIA WOKOVU NILIOPATA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. Nafurahia wokovu niliopata kwa Yesu,\nnitasifu Mungu wangu daima huko mbinguni.\nWokovu niliopewa, na unanirusha juu,\nkw'ajili ya shangwe kubwa, inayoimba rohoni.\n\n2. Silinganishe wokovu wangu na kitu kingine.\nKwani vyote vinakosa, bei ya wokovu wangu.\nMwokozi alinifia, alinilipia damu,\nnayo ni ya bei ghali, safi ya Mwana wa Mungu.\n\n3. Ninaupenda wokovu, wanitosha kwa matata,\nkwani Bwana wa wokovu, hakufuata makelele.\nAliwaponya wagonjwa, na alifufua wafu,\nakahubiri injili, alituonyesha njia.\n\n4. Ninakusifu Mwokozi, kwani umeniokoa,\numenitosha kwa giza, na sasa niko nuruni.\nMwenye upendo ni wewe, neema yake ni kubwa,\nulinitosha kabisa, katitka pori na giza.''',
    numero: 319,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_320',
    titre: 'MUNGU ALIACHA SISI WATU WAKE',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. Mungu aliacha sisi watu wake walimaji kwa dunia,\naliweka mbegu kwa mikono yetu tuzipande katika watu.\n\nKazi yetu yote itapimwa, mwenye shamba ni Yesu Kristo.\nTusishinde huko na mikono bure katika mavuno ya Mungu.\n\n2. Hata roho za watu ni ngumu sana usingoje kupanda;\ntutavuna mavuno kwa furaha tena tutumikie Yesu daima.\n\n3. Siku za ujira zinakaribia. Tutapata hukumu,\nwenye kazi njema watapata sifa; haya itashika wavivu.''',
    numero: 320,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_321',
    titre: 'MWOKOZI MUZURI NI YESU',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. Mwokozi mzuri ni Yesu Kristo, ninamshukuru sana.\nAlinitafuta kwa njia mbaya, ni mali ya Yesu Mwana.\n\nKwa damu nafunguliwa, kwa damu nafunguliwa.\nAlitoa yote kwa mimi na wote, kwa damu nafunguliwa.\n\n2. Alibeba dhambi msalabani, alitukomboa sote.\nBarua za deni na mashitaki, alizipasua zote.\n\n3. Ni heri kujua makimbilio, wakati wamajaribu.\nNashinda kwa nguvu ya damu yake, asanti Mtakatifu.\n\n4. Aliteswa sana kwa Getsemane, uchungu aliunywesha.\nLakini kwa mwisho msalabani, alisema imekwisha.''',
    numero: 321,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_322',
    titre: 'NASHIKA NJIA YA KWENDA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. Nashika njia ya kwenda mbingu, mimi msafiri duniani,\nnaishi kwa taabu na mateso mengi.\nBali nakaza mwendo nifike mbingu.\n\n2. Ijapo shida zanizunguuka, mimi msafiri njia,\nnashika njia nifike mbingu;\nnitarithi pamoja na Yesu, nitarithi pamoja na Yesu. :/:\n\n3. Wenzangu wote wananigombeza na marafiki wananicheka.\nNasumbuliwa hata na wanangu, natazama Yesu rafiki Mwema.\n\n4. Ninachofanya maishani mwangu, nimpendeze Mungu aliye Mwema.\nNijapoteswa, ninatumaini kuingia mbingu, ni nchi ya raha.''',
    numero: 322,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_323',
    titre: 'NAKUTEGEMEA YESU UNILINDE HAPA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. Nakutegemea Yesu, unilinde hapa chini.\nNjia yangu ndefu sana wewe ndiwe kiongozi.\nUnitie nguvu kweli majaribu na mashaka vyazunguka roho yangu.\nKweli utaniwezesha.\n\n2. Nilikuwa mbali nawe, hata hivyo 'kanifia.\nUlipenda roho yangu, nakupenda Bwana wangu.\n\n3. Kao nzuri la mbinguni, natamani kufikako.\nUnitengeneze tena yainue macho yangu.\n\n4. Hapa chini duniani ibilisi anguruma.\nAnataka kutumeza, sifa kwako twazunguka.''',
    numero: 323,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_324',
    titre: 'BWANA YESUATASHUKA MBINGU',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. Bwana Yesu atashuka mbingu na sauti za wamalaika.\n:/:(Lakini wewe) mwovu, ujue kama utaenda wapi.\nItakuwa furaha kubwa, kwa wale wataenda na Mwokozi. :/:\n\n:/: (Itakuwa furaha) itakuwa furaha kubwa,\nkwa wale wataenda na Mwokozi.:/:\n\n2. :/: Waliokufa katika Bwana, wao watafufuliwa kwanza:/:\n\n3. :/: Na kisha sisi tulio hai tutanyakuliwa mbinguni. :/:\n\n4. :/: Nayo furaha ya wenye dhambi itageuka kuwa uchungu.:/:\n\n5. :/: Nayo huzuni ya wenye haki itageuka kuwa furaha.:/:''',
    numero: 324,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_325',
    titre: 'HAPA KATIKA DUNIA TUNAACHANA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. Hapa katika dunia tunaachana mara nyingi.\nLakini kwa Mwokozi wetu, hatutatengwa naye.\nBaba Mungu awe pamoja nawe.\nAkulinde katika njia, Uende katika amani,\nTu pamoja kwa maombi.\n\n2. Tukitengwa na rafiki, tunatumaini kwa Mungu,\nYeye atatufariji, kwa neema na upendo.\n\n3. Adui wetu watatu, mwili, dunia na shetani.\nUepuke wote hawa, ngao, neno lake Bwana.\n\n4. Baba Mungu twakuomba, uchunge huyumwana wako.\nPamoja na jamaa lake, hata siko ya milele.''',
    numero: 325,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_326',
    titre: 'SIKU KUU YA MUNGU IMEKARIBIA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. ...Siku kuu ya Mungu imekaribia, mwaliko umetumwa kwako.\nMda ni mfupi, tujitayarishe, kwenda kumlaki Bwana Yesu.\n\nSiku inakuja, yawaka kama moto, kimbia hukumu yake Bwana.\nSiku inakuja, yawaka kama moto, kimbia hukumu yake Bwana.\n\n2. Wewe unasema: ni siku nyingi twaalikwa na wahubiri.\nUfahamu kama siku moja kwa Bwana, ni kwama miaka elfu moja.\n\n3. Rafiki 'jiulize, je umeokoka, kwa matendo na tabia yako?\nKama bado, mpendwa, hujui amani, fanya hima uokoke sasa.''',
    numero: 326,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_327',
    titre: 'KATIKA GIZA LA USIKU PAKAWA NA KELELE',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. Katika giza la usiku, pakawa na kelele kuu.\nTazama Bwana yu karibu, tokeni mwende kumlaki.\n\n:/: Tazama, Bwana yu karibu, Tokeni mwende kumlaki. :/:\n\n2. Na wanawali wote kumi, wakachukua taa zao.\nLakini tano wapumbavu wapungukiwa na mafuta.\n\n3. Wakawasihi wa busara, tupeni kwa mafuta yenu.\nZinazimika taa zetu, na hatujui tutendalo.\n\n4. Wakawajibu wa busara, hayatutoshi sisi nanyi.\nMwendeni kwao wauzao mkajinunulie sasa.\n\n5. Na wakaenda kununua, akaja Bwana wa arusi.\nWatano walio tayari wakaingia arusini.\n\n6. Mlango hapo ukafungwa, halafu wale wapumbavu wakaja nao,\nwakalia, tufungulie, Bwana wetu.\n\n7. Bwana arusi akajibu: amina, siwajui ninyi.\nKesheni basi, kwa sababu hamjui siku yangu.\n\n:/: Tazama, Bwana yu karibu.\nJitayarishe kumlaki.:/:\n\n8. Gizani, nje ya arusi, wakasimama wapumbavu.\nKulia wakalia sana, tufungulie, Bwana wetu.\n\n:/: Na jibu likatoka wazi: Mmechelewa kuingia. :/:''',
    numero: 327,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_328',
    titre: 'BWANA YESU ‘TUONGOZE WENDE MBELE',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. Bwana Yesu 'tuongoze, wende mbele yetu.\nSisi tuwe nyuma yako, tufike Sayuni.\nSisi peke hatuwezi kuongoza njia yetu.\nUlisema peke yako, wewe ndiwe njia.\n\n2. Huku chini duniani tunahangaishwa.\nVinavyotuhangaisha vitabaki huku.\nBwana Yesu tunachoka, tuwezeshe safarini.\nKwa kungoja baragumu tushushie Roho.\n\n3. Mambo mengi yanafichwa kwa kukosa moto.\nWatu wengi wanacheza na maovu yao.\nWanadhani huwaoni, mwovu anawadanganya.\nTuma uamsho, Bwana, urudishe wengi.\n\n4. Twakwambia leo, ndugu, usidanganyike.\nBwana Yesu anajua njia zako zote.\nHata ikiwa usiku kwake kuna nuru wazi.\nAcha njia zile ndugu, saa zingaliko.\n\n5. Usidhani hakuoni, anavumilia.\nAnangoja siku ile atimize yote.\nUna heri leo, ndugu, kwani tunakukumbusha.\nFika leo kwa Mwokozi, saa zinapita.\n\n6. Anabisha mlangoni, umfungulie,\nanataka aingie kuokoa wewe.\nMbona humfungulie? Anakuhitaji wewe.\nNe'ma kwako itakwisha, utahukumiwa.\n\n7. Una heri, ndugu, wewe uliye hokoka,\nBwana Yesu akirudi, tutashangilia.\nTutamfanana Yesu, na kurithi mji ule,\nwa milele na milele, mji wa heri...''',
    numero: 328,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_329',
    titre: 'EWE MWANA WA MUNGU NIOKOE NAMI',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. Ewe Mwana wa Mungu, niokoe nami,\nikutumikie na niende Sayuni. (2x)\n\n:/: Sifa zina wewe, Sifa zina wewe,\nSifa zina wewe, Milele na milele.:/:\n\n2. Mavuno ni mengi, watenda kazi 'chache.\nIta wengi Bwana, waingie kazini. (2x)\n\n3. Tuombe kwa bidii Bwana wa mavuno,\natume watumishi kati shamba lake. (2x)\n\n4. Bwana Yesu yu aja, na ujira wake,\nkulipa watumishi kama kazi zao. (2x)''',
    numero: 329,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_330',
    titre: 'YESU ALIPOENDA ALITUACHIA KAZI',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. Yesu alipoenda alituachia kazi,\nna sasa tuifanye, kwani wakati wapita.\n\nUyainue macho, uyainue macho!\nUyainue macho, uyatazame mavuno!\n\n2. Usisimame bure, taifa wapotea usiku,\nwakabili, hakuna atendaye.\n\n3. Aliyekwisha 'lima, atazamapo nyuma\nhafai utumishi na ufalme wa Mungu.\n\n4. Utapokea nini, 'subuhi ya milele,\nwatakapopata taji watumishi wa'minifu?''',
    numero: 330,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_331',
    titre: 'ANAYESHUHUDIA KWAMBA TUTAFIKA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. Anayeshuhudia kwamba tutafika mbingu ni Roho wake Mungu,\nanayeweka tumaini la kufika mbingu ni Roho wake Mungu.\n\n:/: Tumwombe, tumtafute, Ni wetu Yesu alisema :/:\n\n2. Roho yule anafanya njia kati vita kali,\nkuwaendea ndugu, apungungapo mara\ntunaanza kuogopa na kujihurumia.\n\n3. Upendo wako, ndugu uanzapo, kupunguka,\nujuwe Roho yule amekwisha kukuacha,\npengine mwili wako unaanza kukusonga,\ntunaye msaidizi.\n\n4. Tunakuomba, Bwana Yesu, umtume kwetu,\nmsaidizi huyo wa maisha yetu huku.\nTunaingia sasa kati vita duniani,\nwandugu tumuombe Mungu.''',
    numero: 331,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_332',
    titre: 'SAWA NA WAPITAJI WA DUNIA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. Sawa na wapitaji wa dunia.\nTunapita huzuni na shida.\nSiku moja tutaongozwa naye,\nhata huko mbinguni kwa Baba.\n\nSawa nyota za mbingu tutang'aa,\nkwa Yesu Mwokozi mbinguni.\nTuishike safari kwa nguvu,\nna kusifu Mwokozi kwa nyimbo.\n\n2. Hatushinde katika dunia,\nkwa kupewa dhahabu na fedha,\nila tunatazama shabaha,\nni mjini mbinguni kwa Baba.\n\n3. Tukikaa nyumbani wala hema.\nTangu utoto hata mauti.\nTuna ahadi, kuongozwa naye,\nkwamba tutafikishwa kwa Baba.''',
    numero: 332,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_333',
    titre: 'SISI HUKU SI MATAJIRI, KWANI MYAKA YAPITA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. Sisi huku si matajiri, kwani miaka yapita.\nMara nyingi twapata shida, kwani miaka yapita.\nTukimwamini Yesu na kumtumikia,\ntutapata thawabu, kwani miaka yapita.\n\nYapita, yapita, yapita, yapita,\ntumikieni Mwokozi, kwani miaka yapita.\n\n2. Hatutaogopa kitu, kwani miaka yapita.\nBali tutafurahi tu, kwani miaka yapita.\nDunia ni shida, mashaka na huzuni.\nBali tukaze mwendo, kwani miaka yapita.\n\n3. Rafiki wanatuacha, kwani miaka yapita.\nNa safari itaisha, kwani miaka yapita.\nTupande mbegu njema, rohoni mwa wenzetu,\nwengine waokoke, kwani miaka yapita.''',
    numero: 333,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_334',
    titre: 'MAJIRA YATUONYESHA YA KWAMBA',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. Majira yatuonyesha kwamba Yesu yu karibu,\nahadi sasa zatimia; tujitayarishe mioyoni.\n\n:/: Tujiandae sasa, na tujiweka tayari. :/:\n\n2. Dunia yameremeta na kuvuta macho ya wengi,\nhayo yote yaonyesha kweli, ni ishara za mwisho.\n\n3. Tukeshe kati maombi, tutaumaliza mwendo.\nYesu ndiye nuru kushinda, tumtegemee yeye.''',
    numero: 334,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'nyimbo_za_wokovu_335',
    titre: 'NITAFANYA NINI MIMI SIWEZI KITU',
    collectionId: 'nyimbo_za_wokovu',
    collection: 'nyimbo_za_wokovu',
    contenu:
        '''1. :/: Nitafanya nini mimi, siwezi kitu?:/:\nSiwezi kujiokoa, siwezi kujisafisha,\nsiwezi kujigeuza, siwezi kujirefusha,\nsiwezi kujifupisha, na sitajisaidia.\nNaomba kwake Yesu, anitengeze (sic).\n\n2. :/: Nitafanya nini mimi, sijui mtu?: /:\nSijui mawazo yake, sifahamu nguvu zake,\nsijui upendo wake, sijui imani yake,\nsijui uzuri wake, wala udhaifu wake.\nNitaomba kwake Yesu, mwenye hekima,\nanifahamishe mtu aliyeumba.\n\n3. :/: Nitafanya nini na huu mwili wangu? :/:\nNasikia, sifahamu, natazama na sioni,\nnaitika na sifanyi, ninatumwa na siendi,\nna mwili una matata, wachokoza roho yangu.\nNitaomba Roho msaidizi wetu.\nNitapewa nguvu kwa jina lake Yesu.\n\n4. :/: Nitafanya nini mimi niseme vema?:/:\nSijui kusema sawa, maneno yaniponyoka,\nnayo yanachanganyika, mabaya hata mazuri,\nyote yatoka pamoja, siwezi kuyarudisha.\nNinaomba kwake Mungu anisamehe.\nNikaseme kila lugha mpya vizuri.\n\n5. :/: Roha inapenda kutumikia Yesu? :/:\nNi mwili unakataa, unanizuia sana,\nbadala ya kuhubiri, naenda kwa shamba langu,\nau kwa byashara yangu.\nNinapotaka kuomba uvivu unanijaa,\nkama nataka kuimba watu huja na maneno.\nMungu utanisamehe hayo makosa,\nyananifikia lakini siyapendi.''',
    numero: 335,
    auteur: 'Auteur inconnu',
  ),

  //PETIT TROUPEAU TABERNACLE
  Cantique(
    id: 'petit_troupeau_001',
    titre: 'LE GRAND JOUR',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Le grand jour s’est levé\nDieu nous a visités\nVoici le temps nouveau\nChantons gloire à l’agneau\nNous recevons de Christ\nCe qu’il avait promis :\nLe Saint Esprit est là\n\nChœur\nLe Saint Esprit est là\nLe Saint Esprit est là\nLa mort a disparu\nDieu donne un plein salut\nEt sur le monde entier\nLe grand jour s’est levé\nLe Saint Esprit est là\n\n2. L’obscurité s’enfuit\nLa Lumière a jailli\nChassé de cœurs troublés\nToute incrédulité\nCar Christ, le Roi des rois\nRépand l’Esprit de foi\nLe Saint Esprit est là\n\n3. Le grand consolateur\nVient remplir tous les cœurs\nL’Esprit de vérité\nNous met en liberté\nIl ouvre les prisons\nRépand la guérison\nLe Saint-Esprit est là\n\n4. Que tous les rachetés\nChantent leur liberté\nChrist a tout accompli\nIl a donné l’Esprit\nVoyez trembler l’enfer\nCar dans tout l’univers\nLe Saint-Esprit est là''',
    numero: 1,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_002',
    titre: 'ROCHER D’AGES',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Rocher d’âges fendu pour moi\nLaisse-moi me cacher en toi\nLaisse l’eau avec le sang\nQui coulèrent de tes plaies\nEtre un double remède\nSauver et me rendre pur\n\n2. Que mes larmes coulent à jamais\nEt mon zèle ne s’éteigne point\nCela n’ôte pas mon péché\nC’est toi seul qui dois sauver\nDans ma main rien n’est porté\nJe m’attache à ta croix\n\n3. Alors que j’aspire ce souffle\nQuand mes yeux se fermeront\nEt quand je me lèverai\nJe te verrai sur ton trône\nRocher d’âge fendu pour moi\nLaisse-moi me cacher en Toi.''',
    numero: 2,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_003',
    titre: 'MA FOI REGARDE A TOI',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Ma foi regarde à toi\nToi agneau du Calvaire\nSauveur divin\nEcoute-moi quand je prie\nÔte tous mes péchés\nO laisse-moi dès ce jour\nEtre à toi.\n\n2. Que ta grâce infinie\nFortifie mon cœur\nInspire mon Zèle\nComme tu mourus pour moi\nPuisse mon amour pour Toi\nPur, chaud, inchangé, être un feu vivant.\n\n3. Durant ma sombre vie\nLes épreuves m’environnent\nSois mon seul guide\nQue l’ombre se dissipe\nEssuie mes tristes larmes\nNe me laisse pas m’égarer\nLoin de Toi.''',
    numero: 3,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_004',
    titre: 'LE GRAND MEDECIN',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Le grand médecin est ici maintenant. Le compatissant Jésus\nRéconforte le cœur brisé\nEcoute la voix de Jésus.\n\nChœur\nLe plus doux chant des séraphins\nLe plus doux nom pour les mortels\nLe plus doux chœur jamais chanté\nJésus, béni soit Jésus\n\n2. Tes nombreux péchés pardonnés\nEcoute la voix de Jésus\nVas en paix sur la route au ciel\nPorte une couronne avec lui.\n\n3. Toute gloire à l’agneau immolé\nJe crois maintenant à Jésus\nJ’aime le nom béni du Sauveur\nJ’aime le nom de Jésus Christ\n\n4. Son nom dissipe mes fautes et peur\nPas autre nom mais Jésus\nCombien mon âme se réjouit\nD’entendre ce nom Jésus !''',
    numero: 4,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_005',
    titre: 'PRES DE LA CROIX',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Près de la croix garde-moi\nLa fontaine précieuse\nGratuite et guérissante\nCoule du Calvaire\n\nChœur\nA la croix, à la croix\nSoit ma gloire à jamais\nEt que mon âme enlevée\nTrouve repos là-haut.\n\n2. Près de la croix, tout tremblant\nAmour, grâce m’ont trouvé\nLà l’Etoile du matin\nRayonne autour de moi\n\n3. Près de la croix, O Agneau\nMontre-moi tes scènes\nAide-moi à marcher toujours\nAvec tes ombres sur moi.\n\n4. Près de la croix j’attendrai\nVeillant, croyant toujours,\nJusqu’au jour où j’atteindrai\nL’autre rive dorée.''',
    numero: 5,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_006',
    titre: 'ALLELUIA, NOUS RESSUSCITERONS',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Au matin de résurrection\nLa trompète de Dieu sonnera\nNous vivrons, alléluia !\nNous vivrons.\nLes saints viendront,\nSe réjouissant,\nAucune larme sera trouvée\nNous vivrons, alléluia,\nDans ce matin nous vivrons\n\nChœur\nOui, nous ressusciterons\nAlléluia, amen !\nOui, nous ressusciterons\nAu matin de résurrection sont\nBrisées les barres de la mort\nOui, nous ressusciterons,\namen !\n\n2. Au matin de résurrection\nOh ! Quelle rencontre ça sera\nNous vivrons, alléluia\nNous vivrons, alléluia. Quand nos pères et nos mères,\nEt nos bien-aimés nous verrons, alléluia !\nDans ce matin nous vivrons.\n\n3. Au matin de résurrection\nPour moi c’est une pensée bénie\nNous vivrons, alléluia !\nNous vivrons.\nJe verrai mon sauveur béni\nQui pour moi mourut librement\nNous vivrons, alléluia !\nDans ce matin nous vivrons.\n\n4. Au matin de résurrection\nDans les airs le rencontrerons\nNous vivrons, alléluia !\nNous vivrons.\nEtre enlevé dans la gloire\nVers notre demeure pure et belle\nNous vivrons, alléluia !\nDans ce matin, nous vivrons.''',
    numero: 6,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_007',
    titre: 'TEL QUE JE SUIS',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Tel que je suis, sans rien à moi\nSinon ton sang versé pour moi\nEt ton invitation à Toi, Agneau\nDe Dieu, je viens, je viens !\n\n2. Tel que je suis, sans rien trainer de\nDébarrasser mon âme de tout\nA Toi dont le sang, lave chaque\nTâche, Agneau de Dieu, je viens, je viens\n\n3. Tel que je suis, tu vas laver\nPardonner, recevoir, aider\nCar à ta promesse je crois\nAgneau de Dieu, je viens, je viens !\n\n4. Tel que je suis, ton grand amour\nA dû renverser chaque barrière\nMaintenant pour être à Toi, Toi seul\nAgneau de Dieu, je viens, je viens !''',
    numero: 7,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_008',
    titre: 'IL EST UNE FONTAINE',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Il est une fontaine pleine de sang\nTiré des veines d’Emmanuel,\nLes pécheurs plongés dans ce flot\nPerdent toutes leurs souillures,\nPerdent toutes leurs souillures,\nLes pécheurs plongés dans ce flot\nPerdent toutes leurs souillures,\n\n2. Le voleur mourant s’est réjouit\nDe voir cette fontaine,\nEt là aussi puis-je comme lui\nLaver tous mes péchés\nLaver tous mes péchés\nLaver tous mes péchés\nEt là aussi puis-je comme lui\nLaver tous mes péchés.\n\n3. L’Agneau mourant\nTon sang précieux\nNe perdra pas sa puissance\nJusqu’à ce que l’église de Dieu\nSoit sauvée du péché\nSoit sauvée du péché\nSoit sauvée du péché\nJusqu’à ce que l’Eglise de Dieu\nSoit sauvée du péché.\n\n4. Par la foi j’ai vu ce ruisseau\nSortant de tes blessures\nL’amour rédempteur est mon thème jusqu’au jour de ma mort\nJusqu’au jour de ma mort\nJusqu’au jour de ma mort\nL’amour rédempteur est mon thème jusqu’au jour de ma mort\n\n5. Puis dans un chant noble et doux\nJe chanterai ta puissance\nLorsque mes lèvres tremblantes\nDescendront au tombeau\nDescendront au tombeau\nDescendront au tombeau\nLorsque mes lèvres tremblantes\nDescendront au tombeau''',
    numero: 8,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_009',
    titre: 'J’ABANDONNE TOUT',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Tout à Jésus, j’abandonne\nJe lui donne tout librement\nEt je me confierai en lui\nJe vivrai dans sa présence\n\nChœur\nJ’abandonne tout\nJ’abandonne tout\nTout à lui mon sauveur béni\nJ’abandonne tout\n\n2. Tout à Jésus, j’abandonne\nJe me prosterne à ses pieds\nLes plaisirs du monde oubliés\nJésus prends-moi maintenant\n\n3. Tout à Jésus, j’abandonne\nFais-moi, sauveur, tout à toi\nLaisse-moi sentir le saint Esprit\nSavoir que tu es pour moi\n\n4. Tout à Jésus, j’abandonne\nSeigneur, je me donne à toi\nRemplis-moi de ta puissance\nSur moi laisse tes bénédictions\n\n5. Tout à Jésus, j’abandonne\nEt, je suis le feu sacré\nOh ! la joie du salut parfait !\nGloire, gloire à son nom.''',
    numero: 9,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_010',
    titre: 'QUAND JE VERRAI LE SANG',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. christ Rédempteur est mort sur la croix\nPour le pécheur, il paya son dû\nAsperger votre âme avec le sang\nEt je passerai par-dessus vous\n\nChœur\nQuand je verrai le sang\nQuand je verrai le sang\nQuand je verrai le sang\nJe passerai par-dessus vous\n\n2. Pauvre pécheur, Jésus sauvera\nIl fera tout ce qu’il a promis\nLavez-vous dans la fontaine ouverte\nEt je passerai par-dessus vous\n\n3. Le jugement vient, et tous y seront\nChacun recevra juste son dû\nCachez-vous dans le sang qui blanchit\nEt je passerai par-dessus vous\n\n4. Grande compassion, amour divin\nAmour bienveillant, fidèle et sincère. Trouvez paix et abris sous le sang,\nEt je passerai par-dessus vous''',
    numero: 10,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_011',
    titre: 'ILS VIENNENT DE L’EST',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Ils viennent de l’Est et d’Ouest\nIls viennent des lointains pays\nFêter avec le Roi\nComme ses invités\nQue ces pèlerins sont bénis\nContemplant son saint visage\nBrillant d’éclats divins\nParticipants de sa grâce comme joyaux de sa couronne.\n\nChœur\nMon cœur est heureux depuis\nQue Jésus m’a libéré. Je ne porte plus le fardeau de soucis\nSon joug est si doux pour moi\nMon âme était noire comme nuit\nMais les ténèbres ont fui\nMaintenant je crie victoire\nCar Jésus m’a libéré.\n\n2. Je regarde le grand trône blanc\nLes sauvés se tiennent devant\nMaintenant plus de larmes\nNi chagrin connu\nNi mort dans ce bon pays\nLe sauveur m’a précédé\nMe préparant la voie\nBientôt nous seront ensemble\nDans le temps ou l’éternité.\n\n3. Les portails de ce saint lieu\nRestent ouverts la nuit, le jour\nRegarde au seigneur\nQui donne plus de grâce\nDont l’amour prépare la voie\nUne place dans ses belles demeures\nQu’il réserva pour tous\nPour te préparer aux noces obéis à cet appel\n\n4. O Jésus revient bientôt\nAlors nos peines sont finies\nSi notre seigneur venait maintenant\nPour ceux qui sont sans péché\nAurez-vous alors la joie\nOu le chagrin, la peine\nQuand il viendra dans sa gloire\nNous le rencontrerons là-haut.''',
    numero: 11,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_012',
    titre: 'QUEL JOUR CA SERA',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Il y a un jour qui vient\nOù les maux ne seront plus\nNi les nuages dans le ciel\nPlus de larmes à jamais\nTout est paix pour toujours\nSur l’autre rive pavée d’or\nO quel jour, glorieux jour ça sera !\n\nChœur\nO quel jour ça sera\nQuand je verrai mon Jésus\nEt je vois de face\nCelui qui m’a sauvé par sa grâce\nQuand il me prend par la main\nMe conduisant à la terre promise\nO quel jour, glorieux jour ça sera !\n\n2. Il n’y aura ni chagrin\nNi fardeau à porter\nNon plus la maladie\nDouleurs et séparation\nPour toujours je serai avec celui qui est mort pour moi\nO quel jour, glorieux jour ça sera !''',
    numero: 12,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_013',
    titre: 'LAISSE-LES',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Si le monde te privait\nDe son argent et son or,\nEt que tu dois vivre avec le moindre frais\nRappelle-toi dans sa parole\nIl nourrit même les oiseaux\nAbandonne tes fardeaux\nA ton seigneur\n\nChœur\nLaisse-les, laisse-les.\nAbandonne tes fardeaux\nA ton seigneur\nSi tu crois sans défaillir\nIl saura te secourir\nAbandonne tes fardeaux\nA ton seigneur.\n\n2. Si ton corps endure la peine\nSans recouvrer la santé\nTon âme presque noyée\nDans le désespoir\nJésus sait ce que tu sens\nIl peut sauver et guérir\nAbandonne tes fardeaux\nA ton seigneur\n\n3. Quand tes ennemis t’assaillent\nTon cœur commence à failli\nN’oublie pas que Dieu répond à la prière\nIl fera une voie pour toi\nTe conduira surement\nAbandonne tes fardeaux\nA ton seigneur\n\n4. Si ta jeunesse t’abandonne\nEt tu commences à vieillir\nTon corps se courbe sous le poids de soucis\nIl ne te quittera pas\nIl ira avec toi au bout\nAbandonne tes fardeaux\nA ton seigneur''',
    numero: 13,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_014',
    titre: 'GLOIRE A SON NOM',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. A la croix où mourut mon sauveur\nJ’ai crié pour être purifié\nLà le sang fut appliqué à mon cœur\nGloire à son nom.\n\nChœur\nGloire à son nom\nGloire à son nom\nLà le sang fut appliqué à mon cœur\nGloire à son nom\n\n2. Je suis incroyablement sauvé\nDans la douceur Jésus est en moi\nLà à la croix où il m’a reçu\nGloire à son nom\n\n3. Fontaine qui sauve du péché\nJe suis heureux d’y être plongé\nLà-bas Jésus me sauve et me lave\nGloire à son nom\n\n4. Viens à la fontaine riche et douce\nJette ton âme aux pieds du sauveur\nPlonges-tu aujourd’hui et sois pur\nGloire à son nom''',
    numero: 14,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_015',
    titre: 'JESUS PAYA TOUT.',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. J’entends le sauveur dire\nMalgré ta moindre force\nFaible enfant, veille et prie\nTrouve en moi tout ton tout\n\nChœur\nJésus paya tout\nEt je lui dois tout\nDe mes péchés cramoisis\nIl m’a lavé comme neige.\n\n2. Seigneur, vraiment je trouve\nQue seulement ta puissance\nPeut épurer un lépreux\nEt fondre un cœur de pierre.\n\n3. Comme je n’ai rien de bon\nJe réclame ta grâce\nJe blanchirai mes robes dans le sang de l’Agneau.''',
    numero: 15,
    auteur: 'Auteur inconnu',
  ),
  Cantique(
    id: 'petit_troupeau_016',
    titre: 'LA IL ME CONDUIT',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. J’entends mon sauveur qui m’appelle (3x)\nPrends ta croix, viens et suis-moi.\n\nChœur\nOù il me conduit, je suivrai (3x)\nJe ferai route avec lui.\n\n2. J’irai avec lui au jardin (3x)\nJ’irai sur le chemin\n\n3. A travers le jugement (3x)\nJ’irai sur le chemin\n\n4. Il me donnera gloire et grâce (3x)\nIl fera route avec moi''',
    numero: 16,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_017',
    titre: 'QUAND LES SAINTS ENTRERONT',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Je suis pèlerin, étranger\nErrant dans ce monde pécheur\nSur ma route vers la cité\nLorsque les saints entreront\n\nChœur\nQuand les saints entreront\nLorsque les saints entreront\nSeigneur je veux être de ce nombre\nLorsque les saints entreront\n\n2. Je sais, je verrai mon sauveur\nSi ma vie est libérée\nLe ciel m’ouvrira ces portes\nLorsque les saints entreront\n\n3. Assemblée autour du trône\nEt les portes sont fermées\nJe cri airai : « Gloire, Gloire »\nLorsque les saints entreront\n\n4. J’attends que le chariot descende\nEt je monterai à bord\nSur les nuées j’irai au ciel\nLorsque les saints entreront''',
    numero: 17,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_018',
    titre: 'RIEN MAIS LE SANG',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Qu’est ce qui peut laver mon péché\nRien que le sang de Jésus !\nQu’est ce qui peut me parfaire\nEncore, Rien que le sang de Jésus !\n\nChœur\nOh ! Précieux est le flot\nQui me rend blanc comme neige\nJe ne connais d’autres sources\nRien que le sang de Jésus !\n\n2. Pour ma pureté je ne vois\nRien que le sang de Jésus !\nLa plaidoirie pour mon péché\nRien que le sang de Jésus !\n\n3. Rien ne peut expirer le péché\nRien que le sang de Jésus !\nNi rien de bon que j’ai pu faire\nRien que le sang de Jésus !\n\n4. C’est mon espoir et ma paix\nRien que le sang de Jésus !\nC’est aussi ma justice\nRien que le sang de Jésus !\n\n5. Et maintenant comment je vaincrai\nRien que le sang de Jésus !\nComment j’atteindrai ma maison\nRien que le sang de Jésus !\n\n6. Gloire, gloire ainsi je chante\nRien que le sang de Jésus !\nToute ma louange j’apporte\nRien que le sang de Jésus !''',
    numero: 18,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_019',
    titre: 'JE LE RECONNAITRAI',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Debout quelque part dans l’ombre\nTu trouveras Jésus\nIl est celui qui se souci et comprend\nOh ! Débout debout quelque part dans l’ombre. Tu le trouveras\nTu le connaîtras par les empreintes des clous.\n\nChœur\nOh ! je le reconnaitrai\nComme Rédempteur par son coté\nOh ! je le reconnaitrai\nPar les empreintes des clous dans ses bras\n\n2. Lorsque mon travail terminé\nJe passe la marée haute\nQuand je vois le matin brillant et glorieux\nJe reconnaitrai mon sauveur quand j’atteindrai l’autre rive\nSon sourire sera le premier\nA m’accueillir\n\n3. Oh ! mon âme tressaille de joie\nQuand je vois sa face bénie\nEt l’Eclat doux et rayonnant de ses yeux\nMon cœur le louera pour sa bonté, amour et grâce\nQui prépare pour moi une maison au ciel.\n\n4. Oh ! Mes bien-aimés dans la Gloire m’invitent à venir\nJe me rappelle de notre séparation\nDans le doux vallon d’Eden\nIls chanteront à la maison\nJe désire en premier\nRencontrer mon Dieu\n\n5. A travers les portes de la cité\nDans une robe\nIl me conduira là où il n’y a pas de larmes\nDans les chants joyeux des anges\nOh ! je me mêlerai\nJe désire en premier rencontrer mon Dieu.''',
    numero: 19,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_020',
    titre: 'AMOUR DE DIEU',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. L’amour de Dieu\nEst de loin plus grand\nQue langue ou plume,\nNe peuvent le dire\nIl va plus que\nLa plus haute étoile\nIl atteint le plus bas enfer\nLe coupable, sous son fardeau\nDieu donna son fils, pour vaincre\nIl réconcilia, son fils errant\nLui pardonna son péché.\n\nChœur\nOh ! L’Amour de Dieu\nCombien riche et pur,\nIl est sans mesure et fort\nIl endurera, sans cesse et toujours\nLe chant des saints et des anges.\n\n2. Quand le temporel, vas disparaitre et que les trônes terrestres tombent\nMêmes si les hommes refusent de prier\nEt d’invoquer sur les montagnes ;\nL’Amour de Dieu endurera encore, il est sans mesure et fort\nGrâce divine pour la race d’Adam,\nLe chant des saints et des anges\n\n3. Si les océans étaient pleins d’encre\nEt les cieux faits de parchemins\nSi chaque tige était une plume\nEt tout homme était écrivains\nDécrire l’Amour de Dieu céleste\nSécherait les Océans\nLe rouleau ne peut contenir le tout\nQuoiqu’étendu d’un bout à l’autre.''',
    numero: 20,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_021',
    titre: 'PRENDS LE NOM DE JESUS',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Prends le nom de Jésus avec toi\nEnfant de tristesse et peine\nIl va te procurer la joie\nPrends-le partout où tu vas\n\nChœur\nPrécieux nom, nom si doux\nEspoir de la terre, joie du ciel\nPrécieux nom, nom si doux\nEspoir de la terre, joie du ciel\n\n2. Prends toujours le nom de Jésus\nComme bouclier face aux pièges\nQuand les tentations surviennent\nMurmure ce nom en priant\n\n3. Oh ! Le précieux nom de Jésus\nFait frémir nos âmes de joie\nLorsque ses bras nous reçoivent\nEt nous chantons ses cantiques\n\n4. A son nom nous nous inclinons\nNous prosternant à ses pieds\nRoi des rois le couronneront\nQuand le voyage est fini.''',
    numero: 21,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_022',
    titre: 'IL Y A LA PUISSANCE DANS LE SANG',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Veux-tu briser tes fardeaux de péché ?\nLa force est dans le sang (2x)\nVeux-tu avoir la victoire sur le mal ? la force merveilleuse est dans le sang !\n\nChœur\nIl y a force, force, merveilleuse force dans le sang de l’Agneau.\nIl y a force, force, merveilleuse force dans le sang précieux de l’Agneau !\n\n2. Veux- tu être blanc,\nPlus blanc que la neige ?\nLa force est dans le sang (2X)\nLes souillures du péché y sont lavées.\nLa force merveilleuse est dans le sang !\n\n3. Veux-tu rendre service à Jésus Christ ?\nLa force est dans le sang (2x)\nVeux-tu vivre et chanter ses louanges ?\nLa force merveilleuse est dans le sang !''',
    numero: 22,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_023',
    titre: 'CROIS SEULEMENT',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Crains rien, petit troupeau\nDa la croix au trône\nDe la mort à la vie\nIl partit pour les siens\nTout pouvoir sur terre\nTout pouvoir au ciel\nFut donné à lui\nPour l’amour du troupeau.\n\nChœur\nCrois seulement, crois seulement, tout est possible,\nCrois seulement (bis)\n\n2. Crains rien, petit troupeau\nIl est partit devant\nTon berger fait le choix\nDu chemin à suivre\nIl va purifier\nL’eau de Marra pour toi\nA Gethsémani, il a bu l’amertume\n\n3. Crains rien, petit troupeau\nPeu importe ta charge\nIl entre dans les chambres\nLes portes étant fermées\nJamais il n’abandonne\nEt ne peut oublier.\nDans la nuit et le jour.''',
    numero: 23,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_024',
    titre: 'BIENTOT DANS LA DOUCEUR',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Il y a un endroit plus beau qu’un jour\nEt par la foi nous pouvons le voir\nCar le père nous attend sur le chemin\nPour nous préparer là un palais.\n\nChœur\nBientôt dans la douceur nous nous rencontrerons sur cette rive\nBientôt dans la douceur nous nous rencontrerons sur cette rive\n\n2. Nous chanterons sur ce beau rivage. Chants mélodieux de bénédiction. Nos esprits ne s’affligeront plus.\nPas un soupire pour les bénédictions.\n\n3. A notre généreux père céleste\nNous offrirons nos hommages et louanges pour le glorieux don de son amour, et les bénédictions consacrées.''',
    numero: 24,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_025',
    titre: 'LES AILES D’UNE COLOMBE',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Noé a bien navigué\nSur les eaux bien des jours\nIl chercha la terre ferme\nDe plusieurs manières\nDes ennuis, il en avait bien eu\nMais non pas du ciel\nDieu lui donna son signe\nSur les ailes d’une colombe\n\nChœur\nSur les ailes d’une colombe\nBlanche comme neige\nDieu envoya son amour doux, pur. Un signe du Ciel\nSur les ailes d’une colombe\n\n2. Jésus, notre sauveur\nVint un jour sur la terre\nNé dans une étable\nDans une crèche de paille\nIci-bas rejeté.\nMais non pas du ciel\nDieu nous donna son signe\nSur les ailes d’une colombe.\n\n3. Bien qu’ayant beaucoup souffert\nDe bien de manières,\nJe criais pour la guérison\nLa nuit comme le jour\nMais la foi ne fut pas oubliée\nPar le père du Ciel,\nIl me donna son signe\nSur les ailes d’une colombe.''',
    numero: 25,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_026',
    titre: 'QUEL SAUVEUR',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Quel sauveur merveilleux je possède. Il s’est sacrifié pour moi ; Et sa vie innocente il céda\nPour mourir sur l’infâme bois.\n\nChœur\nAttaché à la croix pour moi (2x)\nIl a pris mon péché\nIl m’a délivré\nAttaché à la croix pour moi\n\n2. Il renonce à la Gloire céleste\nPour le plan rédempteur de Dieu\nHumble et d’apparence modeste\nOh ! Quel prix pour me libérer.\n\n3. Maltraité pour mon indigne vie\nBrisé pour mes iniquités\nIl prit sur lui mes maladies\nEt mourut pour me rendre heureux.\n\n4. Le salut accompli pour ses frères\nLe sauveur fut reçu au ciel\nIl revient, Ô profond mystère\nMon bonheur sera Eternel''',
    numero: 26,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_027',
    titre: 'JE M’ENVOLERAI',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Un beau matin quand tout sera fini, je m’envolerai ;\nA la maison où habite mon Jésus,\nJe m’envolerai.\n\nChœur\nJe m’envolerai Oh ! Gloire !\nJe m’envolerai\nA la fin, Alléluia tout à l’heure\nJe m’envolerai\n\n2. Juste encore un peu de temps et alors, je m’envolerai\nDans ce pays où la joie demeure\nJe m’envolerai\n\n3. Quand l’ombre de ma vie sera parti, je m’envolerai.\nComme un oiseau libéré de prison\nJe m’envolerai.''',
    numero: 27,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_028',
    titre: 'A L’OUEST LE SOLEIL SE COUCHE',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. A l’ouest le soleil se couche\nIl arrive à la fin de sa course\nEt je vois combien ce temps est là\nOh ! le temps du coucher du soleil.\n\nChœur\nC’est la fin, c’est la fin, c’est la fin de la course ;\nC’est la fin, c’est la fin, c’est la fin de toute chose !\n\n2. Et voici que la lumière du soir\nA l’Ouest pour moi a paru\nElle manifeste le fils de l’homme\nEt je crois, c’est vrai je le crois\n\n3. Pèlerin c’est la fin de la course\nIl faut vaincre ce monde et partir,\nAttention ! Quelle heure est-il ?\nIl faut vaincre ce monde et partir.''',
    numero: 28,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_029',
    titre: 'AU NOM DE JESUS',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Au nom de Jésus (2x)\nNous avons la victoire\nAu nom de Jésus (2x) venez monter avec Lui. Si nous avançons au Nom de Jésus, dites-moi qui peut résister ?\nAu nom puissant de Jésus Christ,\nNous avons la victoire.''',
    numero: 29,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_030',
    titre: 'FILS DE DIEU EN AVANT',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Fils de Dieu en avant, dans la puissance du Saint Esprit\nFils de Dieu en avant car\nJésus est toujours le même\nFils de Dieu en avant, Nous avons la puissance en son sang. Fils de Dieu en avant.\nDans la puissance du Saint Esprit.''',
    numero: 30,
    auteur: 'Auteur inconnu',
  ),
  Cantique(
    id: 'petit_troupeau_031',
    titre: 'SI RICHE, SI PROFOND',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Si riche, si profond, insondable\nC’est l’amour divin\nL’Amour rédempteur.\n\nChœur\nPour moi, pour moi\nIndigne sauvé par grâce\nPour moi, pour moi\nL’amour rédempteur\n\n2. Immuable, incomparable\nInexprimable\nC’est l’Amour divin\nL’Amour rédempteur.\n\n3. Comme c’est beau\nComme c’est doux, de fredonner de l’Agneau divin\nL’Amour rédempteur''',
    numero: 31,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_032',
    titre: 'J’AI RETROUVE',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. J’ai retrouvé, j’ai retrouvé\nOh ! venez, j’ai retrouvé ma pierre vivante\nSource de la vie éternelle.''',
    numero: 32,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_033',
    titre: 'NOUS SOMMES LES ENFANTS DU PERE',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Nous sommes les enfants du père, cohéritiers avec le fils.\nNous sommes sujets de son royaume\nNous sommes une famille,\nNous sommes un.''',
    numero: 33,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_034',
    titre: 'SOURIANT, SOURIANT',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Souriant, souriant,\nLe chrétien croit tout\nEt accepte tout\nSouriant, souriant\nLe chrétien prend tout\nPar le bon bout.''',
    numero: 34,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_035',
    titre: 'EMMANUEL, EMMANUEL',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Emmanuel, Emmanuel. Et\nIl d’appelle, Emmanuel, Dieu\nAvec nous, c’est le Seigneur\nEt il s’appelle, Emmanuel.''',
    numero: 35,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_036',
    titre: 'DIEU SOIT AVEC VOUS',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Dieu soit avec vous jusqu’au revoir, par ses conseils nous soutenant, Dans sa bergerie vous gardant,\nDieu soit avec vous jusqu’au revoir !\n\nChœur\nAu revoir, Au revoir !\nAu revoir au pied de Jésus !\nAu revoir ! Au revoir !\nDieu soit avec vous jusqu’à nous revoir !\n\n2. Dieu soit avec vous jusqu’au revoir. Vous protégeant sous ses ailes, vous donnant la manne quotidienne. Dieu soit avec vous jusqu’à nous revoir.\n\n3. Dieu soit avec vous jusqu’au revoir. Quand les périls vous confondent, Tenez ses bras infaillibles. Dieu soit avec vous jusqu’au revoir.\n\n4. Dieu soit avec vous jusqu’au revoir. Flottant sur vous sa bannière. Eloignant de vous la crainte.\nDieu soit avec vous jusqu’au revoir !''',
    numero: 36,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_037',
    titre: 'TIENS L’IMMUABLA MAIN',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Le temps est plein de transitions\nRien sur terre n’est immuable\nEspères-en des choses éternelles\nTiens l’immuable main de Dieu.\n\nChœur\nTiens l’immuable main de Dieu (2x)\nEspères-en des choses éternelles\nTiens l’immuable main de Dieu.\n\n2. Confie-toi en l’Eternel Dieu\nQuoi qu’apportent les années\nSi tes amis t’abandonnent\nAttache-toi toujours à Lui.\n\n3. Ne convoite pas les richesses vaines Qui pourrissent rapidement\nCherche les trésors célestes qui ne passeront jamais\n\n4. Quand s’achèvera ton voyage\nSi tu étais fidèle à Dieu\nTon âme ravie dans la gloire\nTrouvera une belle demeure.''',
    numero: 37,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_038',
    titre: 'JE DESIRE LE VOIR',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Voyageant dans le pays\nJe chante en marchant\nGuidant les âmes au calvaire\nAu flot cramoisi\nMon âme percée par les flèches dedans et dehors\nMon sauveur me conduit\nPar Lui je vaincrai.\n\nChœur\nJe désire le voir\nContemplant sa face\nEt chanter pour toujours\nSa divine grâce\nDans les rues de gloire\nElever ma voix\nLes soucis sont passés\nOh ! Joie éternelle.\n\n2. Au service de mon Seigneur\nMême dans la nuit sombre\nJe m’accrocherais à Lui\nIl va m’éclairer\nEt les pièges de Satan\nPeuvent troubler mon âme\nMais mon sauveur prend la direction de tout.\n\n3. Du fin fond de la vallée\nJe regarde en haut\nJe contemple mon Sauveur\nDirigeant la guerre\nIl me prend de la vallée\nPar sa tendre main\nIl me guide, je peux voir\nMarchant en avant.\n\n4. Quand devant moi les flots montent du fond de l’abîme\nMon Seigneur dirige ma barque\nIl prend soin de moi\nIl me conduit tendrement à travers ce monde\nOh ! il est mon Ami\nEt je l’aime tant.''',
    numero: 38,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_039',
    titre: 'JE PEUX, JE VEUX, JE CROIS',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Je le peux, je le veux, et je le croix (3x) Jésus-Christ me guérit.\n\n2. Je me confie en mon Seigneur (3x) Jésus-Christ me guérit.''',
    numero: 39,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_040',
    titre: 'GRACE ETONANTE',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Grace étonnante ! Oh ! quel doux son me sauva malheureux !\nJ’étais perdu, je suis retrouvé\nAveugle, maintenant je vois.\n\n2. Cette grâce m’a enseignée la crainte. Elle ôta mes frayeurs\nCombien précieuse parut cette grâce. Au moment où j’ai cru.\n\n3. A travers les dangers et pièges\nPar où je suis venu\nCette grâce m’a gardé aussi loin\nMe conduira au ciel.\n\n4. Nous avons pendant dix mille ans\nBrillé comme le soleil\nNous pouvons louer notre Dieu\nPlus qu’à notre début.''',
    numero: 40,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_041',
    titre: 'QUE TU ES GRAND',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Seigneur mon Dieu !\nQuand dans mon étonnement\nJe considère,\nLe monde fait par tes mains,\nJe vois les étoiles et j’entends les tonnerres, Ta puissance plane à travers l’Univers.\n\nChœur\nMon âme chante\nA toi Dieu mon Sauveur\nQue tu es grand !\nQue tu es grand ! (bis)\n\n2. Quand dans les bois, dans la forêt je marche,\nAlors j’entends le doux chant des oiseaux,\nQuand je regarde du haut de la montagne j’entends les ruisseaux et je sens la brise.\n\n3. Quand je pense que Dieu\nN’épargna pas son fils\nIl l’envoya mourir Oh ! quel mystère ! Que sur la croix, joyeux portant mon fardeau,\nSaigna, mourut pour ôter mon péché.\n\n4. Quand Christ viendra avec pleine acclamation, il me prendra joyeux sera mon cœur\nJe vais m’incliner dans l’humble adoration, Et proclamer Mon Dieu que tu es Grand.''',
    numero: 41,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_042',
    titre: 'NOUS MARCHONS VERS SION',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Laissons voir notre joie\nNous qui aimons le Seigneur\nJoignons au chant un doux accord ;\nJoignons au chant un doux accord ;\nEt environnant le trône.\n\nChœur\nNous marchons vers Sion\nMerveilleuse, merveilleuse Sion\nNous montons tout droit vers Sion\nLa merveilleuse cité de Dieu.\n\n2. Qu’ils refusent de chanter, ceux qui ne connaissent pas notre Dieu\nMais les enfants du Roi céleste\nMais les enfants du Roi céleste\nProclamerons leur joie\nProclamerons leur Joie.\n\n3. La colline de Sion nous produit\nLes délices sacrés. Avant de fouler\nLes domaines célestes, avant de Fouler les domaines célestes\nFouler les domaines célestes\n\n4. Puissent nos chants abonder\nEt chaque larme être séchée,\nNous marchons sur les traces\nD’Emmanuel, nous marchons\nSur les traces d’Emmanuel,\nVers les beaux pays d’en-haut ;\nVers les beaux pays d’en-haut ;''',
    numero: 42,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_043',
    titre: 'JESUS EST TOUT POUR MOI',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Jésus est tout\nJésus est tout pour moi,\nJésus est tout\nJésus est tout pour moi\nCar il est mon père, et ma mère\nEt ma sœur et mon frère\nJésus est tout pour moi.''',
    numero: 43,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_044',
    titre: 'JE SAIS C’ETAIT LE SANG',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Je sais c’était le sang\nJe sais c’était le sang\nJe sais c’était le sang pour moi\nLorsque j’étais perdu\nA la croix il mourut\nJe sais c’était le sang pour moi.''',
    numero: 44,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_045',
    titre: 'VEILLERAS-TU AVEC MOI ?',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Veilleras-tu avec moi une heure ?\nComme je vais là-bas\nComme je vais là-bas\nVeilleras-tu avec moi une heure ?\nPendant que je vais prier ?''',
    numero: 45,
    auteur: 'Auteur inconnu',
  ),
  Cantique(
    id: 'petit_troupeau_046',
    titre: 'JE SUIS UN VAINQUEUR',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Je suis un vainqueur\nJe suis un vainqueur\nJe suis un vainqueur\nJe suis un vainqueur\nCar j’aime Jésus\nIl est mon sauveur\nIl me sourit et m’aime aussi.''',
    numero: 46,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_047',
    titre: 'PARLONS DE JESUS',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. parlons de Jésus, il est le Roi des rois, Le Seigneur des Seigneurs.\nDurant l’éternité, le grand je suis, la porte, la vie, la vérité\nParlons de Jésus pour toujours.''',
    numero: 47,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_048',
    titre: 'ES-TU LAVE DANS LE SANG',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. As-tu rencontré Jésus qui purifie ?\nEs-tu lavé dans le Sang de l’Agneau ? As-tu pleinement confiance, En sa grâce maintenant ? Es-tu lavé dans le Sang de l’Agneau ?\n\nChœur\nEs-tu lavé dans le Sang\nDe l’Agneau qui purifie les âmes ?\nTon habit est-il pur\nAussi blanc que la neige ?\nEs-tu lavé dans le Sang de l’Agneau ?\n\n2. Marches-tu chaque jour à côté du Sauveur ?\nEs-tu lavé dans le sang de l’Agneau ?\nDemeures-tu chaque jour dans le crucifié ?\nEs-tu lavé dans le sang de l’Agneau ?\n\n3. Quand l’Epoux viendra\nTa robe sera-t-elle blanche ?\nPure et blanche dans le sang de l’Agneau ?\nTon âme va-t-elle s’apprêter pour le beau palais ? et sois lavé dans le sang de l’Agneau ?\n\n4. Débarrasse-toi de cet habit de péché, sois lavé dans le sang de l’Agneau ? il y a une fontaine qui coule pour l’âme impure\nOh ! sois lavé dans le Sang de l’Agneau.''',
    numero: 48,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_049',
    titre: 'JESUS BRISE TOUTE CHAINE',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Je suis maintenant sur l’autel (3x)\nQui fut dressé pour moi\nJésus brise toute chaine (3x)\nCar il me libère.\n\n2. Je ne doute pas mon Sauveur (3x)\nCar il me purifie\nJe le louerais pour toujours (3x)\nCar il me libère.\n\n3. Je me pose sur sa promesse (3x)\nQui me fut donnée\nJe donnerai à Dieu la Gloire (3x)\nCar il me libère.\n\n4. Sur l’autre coté du Jourdain\nDans le doux chant d’Eden\nOù fleurit l’arbre de Vie\nIl y a du repos pour moi\nJe cri airai Alléluia (3x)\nCar il me libère !''',
    numero: 49,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_050',
    titre: 'L’HOMME DE GALILEE',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Dans une crèche il y a longtemps\nPour moi c’est évident\nUn bébé naquit Sauveur du pécheur\nJean le vit sur le rivage\nL’Agneau plus que jamais\nO christ le crucifié du calvaire.\n\nChœur\nOh ! que j’aime cet Homme de Galilée, parce qu’il a fait beaucoup pour moi. Il pardonna mes péchés\nMe remplit du Saint-Esprit\nOh ! que j’aime cet homme de Galilée !\n\n2. Le publicain vint prier\nAu temple ce jour-là, il cria\n« Seigneur, aie pitié de moi »\nSes péchés furent pardonnés, une douce paix le remplit\nIl dit : « venez voir l’homme de Galilée. »\n\n3. Le boiteux pouvait marcher, et le muet parler\nCela fut proclamer avec amour,\nEt l’aveugle pouvait voir,\nJe sais c’est évident\nC’est la puissance de l’homme de Galilée.\n\n4. Nicodème vint de nuit\nDécouvrir le chemin\nIl demanda au fils de l’homme que faire. Celui-ci lui dit ce mot\n« tu dois naitre de nouveau »\nPar l’Esprit de cet homme de Galilée.\n\n5. Il avait dit les péchés de la femme au puits. Comment les cinq maris elle avait eu, Ses péchés furent pardonnés\nUne douce paix la remplit\nElle dit : « venez voir l’homme de Galilée. »''',
    numero: 50,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_051',
    titre: 'NOTRE SEIGNEUR REVIENT',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. J’attends la venue du Glorieux\nEt grand jour de Millénium\nQuand notre Seigneur béni\nViendra pour chercher son épouse. Oh ! mon cœur est rempli de ravissement comme je veille et prie\nCar notre Seigneur revient bientôt sur terre.\n\nChœur\nOh ! Notre seigneur revient bientôt sur terre (2x)\nSatan sera lié pour mille ans nous ne serons plus tentés\nQuand Jésus reviendra de nouveau sur terre.\n\n2. Le retour de Jésus sera la consolation monde. La connaissance du Seigneur remplira la terre et les Cieux.\nDieu prendra toutes nos maladies et séchera nos larmes.\nCar notre Sauveur\nRetournera sur terre.\n\n3. Les rachetés du Seigneur viendront à Sion avec joie. Sur sa sainte montagne rien ne causera le chagrin. Et la paix et l’Amour parfait régneront\nDans tous les cœurs\nQuand Jésus reviendra\nDe nouveau sur terre.\n\n4. Le péché, la mort, le chagrin\nDe ce monde cesseront\nDans le règne glorieux avec Jésus pendant mille ans de paix\nLa terre entière gémit pour ce jour de douce délivrance Pour que notre Jésus retourne sur terre.''',
    numero: 51,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_052',
    titre: 'HIER, AUJOURD’HUI ET POUR TOUJOURS.',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Oh ! Qu’il est doux le message glorieux. La foi proclame Hier, aujourd’hui, pour toujours\nJésus reste le même.\nIl sauve encore le pécheur\nEt guérit les malades\nIl console et calme la tempête\nGloire à son Nom.\n\nChœur\nHier, aujourd’hui, pour toujours\nJésus reste le même\nTout peut changer mais Jésus ne changera jamais\nGloire à son Nom (2x)\nTout peut changer mais Jésus ne changera jamais.\n\n2. Lui qui fut l’ami des pécheurs\nIl te cherche aussi\nViens pécheur t’incliner\nA Ses pieds et repend-toi\nLui qui dit : « je ne te condamne pas, vas, ne pèche plus »\nIl te dit ces mots de pardon comme aux jours passés.\n\n3. Etant sur terre il guérissait.\nPar sa main Puissante il ordonna encore aux peines, De nous quitter. Lui dont la vertu guérie la femme qui le toucha,\nA la foi qui veut sa plénitude il donnera.\n\n4. Lui qui pardonna à Pierre\nIl ôtera ta peur\nLui qui secourut Thomas\nIl ôtera tes doutes\nLe disciple bien aimé\nSe reposa sur Lui\nIl t’accueillera avec Amour\nDans sa poitrine.\n\n5. Lui qui en pleine tempête\nMarcha sur les eaux\nIl peut calmer notre tempête\nComme en Galilée\nLui qui pria avec angoisse\nA Gethsémané, il boit avec nous la coupe, de notre agonie.\n\n6. Comme il marcha avec eux\nSur le chemin d’Emmaüs\nIl veut marcher avec nous\nSur le chemin de Vie\nNous le contemplerons\nO Seigneur, approche ce jour\nOui ce sera “Ce même Jésus“\nComme il est monté.''',
    numero: 52,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_053',
    titre: 'IL RUISSELLE DE SANG',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. le premier à mourir\nPour le plan de l’Esprit\nFur Jean le Baptiste\nMais il mourut en Homme\nPuis le Seigneur Jésus\nIls L’ont crucifié\nIl prêcha que l’Esprit\nSauverait le pécheur.\n\nChœur\nIl ruisselle de sang (2x)\nL’Evangile du Saint esprit\nIl ruisselle de Sang.\nLe sang des disciples\nMorts pour la vérité\nL’Evangile du Saint-Esprit\nIl ruisselle de Sang.\n\n2. Il y avait Pierre et Paul\nEt puis Jean le divin\nIls ont donné leurs vies\nPour que l’Evangile brille\nIls ont mêlé leur sang\nComme les anciens prophètes\nPour que la parole vraie\nSoit fidèlement prêché.\n\n3. Ils lapidèrent Etienne\nQui condamnait le mal\nExcitant leur colère\nIls coupèrent sa tête\nIl rendit son âme\nIl alla rejoindre\nTous les anciens martyrs.\n\n4. Des âmes sont sous l’autel\nCriant : « Jusqu’à quand » pour\nQue le seigneur punisse\nTous ceux qui font le mal\nIl y en aura beaucoup\nDont le sang coulera\nA cause de l’évangile\nEt du flot cramoisi.''',
    numero: 53,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_054',
    titre: 'RIEN QUE TA VOIE',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Seule ta voie Seigneur\nRien que ta voie\nTu es le potier, je suis l’argile\nFaçonne-moi par ta volonté\nPendant que j’attends\nFaible et soumis.\n\n2. Seule ta voie Seigneur\nRien que ta voie\nCherche et sonde-moi\nMaître aujourd’hui\nPlus blanc que neige\nLave-moi maintenant\nComme je m’incline\nDans ta présence.\n\n3. Seule ta voie Seigneur, rien que ta voie. Blessé, fatigué,\nAide-moi je te prie,\nToute puissance est surement à Toi. Touche et guéris-moi divin Sauveur.\n\n4. Seule ta voie Seigneur, rien que ta voie, Tiens tout mon être influencé\nDonne-moi ton Esprit\nJusqu’à ce que\nJe verrai Christ vivant en moi.''',
    numero: 54,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_055',
    titre: 'JESUS A UNE TABLE',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Jésus a une table où Les Saints de Dieu sont nourris\nIl invite son peuple élu :\n« Viens dîner ». Il nourrit avec la manne Et pourvoit à nos besoins. C’est bon de souper avec Lui tout le temps.\n\nChœur\n« Viens dîner », le maître appelle\n« Viens dîner », Tu peux fêter à la table tout le temps. Lui qui a nourrit la foule et changea de l’eau en Vin, Un appel à l’affamé : « Viens dîner ».\n\n2. Les disciples étaient venus\nObéissant ainsi à Christ. Puis le Maitre appela : « Viens dîner »\nLà, ils trouvèrent leurs désirs\nPain et poisson sur le feu\nIl satisfait les affamés\nTout le temps.\n\n3. L’Agneau va prendre l’épouse\nPour toujours à ses coté\nEt tous les hôtes du ciel\nVont s’assembler\nCe sera une belle vue\nTous les Saints vêtus en Blanc\nAvec Jésus ils vont fêter\nPour toujours.''',
    numero: 55,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_056',
    titre: 'JE NE CHANCELLE PAS',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Jésus est mon Sauveur\nJe ne chancelle pas. Son Amour et faveur, Je ne chancelle pas\nJuste comme un arbre planté près des eaux,\nJe ne chancelle pas\n\nChœur\nJe ne chancelle, Je ne chancelle pas, Je ne chancelle,\nJe ne chancelle pas, juste comme un arbre planté près des eaux,\nJe ne chancelle pas\n\n2. Caché dans le Christ, Je ne chancelle pas, caché dans son amour, Je ne chancelle pas\nJuste comme un arbre planté près des eaux, Je ne chancelle pas.\n\n3. Si je le crois toujours,\nJe ne chancelle pas\nIl ne peut me lâcher,\nJe ne chancelle pas\nJuste comme un arbre planté près des eaux,\nJe ne chancelle pas.\n\n4. Gloire, Alléluia, Je ne chancelle pas. Ancré dans Jéhovah, Je ne chancelle pas, juste comme un arbre planté près des eaux.\nJe ne chancelle pas.\n\n5. Que les tempêtes sévissent,\nJe ne chancelle pas. Sur le Rocher des âges, Je ne chancelle pas\nJuste comme un arbre planté près des eaux.\nJe ne chancelle pas.\n\n6. Je suis dans son amour, Je ne chancelle pas, je me confie en Lui, Je ne chancelle pas, juste comme un arbre planté près des eaux,\nJe ne chancelle pas.\n\n7. Je mange ta parole, Je ne chancelle pas, il est bien le guide, Je ne chancelle pas\nJuste comme un arbre planté près des eaux.\nJe ne chancelle pas.''',
    numero: 56,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_057',
    titre: 'DANS CETTE CITE',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Il y a un pays au-delà des étoiles,\nIl y a une cité où il n’y a point de nuit, si nous sommes fidèle nous irons là bientôt,\nDans la cité où l’Agneau est la lumière.\n\nChœur\nDans cette cité où l’Agneau est la lumière, cette cité où il n’y a point de nuit, j’ai un beau palais là-haut, et libérer de souci\nJe m’en irai où l’Agneau est la Lumière.\n\n2. Ici nous sommes éclairés, mais nous savons, que ce soleil qui luit sur nous maintenant, se changera en Nuage quand nous irons\nDans la cité où l’Agneau est la lumière.\n\n3. Là il y a des fleurs à jamais et le jour, sera un jour éternel et pas de nuit. Nos larmes seront essuyées à jamais, Dans la cité où l’Agneau est la lumière.\n\n4. Ici nous avons toujours des déceptions, et nos espoirs rencontrent l’opposition, ici nous pleurons là-bas sera la joie\nDans la cité où l’Agneau est la lumière.\n\n5. Que le soleil faiblisse ou qu’il y ait la nuit, Mon cœur bien heureux n’a peur d’aucun ombrage. Car je sais que là au ciel j’ai une maison,\nDans la cité où l’Agneau est la lumière.''',
    numero: 57,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_058',
    titre: 'DESCENDS DOUX CHARIOT',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Je regarde au loin\nAu-delà du Jourdain\nVenant m’amener à la maison\nUne cohorte d’anges\nQui vient après moi\nVenant m’amener à la maison\n\nChœur\nDescends, doux chariot\nVenant m’amener à la maison\nDescends, doux chariot\nVenant m’amener à la maison\n\n2. Si tu entre là-bas\nAvant mon arrivée\nVenant m’amener à la maison\nDis à tous mes amis\nQue je viendrai aussi\nVenant m’amener à la maison.''',
    numero: 58,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_059',
    titre: 'MARCHANT PLUS PRES',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Je suis faible, Tu es fort\nJésus garde moi du mal,\nJe serai satisfait tous les jours\nComme je marche, garde-moi\nPrès de Toi.\n\nChœur\nMarchant toujours près de Toi\nJésus exauce ma prière\nMarchant toujours près de Toi\nLaisse qu’il en soit ainsi\nMon Seigneur.\n\n2. Dans ce monde de peine et piège\nEn tombant qui me protège ?\nQui m’aide à porter mon fardeau ? Rien que Toi, cher Seigneur,\nRien que toi.\n\n3. Quand ma faible Vie expire\nEt mon temps ne sera plus\nGuide-moi en sécurité\nVers les rivages de ton Royaume.''',
    numero: 59,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_060',
    titre: 'L’ANCIEN EVANGILE',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. C’est encore l’ancien Saint-Esprit\nEt Satan ne peut l’approcher\nC’est pourquoi les peuples le craignent, Mais il est si bon pour moi.\n\nChœur\nDonne-moi l’ancien Evangile\nDonne-moi l’ancien Evangile\nDonne-moi l’ancien Evangile\nIl est si bon pour Moi.\n\n2. Il mettra fin à tes mensonges\nIl te sauvera de la mort,\nIl fera s’enfuir les démons\nEt Il est si bon pour Moi.\n\n3. Il est bon, je n’en veux d’autres\nCar il me fait aimer mon frère\nIl met toute chose à découvert\nEt Il est si bon pour Moi.\n\n4. Il était si bon pour nos pères,\nIl fut bon pour Paul et Sillas,\nIl est si bon pour frère Branham\nEt il est si bon pour Moi.''',
    numero: 60,
    auteur: 'Auteur inconnu',
  ),
  Cantique(
    id: 'petit_troupeau_061',
    titre: 'C’EST LE VIEUX BATEAU DE SION',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. C’est le vieux bateau de Sion,\nC’est le vieux bateau de Sion,\nC’est le vieux bateau de Sion,\nEmbarquez, embarquez.\n\n2. Il fit arriver mon Papa,\nIl fit arriver mon Papa,\nIl fit arriver mon Papa,\nEmbarquez, embarquez.''',
    numero: 61,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_062',
    titre: 'J’AI UN PERE DANS L’AU-DELA',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Oui, j’ai un père dans l’au-delà,\nOui, j’ai un père dans l’au-delà,\nOui, j’ai un père dans l’au-delà,\nLà de l’autre côté.\n\n2. Et un beau jour j’irai le voir,\nEt un beau jour j’irai le voir,\nEt un beau jour j’irai le voir,\nLà de l’autre côté.\n\n3. Quelle bonne rencontre se sera,\nQuelle bonne rencontre se sera,\nQuelle bonne rencontre se sera,\nLà de l’autre côté.''',
    numero: 62,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_063',
    titre: 'LA VIEILLE CROIX RUGUEUSE',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Sur une colline lointaine\nSe tenait une vieille croix\nEmblème de souffrance et de honte, et j’aime cette vieille croix\nOù Le Très cher mourut\nPour un monde des pécheurs perdus.\n\nChœur\nAinsi, j’aimerai cette vieille croix\nJusqu’à ce que je dépose mes armes, je vais m’attacher à la vieille croix,\nEt l’échanger contre une couronne\n\n2. Cette vieille croix rugueuse\nSi méprisée du monde\nElle a une attraction pour moi\nLe cher Agneau de Dieu\nAbandonna sa Gloire pour la porter là au Calvaire.\n\n3. Oh ! Dans cette vieille croix\nTeintée de Sang Divin\nUne merveilleuse beauté je vois\nC’est sur cette vieille croix\nQue mon Jésus mourut\nPour mon pardon, ma pureté.\n\n4. Et à cette vieille croix\nJe serai si fidèle\nJoyeux je porterai sa Honte\nUn jour il m’appellera\nA ma maison lointaine\nPour être toujours dans sa Gloire.''',
    numero: 63,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_064',
    titre: 'JE VAIS A LA TERRE PROMISE',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Aux rebords du Jourdain je me tiens, Mes yeux se portent au Loin\nVers le beau pays de Canaan\nOù se trouve mon trésor.\n\nChœur\nJe vais à la terre promise (2x)\nOh ! Qui veux venir avec moi\nJe vais à la terre promise.\n\n2. Sur ces larges plaines étendues\nBrille un jour Eternel\nLà le Fils de Dieu règne à Jamais\nEt dissipe la nuit.\n\n3. Ni souffle, ni vent, ni froideur\nSur ce rivage Saint\nLa mort, le peine, la maladie\nN’y sont jamais sentie.\n\n4. Quand j’atteindrai ce bel endroit\nEtre à jamais béni\nQuand je verrai la face du père\nMe reposer en Lui !''',
    numero: 64,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_065',
    titre: 'QUEL AMI',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Quel Ami nous avons en Jésus\nPortant nos péchés et peines\nOh ! Quel privilège d’apporter\nTout à Dieu dans la prière !\nSouvent nous perdons la paix ;\nEn vain nous portons la peine\nParce que nous n’apportons pas\nTout à Dieu dans la prière.\n\n2. Avons-nous épreuves tentations ?\nY a-t-il trouble quelque part ?\nNe perdons jamais courage\nAmenons tout au Seigneur\nOù trouver l’ami fidèle\nQui peut partager nos peines\nJésus connait nos faiblesses\nAmenons tout au Seigneur.\n\n3. Sommes-nous faibles ?\nTellement chargés\nPar le fardeau des soucis ?\nPrécieux Sauveur, notre refuge\nAmenons tout au Seigneur\nTes amis t’ont abandonné\nAmène tout au Seigneur\nDans ses bras il te gardera\nLà tu seras consolé.''',
    numero: 65,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_066',
    titre: 'LE JOUR DE LA REDEMPTION',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Les nations se disloquent\nIsraël se réveille. Les signes que les prophètes prédirent,\nLes jours des gentils comptés\nEncombrés d’horreur\nBientôt sera l’Eternité.\n\nChœur\nLe jour de la rédemption est proche, les cœurs des hommes sont effrayés, soit rempli de l’Esprit ; Ta lampe pleine et Claire. Regarde sa rédemption est proche !\n\n2. Le figuier bourgeonne\nJérusalem est restaurée\nSa vie nationale détrônée elle appelle aujourd’hui sa dernière pluie tombe\n« Reviens » Oh ! toi dispersée.\n\n3. Les cieux ébranlés\nBeaucoup sont trompés\nSur ce qui se passe dans le ciel\nL’Eglise est la puissance\nQui secoue cette heure. Le jour de la rédemption est proche.\n\n4. Les faux prophètes trompent,\nIls nient la vérité ; celle de Jésus Christ notre Dieu. Ils ont rejeté\nLa révélation, nous suivons les pas des Apôtres.''',
    numero: 66,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_067',
    titre: 'OH ! COMBIEN J’AIME JESUS',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Oh ! Combien j’aime Jésus !\nOh ! Combien j’aime Jésus !\nOh ! Combien j’aime Jésus !\nCar il m’aima le premier\n\n2. Je ne peux l’oublier\nJe ne peux l’oublier\nJe ne peux l’oublier\nCar il m’aima le premier''',
    numero: 67,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_068',
    titre: 'DEBOUT SUR LES PROMESSES',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Debout sur les promesses de Christ mon Roi.\nQu’à travers les âges\nSes louanges soient\nGloire dans les lieux très hauts\nJe chanterai. Debout sur les Promesses de Dieu.\n\nChœur\nDebout, debout\nDebout, sur les promesses de Dieu mon Sauveur\nDebout, debout\nJe me tiens sur les promesses\nDe Dieu.\n\n2. Debout sur les promesses\nInfaillibles. Quand les vents\nDe doute et de peur assaillent,\nPar la Parole de Dieu Vivant je vaincrai,\nDebout sur les promesses de Dieu.\n\n3. Debout sur les promesses, moi je peux voir Dans le Sang la purification pour moi\nDebout dans la liberté qui vient de Christ, Debout sur les promesses de Dieu.\n\n4. Debout sur les promesses de Jésus-Christ,\nAttaché à Lui par la corde d’Amour\nToujours victorieux par l’Epée de l’Esprit, Debout sur les promesses de Dieu.\n\n5. Debout sur les promesses,\nJe ne peux tomber\nToujours écoutant la voix du Saint-Esprit\nReposé dans mon Sauveur mon tout en tout, Debout sur les promesses de Dieu.''',
    numero: 68,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_069',
    titre: 'L’UN D’ENTRE EUX',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Il y a presque partout, des peuples Dont les cœurs enflammés Par le feu purifiant descendu à la pentecôte.\nEt il brûle maintenant dans tout mon cœur A son Nom la gloire,\nJe suis heureux de dire\nJe suis l’un d’entre eux.\n\nChœur\nL’un d’entre eux, l’un d’entre eux. Je suis heureux de dire\nJe suis l’un d’entre eux (bis)\n\n2. Bien que ces peuples ne portent pas la renommée du monde,\nBaptisés au Nom de Jésus\nIls reçurent la pentecôte\nEt ils parlent maintenant de son immuable puissance,\nJe suis heureux de dire\nJe suis l’un d’entre eux.\n\n3. Rassemblés dans la chambre haute\nIls priaient tous en son Nom,\nIls étaient tous baptisés\nDu Saint-Esprit pour le service\nCe qu’il a fait pour eux en ce jour\nIl peut le faire pour toi\nJe suis heureux de dire\nJe suis l’un d’entre eux.\n\n4. Viens mon frère chercher cette bénédiction\nQui te rendra pur\nEt qui fera sonner\nLes cloches de joie\nDans tout ton cœur.\nElle enflammera ton âme,\nElle brûle en moi, Gloire à son Nom\nJe suis heureux de dire\nJe suis l’un d’entre eux.''',
    numero: 69,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_070',
    titre: 'PLUS BLANC QUE NEIGE',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Bénie soit la fontaine de Sang\nRévélée au monde des pécheurs\nBéni soit le Cher Fils de Dieu\nQui guérit par ses meurtrissures\nJ’ai erré loin de sa Bergerie\nJ’ai causé de la peine à mon cœur\nLave-moi dans le Sang de l’Agneau\nJe Serai plus blanc que la neige.\n\nChœur\nBlanc, plus blanc que neige\nBlanc, plus blanc que neige\nLave-moi dans le Sang de l’Agneau, Je serai plus blanc que la neige.\n\n2. Oh ! Père j’ai erré loin de Toi\nSouvent mon cœur s’est égaré\nMes péchés sont rouges cramoisi\nL’eau ne peut pas les nettoyer\nJésus je viens à ta fontaine, Ne comptant que sur ta promesse\nLave-moi par ton Divin lavage\nJe serai plus blanc que la neige.''',
    numero: 70,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_071',
    titre: 'OH ! QUEL PRECIEUX',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Oh ! Quel précieux amour du Père pour la race déchue d’Adam.\nIl a donné son Fils unique par grâce, il nous racheta.''',
    numero: 71,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_072',
    titre: 'JESUS M’A LIBERE',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Je suis heureux, Jésus m’a libéré.\nJe suis heureux, Jésus m’a libéré.\nJe suis heureux, Jésus m’a libéré.\nGloire ! alléluia, Jésus m’a libéré.\n\n2. Je suis heureux, Jésus m’a enlevé. (3x) Gloire ! Alléluia, Jésus m’a enlevé.\n\n3. Je crie victoire sur ma route au ciel (3x) Gloire ! Alléluia ! Sur ma route au ciel''',
    numero: 72,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_073',
    titre: 'REMPLIS-MOI D’AMOUR',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Laisse-moi marcher Seigneur\nPar où tu es passé\nChemin conduisant vers le ciel\nPartout donnant la joie\nAux gens abandonnées\nRemplis-moi chaque jour d’Amour.\n\nChœur\nRemplis-moi chaque jour d’Amour\nComme je marche avec la Colombe\nLaisse-moi marcher toujours\nAvec chant et sourire\nRemplis-moi chaque jour d’Amour.\n\n2. Garde-moi à côté\nDe mon Sauveur et guide\nNe me laisse pas dans les ténèbres\nGarde-moi du courroux\nEt satisfait mon âme\nRemplis-moi chaque jour d’Amour.\n\n3. Bientôt la fin de course\nLa fin de mon voyage\nJ’habiterai au ciel chez moi\nQue je chante, Roi béni\nSur la route vers la rive\nRemplis-moi chaque jour d’Amour.''',
    numero: 73,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_074',
    titre: 'Auteur inconnu',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu: '''''',
    numero: 74,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_075',
    titre: 'MOMENT DE PRIERE',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Moment de prière, moment de prière\nQui m’appelle d’un monde de souci\nEt m’approche du trône de mon Père\nPour faire connaitre mes désirs\nEn temps de peine et de chagrin\nMon âme est toujours consolée\nEt préservée des tentations\nPar ton retour, moment de prière.\n\n2. Moment de prière, moment de prière,\nJe suis dans la félicité, avec ceux dont les cœurs s’enflamment de grands désirs pour ton retour\nAvec eux je partirai là\nOù mon Sauveur fait voir sa face\nEt joyeusement je m’y arrête\nEt je t’attends, moment de prière.\n\n3. Moment de prière, moment de prière\nTes ailes porteront ma requête\nVers celui dont la fidélité\nConduit l’âme pour être béni.\nComme il me fait chercher sa Face\nCroire sa Parole, espérer sa Grâce\nSur Lui je laisse tous mes soucis\nEt je t’attends moment de prière.''',
    numero: 75,
    auteur: 'Auteur inconnu',
  ),
  Cantique(
    id: 'petit_troupeau_076',
    titre: 'JE CONNAIS EN QUI J’AI CRU',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Je ne sais pourquoi dans sa grâce\nDieu se révèle à moi\nNi pourquoi Christ dans son Amour\nM’a racheté pour Lui.\n\nChœur\nMais je connais en qui j’ai cru\nJe suis persuadé qu’il est capable\nDe garder ce que je Lui soumets\nJusqu’au jour de Son retour.\n\n2. Je ne sais comment le Seigneur\nM’avait donné la foi\nNi comment croyant sa Parole\nIl crée la foi en Lui.\n\n3. Je ne sais quel bien ou quel mal Peut m’être réservé\nDes jours de joie ou de tristesse\nAvant de voir sa face.\n\n4. Je ne sais quand mon Sauveur vient,\nEn plein jour ou la nuit\nSi je vais monter dans les airs\nOu descendre avec Lui.''',
    numero: 76,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_077',
    titre: 'EN AVANT SOLDATS CHRETIENS',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. En avant, soldats chrétiens\nMarchant comme à la guerre\nAvec la croix de Jésus\nAllons tous en avant\nChrist, le Maître royal\nMène contre l’ennemi\nTout droit dans la bataille\nRegardez ses bannières.\n\nChœur\nEn avant soldats chrétiens\nMarchant comme à la guerre\nAvec la croix de Jésus\nAllons tous en avant.\n\n2. Comme une armée puissante\nDebout Eglise de Dieu\nFrères, nous sommes en marche\nSur les traces des Saints\nNous ne sommes pas divisés\nTous nous sommes un seul corps\nUn dans l’espoir et doctrine\nUn dans la charité.\n\n3. Couronnes et trônes périront\nLes royaumes tomberont\nMais l’Eglise de Jésus\nDemeurera constante\nMême les portes de l’enfer\nNe prévaudront contre elle\nNous avons la promesse\nInfaillible de Christ.\n\n4. Par le signe du triomphe\nFuit l’armée de Satan\nOh ! Alors, soldats chrétiens\nMarchez vers la victoire\nL’enfer est tout ébranlé\nPar le cri de louange\nOh ! Frères, élevez vos voix\nQue votre hymne monte.\n\n5. En avant vous les peuples\nJoignez notre heureuse foule\nMêlez vos voix aux nôtres\nDans le chant de triomphe\nEloge, gloire et honneur\nA Christ, Le Roi des rois\nDans les âges éternels\nChantent les hommes et les anges.''',
    numero: 77,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_078',
    titre: 'APPORTANT LES FRUITS',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Semant le matin\nLes semences d’amour\nSemant en pleine marée\nLa veille de rosée\nAttendant la moisson\nLe temps de récolte\nNous serons dans la joie\nApportant les fruits.\n\nChœur\nApportant les fruits\nApportant les fruits\nNous serons dans la joie\nApportant les fruits(bis)\n\n2. Semant sous le soleil\nSemant dans les ombres\nNe craignant ni nuage\nNi le froid d’hiver\nBientôt la récolte\nEt le travail fini\nNous serons dans la joie\nApportant les fruits.\n\n3. Avançant avec des pleurs\nSemant pour le Maître\nBien que perdant la force\nEsprits affligés\nQuand nos pleurs finiront\nIl nous accueillera\nNous serons dans la joie\nApportant les fruits.''',
    numero: 78,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_079',
    titre: 'TOUS DANS LA CHAMBRE HAUTE',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Tous dans la Chambre Haute\nEtaient d’un commun accord\nQuand le Saint-Esprit descendit\nComme promis par le Seigneur.\n\nChœur\nSeigneur envoie ta Puissance\nSeigneur envoie ta Puissance\nSeigneur envoie ta Puissance\nEt baptise tout le monde.\n\n2. La puissance du Ciel descendit\nAvec un son impétueux\nEt des langues de feu vinrent sur eux\nComme promis par le Seigneur.\n\n3. Cette ancienne Puissance fut donnée\nA nos pères fidèles à Dieu\nCela fut promis aux croyants\nNous pouvons aussi L’avoir''',
    numero: 79,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_080',
    titre: 'QU’IL FAIT BON A TON SERVICE',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Qu’il fait bon à ton service,\nJésus mon Sauveur !\nQu’il est doux le sacrifice que t’offre mon cœur !\n\nChœur\nPrends, ô jésus, prends ma vie,\nElle est toute à Toi !\nEt dans ta Grâce infinie,\nDu mal garde-moi !\n\n2. Mon désir, mon vœu suprême,\nC’est ta volonté !\nRien je ne veux et je n’aime\nQue ta volonté !\n\n3. Comme l’ange au vol rapide,\nJe veux te servir !\nLes yeux fixés sur mon Guide,\nToujours obéir !\n\n4. Travail, douleur et souffrance,\nNon, je ne crains rien !\nToi, Jésus, mon Espérance,\nVoilà mon seul bien !\n\n5. Ensemble donc vers la gloire,\nMarchons en avant !\nChantant l’hymne de victoire.\nToujours triomphant !''',
    numero: 80,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_081',
    titre: 'IL PREND SOIN DE TOI',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Il prend soin de toi\nIl prend soin de toi\nPendant le jour ou la nuit\nIl prend soin de toi.''',
    numero: 81,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_082',
    titre: 'PLUS TARD',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Tentés, éprouvés,\nNous nous demandons,\nPourquoi c’est ainsi le long du jour ? Pendant qu’il y en a\nD’autres comme nous\nQuoique dans le mal sont\nImpunis.\n\nChœur\nPlus tard nous saurons ce qu’il en est. Plus tard nous comprendrons le pourquoi\nCourage mon frère, vis dans la lumière,\nNous comprendrons tout dans peu de temps.\n\n2. Quand la mort vient et prend nos bien-aimés, Laissant notre maison solitaire ; Nous nous demandons pourquoi les méchants Prospèrent jour après jour ici-bas.\n\n3. Fidèles jusqu’à la mort, dit le Maître. Notre labeur est bientôt fini,\nLes peines du chemin seront oubliées.\nQuand nous franchirons\nLa belle porte.\n\n4. Nous voyons Jésus venant dans la gloire, Comme Il vient de Sa Maison céleste\nNous Le rencontrerons dans ce palais, Nous comprendrons tout dans peu de temps.''',
    numero: 82,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_083',
    titre: 'AMENE-LES',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Ecoute la voix du Berger\nVenant du désert sombre et sec\nAppelant la brebis perdue\nQui d’est éloignée du troupeau.\n\nChœur\nAmène-les, amène-les\nEt sors-les de la vie du péché\nAmène-les, amène-les\nAmène les perdus à Jésus.\n\n2. Qui aidera ce Bon Berger\nA retrouver tous les perdus,\nAles ramener au troupeau\nLà où ils seront protégés ?\n\n3. Du désert écoute leur cri\nVenant des montagnes élevées\nEcoute le Maître te dit :\n« Vas me retrouver les brebis ».''',
    numero: 83,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_084',
    titre: 'SEIGNEUR, PARLE',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Ecoutez le Maître de la moisson :\nQui travaillera pour moi\nAujourd’hui ? Qui m’amènera\nCeux Qui sont perdus ? Qui leur\nMontrera l’étroite voie ?\n\nChœur\nSeigneur parle, Seigneur parle\nParle et ma réponse sera prête.\nSeigneur parle, Seigneur parle\nParle je répondrai : « Envoie-moi »\n\n2. Quand la braise toucha le prophète\nLe rendant aussi pur que l’on peut l’être. Quand la Voix de Dieu dit : « Qui ira pour nous ? »\nIl répondit : « Maitre envoie-moi. »\n\n3. Des milliers sont mourants dans les péchés\nEcoutez leur cri triste et amer\nDépêchez-vous frère pour les secourir\nEt répondez : « Maître me voici »\n\n4. Bientôt le temps de la moisson prend fin. Nous serons rassemblés à la maison, Le Maître de moisson nous dira :\n« Enfants vous avez bien travaillé »''',
    numero: 84,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_085',
    titre: 'OH ! JE L’AIME',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Oh ! je l’aime, oh ! je l’aime\nParce qu’il m’a aimé\nEt a donné Sa Vie pur moi\nA Golgotha.''',
    numero: 85,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_086',
    titre: 'SEIGNEUR, JE REVIENS',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. J’étais errant plus loin de Dieu,\nMaintenant je reviens,\nLe péché longtemps, j’ai suivi,\nSeigneur, je reviens\n\nChœur\nJe reviens, je reviens\nPour ne plus errer,\nOuvre tes larges bras d’amour\nSeigneur, je reviens\n\n2. Oui j’ai perdu beaucoup d’années Maintenant je reviens\nJe me repends avec des larmes, Seigneur je reviens.\n\n3. Fatigué du péché, Seigneur\nMaintenant je reviens\nJe me confie en ton amour\nSeigneur, je reviens\n\n4. Mon âme malade, mon cœur touché, Maintenant je reviens\nRedonne la force, restaure l’espoir\nSeigneur je reviens.\n\n5. Mon seul espoir, ma seule prière,\nMaintenant je reviens\nEst que Jésus mourut pour moi,\nSeigneur, je reviens\n\n6. Je sais, j’ai besoin de ton sang\nMaintenant je reviens\nOh ! lave-moi plus blanc que la neige, Seigneur je reviens.''',
    numero: 86,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_087',
    titre: 'QUEL MERVEILLEUX AMOUR',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Dieu dut aimer un pécheur comme moi : Il a changé ma tristesse en joie, J’étais sans repos, Il m’à ramené. Quel est ce merveilleux amour !\n\nChœur\nOh ! quel merveilleux amour !\nOh ! quel merveilleux amour !\nQue Dieu aima un pécheur tel que moi\nQuel est ce merveilleux amour !\n\n2. Et christ s’est donné librement pour moi.\nCela coûta sa mort sur le Calvaire\nLa langue humaine n’a pas de noble thème\nComme cet amour qui me sauva\n\n3. Pour un perdu condamné comme moi ! Le Père pourvut et Le Sauveur mourut. C’est le rachat pour un esclave indigne,\nQui longtemps méprisa la grâce\n\n4. Et maintenant Il m’a pris comme un fils, Me dit que je ne suis pas serviteur. Les cloches sonnent non loin du pays, Ses bras sont largement ouverts.''',
    numero: 87,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_088',
    titre: 'MERVEILLEUX, MERVEILLEUX',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Mon cœur chante aujourd’hui de joie, de l’allégresse. Jésus sauve, satisfait, bannit ma tristesse. Plus de condamnation j’ai la paix en moi. Jésus est merveilleux, Puissant pour sauver.\n\nChœur\nMerveilleux, merveilleux\nJésus est pour moi,\nConseiller, Dieu Puissant,\nPrince de la paix, Il me sauve\nIl me garde du péché honteux\nMerveilleux est mon Rédempteur, Gloire à Lui !\n\n2. Moi esclave, libéré de la Condamnation, Jésus donne liberté, Aussi un plein salut, Tous les péchés passés\nMe sont pardonnés,\nMon nom est écrit dans le Livre du Ciel.\n\n3. Avec mon Seigneur vivant\nDans la sainte union,\nJour après jour je vis dans la douce communion\nOh ! sa grâce a gravé un changement en moi\nQuand mon âme reçut plein et libre salut.''',
    numero: 88,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_089',
    titre: 'NOUS NOUS RASSEMBLERONS A LA RIVIERE',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Pourrons-nous à la rivière\nSortant du trône de Dieu\nNous rassembler sur la rive\nOù les anges ont marché\n\nChœur\nOui, nous allons nous rassembler\nA la merveilleuse rivière\nAvec tous les saints à la rivière\nQui coule du Trône de Dieu.\n\n2. Au sein de cette r rivière,\nLe Roi-Sauveur est à nous\nNous serons là plus de peine\nSous la gloire du Trône.\n\n3. Aux bords de cette rivière\nNous nous baignons de son eau\nNous marcherons en adorant\nCe sera un jour doré.\n\n4. Arrivés à la rivière\nDéposons tous nos fardeaux\nLa grâce nous délivrera\nNous donnera une couronne.\n\n5. Tout près de cette rivière\nReflétant la face de Dieu\nLes saints qui sont immortels\nChanteront leurs chants de grâce.\n\n6. Bientôt à cette rivière\nLe voyage est fini\nEt tous nos cœurs se réjouiront\nDe la mélodie de paix.''',
    numero: 89,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_090',
    titre: 'AMEN',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Amen! Amen! Amen! Amen!\nAmen !\n\n2. Allez-vous bien L’aimer ? Amen !\nAllez-vous L’adorer ? Amen !\nAllez-vous Le louer ? Amen !\nAmen, Amen ! (Alléluia !)\n\n3. Est-ce que vous L’aimez ? Amen !\nAllez-vous Le servir ? Amen !\nEt croyez-vous-en Lui ? Amen !\nAmen, Amen ! (Alléluia !)\n\n4. Oui, la Bible est vraie ! Amen !\nEt moi je crois en elle ! Amen !\nC’est la Parole de Dieu ! Amen !\nAmen, Amen ! (Alléluia !)\n\n5. Nous croyons que Tu viens. Amen !\nNous Te rencontrerons. Amen !\nViens Seigneur Jésus. Amen !\nAmen, Amen ! (Alléluia !)''',
    numero: 90,
    auteur: 'Auteur inconnu',
  ),
  Cantique(
    id: 'petit_troupeau_091',
    titre: 'PLUS DE VIEILLESSE',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. J’ai entendu parler d’un pays si loin\nC’est une belle maison pour l’âme,\nEdifiée par Jésus, là nous ne mourrons point,\nLà-bas nous ne vieillirons jamais.\n\nChœur\nPlus de vieillesse,\nPlus de vieillesse\nLà-bas nous ne vieillirons jamais (bis)\n\n2. Dans la belle cité, nous n’allons plus errer,\nNous serons bientôt dans la douceur,\nNous louerons Le Roi dans les âges éternels ;\nDans ce pays nous ne mourrons point.\n\n3. Notre tâche accomplie, nous serons couronnés,\nEt nos troubles et nos épreuves passés,\nEt nos peines finies, nos voix seront mêlées\nA celles de nos frères qui sont partis.''',
    numero: 91,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_092',
    titre: 'NE M’OUBLIE PAS',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Ne m’oublie pas, ô doux Sauveur,\nEcoute ma voix\nQuand tu répondras aux autres\nNe m’oublie pas.\n\nChœur\nSauveur, Sauveur, Ecoute ma voix.\nQuand les autres Tu appelles,\nNe m’oublie pas.\n\n2. Laisse-moi près de Ton Trône de grâce\nTrouer du repos\nA genoux dans la contrition\nOte tous mes doutes.\n\n3. Comptant seulement sur tes mérites,\nJe cherche ta face,\nGuéris mon esprit affligé,\nSauve-moi par ta grâce\n\n4. Toi fontaine de mon réconfort,\nPlus que vie pour moi,\nQui d’autre sur terre ou là au ciel\nAi-je à part Toi ?''',
    numero: 92,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_093',
    titre: 'NOUS TRAVAILLERONS JUSQU\'A CE QUE …',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Terre de repos, je te désire\nQuand viendra-t-il le temps\nOù je déposerai mes armes\nPour vivre en paix chez moi ?\n\nChœur\nNous travaillerons jusqu’à ce que Jésus vienne\nNous travaillerons, nous irons à la Maison.\n\n2. En Jésus Christ je me repose,\nIl m’a tranquillisé,\nEt je m’appuie sur sa poitrine\nIl me conduit au Ciel.\n\n3. J’ai cherché la face du Sauveur\nJe ne vais plus errer\nAvec Lui je défie la mort\nJ’arriverai au Ciel''',
    numero: 93,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_094',
    titre: 'CROIS SEULEMENT',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Crois seulement,\nCrois seulement,\nTout est possible,\nCrois seulement (bis)\n\n(Jésus est là …)\n(Seigneur je crois …)''',
    numero: 94,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_095',
    titre: 'QUAND L’APPEL RETENTIRA LÂ-HAUT',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Quand la trompette du Seigneur sonnera et le temps n’est plus\nEt viendra l’éternel matin radieux ;\nQuand les sauvés de la terre\nS’assembleront sur l’autre rive,\nQuand l’appel retentira, je serai là.\n\nChœur\nQuand l’appel retentira là-haut\nQuand l’appel retentira là-haut\nQuand l’appel retentira,\nQuand l’appel retentira, je serai là.\n\n2. En ce beau matin quand les morts en Christ ressusciteront,\nPartageant la gloire de sa résurrection,\nQuand ses élus se rassembleront dans leur maison du ciel,\nQuand l’appel retentira, je serai là.\n\n3. Ainsi travaillons pour notre Maître du matin au soir,\nParlons de son merveilleux amour et soins,\nAlors quand la vie s’en va, et notre tâche est accomplie\nQuand l’appel retentira, je serai-là.''',
    numero: 95,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_096',
    titre: 'JESUS LA LUMIERE',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Saints de lumière proclamez\nJésus la lumière du monde,\nMiséricorde en son Nom ;\nJésus la lumière du monde.\n\nChœur\nOui, nous marcherons dans la lumière\nLà où la miséricorde est versée,\nBrille autour de nous le jour et la nuit,\nJésus la lumière du monde.\n\n2. Ecoute l’appel du Sauveur,\nJésus la lumière du monde,\nAmène l’Evangile à tous,\nJésus la lumière du monde.\n\n3. Pourquoi ne pas Le chercher,\nJésus la lumière du monde,\nMarche avec la Vérité,\nJésus la lumière du monde.\n\n4. Viens confesse-Le comme ton Roi\nJésus la lumière du monde,\nLes cloches du Ciel sonneront\nJésus la lumière du monde.''',
    numero: 96,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_097',
    titre: 'ESPRIT DU DIEU VIVANT',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Esprit Saint du Dieu Vivant\nViens, demeure en moi\nBrise-moi ! Façonne-moi !\nTaille-moi ! Remplis-moi !\nEsprit Saint du Dieu Vivant\nViens, demeure en moi.''',
    numero: 97,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_098',
    titre: 'EN AVANT, CHRETIENS SOLDATS',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. En avant, chrétiens soldats,\nMarchant au combat\nPortant la croix de Jésus\nAllant de l’avant\nChrist le Royal Maître\nPremier au combat\nNous montre le chemin\nVoyez sa bannière\n\nChœur\nEn avant, chrétiens soldats\nMarchant au combat\nPortant la croix de Jésus\nAllant de l’avant.\n\n2. Comme une puissante armée\nS’avance l’Epouse\nFrères, nous sommes en marche\nSur les traces des saints\nNous ne sommes point divisés\nNous sommes un seul corps\nNous sommes un dans la foi\nEt un dans l’amour.\n\n3. Les couronnes et trônes périssent\nEt les royaumes tombent\nMais l’Eglise de Jésus,\nConstante, demeure.\nLes portes de l’enfer\nNe la vaincront point\nDe Christ nous avons la promesse\nQui ne peut faillir.\n\n4. Oui, au signe du triomphe\nSatan s’enfuira\nEt alors, chrétiens soldats\nA nous la victoire\nLes fondations de l’enfer\nS’effondrons soudain\nCe sont nos louanges\nQui les ont fait s’écrouler.\n\n5. En avant, vous les peuples\nUnissez vos voix\nAux nôtres en ce grand jour\nChantant la victoire\nGloire, puissance et honneur\nA Christ notre Roi\nTous les hommes et les anges\nChanteront pour toujours.''',
    numero: 98,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_099',
    titre: 'PLUS PRES DE TOI, MON DIEU',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Mon Dieu, plus près de Toi,\nPlus près de Toi !\nC’est le mot de ma foi :\nPlus près de Toi !\nDans le jour où l’épreuve\nDéborde comme un fleuve,\nGarde-moi près de Toi,\nPlus près de Toi.\n\n2. Plus près de Toi, Seigneur,\nPlus près de Toi !\nTiens-moi dans ma douleur\nPlus près de Toi !\nAlors que la souffrance\nFait son œuvre en silence,\nToujours plus près de Toi,\nSeigneur, tiens-moi !\n\n3. Plus près de Toi, toujours,\nPlus près de Toi !\nDonne-moi ton secours,\nSoutiens ma foi !\nQue Satan se déchaine,\nTon Amour me ramène\nToujours plus près de Toi\nPlus près de Toi.\n\n4. Mon Dieu, plus près de Toi\nDans le désert\nJ’ai vu ton Ciel ouvert\nPlus près de Toi.\nPèlerin, bon courage !\nTon chant brave l’orage.\nMon Dieu plus près de Toi,\nPlus près de Toi.''',
    numero: 99,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_100',
    titre: 'VILLE DE PERLES ET DE LUMIERE',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Ville de perles et de lumière\nExistant sur les hauteurs,\nPersonne n’a encore sur terre\nPu contempler Sa splendeur.\n\nChœur\nLà l’Amour de Dieu éclaire,\nCe sera l’Agneau Lui-même\nDans cette ville hospitalière\nLa nouvelle Jérusalem.\n\n2. C’est là où la gloire abonde,\nOù l’arbre de Vie fleurit\nOù le fleuve de Vie inonde\nDe Ses flots, ce saint abri.\n\n3. Quand les pèlerins arrivent\nEpuisés de grands déserts\nAux fontaines des eaux vives\nQuel repos leur est offert !\n\n4. Oh ! Quelle joie bientôt sur terre,\nQuand Jésus sera présent !\nCette ville aux mille lumières\nY sera éternellement !''',
    numero: 100,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_101',
    titre: 'C’EST LA PROMESSE DE LA DERNIERE PLUIE',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. C’est la promesse de la dernière pluie !\nLève les yeux et vois le blé mûr,\nSignes puissants, miracles au Nom de Jésus\nBois, oh ! Bois, mon peuple\nC’est la dernière pluie.''',
    numero: 101,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_102',
    titre: 'OH ! QUEL BEAU SOLEIL DANS MON AME !',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Dans mon âme, un beau soleil brille,\nSon rayon doux et joyeux\nRépand un éclat qui scintille\nC’est le sourire de Dieu.\n\nChœur\nOh ! Quel beau soleil dans mon âme !\nIl resplendit, illuminant tout !\nA ses rayons, mon cœur s’enflamme\nEt je vais chantant partout.\n\n2. Mon cœur était plein de ténèbres\nQuand parut un jour nouveau\nAu loin, fuyez, ombres funèbres\nDevant un soleil si beau.\n\n3. O mon âme, éclate en louange\nPour tous le soleil a lui\nJe serai parmi les phalanges\nQui loueront Dieu jour et nuit.''',
    numero: 102,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_103',
    titre: 'LE DIEU PUISSANT C’EST JESUS.',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Le Dieu puissant, c’est Jésus\nC’est le Prince de Paix,\nLe Père de l’Eternité\nEt le Roi de beauté\nLe merveilleux en Sagesse\nPar qui toute chose est faite\nLa plénitude divine\nEn jésus incarnée.\n\nChœur\nTout est en Lui, tout est en Lui\nLa plénitude divine est toute en Lui.\nTout est en Lui, tout est en lui\nJésus est Dieu Tout-Puissant\nEt Tout est en Lui.\n\n2. Emmanuel : Dieu en nous,\nJéhovah, l’Eternel,\nL’Esprit tout omniprésent,\nQui remplit l’Univers ;\nLe Grand Sacrificateur\nEt l’Agneau des pécheurs,\nL’Auteur de la Rédemption\nQue béni soit Son Nom !\n\n3. Le Commencement et la Fin,\nL’Alpha et l’Oméga,\nLa Vraie Parole incarnée,\nL’Amie des rachetés,\nLa Sagesse et Perfection,\nMa Justice et Puissance.\nTout ce dont j’ai le besoin\nJe le trouve en Sa main.\n\n4. Le Dieu que nous attendons\nSera la gaie chanson\nDe l’Israël revenu\nQuand paraîtra Jésus.\nIl viendra pour délivrer\nNotre Agneau immolé ;\nLa plénitude est en Lui,\nLe Vainqueur de la Nuit.''',
    numero: 103,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_104',
    titre: 'BENI SOIT LE NOM',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Béni soit le merveilleux nom de Jésus (3x)\nJe ne connais d’autre nom.''',
    numero: 104,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_105',
    titre: 'LE FEU DIVIN',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Le feu divin brûle en mon cœur (4x)\n\n2. J’aime Jésus de tout mon cœur (4x)\n\n3. Mon cœur le loue avec ferveur (4x)\n\n4. Alléluia ! Gloire à Son Nom (4x)\n\n5. Jésus revient pour me chercher (4x)\n\n6. Oh ! reçois-Le de tout ton cœur (4x)''',
    numero: 105,
    auteur: 'Auteur inconnu',
  ),
  Cantique(
    id: 'petit_troupeau_106',
    titre: 'A LA CROIX, AUX PIEDS',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. A la croix, aux pieds du Maître\nA genoux, j’ai fait mon choix,\nSon disciple, je veux être\nTout près de Lui, par la foi\nBrebis de sa bergerie,\nNul ne m’ôte de sa main\nSur les monts, sans les prairies\nOui, mon bonheur est divin.\n\nChœur\nA la croix, aux pieds du Maître\nA genoux, j’ai fait mon choix\nSon disciple, je veux être\nTout près de Lui, par la foi.\n\n2. Depuis lors, ô choix splendide\nLa joie demeure dans mon cœur.\nAdieu, mes soucis perfides.\nPar Jésus je suis vainqueur.\nAdieu, vaines convoitises.\nDu monde qui me tenta\nJ’ai trouvé la paix promise\nDans le Sang de Golgotha\n\n3. Bientôt, ma tâche accomplie\nJ’entrerai tout droit au port\nOù m’attend, douce patrie\nLe grand vainqueur de la mort\nLà, je chanterai ta gloire\nO Toi qui m’a tant aimé\nEt dont l’œuvre expiatoire\nPour toujours m’a racheté.''',
    numero: 106,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_107',
    titre: 'ETRE COMME JESUS',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Etre comme Jésus « (2x)\nTout au long du voyage de ma vie\nDe la terre à la gloire,\nJe demande seulement à être comme Lui.\n(Vivre comme Jésus…)''',
    numero: 107,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_108',
    titre: 'L’AMOUR DE DIEU.',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. L’Amour de Dieu de loin surpasse\nCe qu’en peut dire un cœur humain\nIl est plus grand que les espaces,\nMême en l’abime il nous atteint,\nPour le péché de notre monde,\nDieu nous donna Jésus. Il nous pardonne, ô paix profonde !\nIl sauve les perdus.\n\nChœur\nL’amour de Dieu, si fort, si tendre ;\nEst un amour sans fin.\nTel est le chant que font entendre\nLes anges et les saints.\n\n2. Versez de l’encre dans les ondes,\nChangez le ciel en parchemin,\nTendez la plume à tout le monde\nEt que chacun soit écrivain ;\nVous dire tout l’amour du Père\nFerait tarir les eaux\nEt remplirait la place entière\nSur ces divins rouleaux.\n\n3. Et que le monde un jour chancelle\nAvec ses trônes et ses rois ;\nQuand trembleront tous les rebelles,\nSoudain saisis d’un grand effroi,\nDe Dieu l’amour que rien ne laisse\nPour nous encore vivra ;\nC’est le miracle de la grâce ;\nAmen ! Alléluia !''',
    numero: 108,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_109',
    titre: 'JE VEUX CHANTER, LOUER …',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Je veux chanter, louer mon Dieu,\nDans tous les temps, dans tous les lieux !\nQue dans ma vie\nTout glorifie Le nom puissant\nD’Emmanuel ! Alléluia ! Alléluia !\nAvec les anges dans le ciel\nAlléluia ! Alléluia\nCélébrons tous Emmanuel !\n\n2. Je veux chanter mon Rédempteur\nL’amour profond de mon Sauveur !\nSa mort sanglante et triomphante\nM’affranchit du joug du péché\nAlléluia ! Alléluia !\nGloire à Jésus, je suis sauvé !\nAlléluia ! Alléluia !\nOui ! Sauvé pour l’éternité !\n\n3. Exaltons tous et célébrons\nLe Nom de notre Dieu ; chantons !\nDans l’allégresse Soyons sans cesse !\nVous tous qui souffrez, malheureux,\nAlléluia ! Alléluia !\nNon ! plus de larmes dans vos yeux !\nAlléluia ! Alléluia ! Venez ;\nIl veut vous rendre heureux !''',
    numero: 109,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_110',
    titre: 'A DIEU SOIT LA GLOIRE !',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. A Dieu soit la Gloire ! Par son Grand Amour\nDans mon âme noire s’est levé le jour,\nJésus, à ma place Mourut sur la Croix,\nIl m’offre sa Grâce et je la reçois !\n\nRefrain.\nGloire à Dieu ! Gloire à Dieu !\nTerre écoute sa voix !\nGloire à Dieu ! Gloire à Dieu !\nMonde, réjouis-toi !\nOh ! venez au Père, Jésus est vainqueur,\nQue toute la terre Chante en son honneur !\n\n2. De Jésus, la joie, Remplit notre cœur,\nQu’importe qu’on voie Tout notre bonheur,\nSelon sa promesse\nJésus changera Deuil en allégresse\nQuand il reviendra.''',
    numero: 110,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_111',
    titre: 'LE NOM DE JESUS',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Le nom de Jésus est si doux !\nDe Dieu désarmant le courroux,\nIl nous appelle au rendez-vous,\nPrécieux nom de Jésus !\n\nChœur\nJésus ! Béni soit ton nom !\nJésus ! Oh ! Merveilleux don !\nJésus ! Suprême rançon,\nSois adoré pour toujours.\n\n2. J’aime ce nom dans le chagrin,\nIl me soutient sur le chemin,\nSa musique est un son divin,\nPrécieux nom de Jésus !\n\n3. J’aime le nom de mon Sauveur,\nCar Lui seul connait tout mon cœur,\nLui seul me rend plus que vainqueur\nPrécieux nom de Jésus !\n\n4. Et si parfois j’ai succombé,\nSi dans le mal je suis tombé,\nSon nom puissant m’a relevé :\nPrécieux nom de Jésus !\n\n5. Et lorsqu’avec Lui je serai,\nEt lorsqu’enfin je le verrai,\nAlors sans fin je redirai ;\nPrécieux nom de Jésus !''',
    numero: 111,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_112',
    titre: 'ADORABLE MYSTERE',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Adorable mystère, Le fils du Roi des rois,\nDescendit sur la terre, Mourut sur une croix.\n\nRefrain\nHonneur, honneur,\n(Honneur, honneur et gloire)\nAu Sauveur, au Seigneur !\nHonneur, honneur\n(Honneur, joie et victoire)\nHonneur, gloire au Sauveur !\n\n2. Adorable mystère, C’est pour moi qu’il mourut !\nIl a pris ma misère,\nIl m’offre le salut.\n\n3. Adorable mystère, Vous tous qui connaissez\nSon pouvoir salutaire,\nAdorez, bénissez !''',
    numero: 112,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_113',
    titre: 'A CELUI QUI NOUS A LAVES !',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. A celui qui nous a lavés.\nQui nous a tant aimés\nPar son sang nous a rachetés\nSoit gloire, gloire, gloire\nLouange à jamais !\n\n2. Chantons le cantique nouveau\nA l’honneur de l’Agneau\nQui sortit vainqueur du tombeau\nOui, gloire, gloire, gloire\nLouange à jamais !\n\n3. Adorons le Triomphateur\nJésus notre Sauveur,\nSur tous ses ennemis vainqueurs\nOui, gloire, gloire, gloire\nLouange à jamais !\n\n4. Du ciel bientôt il reviendra\nEt tout œil le verra,\nLe monde entier l’adorera\nOui, gloire, gloire, gloire\nLouange à jamais !''',
    numero: 113,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_114',
    titre: 'VERS TOI MONTE NOTRE HOMMAGE',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Vers toi monte notre hommage,\nFils de Dieu, Puissant Sauveur,\nQui demeures d’âges en âge\nLe refuge du pécheur.\n\nChœur\nLoué soit ton amour, loués soient à jamais\nTon nom, Jésus ta gloire et tes bienfaits ;\nLoué soit ton amour, loués soient à jamais\nTon nom, ta gloire et tes bienfaits.\n\n2. De toi vient la délivrance\nTu payas notre rançon\nC’est en toi qu’est l’espérance,\nLa paix et la guérison.\n\n3. Oh ! Qu’heureux sous ta bannière\nEst le peuple racheté\nQui marche, dans ta lumière,\nVers la céleste cité.\n\n4. Par ta divine Parole\nTu l’enseignes, tu l’instruis\nEt par l’Esprit qui console,\nSûrement tu le conduis.\n\n5. Bientôt glorieuse attente !\nTu combleras tous nos vœux :\nSur la nue étincelante,\nTu viendras à nous des cieux.''',
    numero: 114,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_115',
    titre: 'NOUS T’ADORONS',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Nous l’adorons, Toi que notre cœur aime,\nO Rabboni ! Nous avons soif de ta sainteté même,\nMaître béni !\nVerse en nos cœurs, ô Christ, ta charité !\nEt mets sur nous ta sublime beauté.\n\n2. Parfait Modèle, incomparable Maître,\nBénis-nous tous !\nComme tu fus, nous voulons toujours être,\nHumbles et doux !\nVerse en nos cœurs, ô Christ, ta charité !\nEt mets sur nous ta sublime beauté.\n\n3. Oh ! Donne-nous ton amour inlassable\nPour les perdus ! Cet amour vrai qui cherche le coupable,\nLoin de Jésus,\nVerse en nos cœurs, ô Christ, ta charité !\nEt mets sur nous ta sublime beauté.\n\n4. Qu’en nous voyant, oublieux de nous-mêmes,\nTous pour chacun,\nLe monde ému dise :\n« Oh ! Combien ils s’aiment ! Ils sont tous un ! »\nVerse en nos cœurs, ô Christ, ta charité,\nEt mets sur nous ta sublime beauté.\n\n5. Ouvre le ciel, réponds à la prière\nQue nous t’offrons ! Imprime enfin ton divin caractère\nsur tous nos fronts ! Rien ne surpasse,\nÔ Christ ta charité,\nRien, ici-bas, n’égale ta beauté !''',
    numero: 115,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_116a',
    titre: 'CHANTONS DU SAUVEUR LA TENDRESSE',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Chantons su Sauveur la tendresse\nSur la croix il est mort pour nous,\nIl remplit nos cœurs d’allégresse,\nAu ciel il nous invite tous.\n\nChœur\nJe veux, (oui, je veux) chanter (mon Sauveur),\nJe veux dire à tous mon bonheur, (mon bonheur).\nChantons (le Sauveur), Chantons (le Sauveur)\nChantons l’amour du Rédempteur\n\n2. Chantons du Sauveur la puissance ;\nC’est Lui qui brisa nos liens.\nPerdus, sans Dieu, sans espérance,\nIl nous racheta, nous fit siens.\n\nChœur\nJe veux, (oui, je veux) chanter (mon Sauveur),\nJe veux dire à tous mon bonheur, (mon bonheur).\nChantons (le Sauveur), Chantons (le Sauveur),\nChantons le puissant Rédempteur !\n\n3. Chantons, remplis de confiance !\nChantons sans peur du lendemain,\nEn paix, gardés par sa puissance,\nConduis chaque jour par sa main.\n\nChœur\nJe veux, (oui, je veux) chanter (mon Sauveur),\nJe veux dire à tous mon bonheur, (mon bonheur).\nChantons (le Sauveur), Chantons (le Sauveur),\nChantons notre grand Rédempteur !\n\n4. Chantons du Rédempteur la gloire !\nCelui qui nous aime est le Roi,\nLe Roi couronné de victoire ;\nA Lui notre amour, notre foi !\n\nChœur\nJe veux, (oui, je veux) chanter (mon Sauveur),\nJe veux dire à tous mon bonheur, (mon bonheur).\nChantons (le Sauveur), Chantons (le Sauveur),\nChantons, louons le Rédempteur !''',
    numero: 116,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_116b',
    titre: 'BENISSONS DIEU PAR NOS CANTIQUES',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Bénissons Dieu par nos cantiques,\nExaltons-le d’un même cœur\nChantons ses exploits magnifiques\nSon grand amour, son bras vainqueur.\n\nChœur\nLouons, (et chantons) chantons ;\n(Chantons) Louons le grand nom du Seigneur (du Seigneur).\nLouons, (et chantons) chantons (chantons),\nLouons notre Dieu Rédempteur !\n\n2. C’est sa main qui nous a fait naître\nNous sommes son peuple à jamais\nLe troupeau que lui seul doit paître\nEt qu’il comble de ses bienfaits.\n\n3. Ensemble donnons gloire au Père\nQui des cieux nous a visités,\nAu Sauveur qui, sur le Calvaire,\nPar son sang nous a rachetés.\n\n4. Que les accents de notre joie\nFassent tressaillir le saint lieu !\nQu’en ce jour le monde nous voie\nNous égayer en notre Dieu\n\n5. Reçois, ô Dieu ! Notre humble hommage ;\nReste à jamais notre secours.\nTon amour dure d’âge en âge ;\nTa bonté subsiste à toujours.''',
    numero: 116,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_117',
    titre: 'LES RAYONS DE L’AMOUR DIVIN …',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Les rayons de l’amour divin\nOnt brillé sur la route,\nDès lors l’ennemi cherche en vain à mettre en moi le doute,\nDe toutes mes obscurités, Il ne reste plus trace,\nJ’ai vu les célestes clartés\nLe Seigneur m’a fait grâce.\n\nChœur\nOui, ton amour, (Oui, ton amour)\nAmour divin ; (amour divin),\nO mon Sauveur, (ô mon Sauveur)\nS’est révélé. (S’est révélé).\nIl est pour moi. (il est pour moi).\nTon racheté, (ton racheté),\nTon amour, ton amour divin !\n\n2. Alléluia ! Mon faible cœur\nPeut aujourd’hui comprendre\nQue l’amour de mon Rédempteur\nEn lui veut se répandre.\nIl a bien longtemps méconnu\nCette grâce suprême,\nMais maintenant il est vaincu\nEt se donne lui-même.\n\n3. Qui dira de l’amour divin\nLa grandeur insondable ?\nIl est le baume souverain,\nLe seul bienfait durable.\nJésus, pour ce don précieux,\nQue toujours je t’adore !\nQue mes accents jusques aux cieux\nRetentissent encore.''',
    numero: 117,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_118',
    titre: 'OH ! QUE TOUTE LA TERRE…',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Oh ! Que toute la terre entonne\nUn hymne à ton honneur !\nQue l’univers entier résonne\nDe ta gloire, ô Sauveur !\n\nRefrain\nA Toi louange, honneur et gloire\nA Ton Nom ; ô Jésus !\nTa croix remporte la victoire\nEt sauve les perdus.\n\n2. Ton nom, c’est l’amour et la vie,\nLa grâce et le pardon ;\nEt l’âme écoute et se confie\nA Toi dans l’abandon\n\n3. Ce nom divin, c’est comme un baume,\nUn parfum qui guérit,\nUn doux zéphyr de Ton royaume,\nChargé de Ton Esprit.\n\n4. Ce nom fait trembler les abîmes,\nFait fuir tous les démons ;\nIls lâchent leurs pauvres victimes,\nIls ouvrent leurs prisons.\n\n5. O Christ, que tout genou fléchisse\nA Ton Nom glorieux ;\nPour t’adorer, que tout s’unisse,\nSur terre et dans les cieux.''',
    numero: 118,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_119',
    titre: 'MA RICHESSE, MA GLOIRE …',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Ma richesse, ma gloire\nEt ma félicité, O Jésus ! c’est de croire\nQue tu m’as racheté.\nRempli de confiance\nEn toi, divin Sauveur,\nJe vis dans l’espérance\nEt je marche sans peur.\n\n2. Rien n’ôte les souillures,\nRien ne guérit le cœur,\nSinon les meurtrissures\nEt le sang du Sauveur.\nOui, Jésus seul nous lave\nde toute iniquité,\nEt procure à l’esclave\nl’heureuse liberté.\n\n3. Oh ! que toute la terre\napporte à ce Sauveur\nses péchés, sa misère,\nil fait grâce au pécheur.\nSon amour insondable\nLui fit quitter le ciel,\npour donner au coupable\nun salut éternel.''',
    numero: 119,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_120a',
    titre: 'PORTANT SA CROIX',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Portant sa croix, il monte le sinistre coteau ;\nDans l’opprobre et la honte.\nMuet comme un agneau.\nCe Sauveur débonnaire, pour le pécheur mortel,\nva trouver au Calvaire, La mort d’un criminel.\n\n2. Sur cette croix sanglante,\nSous le divin courroux,\nRegarde âme tremblante,\nL’agneau souffrant pour nous.\nIl porte sur sa tête nos péchés odieux,\nIl veut payer ta dette,\nPour t’introduire aux cieux.\n\n3. Oh ! Charité profonde !\nInsondable grandeur !\nLe Créateur du monde veut être ton sauveur.\nAinsi, plus de détresse,\nJésus est ton recours !\nIl est ta forteresse :\nIl t’aime pour toujours !''',
    numero: 120,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_120b',
    titre: 'JESUS, DIVI MODELE',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Jésus, divin modèle, De douceur et de paix,\nTa sainte voix m’appelle à marcher désormais\ndans ce sentier de grâce, de support, de bonté,\noù tu laissas la trace de ton humilité.\n\n2. Tu passas sur la terre dans l’ineffable amour\nque toute la carrière a montré chaque jour ;\nEt tu dis : Je vous aime, Nul n’aime comme moi ;\nEnfants, faites de même car l’amour est ma loi.\n\n3. Que mon esprit se range à cette loi d’amour,\npour vivre à ta louange, d’un cœur droit, sans détour ;\nComme toi, charitable, Patient, humble et doux,\nSaint, Pur, Irréprochable, Faisant du bien à tous.''',
    numero: 120,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_121a',
    titre: 'JESUS EST NOTRE AMI SUPREME.',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Jésus est notre ami suprême\nOh ! Quel amour ! Mieux qu’un tendre frère il nous aime.\nOh ! Quel amour ! Ici famille, amis, tout passe ;\nSeul Il demeure, et, dans sa grâce,\nDe nous jamais il ne se lasse\nOh ! Quel amour !\n\n2. Il est notre vie éternelle, Oh ! Quel amour !\nCélébrons son œuvre immortelle ; oh ! Quel amour !\nPar son sang notre âme est lavée,\nAu désert il l’avait trouvée\nDans son bercail il l’a sauvée\nOh ! Quel amour !\n\n3. Il s’est offert en sacrifice\nOh ! quel amour ! Nous bénir est tout son délice ; Oh ! quel amour !\nQu’à sa voix notre âme attentive,\nToujours en paix, jamais craintive\nPrès de son cœur saintement vif\nEn son amour !\n\n4. Seigneur Jésus ! Fais-nous comprendre Tout Ton Amour !\nDans nos cœurs, Oh ! daigne répandre Tout Ton Amour !\nQue cet Amour soit notre vie !\nQu’à jamais notre âme ravie savoure une joie infinie en ton amour !''',
    numero: 121,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_121b',
    titre: 'L’AMOUR ETERNEL, INSONDABLE',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. L’amour éternel, insondable\nDe Jésus-Christ, Le sang versé pour moi coupable par Jésus-Christ,\nMe rachète de ma misère\nM’arrache à la mort, à la terre,\nEn moi s’accomplit le mystère de Jésus-Christ.\n\n2. Qu’en mon âme, je sente l’âme\nDe Jésus-Christ ; Que dans mon cœur brûle la flamme de Jésus-Christ.\nLe péché m’attaque à toute heure,\nMais, pour qu’en tout péché je meure,\nFais qu’en toi toujours je demeure O Jésus-Christ !\n\n3. O mon âme ! redis sans cesse ;\nRien que Jésus ; Prends pour force dans la faiblesse : Rien que Jésus.\nSois en paix, sous la croix adore !\nAttendant la céleste aurore ;\nOù les saints répètent encore :\nRien que Jésus.''',
    numero: 121,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_122',
    titre: 'AU PIED DE TA CROIX PROSTERNE…',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Au pied de ta croix prosternée, d’un amour sans partage,\nSauveur qui pour moi t’es donné je viens te rendre hommage.\nJe n’ai rien qui ne soit à toi ! A ton gré dispose de moi,\nCar je suis ton ouvrage.\n\n2. Avant que je visse le jour,\nMon âme te fur chère ; Tu me prévins par ton amour,\nEn m’appelant ton frère. Avant que ta main m’eût formé,\nTu t’engageas, ô Bien-aimé ! A porter ma misère.\n\n3. Jette un tendre regard sur moi\nEt m’accorde une grâce, C’est qu’inséparable de toi,\nA jamais je t’embrasse. Choisis donc mon cœur dès ce jour\npour ta demeure et ton séjour ; Ah ! Viens y prendre place.''',
    numero: 122,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_123',
    titre: 'O CHRIST ! QUELLE IMMENSE DOULEUR !',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. O Christ ! quelle immense douleur,\nQuelle angoisse t’accable !\nQuel poids de honte et de malheur\nSur ta tête adorable !\nToutes mes fautes sont sur toi ;\nTu les portes pour moi !\n\n2. O Christ ! que n’as-tu pas souffert pour expier mon crime !\nPour mon âme tu t’es offert,\nInnocente victime !\nEt les coups dont tu fus meurtri\nA jamais m’ont guéri.\n\n3. C’est pour toi, frère, qu’il mourut\nSur cette croix maudite ;\nC’est ton âme qu’il secourut\nEt c’est toi qu’il invite.\nIl t’offre avec lui dans le ciel\nUn bonheur éternel.\n\n4. Ses bras sont ouverts aujourd’hui ;\nSa voix t’appelle encore.\nTon âme est perdue, et c’est lui,\nO pécheur, qui t’implore.\nRéponds, réponds à son amour,\nViens à lui dès ce jour !''',
    numero: 123,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_124',
    titre: 'DEVANT MON AME CONFONDUE',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Devant mon âme confondue\nS’étend un océan d’amour !\nEt d’En Haut la paix descendue,\nInonde mon cœur en ce jour\n\nRefrain\nSur la croix, Christ a porté\nToute mon iniquité ;\nA lui je m’abandonne enfin,\nPour être à ce Sauveur divin.\n\n2. Je cherchais, luttais avec larmes,\nJe voulais vaincre, mais en vain ;\nQuand lassé, je rendis les armes,\nLa paix brilla sur mon chemin.\n\n3. Sur moi posant sa main bénie,\nIl me lava complètement,\nEt mon âme trouva la vie ;\nSa justice est mon vêtement.\n\n4. Le prince de paix passe encore\nEn cet instant, pour me bénir,\nEt dans mon âme a lui l’aurore\nD’un beau jour, qui ne peut finir.''',
    numero: 124,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_125',
    titre: 'JESUS CHRIST EST MA SAGESSE',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Jésus-Christ est ma sagesse,\nIl éclaire mon chemin,\nEt je marche, en ma faiblesse,\nConduit par sa sûre main.\n\nChœur\nIl éclaire mon chemin,\nIl éclaire mon chemin,\nEt je marche en ma faiblesse,\nConduit par sa sûre main.\n\n2. Jésus-Christ est ma justice ;\nSon sang a coulé pour moi ;\nJe trouve en son sacrifice\nPaix et pardon par la foi.\n\nChœur\nSon sang a coulé pour moi ;\nSon sang a coulé pour moi ;\nJe trouve en son sacrifice\nPaix et pardon par la foi.\n\n3. Jésus-Christ me sanctifie ;\nAu divin Cep attaché,\nJe reçois de lui la vie\nQui m’affranchit du péché.\n\nChœur\nA toi, Jésus, attaché,\nA toi, Jésus, attaché,\nJe reçois de toi la vie\nQui m’affranchit du péché\n\n4. Jésus en payant ma dette\nA grand prix m’a racheté,\nEt déjà ma place est prête\nVers lui, pour l’éternité.\n\nChœur\nJésus, tu m’as racheté\nJésus, tu m’as racheté\nEt déjà ma place est prête\nVers toi, pour l’éternité.''',
    numero: 125,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_126',
    titre: 'A TOI LA GLOIRE',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. A toi la gloire, O ressuscité !\nA toi la victoire Pour l’éternité !\nBrillant de lumière, l’ange est descendu,\nIl roule la pierre du tombeau vaincu.\n\nChœur\nA toi la gloire, O Ressuscité\nA toi la victoire, pour l’éternité\n\n2. Vois-le paraitre, c’est Lui c’est Jésus,\nTon Sauveur, Ton Maitre ! Oh ! ne doute plus !\nsoit dans l’allégresse, Peuple du Seigneur\nEt redis sans cesse\nQue christ est vainqueur.\n\n3. Craindrai-je encore ? il vit à jamais,\ncelui que j’adore, le Prince de paix ;\nIl est ma Victoire, Mon puissant Soutient,\nMa vie et Ma Gloire ; Non, je ne crains rien.''',
    numero: 126,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_127',
    titre: 'RIEN, O JESUS ! QUE TA GRACE',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Rien, ô Jésus ! Que ta grâce\nRien que ton Sang Précieux\nQui seul mes péchés efface,\nNe me rend saint, Juste, heureux,\nNe me dites autre chose,\nSinon qu’il est mon sauveur,\nL’auteur, la source et la cause\nDe mon Eternel bonheur.''',
    numero: 127,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_128',
    titre: 'ENTENDS-TU ? JESUS T’APPELLE',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Entends-tu ? Jésus t’appelle ;\nViens, Ô pécheur ! Il t’attend …\nA cette voix si fidèle\nTu résistas trop souvent.\n\nChœur\nLaisse entre le Roi de Gloire\nOuvre ton cœur à Jésus !\nLaisse entre Le Roi de Gloire\nHâte-toi ! ne tarde plus\n\n2. Pour le péché, pour le monde\nTu trouves place en ton cœur\nPoint pour le sauveur du monde\nRien pour l’homme de douleur\n\n3. Jésus frappe, il frappe encore\nOuvre à ton libérateur\nEt pour toi luira l’aurore\nDu véritable bonheur\n\n4. Aujourd’hui, ce jour de grâce\nNe compte pas sur demain\nPendant que ton Sauveur passe\nSaisis sa puissante main.''',
    numero: 128,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_129',
    titre: 'O VOUS QUI N’AVEC PAS LA PAIX',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. O vous qui n’avez pas la paix,\nVenez, Jésus la donne\nPure, profonde et pour jamais ;\nVenez, Jésus pardonne.\n\nChœur\nQuand toi seul rempli un cœur\nIl déborde de bonheur\nEt l’effroi ne l’atteint plus\nJésus, Jésus, Jésus.\n\n2. Vous qui tombez à chaque pas,\nVenez, Jésus délivre ;\nCelui qui se jette en ses bras\nPeut à toujours Le suivre\n\nChœur\nQuand Jésus rempli un cœur\nIl déborde de bonheur,\nCar il ne chancelle plus\nJésus, Jésus, Jésus !\n\n3. Vous qui doutez du lendemain\nVenez Jésus rassure\nPas à pas, la main dans sa main\nLa route devient sûre.\n\nChœur\nQuand toi seul rempli un cœur\nIl déborde de bonheur\nLa crainte ne l’atteint plus,\nJésus, Jésus, Jésus !\n\n4. Vous qui souffrez isolés,\nVenez, Jésus vous aime\nPour le troupeau des désolés\nIl s’est offert Lui-même.\n\nChœur\nQuand tu viens remplir un cœur\nIl déborde de bonheur\nSeul, oh non ! il ne l’est plus\nJésus, Jésus, Jésus.\n\n5. Vous qui tremblez sous la terreur\nQue la mort vous inspire,\nVenez, votre Libérateur\nA détruit son empire.\n\nChœur\nAvec toi nous revivrons,\nAvec toi nous régnerons\nEt la mort ne sera plus\nJésus, Jésus, Jésus !''',
    numero: 129,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_130',
    titre: 'LE MAITRE EST LA QUI T’APPELLE …',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Le Maître est là qui t’appelle,\nLève-toi donc, O pécheur !\nRépond à sa voix fidèle\nC’est ton Dieu, c’est ton Sauveur\n\nChœur\nViens à lui, viens à lui\nViens à Jésus aujourd’hui !\n\n2. Ah ! pourquoi le faire attendre ?\nDepuis trop longtemps déjà\nTu refuses de l’entendre\nNe tarde plus il est là.\n\n3. Il est là, t’offrant sa grâce\nSon pardon, sa sainteté\nSa paix qui jamais ne passe\nSon ciel, sa fidélité.\n\n4. Sa main vers toi s’est tendue\nSon cœur s’ouvre avec amour ;\nHâte-toi, brebis perdue,\nViens sans délai, sans détour.\n\n5. Le Maître est là qui t’appelle,\nMais bientôt il passera\nRéponds à sa voix fidèle\nAvant qu’il ne soit plus là.''',
    numero: 130,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_131a',
    titre: 'VENEZ CONTEMPLER AU CALVAIRE',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Venez contempler au Calvaire\nLe Christ souffrant et méprisé\nVoyez le Bien (aimé du père\nLe corps meurt, le cœur brisé\n\nChœur\nIl meurt pour nous, il meurt sur la croix !\nO mon âme adore et crois, exalte O peuple du Seigneur.\nTon Roi, ton Dieu, ton Rédempteur.\n\n2. Voyez-le, couronné d’épines\nIl est navré pour nos forfaits\nO grâce, O charité divines.\nQui pourra vous sonder jamais.\n\n3. Ecoutez sa voix qui supplie\n« Père, dit-il, pardonne-leur ! »\nAh ! c’est pour nous aussi qu’il prie,\nc’est pour moi qui suis un pécheur.\n\n4. Ecoutez ce cri, cette plainte\nQui sort de son cœur oppressé\n« Mon Dieu, mon Dieu ! Dit la voix sainte,\nmon Dieu, pourquoi m’as-tu laissé »\n\n5. Ecoutez encore sa Parole\n« Maintenant tout est accompli »\nEt quand son âme à Dieu s’envole\n« Reçois, O père, mon esprit »\n\n6. L’église à tes pieds abattus\nTe rend hommage, O Christ Sauveur,\ntout l’univers en Toi salue\nL’unique et parfait rédempteur.\n\n7. Que mon âme te soit unie\nPar une ardente et sainte foi\nEt dans la mort et dans la vie\nSois tout, Jésus soit tout pour moi !''',
    numero: 131,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_131b',
    titre: 'EN CONTEMPLANT LA CROIX BENIE',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. En contemplant la croix bénie\nOù mourut le Prince de la paix\nTout mon orgueil, mes biens, ma vie,\nsont abandonnés à jamais\n\nChœur\nOh ! sur la croix son sang fut versé,\nil fut là crucifié !\nMaintenant il vit dans mon cœur\nOù tout est paix, parfait bonheur.\n\n2. Que toujours je me glorifie\nDans ta mort seule, Ô mon sauveur,\ntout autre but je sacrifie\nPour suivre l’homme de douleur.\n\n3. Oh ! Regardez tous sa couronne\nSes mains, ses pieds pour nous percés,\nD’où coule un fleuve qui nous donne\nPardon, paix, joie et sainteté.\n\n4. Si je possédais tout le monde\nCe serait un don trop petit\nAmour divin, grâce profonde\nTout est à toi dès aujourd’hui.''',
    numero: 131,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_132',
    titre: 'J’AI LONGTEMPS ERRE SANS GUIDE',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. J’ai longtemps erré sans guide.\nAltéré de vrai bonheur,\nMais, hélas ! Mon cœur avide\nNe trouvait que la douleur,\nOù sera la main puissante\nQui pourra par son effort,\nM’arrêter sur cette pente\nOù déjà je vois la mort.\n\n2. Un sauveur, Jésus lui-même\nEut pitié de mon effroi,\nIl me dit, pécheur je t’aime\nJ’ai versé mon sang pour toi.\nO jésus ta main puissante\nM’a sauvé de mon tombeau\nEt tu comble mon attente\nPar le don d’un cœur nouveau\n\n3. J’ai saisi cette assurance\nCe pardon qu’il m’apportait\nJ’ai livré sans résistance\nTout mon cœur, il le voulait.\nO jésus ta main puissante\nM’a sauvé de mon tombeau\nEt tu combles mon attente\nPar le don d’un cœur nouveau\n\n4. Dans mon cœur impure, infirme\nJe reçus le saint esprit\nEt ce sceau divin m’affirme\nQue je suis à Jésus Christ\nO jésus ta main puissante\nM’a sauvé de mon tombeau\nEt tu combles mon attente\nPar le don d’un cœur nouveau\n\n5. Maintenant, de joie en joie\nMon sauveur me fait marcher\nCar la paix que christ m’envoi\nNul ne peut me l’arracher\nA ce Jésus qui me donne\nEt sa paix et son amour\nA Jésus je m’abandonne\nDésormais et sans retour''',
    numero: 132,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_133',
    titre: 'OH ! QUEL BONHEUR DE LE CONNAITRE',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Oh ! quel bonheur de le connaitre\nL’ami qui ne saurait changer\nDe l’avoir ici-bas pour Maitre\nPour défenseur et pour berger !\n\nChœur\nChantons, chantons d’un cœur\nJoyeux, Le grand amour du Rédempteur, (du rédempteur)\nQui vint à nous du haut des cieux,\nEt nous sauva du destructeur !\n(Du destructeur).\n\n2. Dans la misère et l’ignorance\nnous nous débattons sans espoir,\nla mort au cœur, l’âme en souffrance,\nQuand à nos yeux il se fit voir.\n\n3. Il nous apporta la lumière\nLa victoire et la liberté\nL’ennemi mordis la poussière\nPour toujours Satan fut dompté.\n\n4. Vers l’avenir, marchons sans crainte,\nEt sans souci du lendemain,\nPas à pas, nos pieds dans l’empreinte\nDe ses pieds sur notre chemin.''',
    numero: 133,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_134',
    titre: 'CŒURS FATIGUES !',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Cœurs fatigués et laissés du péché\nAssez souffert ! Assez cherché !\nJe puis donner la paix et le repos\nMe charger de vos fardeaux.\n\nRefrain\nVenez à Lui ! venez à Lui !\nVenez à Jésus, venez à Jésus aujourd’hui !\n\n2. Vous tous pécheurs condamnés par la loi,\nvenez à moi ! venez à moi !\nvous recevrez en vos cœurs dès ce jour\nLe pardon du Dieu d’amour.\n\n3. Vous qui souffrez, par le mal asservis,\nSoyez par moi, Tous affranchis,\nOh ! venez tous, travaillés et chargés,\nEt vous serez soulagés.''',
    numero: 134,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_135',
    titre: 'REVIENS',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Reviens ! Reviens ! tu dissipas tes bras sur la terre étrangère,\nLoin des yeux de ton père,\n\nChœur\nO pauvre enfant perdu, Reviens !\nO reviens ! viens ! Viens !\nViens ! Ô reviens (reviens !)\n\n2. Reviens ! reviens ! Loin de tous\nLes faux biens, vois briller la lumière\nDans ta sombre misère\n\n3. Reviens ! Reviens ! Du péché fuis\nLes biens, Que ton âme souffrante\nSoit aussi repentance\n\n4. Reviens ! Reviens ! Car pour toi sont des biens\nqu’aucun bien ne dépasse, le salut et la grâce.''',
    numero: 135,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_136',
    titre: 'VOUDRAIS-TU GOUTER ?',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Voudrais tu gouter le parfait bonheur ?\nO toi que le monde enlace,\nviens réponds à la voix du Rédempteur,\nReçois humblement sa grâce.\n\nRefrain\nA la grâce, par la croix\nViens, mon frère, viens et crois\nLe sang de Jésus efface\nTous les péchés à la fois\n\n2. Laisse la folie et la vanité !\nC’est une ivresse qui passe\nMais bois à long trait la félicité\nA la source de sa grâce !\n\n3. Puis vole au secours de ces malheureux\nQu’une horrible mort menace,\nDis-leur que Jésus a souffert pour eux,\nEt qu’il offre à nous sa grâce.''',
    numero: 136,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_137',
    titre: 'DEMAIN PEUT ETRE',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. « Demain peut-être, je te croirai\nEt pour mon maitre, je te prendrai »\nAinsi quand Dieu l’invite.\nL’âme répond « Attends !\n« Pécheur entre de suite, viens.\nIl est temps.\n\n2. Demain, peut-être, plus de pardon !\nQuoi ? méconnaitre Un si beau don !\nDieu t’offre, dans sa grâce,\nle bonheur des élus,\nAvant que l’heure passe,\nViens à Jésus.\n\n3. Demain peut-être, Du châtiment\nTu vas connaitre l’affreux tourment,\nJésus t’appelle, il t’aime ;\nIl est le seul chemin !\nViens, c’est l’instant suprême !\nPourquoi demain ?''',
    numero: 137,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_138',
    titre: 'SI VOUS SAVIEZ',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Si vous saviez quel Sauveur je possède !\nil est l’ami le plus tendre de tous.\nPour moi devant le père il intercède :\nOh ! je voudrais qu’il fût aussi pour vous !\n\nChœur\nMon sauveur vous aime ;\nAh ! cherchez-en lui votre ami suprême,\nvotre seul appui !\n\n2. Si vous saviez la paix douce et profonde\nQue le Sauveur en mon âme apporta !\npour cette paix, que peut donner le monde ?\nElle jaillit pour vous de Golgotha.\n\n3. Si vous saviez quelle douce espérance\nLe Dieu de paix fait rayonner de cieux !\nCombien sa vois sait calmer la souffrance\nEt son regard rendre le cœur joyeux\n\n4. Quand vous saurez combien Jésus vous aime,\nQuand vous saurez combien son joug est doux,\nne gardez pas ce trésor pour vous-même,\nMais avec moi, dites autour de vous.''',
    numero: 138,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_139',
    titre: 'IL VA FINIR, LE JOUR DE LA GRACE',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Il va finir, le jour de la grâce ;\nNe tardez plus, accourez au Sauveur,\nAujourd’hui même, avant que le temps passe,\nsans hésiter, Donnez-lui votre cœur.\n\n2. Pour vous sauver, il s’est donné Lui-même,\nmourant pour vous sur un infâme bois,\nCroyez, pécheurs, a cette œuvre suprême ;\nConfiez-vous à Jésus mis en croix.\n\n3. Pour vous, perdus, sans Dieu, sans espérance,\nil a souffert la mort d’un criminel,\nMais son trépas est votre délivrance,\nIl vous acquiert le bonheur Eternel.\n\n4. Hâtez-vous donc quand sa voix vous appelle,\nvenez à Lui, ah ! ne renvoyez pas.\nIl offre à tous, pardon, vie éternelle,\nPaix et bonheur déjà dès ici-bas.''',
    numero: 139,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_140',
    titre: 'IL EST UN ROC SECULAIRE',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Il est un roc séculaire,\nQue Dieu pour mon cœur lassé,\ncomme un abri tutélaire\nAu sein des flots a placé.\n\nChœur\nMon Rocher, ma forteresse,\nMon asile protecteur,\nMon recours dans la détresse,\nc’est Jésus, le Rédempteur !\n\n2. A mes pieds l’océan gronde\nLe vent siffle autour de moi\nSur christ, mon Rocher je fonde\nMon espérance et ma foi.\n\n3. En vain l’ouragan fait rage\nEt nulle clarté ne luit,\npaisible au sein de l’orage,\nJ’attends l’aube après la nuit.\n\n4. Jouet de l’onde agitée,\ncet abri l’as-tu trouvé ?\nViens, Pauvre âme tourmentée.\nAu rocher qui m’a sauvé.''',
    numero: 140,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_141',
    titre: 'NOUS VOGUONS VERS UN BEAU RIVAGE',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Nous voguons vers un beau rivage\nQue Jésus nous prépara\nNous ne craignons aucun naufrage\nSa grâce nous conduira\n\nChœur\nViens avec nous, la voile est prête\nFrère, viens ; que rien ne t’arrête.\nPlus d’ouragan, de tempête,\nau séjour du Dieu d’amour,\nplus d’ouragan, de tempête au\nSéjour du Dieu d’amour\n\n2. Pour notre céleste patrie\nVoici l’heure du départ\nA venir, Jésus te convie\nDemain il serait trop tard\n\n3. Sur cette rive hospitalière\nDieu réunit ses enfants\nAprès les luttes de la terre\nNous irons grossir leurs rangs\n\n4. Devant nous, de la cité Sainte\nBientôt va s’ouvrir le port ;\nDe nos cœurs bannissant la crainte\nChantons dans un saint transport.''',
    numero: 141,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_142',
    titre: 'VENEZ AU SAUVEUR !',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Venez au Sauveur qui vous aime\nVenez, il a brisé vos fers\nIl veut vous recevoir lui-même\nSes bras vous sont ouverts\n\nChœur\nOh ! quel beau jour, Sauveur fidèle.\nQuand, nous appuyant sur ton bras\nDans la demeure paternelle,\nnous porterons nos pas.\n\n2. Venez, pécheurs, il vous appelle\nLe bonheur est dans son amour\nAh ! Donnez-lui ce cœur rebelle.\nDonnez-le sans retour.\n\n3. Le temps s’enfuit, l’heure s’écoule\nQui sait si nous vivrons demain ?\nJésus est ici dans la foule\nAh ! Saisissez sa main.''',
    numero: 142,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_143',
    titre: 'LOIN DU SAUVEUR, POURQUOI, MON FRERE … ?',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Loin du Sauveur, pourquoi mon frère,\nresteras-tu dans le péché ?\nAs-tu trouvé sur cette terre\nLe bonheur si longtemps cherché ?\n\nChœur\nAh ! sans tarder, reviens mon frère.\nAu sauveur qui t’a racheté\nIl a pitié de ta misère\nIl t’aime pour l’éternité.\n\n2. Assez longtemps, dans l’esclavage\nSans succès tu t’es débattu\nVaincu toujours, perdant courage\nContre Santa que pouvais-tu ?\n\n3. Jamais le Seigneur ne repousse,\nL’infortuné qui vient à Lui\nN’entends-tu pas sa voix si douce\nQui te dit, Viens, aujourd’hui !''',
    numero: 143,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_144',
    titre: 'TOUS MES PECHES',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Tous mes péchés, tous mes péchés,\nson sang les a lavés !\ntous mes péchés, tous mes péché,\nson sang les a lavés.\n\n2. Tous les soucis, Tous les soucis\nMon sauveur les a pris !\nTous les soucis, Tous les soucis\nMon sauveur les a pris !\n\n3. C’est à la croix, c’est à la croix,\nQu’il en ôta le poids ;\nC’est à la croix, c’est à la croix,\nQu’il en ôta le poids !\n\n4. L’éternité ! L’éternité !\nOù vas-tu passer ?\nL’éternité ! L’éternité !\nOù vas-tu passer ?\n\n5. Jésus t’attend, Jésus t’attend,\nOh ! viens en ce moment !\nJésus t’attend, Jésus t’attend,\nOh ! viens en ce moment !''',
    numero: 144,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_145',
    titre: 'VOUS TOUS DONT L’AME EST ENVAHIT',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Vous tous dont l’âme est envahie\nPar le dégout de la vie,\nToujours trompés, toujours déçus,\nVenez, venez, venez à Jésus !\n\n2. Voyageurs lassés de la route\nEt tourmentés par le doute,\nVous qui déjà ne luttez plus\nVenez, venez, venez à Jésus !\n\n3. Vous qui pleurez sans espérance\nVous qui souffrez en silence\nLevez les yeux, ne pleurez plus,\nVenez, venez, venez à Jésus !''',
    numero: 145,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_146',
    titre: 'MORTELS, VOULES VOUS SAVOIR ?',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Mortels, voulez-vous savoir ?\nQuel est mon unique espoir,\nMa sagesse et ma science,\nMon trésor, ma récompense ?\nMon trésor, ma récompense ?\nC’est Jésus crucifié. C’est Jésus,\nC’est Jésus, c’est Jésus crucifié.\n\n2. Quelle est l’ancre de ma foi ?\nDe mon cœur, quelle est la loi ?\nQuel est mon seul sacrifice,\nMa sainteté, ma justice ?\nMa sainteté, ma justice ?\nC’est Jésus Crucifié, c’est Jésus,\nC’est Jésus, c’est Jésus crucifié.\n\n3. De mon esprit languissant,\nQui fait cesser le tourment ?\nDans la peine et la souffrance,\nQui soutient ma confiance ?\nQui soutient ma confiance ?\nC’est Jésus ressuscité, c’est Jésus\nC’est Jésus, c’est Jésus ressuscité.\n\n4. Quel est celui dont la mort\nMe prépare un nouveau sort ?\nQuel est cet ami fidèle\nQui sans cesse à lui m’appelle ?\nQui sans cesse à lui m’appelle ?\nC’est Jésus Glorifié, c’est Jésus\nC’est Jésus, c’est Jésus glorifié.''',
    numero: 146,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_147',
    titre: 'COMME UN DOUX MURMURE',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Comme un doux murmure\nLa voix de Jésus\nAppelle et conjure tous les perdus\n\nChœur\n« Donne-moi ton cœur, je mourus pour toi,\nviens ! viens ! à ton Sauveur,\nviens ! viens à moi ! »\n\n2. Par sa voix si tendre, laisse-toi gagner,\nta peine, il veut prendre et s’en charger.\n\n3. Il est ton refuge, pourquoi t’affliger ?\nil n’est plus ton juge, mais ton berger.\n\n4. Ton fardeau dépose, j’en porte le poids,\nsans crainte, repose Près de ma croix.''',
    numero: 147,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_148',
    titre: 'PECHEURS ! VOUS VENNEZ D’ENTENDRE',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Pécheurs ! vous venez d’entendre,\nCe beau message de Paix,\nOuvrez vos cœurs pour comprendre\nCe que le Sauveur a fait.\n\nChœurs\nVenez à Lui, (venez) venez à Lui,\n(venez) pourquoi donc tant hésiter ?\n(Venez) Approchez-vous tous aujourd’hui,\n(venez) Oh venez sans plus tarder !\n\n2. Pour nous tous il souffrit à la croix,\nLa honte et l’ignominie\nSerait-ce en vain que sur ce bois\nIl endura l’agonie ?\n\n3. Oh ! que nul ne désespère\nAucun péché n’est si grand\nNulle peine si amère\nQu’il n’efface par son sang.\n\n4. Dieu pardonne encore aujourd’hui\nAu plus coupable pécheur\nQui vient à Jésus trouve en Lui,\nPardon, paix, repos, bonheur.''',
    numero: 148,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_149',
    titre: 'UNE BONNE NOUVELLE',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Une bonne nouvelle descend des cieux :\nPécheur, Jésus, t’appelle\nLève les yeux, chargés de ta misère.\nDe tes péchés confus, viens à Jésus,\nmon frère, viens à Jésus !\n\n2. Le fils de Dieu lui-même te racheta,\nvois don amour suprême\nEn Golgotha ! Au sang qui purifie\nLes cœurs souillés, perdus,\nQue ton cœur se confie, viens à Jésus !\n\n3. Celui que Jésus lave de son péché\nAu dur joug de l’esclave est arraché.\nDans son âme affranchi le mal ne règne plus.\nL’esprit le sanctifie. Viens à Jésus !\n\n4. Viens, que rien ne t’arrête, viens à l’instant,\nta délivrance est prête. Jésus t’attend.\nSi tu crois-ô victoire ! – Tes péchés ne sont plus,\net tu peux chanter,\nGloire ! Gloire à Jésus !''',
    numero: 149,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_150',
    titre: 'DIS TOUT A JESUS',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Es-tu lassé, rempli de tristesse ?\nDis tout à Jésus ! Dis tout à Jésus !\nSon cœur est ouvert à ta voix sans cesse.\nOh ! dis tout à Jésus !\n\nRefrain\nDis tout à Jésus ! Oh ! dis-Lui tout !\ncombien son accueil est doux.\nIl peut comprendre, il aime à entendre.\nDis Lui simplement tout !\n\n2. Il voit tes yeux rougis par les larmes.\nDis tout à Jésus !\nil connait ton cœur, il sait tes larmes.\nOh ! dis tout à Jésus.\n\n3. Si ton passé surgit comme une ombre.\nDis tout à Jésus ! Dis tout à Jésus !\nil peut effacer tes péchés Sans nombre.\nOh ! dis tout à Jésus !\n\n4. Et pour demain ce que tu redoutes :\nDis tout à Jésus ! Dis tout à Jésus !\nil est près de toi le long de la route.\nOh ! dis tout à Jésus !''',
    numero: 150,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_151',
    titre: 'TOI SEUL',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Pour toi seul en qui j’espère,\nPour toi seul, d’un cœur joyeux\nJe fais monter de la terre\nMon cantique vers les cieux\nPour toi seul\nPour toi seul\nOui, mon sauveur, pour toi seul\n\n2. A toi seul, sainte victime\nAgneau mis à mort pour moi\nDont le sang lava mon crime\nA toi seul\nS’attend ma foi\nA toi seul\nA toi seul\nOui, mon sauveur, A toi seul\n\n3. A toi seul, dans la détresse\nA toi seul j’aurai recours\nA toi seul ma forteresse,\nLe Rocher de mon secours\nA toi seul\nA toi seul\nOui, mon sauveur, A toi seul''',
    numero: 151,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_152',
    titre: 'PUBLIEZ BIEN HAUT',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Publiez bien haut la grande nouvelle ;\nle ciel est ouvert à tout être humain.\nLa route est tracée, un guide fidèle\nVous conduira par la main\n\nChœur\nLe salut pour tous, le salut par grâce,\nA tous est offert, à tous est donné.\nOh ! venez, pécheurs, venez, le temps passe ;\nEt vous serez pardonnés.\n\n2. Publiez bien haut la grande nouvelle :\nle sang de Jésus a tout effacé.\nOù que vous soyez ;\nC’est vous qu’il appelle,\nVous qui l’avez offensé.\n\n3. Publiez bien haut la grande nouvelle :\nau loin comme au près faites-la courir,\nPartout où se trouve une âme rebelle,\nUn pécheur à secourir''',
    numero: 152,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_153',
    titre: 'JESUS FRAPPE A VOTRE PORTE',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Jésus frappe à votre porte :\nOuvrez-lui ! (Ouvrez aujourd’hui ! Ouvrez aujourd’hui)\nC’est le ciel qu’il vous apporte !\nOuvrez-lui ! (Ouvrez aujourd’hui ! Ouvrez aujourd’hui)\nChez vous il veut prendre place ;\nOuvrez avant qu’il se lasse !\nLe temps presse, le temps presse :\nOuvrez-lui ! (Ouvrez aujourd’hui ! Ouvrez aujourd’hui)\n\n2. Ouvrez ! c’est lui qui pardonne ;\nOuvrez-lui ! (Ouvrez aujourd’hui ! 2x)\nAcceptez ce qu’il vous donne ;\nOuvrez-lui ! (Ouvrez aujourd’hui !2x)\nSes promesses sont certaines ;\nSa main va briser vos chaines ;\nBientôt finiront vos peines :\nOuvrez-lui ! (Ouvrez aujourd’hui !2x)\n\n3. Seul il ôte les souillures :\nOuvrez-lui (Ouvrez aujourd’hui !2x)\nSeul il bande les blessures :\nOuvrez-lui (Ouvrez aujourd’hui !2x)\nSi Satan vient vous surprendre,\nseul il pourra vous défendre\nEt sous son aile vous prendre :\nOuvrez-lui (Ouvrez aujourd’hui !2x)\n\n4. Ecoutez l’appel si tendre !\nOuvrez-lui (Ouvrez aujourd’hui !2x)\nC’est assez le faire attendre :\nOuvrez-lui (Ouvrez aujourd’hui !2x)\nCar le Sauveur vous implore :\nComment résister encore !\nOh ! que votre âme l’adore !\nOuvrez-lui (Ouvrez aujourd’hui !2x)''',
    numero: 153,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_154',
    titre: 'O MON DIEU, DANS MA SOUFFRANCE.',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. O mon Dieu, dans ma souffrance,\nMa misère et mon péché,\nTu me parles d’espérance\nEn Jésus qui m’a cherché.\nOui, je crois que tu pardonnes\nA celui qui vient à Toi,\nJe reçois ce que tu donnes\nEt l’accepte par la foi.\n\n2. Je ne suis pas digne d’être\nTon enfant, ton racheté,\nCar j’ai fait d’un autre maître\nTrop longtemps La volonté.\nMais j’ai vu sur le Calvaire\nResplendir ton grand amour.\nDans tes bras, mon Dieu, mon père,\nje me jette dans retour.\n\n3. Tu le vois, je suis encore\nincapable pour le bien.\nDieu puissant, Dieu que j’adore,\nSois mon aide et mon soutient.\nLoin de Toi, ce n’est pas vivre,\nEt j’ai soif du vrai bonheur ;\nC’est Jésus que je veux suivre ;\nFais de-moi ton serviteur.''',
    numero: 154,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_155',
    titre: 'O JOUR HEUREUX',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. O jour heureux, jour de bonheur,\nLumière, paix, joie ineffable !\nAu Fils de Dieu, Saint, adorable,\nA jésus, j’ai donné mon cœur.\n\nRefrain\nQuel beau jour ! Quel beau jour !\nOù d’un Sauveur, j’ai su l’amour.\nOui, dans ma nouvelle patrie,\nJésus m’attend et pour moi prie,\nQuel beau jour ! Quel beau jour !\nOù d’un Sauveur j’ai su l’amour !\n\n2. Oh ! comprenez mon heureux sort :\nC’est en Jésus que Dieu pardonne ;\nLa vie éternelle il la donne ;\npourquoi donc te craindrai-je, ô mort ?\n\n3. Au ciel des chants ont retenti :\nAlléluia ! disent les anges,\nEntonnons de saintes louanges,\nCar un pécheur s’est converti.\n\n4. C’en est fait, tout est accompli,\nLe fils de Dieu m’appelle frère ;\nSon sang coula sur le calvaire ;\nIl est à moi, je suis à lui.''',
    numero: 155,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_156',
    titre: 'ROC SECULAIRE',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Roc séculaire, Frappé pour moi\nSur le Calvaire, je viens à toi.\nTu sais mes chutes, O mon Sauveur !\nTu vois mes luttes et ma douleur.\n\nChœur\nRoc séculaire, Frappé pour moi\nSur le Calvaire, Je viens à toi.\n\n2. Oh ! purifie, Lave, Seigneur,\nEt sanctifie Mon pauvre cœur.\n\n3. Ma main tremblante Ne t’offre rien ;\nTa croix sanglante Est mon seul bien.\n\n4. Dans la détresse Sois mon berger,\nMa forteresse dans le danger.\n\n5. Et qu’à toute heure, Que chaque jour\nMon cœur demeure En ton amour.''',
    numero: 156,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_157',
    titre: 'SEIGNEUR, TA GRACE M’APPELLE',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Seigneur ta grâce m’appelle,\nPar mon nom tu me connais,\nEt mon cœur longtemps rebelle,\nSe donne à toi pour jamais.\n\n2. C’est pour toi que je veux vivre ;\nCar toi seul est mon Berger,\nC’est toi seul que je veux suivre,\nEt non plus un étranger.\n\n3. N’as-tu pas donné ta vie\nPour me sauver, bon Pasteur ?\nGloire à ta grâce infinie !\nGloire à toi, mon Rédempteur !\n\n4. Ainsi, mon âme, courage !\nJésus marche devant toi,\nEt, jusqu’au bout du voyage,\nSon amour veille sur toi.\n\n5. Ne crains pas qu’il abandonne\nSa brebis dans le chemin ;\nIl est fidèle, et personne ne l’ôtera de sa main.''',
    numero: 157,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_158',
    titre: 'JE SUIS SAUVE !',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Je suis sauvé ! Dieu m’a fait grâce\nJésus pour moi s’est donné.\nEt sur la Croix, prenant ma place,\nPour toujours m’a pardonné.\nVoilà pourquoi je chante !\n\n2. Je suis sauvé ! l’Agneau sans tâche,\nDe tout péché m’affranchit,\nA la mort son amour m’arrache,\nDans son sang, il me blanchit.\nVoilà pourquoi je chante !\n\n3. Je suis sauvé ! j’ai la victoire,\nMon trésor est dans les cieux ;\nBientôt je serai dans la gloire,\nJe le verrai de mes yeux.\nVoilà pourquoi je chante !\n\n4. Je suis sauvé ! tout mon cœur chante,\nUn hymne saint au Seigneur,\nD’amour mon âme est palpitante,\nGloire à Jésus mon Sauveur.\nVoilà pourquoi je chante !\n\n5. Es-tu sauvé ? Jésus lui-même\nDans son sang t’a-t-il lavé ?\nSa douce voix te dit : « Je t’aime,\nOh ! viens et crois, sois sauvé »\nVoilà pourquoi je chante !''',
    numero: 158,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_159',
    titre: 'MISERICORDE INSONDABLE',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Miséricorde insondable !\nDieu peut-il tout pardonnée ?\nAbsoudre un si grand coupable,\nEt mes péchés oublier ?\n\nRefrain\nJésus, je viens ! (Jésus, je viens !)\nJe viens à Toi ! (Je viens à Toi !)\nTel que je suis, (tel que je suis,)\nJe viens à Toi ! (Je viens à Toi !)\nJésus, je viens ! (Jésus, je viens !)\nJe viens à Toi ! (Je viens à Toi !)\nTel que je suis, prends-moi.\n\n2. Longtemps j’ai, loin de sa face,\nProvoquer son sain courroux,\nFermé mon cœur à sa grâce,\nBlessé le sien devant tous.\n\n3. O Jésus ! à toi, je cède,\nJe veux être libéré ;\nDe tout péché qui m’obsède\nEtre à jamais délivré.\n\n4. Alléluia ! plus de doute,\nMon fardeau m’est enlevé ;\nPour le ciel je suis en route,\nHeureux pour l’éternité.''',
    numero: 159,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_160',
    titre: 'SEIGNEUR ! DU SEIN DE LA POUSSIERE …',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Seigneur ! du sein de la poussière,\nMon âme crie à toi.\nDescends, ô Dieu ! dans ma prière ;\nQue je te sente en moi.\n\n2. Je ne veux plus l’ombre qui passe,\nL’Image qui pâtit ;\nMais la substance de ta grâce,\nToi-même, ton Esprit.\n\n3. C’est assez et trop se répandre\nEn long et vague espoir ;\nJe veux te parler et t’entendre,\nTe toucher et te voir.\n\n4. Je veux brûler, mais de ta flamme,\nLuire mais de ton jour,\nDe ton âme animer mon âme,\nAimer de ton amour.\n\n5. Voilà le seul bien que j’envie,\nQue j’implore, ô mon roi !\nNe plus vivre que de ta vie,\nQue par toi, que pour toi.''',
    numero: 160,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_160b',
    titre: 'O SEIGNEUR, BENIS LA PAROLE …',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. O Seigneur, bénis la parole\nQue nous venons d’ouïr ;\nQue nous allons ouïr ;\nNe permets pas qu’elle s’envole\nde notre souvenir !\n\n2. Jaloux de ta sainte influence,\nTrop souvent le Malin\nAccourt et ravit ta semence\nQue répandit ta main.\n\n3. Trop souvent elle est sans racine\nEn un terrain pierreux ;\nLe soleil vient : elle décline\nSous l’ardeur de ses feux.\n\n4. Trop souvent les soucis du monde\nOu ses biens sans valeur ;\nDétruisent sa vertu féconde,\nL’Etouffent dans le cœur.\n\n5. Ah ! plutôt que ton Evangile\nS’emparant de mon cœur,\nChaque grain en remporte mille,\nA ta gloire, ô Seigneur !''',
    numero: 160,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_161',
    titre: 'POUR TRIOMPHER DANS LES COMBATS',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Pour triompher dans les combats,\nQuelle est notre force ici-bas ?\nQuelle est la divine lumière,\nQui nous dirige et nous éclaire\nDans la sombre nuit de l’erreur ?\nC’est la parole du Seigneur.\n\n2. Quel est le glaive à deux tranchants\ndont les coups sont assez puissants\npour briser l’arme la plus dure,\nEt, malgré la plus forte armure,\nPour pénétrer jusques au cœur ?\nC’est la parole du Seigneur.\n\n3. Quel est le vent impétueux\nQui mugit et descend des cieux,\nEt dont la voix grave et sévère,\nSemblable à celle du tonnerre,\nFait trembler l’âme du pécheur ?\nC’est la parole du Seigneur.\n\n4. Quel est ce chant suave et doux\nQui, d’en-haut venant jusqu’à nous,\nParle de grâce et de clémence,\nRéveilles-en nos cœurs l’espérance\nEt calme partout la douleur ?\nC’est la parole du Seigneur.\n\n5. Sainte parole, habite en moi ;\nEclaire et ranime ma foi !\nDans les combats, sois ma défense,\nDans les dangers, ma délivrance,\nEt que par toi e sois vainqueur,\nSainte parole du Seigneur !''',
    numero: 161,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_162',
    titre: 'ROMPS-NOUS LE PAIN DE VIE',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Romps-nous le pain de vie.\nQue ta bonté, Seigneur, nous rassasie\nDe vérité ! Amour qui nous fait vivre,\nRévèle-toi ! Parle dans le saint Livre\nA notre foi !\n\n2. O toi dont ta clémence\nCréa du pain\nPour une foule immense\nMourant de faim.\nVois, ton peuple se presse\nAutour de toi …\nSecours notre détresse\nEt notre foi !\n\n3. C’est toi le Pain de vie,\nVerbe puissant !\nC’est de ta chair meurtrie,\nC’est de ton sang\nQue notre âme doit vivre …\nAh ! donne-toi\nPar l’Esprit et le Livre\nA notre foi !\n\n4. Tu bénis tes apôtres,\nPuis, à leur tour,\nIls portèrent à d’autres\nTon grand amour…\nO Parole féconde,\nQue notre foi\nT’offre à ce pauvre monde\nQui meurt sans toi !''',
    numero: 162,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_163',
    titre: 'A TES PIEDS, O DIVIN MAITRE !',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. A tes pieds, ô divin Maître !\nJe me place avec bonheur,\nEn t’adorant, Je veux être\nTon disciple, ô mon Sauveur !\nParle ! j’ai soif de t’entendre ;\nParle ! je n’ai qu’un désir :\nQue ta voix puissante et tendre ;\nA mon cœur se fasse ouïr.\n\nChœur\nParle ! j’ai soif de t’entendre ;\nParle ! je n’ai qu’un seul désir :\nQue ta voix puissante et tendre\nA mon cœur se fasse ouïr.\n\n2. Faites place, ô voix humaines\nA la voix de mon Sauveur !\nPensés vains et choses vaines,\nEloignez-vous de mon cœur !\nTous les bruits, faites silence !\nToi, mon Maître, parle-moi !\nRecueillie en ta présence,\nMon âme n’entend que toi.\n\nChœur\nTous les bruits, faites silence !\nToi, mon Maître, parle-moi !\nRecueillie en ta présence\nMon âme n'entend que toi\n\n3. Parle-moi, témoin fidèle !\nDécouvre-moi le trésor\nDe ta sagesse éternelle ;\nParle, ô Maître ! Parle encore.\nTa parole, c'est la vie,\nC'est la lumière et la paix.\nAt ton école bénie\nJe veux rester à jamais ;\n\nChœur\nTa parole, c'est la vie,\nC'est la lumière et la paix.\nA ton école bénie\nJe veux rester à jamais.\n\n4. Parle ! Et pour que je comprenne\nTon enseignement divin,\nDans ta grâce souveraine,\nInstruis-moi par l'Esprit Saint.\nParle ! Et pour que j'obéisse\nA tes ordres aussitôt,\nForme-moi pour ton service,\nPour te suivre, saint Agneau !\n\nChœur\nParle ! Et pour que j'obéisse\nA tes ordres aussitôt,\nForme-moi pour ton service,\nPour te suivre, saint Agneau !''',
    numero: 163,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_164',
    titre: 'OH ! QUE TON JOUG EST FACILE',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Oh ! que ton joug est facile !\nOh ! combien j’aime ta loi !\nDieu saint, Dieu de l’Evangile !\nElle est toujours devant moi.\nDe mes pas c’est la lumière,\nC’est le repos de mon cœur ;\nMais pour la voir tout entière,\nOuvre mes yeux, bon Sauveur !\n\n2. Non, ta loi n’est point pénible\nPour quiconque est né de toi ;\nToute victoire est possible\nA qui combat avec foi.\nSeigneur ! dans ta forteresse\nAucun mal ne m’atteindra ;\nSi je tremble en ma faiblesse,\nTa droite me soutiendra.\n\n3. D’un triste et rude esclavage\nAffranchi par Jésus-Christ,\nJ’ai part à ton héritage,\nAux secours de ton Esprit.\nAu lieu d’un maitre sévère,\nPrêt à juger, à punir,\nJe sers le plus tendre Père,\nToujours prêt à me bénir.\n\n4. Dieu qui guides, qui consoles !\nJ’ai connu que le bonheur\nEst de garder tes paroles,\nEt je les serre en mon cœur.\nFais-moi marcher dans ta voie\nEt me plaire en tes statuts\nSi je cherche en toi ma joie,\nJe ne serai pas confus.''',
    numero: 164,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_165',
    titre: 'FRAICHES ROSEES (Deut.32.2)',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Comme une terre altérée\nSoupire après l’eau du ciel,\nNous appelons la rosée\nDe ta grâce, Emmanuel !\n\nChœur\nFraiches rosées,\nDescendez sur nous tous !\nO divines ondées,\nVenez, arrosez-nous !\n\n2. Descends, ô pluie abondante,\nCoule à flots dans notre cœur,\nDonne à l’âme languissante\nUne nouvelle fraicheur.\n\n3. Ne laisse en nous rien d’aride\nQui ne soit fertilisé ;\nQue le cœur le plus avide soit pleinement arrosé.\n\n4. Qui, que les déserts fleurissent\nSous tes bienfaisantes eaux,\nQue les lieux secs reverdissent\nEt portent des fruits nouveaux.\n\n5. Viens, ô salutaire pluie,\nEsprit de grâce et de paix,\nRépands-en nous une vie\nQui ne tarisse jamais.''',
    numero: 165,
    auteur: 'Auteur inconnu',
  ),
  Cantique(
    id: 'petit_troupeau_166',
    titre: 'O DIEU DE VERITE !',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. O Dieu de vérité, pour qui seul je soupire,\nUnis mon cœur à toi par de forts et doux nœuds.\nJe me lasse d’ouïr, je me lasse de lire,\nMais non pas de te dire : C’est toi seul que je veux,\nMais non pas de te dire : C’est toi seul que je veux.\n\n2. Parle seul à mon cœur, et qu’aucune prudence,\nQu’aucun autre docteur ne m’explique tes lois,\nQue toute créature en ta sainte présence,\nS’impose le silence Et laisse agir ta voix.\nS’impose le silence\nEt laisse agir ta voix.\n\n3. Tiens-toi près de mon âme, et, dans ma solitude,\nViens remplir de ta paix le vide de mon cœur.\nDissipe mes ennuis et toute inquiétude,\nEt que ma seule étude, Soit de t’aimer, Seigneur !\nEt que ma seule étude soit de t’aime, Seigneur !\n\n4. Tu me réponds, mon Dieu ; mais encore des nuages\nMe voilent tes splendeurs, céleste Vérité !\nQue ne puis-je bientôt, sur de plus purs rivages,\nPar de-là tous les âges, Contempler ta beauté !\nPar de-là tous les âges, Contempler ta beauté !''',
    numero: 166,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_167a',
    titre: 'PRIERE DU MATIN',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Que ta lumière, Dès le matin,\nLuise, ô bon Père ! sur mon chemin.\nOh ! vivifie Dès maintenant\nEt sanctifie Ton cher enfant.\n\n2. Sauveur fidèle, Livré pour moi,\nTa voix m’appelle, Je viens à toi ;\nA ma faiblesse Pense aujourd’hui ;\nDans la détresse Sois mon appui.\n\n3. Donne à mon âme, Jour après jour,\nLa pure flamme de ton amour,\nQu’elle conduise auprès de toi\nL’âme indécise qui vit sans foi.\n\n4. Toute ma joie, O mon Sauveur !\nC’est que l’on voie Ton Nom Vainqueur ;\nC’est que l’impie Sauvé par toi,\nEnfin s’écrie : « Je suis à toi ! »''',
    numero: 167,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_167b',
    titre: 'PRIERE DU SOIR',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Déjà l’étoile S’allume aux cieux,\nEt la nuit voile Tout à mes yeux.\nMais, tendre Père, Quand tout s’endort,\nDans ta lumière je suis encore.\n\n2. Cette journée qui déjà meut\nJe l’ai donnée à toi, Seigneur.\nJ’ai pris sans crainte, Serrant ta main,\nDe ta loi sainte L’étroit chemin.\n\n3. Sondes mes voies et mon amour,\nMes pleurs, mes joies pendant ce jour,\nEt purifie, Sauveur puissant,\nToute ma vie avec ton sang.\n\n4. Jusqu’à l’aurore du jour qui vient,\nOh ! sois encore mon sûr gardien !\nEt jusqu’à l’heure de mon départ,\nJésus, demeure Mon seul rempart.''',
    numero: 167,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_168a',
    titre: 'JESUS, TA SAINTE PRESENCE…',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Jésus, ta sainte présence est la source du bonheur.\nDans la joie et la souffrance\nElle est le repos du cœur !\n\nChœur\nFais briller sur moi ta face,\nO jésus, Agneau de Dieu !\nA tes pieds, c’est là ma place,\nPrès de toi mon ciel est bleu.\n\n2. Sur celui qui te contemple\nDescend un rayon divin,\nTu fais de son cœur ton temple,\nTon doigt pointe son chemin.\n\n3. Ah ! que mon âme ravie\nTe rencontre, ô mon Sauveur !\nCar ton regard c’est la vie,\nC’est la richesse du cœur !\n\n4. Il faut aussi ta présence\nPour ton service, ô Jésus !\nCar elle est une puissance\nPour relever les perdus !\n\n5. Quand dans l’étendue immense,\nO jésus, tu paraîtras,\nC’est encore par ta présence\nQue tu nous attireras !''',
    numero: 168,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_168b',
    titre: 'SEIGNEUR, CE QUE JE RECLAME…',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Seigneur, ce que je réclame,\nC’est ce riche don d’amour !\nQue cette céleste flamme\nEn moi brûle nuit et jour !\n\n2. Cet amour si fort, si tendre ;\nAmour qui supporte tout,\nQui ne veut pas se défendre ;\nPrêt à souffrir jusqu’au bout.\n\n3. Pour les autres, il s’oublie,\nIl ne peut être envieux,\nTout éloge l’humilie,\nJamais il n’est orgueilleux,\n\n4. Cet amour peut vaincre et fondre\nLes cœurs méchants, durs, glacés,\nIls ne peuvent rien répondre,\nL’amour les a terrassés.\n\n5. Devant la vaste souffrance\nQui s’étend de jour en jour,\nIl faut un remède immense,\nIl faut un immense amour\n\n6. Que jusqu’à la mort, fidèle,\nPriant, luttant en tout lieu,\nMa vie entière révèle\nL’amour sublime de Dieu.''',
    numero: 168,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_169',
    titre: 'JESUS EST AU MILEU DE NOUS.',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Jésus est au milieu de nous,\nSon regard s’abaisse sur nous,\nSa douce voix l’entendez-vous ?\nJe veux vous bénir tous !\nJe veux vous bénir tous !\nSa douce voix l’entendez-vous ?\nJe veux vous bénir tous !\n\n2. Jésus est au milieu de nous,\nSon regard s’abaisse sur nous,\nSa douce voix l’entendez-vous ?\nJe veux vous sauver tous !\nJe veux vous sauver tous !\nSa douce vois l’entendez-vous ?\nJe veux vous sauver tous !\n\n3. Jésus est au milieu de nous,\nSon regard s’abaisse sur nous,\nSa douce voix l’entendez-vous ?\nOh ! je vous aime tous !\nOh ! je vous aime tous !\nSa douce vois l’entendez-vous ?\nOh ! je vous aime tous !''',
    numero: 169,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_170',
    titre: 'TOI QUI DISPOSES…',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Toi qui disposes De toutes choses\nEt nous les donne chaque jour,\nReçois, ô Père ! Notre prière\nDe reconnaissance et d’amour.\n\n2. Le don suprême Que ta main sème.\nC’est notre pardon ; C’est ta paix ;\nEt ta clémence, Trésor immense,\nEst le plus grand de tes bienfaits.\n\n3. Que, par ta grâce, L’instant qui passe\nServe à nous rapprocher de toi !\nEt qu’à chaque heure, vers ta demeure\nNos cœurs d’élèvent par la foi.''',
    numero: 170,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_171',
    titre: 'O MON SAUVEUR !',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. O mon Sauveur ! Ouvre mon cœur\nA ta douce lumière ;\nSeigneur, mon Dieu, De ton saint lieu,\nEcoute ma prière.\n\n2. Dieu tout-puissant ! Dieu bienfaisant !\nJ’ai besoin de ta grâce ;\nEclaire-moi, Soutiens ma foi,\nJe viens chercher ta face.\n\n3. Ta vérité, Ta charité,\nBrillent dans ta Parole :\nSeule, elle instruit, Soutient, Conduit\nNotre âme et la console.\n\n4. Que ton Esprit, Témoin de Christ,\nRègle seul dans notre âme ;\nQue ton amour, Et nuit et jour,\nL’embrasse de sa flamme.''',
    numero: 171,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_172',
    titre: 'PRIEZ SANS CESSE !',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Priez toujours, priez sans cesse !\nPriez, le Seigneur entendra !\nIl est fidèle à sa promesse,\nPriez, priez, il répondra.\n\n2. Priez, si vos cœurs se déchirent,\nLa main qui blesse guérira !\nIl entend tous ceux qui soupirent :\nIl a souffert, il guérira !\n\n3. Priez dans la fournaise ardente,\nQuand Satan gronde autour de vous !\nJésus sait calmer la tourmente,\nPriez triomphez à genoux !\n\n4. Priez, priez lorsque le doute\nObscurcira votre horizon !\nPriez ! Jésus connaît la route,\nIl ouvrira votre prison.\n\n5. Priez ! pour rendre témoignage.\nPriez ! pour confesser Jésus,\nDieu bénira votre langage,\nPour sauver les pécheurs perdus.\n\n6. Priez, quand votre âme hésitante\nNe sait où choisir son chemin.\nMême à travers la mer bruyante\nJésus vous tiendra par la main.\n\n7. Priez ! si votre ciel est sombre,\nSi vous tremblez devant la mort !\nJésus vous couvrant de son ombre,\nVous ouvrira les portes d’or.''',
    numero: 172,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_173',
    titre: 'LE CRI DE MON AME.',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Le cri de mon âme s’élève vers Toi\nElle te réclame, Jésus, pour son roi,\nTon joug est facile, Ton fardeau léger,\nSur mon cœur docile, Règne, ô bon Berger !\n\n2. Jésus, sois mon guide, Dirige mes pas,\nEt sois mon égide Dans tous les combats.\nDans la nuit profonde Tiens-moi par la main ;\nLumière du monde, Luis sur mon chemin !\n\n3. Source de l’eau vive, pain venu des cieux,\nQue par toi je vive paisible et joyeux !\nQuand luira l’aurore Du Jour éternel,\nQue je vive encore pour toi, dans le ciel !''',
    numero: 173,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_174',
    titre: 'A TOI, MON DIEU, JE M’ABANDONNE.',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. A toi, mon Dieu, je m’abandonne,\nOh ! fais de moi ce que tu veux ;\nDe l’argile que je te donne,\nFais un diamant précieux !\n\nRefrain\nPrends, Seigneur, prends toute ma vie,\nA toi seul, je veux obéir.\nPar l’Esprit qui me sanctifie,\nSur ton autel, je viens m’offrir !\n\n2. Tu connais ma grande faiblesse,\nMon impuissance à te servir,\nS’il le faut que ta main me blesse,\nTon amour saura me guérir !\n\n3. Oh ! ne m’épargne ni la flamme,\nNi le ciseau, divin Sculpteur !\nQue ton Esprit forme mon âme\nA l’image de son Sauveur !''',
    numero: 174,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_175',
    titre: 'JE LE CONNAIS',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Je le connais, celui qui donne la paix et le bonheur ;\nCelui qui guérit, qui pardonne : C’est Jésus le Sauveur.\n\n2. Pour nous, en sanglant sacrifice, il s’offrit par amour ;\nSon sang nous donne avec justice, Place au divin séjour.\n\n3. Je veux l’aimer, je veux le suivre\nHumblement par la foi ;\nC’est pour lui seul que je dois vivre,\nPuisqu’il mourut pour moi.''',
    numero: 175,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_176',
    titre: 'UN REGARD SUR LA CROIX',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Un regard sur ta croix sanglante ;\nJésus, fait déborder mon cœur\nD’amour et de douleur poignante,\nD’amour et d’éternel bonheur.\n\n2. Tu seras seul toute ma gloire,\nCar tout ce dont je me vantais\nM’empêcherait encore de croire\nQu’en ta mort seule j’ai la paix.\n\n3. Te donnerais-je quelques larmes,\nQuelques soupirs et quelque amour ?\nDevant ta croix je rends les armes.\nPrends-moi tout entier dès ce jour.\n\n4. A tes pieds, mon Sauveur, je jette\nCe que mon cœur aime le plus,\nOui, prends mon idole secrète ;\nTu seras mon trésor, Jésus !''',
    numero: 176,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_177',
    titre: 'C’EST MON JOYEUX SERVICE',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. C’est mon joyeux service d’offrir à Jésus-Christ,\nEn vivant sacrifice, Mon corps et mon esprit.\n\nRefrain\nAccepte mon offrande, Bien-aimé\nFils de Dieu ! Et que sur moi\nDescende La flamme du saint lieu !\n\n2. J’abandonne ma vie, sans regret, ni frayeur,\nA ta grâce infinie,\nO mon Libérateur !\n\n3. Qu’un feu nouveau s’allume par ton amour en moi,\nEt dans mon cœur consume ce qui n’est pas à toi !\n\n4. Viens, Jésus ! sois mon maître ;\nPar ton sang racheté, A toi seul\nJe veux être et pour l’éternité.''',
    numero: 177,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_178',
    titre: 'SEIGNEUR SANCTIFIE !',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Seigneur ! sanctifie nos jours, nos moments :\nFais que notre vie t’honore en tout temps.\nQue de ta présence, Au milieu de nous,\nL’heureuse influence nous pénètre tous.\n\n2. Nous voulons sans cesse Marcher par la foi\nEt, dans la détresse, Regarder à toi.\nHeureux qui repose sur ton bras puissant !\nOn a toute chose en te possédant.''',
    numero: 178,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_179a',
    titre: 'ENTRE TES MAINS J’ABANDONNE …',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Entre les mains j’abandonne\nTout ce que j’appelle mien.\nOh ! ne permets à personne,\nSeigneur d’en reprendre rien !\nOui, prends tout, Seigneur ! (bis)\nEntre tes mains j’abandonne\nTout avec bonheur.\n\n2. Je n’ai pas peur de te suivre\nSur le chemin de la croix ;\nC’est pour toi que je veux vivre,\nJe connais, j’aime ta voix.\nOui, prends tout, Seigneur !(bis)\nSans rien garder, je te livre\nTout avec bonheur.\n\n3. Tu connais mieux que moi-même\nTous les besoins de mon cœur ;\n
      Et, pour mon bonheur\nsuprême,\nTu veux me rendre vainqueur.\n\nOui, prends tout,\nSeigneur !(bis)\nJe ne vis plus pour moi-même,\n\nMais pour mon Sauveur.\nPrends mon corps et prends\nmon âme ; Que tout en moi\nsoit à toi.\nQue par ta divine flamme\nTout mal soit détruit en moi !\n\nOui, prends tout, Seigneur !\n(bis). Prends mon corps et\nprends mon âme ; Règne\nsur mon cœur !,''',
    numero: 179,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_179b',
    titre: 'AU PIED DE LA CROIX SANGLANTE',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Au pied de la croix sanglante,\nOù tu t’es donné pour moi,\nMon âme émue et tremblante,\nO Jésus, se livre à toi.\n\nChœur\nLe parfait bonheur, (bis)\nC’est de mettre Tout mon être\nA tes pieds, Seigneurs !\n\n2. Me voici pour ton service,\nJe ne garde rien pour moi,\nSur l’autel du sacrifice,\nJe me place par la foi.\n\n3. A la gloire, aux biens du monde\nJe renonce pour jamais ;\nQue le Saint-Esprit m’inonde,\nDe ta joie et de ta paix.\n\n4. Si ma faiblesse est bien grande\nTa force est plus grande encore,\nO Jésus, qu’elle me rende\nFidèle jusqu’à la mort.\n\n5. O félicité suprême,\nTa grâce est mon bouclier,\nEt je t’appartiens, je t’aime,\nToi qui m’aimas le premier.''',
    numero: 179,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_180',
    titre: 'L’AMOUR DE JESUS-CHRIST NOUS PRESSE',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. L’amour de Jésus-Christ nous presse ;\nIl s’est livré pour son troupeau ;\nA suivre les pas de l’Agneau,\nL’un l’autre animons-nous sans cesse.\n\n2. Au nom du Rédempteur, chers frères !\nDonnons-nous tous ici la main,\nPour ne marcher jusqu’à la fin\nQue sous ses regards tutélaires.\n\n3. Vois tes enfants, Dieu notre Père !\nQui se consacrent à ton Fils.\nViens à notre aide et nous remplis\nD’amour, de zèle et de lumière.\n\n4. Qu’en nous quittant, Sauveur fidèle !\nNous demeurions unis en toi ;\nHabites-en nos cœurs par la foi,\nEt que l’Esprit nous renouvelle !''',
    numero: 180,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_181',
    titre: 'LA VOIX DU SEIGNEUR M’APPELLE',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. La voix du Seigneur m’appelle ;\nPrends ta croix et viens, suis-moi\nJe réponds : « Sauveur fidèle,\nMe voici, je suis à toi ! »\n\nChœur\nJusqu’au bout je veux te suivre,\nDans les bons, les mauvais jours,\nA toi pour mourir et vivre,\nA toi, Jésus, pour toujours.\n\n2. Mais le chemin du Calvaire\nEst étroit et périlleux,\nC’est un chemin solitaire,\nDifficile et ténébreux.\n\n3. Il faut quitter ceux qu’on aime,\nSavoir être mal jugé,\nEndurer l’injure même,\nDu monde être méprisé.\n\n4. Oui, perdre sa propre vie,\nConsentir à n’être rien,\nN’avoir qu’une seule envie,\nAimer Jésus, le seul bien !\n\n5. Jésus donne grâce et gloire\nPour le suivre pas à pas,\nAvec lui, joie et victoire,\nPaix et bonheur ici-bas !''',
    numero: 181,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_182',
    titre: 'J’ENTENDS TA DOUCE VOIX',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. J’entends ta douce voix ;\nJésus, je viens à Toi.\nJe viens, ô Sauveur, lave-moi\nDans le sang de ta Croix !\n\nChœur\nJésus, Roi des rois,\nQui mourus pour moi,\nJe veux mourir avec toi,\nAvec Toi sur la Croix.\n\n2. J’entends ta douce voix,\nQui me dit : « Crois-en Moi ! »\nJe crois, Seigneur, soutiens ma foi.\nTiens-moi près de ta Croix !\n\n3. J’entends ta douce voix,\nElle pénètre en moi\nEt me dit d’aimer comme Toi\nDe l’amour de la Croix !\n\n4. J’entends ta douce voix,\nToi qui mourus pour moi,\nSeigneur, que je m’unisse à Toi\nDans ta mort par la foi !''',
    numero: 182,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_183',
    titre: 'C’EST UN REMPART QUE NOTRE DIEU…',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. C’est un rempart que notre Dieu,\nUne invincible armure,\nNotre défense sûre.\nL’ennemi contre nous\nRedouble de courroux ; Vaine colère !\nQue pourrait l’adversaire ?\nL’Eternel détourne ses coups.\n\n2. Seuls, nous bronchons à chaque pas,\nNotre force est faiblesse ;\nMais un héros, dans les combats,\nPour nous lutte sans cesse,\nQuel est ce défenseur ? C’est toi,\nDivin Sauveur ! Dieu des armées !\nTes tribus opprimées\nConnaissent leur libérateur.\n\n3. Que les démons forgent des fers\nPour accabler l’Eglise ;\nTa Sion brave les enfers,\nSur ton rocher assise.\nConstant dans son effort,\nEn vain avec la mort Satan conspire :\nPour ruiner son empire,\nIl suffit d’un mout du Dieu fort\n\n4. Dis-le, ce mot victorieux,\nDans toutes nos détresses ;\nRépands sur nous, du haut des cieux,\nTes divines largesses.\nQu’on nous ôte nos biens,\nQu’on serre nos liens,\nQue nous importe !\nTa grâce est la plus forte.\nEt ton royaume est pour les tiens.''',
    numero: 183,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_184',
    titre: 'PLUS QUE VAINQUEURS',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Plus que vainqueurs ! telle est notre devise,\nPlus que vainqueurs, bien que persécutés !\n« Car la victoire à la foi fut acquise\nPar le Sauveur qui nous a rachetés. (bis)\n\n2. Suivons le Christ jusque sur le Calvaire ;\nAyons toujours sa mort devant nos yeux.\n« Si nous souffrons avec lui sur la terre,\nNous régnerons avec lui dans les cieux. (bis)\n\n3. Osons braver les injures du monde\nPour confesser le beau nom de Jésus.\n« Que sur lui seul tout notre espoir se fonde,\nEt notre espoir ne sera pas confus. (bis)\n\n4. Amis ! croyons au pouvoir invisible\nQue le Seigneur a caché dans sa croix ;\n« Saisissons-là comme une arme invisible,\nPour triompher au nom du Roi des rois. (bis)''',
    numero: 184,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_185',
    titre: 'IL EST UNE SAINTE GUERRE',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Il est une sainte guerre,\nIl est un combat divin,\nEntre le ciel et la terre,\nEntre le mal et le bien.\nCertaine est notre victoire,\nLuttons sans crainte et sans peur ;\nNous combattons pour la gloire\nDe Jésus, le Rédempteur.\n\n2. La justice est notre armure,\nLa foi, notre bouclier ;\nLa vérité, pour ceinture,\nDoit à jamais nous lier.\nC’est une épée invincible\nQu’on voit briller dans nos mains,\nC’est la parole infaillible\nDu Dieu Sauveur des humains.\n\n3. Sous cette sainte bannière,\nLes cœurs en haut, nous marchons ;\nEt du séjour de lumière\nPas à Pas nous approchons.\nAprès la lutte suprême,\nLa couronne nous attend ;\nJésus la mettra lui-même\nSur le front du combattant !''',
    numero: 185,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_186',
    titre: 'PLUS LE MAL EST PRESSANT.',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Plus le mal est pressant, plus ma misère est grande,\nPlus l’abîme est profond et béant sous mes pas,\nPlus le péril extrême, un prompt secours demande,\nPlus je me réfugie, ô Jésus, dans tes bras !\n\n2. Parmi tous les dangers, c’est toi qui me rassures,\nContre tous les assauts, c’est toi mon bouclier !\nC’est toi, si je faiblis, qui guéris mes blessures ;\nPour pouvoir tout, sur toi je n’ai qu’à m’appuyer.\n\n3. Tu m’as associé, Jésus, à ta victoire,\nMets ta force en mon bras, mets ta flamme e mon cœur !\nOui, viens par mon triomphe, ajouter à ta gloire,\nCombattre par mes mains et me rendre vainqueur.\n\n4. Tu me donnes toujours selon ma confiance,\nQuand j’ai tout demandé, n’ai-je pas tout reçu ?\nAvec toi tout triomphe est assuré d’avance :\nQuand on est sûre de vaincre, on a déjà vaincu.''',
    numero: 186,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_187',
    titre: 'LE SIGNAL DE LA VICTOIRE',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Le signal de la victoire\nDéjà brille aux cieux,\nLa couronne de la gloire\nParaît à nos yeux.\n\nRefrain\nJe viens, combattrez encore !\nDit Jésus à tous.\nOui, mon Sauveur, je t’implore,\nJe lutte à genoux.\n\n2. Que l’ennemi, plein de rage,\nRedouble ses coups,\nNous ne perdons point courage :\nChrist est avec nous.\n\n3. Suivons, amis, la bannière\nDu Sauveur en croix,\nEt que notre armée entière\nSe range à sa voix.\n\n4. Rude et longue est la mêlée :\nVoici le secours !\nDans nos mains prenons l’épée\nQui vainquit toujours !''',
    numero: 187,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_188',
    titre: 'SANS ATTENDRE',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Sans attendre, Je veux tendre\nAu bonheur promis ;\nQui s’élance, Qui s’avance\nObtiendra le prix.\nQuand je prie, Dieu m’entend ;\nOn m’attaque, il me défend,\nDonc en route, Point de doute\nLe but est si grand !\n\n2. Près du trône La couronne\nAttend le vainqueur,\nNulle trêve ! Qu’on se lève !\nA dit le Seigneur.\nD’obéir soyons heureux ;\nPoint de tièdes, de peureux ;\nLe fidèle Nous appelle\nA régner aux cieux.\n\n3. D’un pas ferme, Jusqu’au terme\nIl faut s’avancer.\nDieu m’observe, Qu’il préserve\nMon pied de glisser.\nQue ce monde et ses attraits\nNe me séduisent jamais !\nSi sa haine Se déchaine,\nQue je sois en paix !\n\n4. Dieu de grâce, Que ta face\nLuise en mon chemin.\nPère tendre, Viens me prendre\nPar ta forte main.\nToute puissance est à toi,\nSubviens à ma faible foi ;\nMa victoire, C’est ta gloire,\nJésus, Roi des rois.''',
    numero: 188,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_189',
    titre: 'QUI ME RELEVE ?',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Qui me relève dans mes chutes ?\nC’est Jésus-Christ,\nQui combat pour moi dans mes luttes ?\nC’est Jésus-Christ.\nJésus a parlé, je veux croire\nQue je puis lutter pour sa gloire,\nCar mon bouclier, ma victoire,\nC’est Jésus-Christ.\n\n2. Je vais à mon Père, et ma voie\nC’est Jésus-Christ ;\nJe suis bienheureux, et ma joie\nC’est Jésus-Christ.\nEt si, même dans la souffrance,\nMon cœur me parle d’espérance,\nC’est que j’ai mis ma confiance\nEn Jésus-Christ.\n\n3. Sauvé, je ne me glorifie\nQu’en Jésus-Christ ;\nPour la terre et le ciel, ma vie\nC’est Jésus-Christ.\nBientôt adieu, choses mortelles !\nLoin de vous je prendrai des ailes\nVers les demeures éternelles,\nVers Jésus-Christ.''',
    numero: 189,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_190',
    titre: 'TES SAINTS DANS LA LUTTE…',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Tes saints, dans la lutte, et de tous côtés\nIci-bas en butte aux infirmités,\nSont, dans le ciel même, portés sur ton cœur,\nO notre suprême Sacrificateur !\n\n2. Plein de sympathie, De tendre bonté,\nJamais tu n’oublies aucun racheté.\nC’est toi qui nous aides Dans chaque combat,\nEt pour nous tu plaides, Divin Avocat !\n\n3. Pour toute souillure, C’est toi qui te ceins ;\nEt lavant d’eau pure Les pieds de tes saints,\nTu dis au fidèle : « Sois L’imitateur\nDu parfait Modèle, Du vrai Serviteur »''',
    numero: 190,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_191',
    titre: 'DEBOUT POUR LA SAINTE GUERRE !',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Debout pour la sainte guerre !\nLe mal est grand encore ;\nPlus d’un ami, plus d’un frère\nSuit un chemin de mort.\n\nRefrain\nEn avant ! (En avant !) tous en avant ! (En avant !)\nNotre Chef est Tout-Puissant.\nNos armes sont la prière,\nL’amour persévérant.\n\n2. Debout pour la sainte guerre !\nRanimons notre ardeur.\nAvec la croix pour bannière,\nQui ne serait vainqueur ?\n\n3. Debout pour la sainte guerre !\nSoyons unis et forts !\nQu’une charité sincère\nPréside à nos efforts.\n\n4. O Dieu ! pour la sainte guerre\nRevêts-nous tous en christ\nDes armes de la lumière,\nDes dons de ton Esprit.''',
    numero: 191,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_192',
    titre: 'NON, NOUS NE SAURIONS NOUS TAIRE.',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Non, nous ne saurions nous taire\nDevant tant de cœurs souffrants.\nResterez-vous sans rien faire ?\nSeriez-vous indifférents ?\n\nRefrain\nSous la croix, rie n’est pénible.\nEn avant ! Frères, debout !\nPar la foi tout est possible,\nEt la couronne est au bout.\n\n2. En tous lieux, pleins d’espérance,\nTraçons un sillon d’amour.\nSemons avec confiance ;\nNous moissonnerons un jour.\n\n3. Au monde sans repentance\nPrêchons Jésus mort pour tous.\nPourquoi tant d’insouciance ?\nIl en est temps, levons-nous !\n\n4. Laissons là notre paresse,\nEt l’amour triomphera.\nOui, malgré notre faiblesse,\nLa vérité prévaudra.''',
    numero: 192,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_193',
    titre: 'VEILLE TOUJOURS',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Veille au matin, quand un ciel sans nuage\nSemble annoncer un jour calme et serein,\nC’est dans ton cœur que peut gronder l’orage\nQui fait tomber le pèlerin.\n\nRefrain\nVeille au matin, (Veille au matin)\nVeille le soir, (veille le soir),\nVeille et prie toujours.\n\n2. Veille à midi, quand les bruits de la terre\nFont oublier le céleste séjour ;\nTrouve un instant pour être solitaire\nDans la prière et dans l’amour.\n\n3. Veille le soir, quand se fait le silence ;\nPense aux bienfaits de ton céleste Ami ;\nCherche avec soi sa divine présence,\nVerse en son cœur tout ton souci.\n\n4. Veille toujours en tous lieux, à toute heure,\nCar l’ennemi te guette à chaque instant,\nPour se glisser dans la sainte demeure\nOù doit régner le Tout-Puissant.''',
    numero: 193,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_194',
    titre: 'A CELUI QUI SERA VAINQUEUR',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. A celui qui sera vainqueur,\nEt qui me glorifie,\nJe donnerai, dit le Seigneur,\nAu ciel l’arbre de vie !\n\nCœur\nVictoire, force, honneur et louanges,\nGloire, Gloire, puissance à toi, Jésus !\n\n2. Un caillou blanc, un nom nouveau\nEt la manne cachée,\nLui seront donnés par l’Agneau,\nSa promesse est scellée !\n\n3. Revêtu d’un vêtement blanc,\nResplendissant de gloire,\nSera celui qui par le sang\nRemporta la victoire !\n\n4. Avec Christ, celui qui vaincra\nS’assiéra sur son trône,\nEt de ses mains il recevra\nL’Immortelle couronne.''',
    numero: 194,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_195',
    titre: 'VOUS QUI GARDEZ LES MURS …',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Vous qui gardez les murs de la sainte cité,\nSentinelles de Dieu,\nQui veillez à ses portes,\nCeignez-vous de vérité,\nDe valeur, de fermeté,\nQue vos yeux soient perçants et que vos voix soient fortes.\n\n2. Voyez-vous l’ennemi s’approcher doucement\nEt chercher, en secret, à franchir les murailles ?\nDénoncez-le franchement\nEt lui livrez fermement\nDu Maître de combat,\nTes terribles batailles.\n\n3. Ah ! Soldats, c’est au Chef que vous appartenez ;\nC’est Lui qui vous ceignit du redoutable glaive.\nDans vos trompettes sonnez\nContre tous ces révoltés,\nRésistez vaillamment, sans repos et sans trêve.\n\n4. Messagers du salut, en ce terrestre lieu,\nPubliez vaillamment le sacré témoignage.\nNe craignant que votre Dieu,\nAccomplissez votre vœu ;\nAffrontez les erreurs\nEt méprisez l’outrage.\n\n5. Du monde contre vous la rage éclatera ;\nSoutenez ses assauts :\nC’est Jésus qui l’ordonne.\nLe moqueur vous maudira,\nLe méchant vous frappera ;\nMais le Seigneur vous garde et tient votre couronne.''',
    numero: 195,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_196',
    titre: 'SENTINELLE VIGILANTE.',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Sentinelle vigilante,\nQu’en est-il donc de la nuit ?\nDis à l’âme somnolente\nQue déjà le matin luit !\n\nChœur\nLa nuit passe, le matin du grand jour luit !\nSentinelle, sois au poste jour et nuit,\nSentinelle, sois au poste jour et nuit.\n\n2. Les gardes sur la muraille\nNous l’ont dit, entendez-vous ?\nAu loin gronde la bataille,\nTout est sombre autour de nous.\n\n3. Points de repos, de relâche,\nRachetés de l’Eternel.\nTravaillez à votre tâche,\nCar Jésus revient du ciel !''',
    numero: 196,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_197a',
    titre: 'DEBOUT SAINTE COHORTE !',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Debout, sainte cohorte, Soldats du Roi des rois !\nTenez d’une main forte l’étendard de la croix !\nAu sentier de la gloire\nJésus-Christ vous conduit ;\nDe victoire en victoire\nIl mène qui le suit.\n\n2. La trompette résonne ;\nDebout ! vaillants soldats !\nL’immortelle couronne\nEst le prix des combats.\nSi l’ennemi fait rage,\nSoyez fermes et forts ;\nRedoublez de courage,\nS’il redouble d’efforts.\n\n3. Debout pour la bataille,\nPartez, n’hésitez plus !\nPour que nul ne défaille,\nRegardez à Jésus !\nDe l’armure invincible,\nSoldats ! revêtez-vous !\nLe triomphe est possible\nPour qui lutte à genoux.\n\n4. Debout, debout encore !\nLuttez jusqu’au matin ;\nDéjà brille l’aurore\nA l’horizon lointain.\nBientôt, jetant nos armes\nAux pieds du Roi des rois !\nLes chants après les larmes,\nLe trône après la croix !''',
    numero: 197,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_197b',
    titre: 'REVETONS NOTRE ARMURE…',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Revêtons notre armure\nEt partons en vainqueurs !\nOui, la victoire est sûre,\nEn haut, en haut les cœurs !\nCelui qui nous appelle\nEt nous dit : En avant !\nEst le Sauveur fidèle,\nLe Seigneur Tout-Puissant.\n\n2. Revêtons notre armure\nEt lutons en vainqueurs !\nLe secours se mesure\nAux besoins de nos cœurs !\nPlus grande est la faiblesse,\nSeigneur, de tes soldats,\nPlus riche est ta promesse\nEt plus ferme est ton bras.\n\n3. Revêtons notre armure\nEt souffrons en vainqueurs !\nDe plainte et de murmure\nSachons harder nos cœurs.\nL’épreuve aura son terme,\nEt, dans le mauvais jour,\nLe chrétien reste ferme\nDans la foi, dans l’amour.\n\n4. Revêtons notre armure\nEt mourons en vainqueurs !\nSi la bataille est dure,\nL’espoir soutient nos cœurs.\nAux rives éternelles,\nIl nous montre le port.\nNus te serons fidèles,\nSeigneur, jusqu’à la mort.''',
    numero: 197,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_198',
    titre: 'TRAVAILLONS ET LUTTONS !',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Travaillons et luttons ! Nous sommes au Seigneur,\nSuivons l’étroit sentier qui conduit à la vie,\nJésus marche avec nous, avançons sans frayeur,\nil nous garde et son bras toujours nous fortifie.\n\nChœur\nTravaillons, (Travaillons) et luttons, (et luttons,)\nTravaillons, (Travaillons) et luttons, (et luttons,)\nSoyons prêts, (Soyons prêts) et prions, (et prions,)\nBientôt le Maître va venir !\n\n2. Travaillons et luttons ! Que les cœurs affligés,\nLes perdus loin de Dieu retrouvent l’espérance,\nVers la croix dirigeons leurs regards angoissés,\nPressons-les d’accepter Jésus leur délivrance.\n\n3. Travaillons et luttons ! il nous appelle tous,\nPoint de lâches, de tièdes, la moisson est grande,\nPour servir notre chef, ne pensons plus à nous,\nEn avant ! vers le but ! Le Maître le demande.\n\n4. Travaillons et luttons ! Sans jamais nous lasser,\nDe notre Rédempteur Elevons la bannière,\nFidèles jusqu’au bout, sachons persévérer,\nLe repos nous attend dans la pleine lumière !''',
    numero: 198,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_199',
    titre: 'AH ! DONNE A MON AME !',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Ah ! donne à mon âme Plus de sainteté,\nplus d’ardente flamme, De sérénité,\nPlus de confiance, Pour rester debout,\nPlus de patience, Pour supporter tout !\n\n2. Fais que je contemple sans cesse l’Agneau,\nSon vivant exemple, Sa croix, son tombeau ;\nSa grâce fidèle, Son immense amour,\nSa gloire éternelle, Son prochain retour !\n\n3. Jésus ; à mes larmes Tu veux compatir ;\nDe toutes tes armes Viens me revêtir ;\nPar plus de prière, De zèle et de foi,\nQue dans la lumière Je marche avec toi !\n\n4. Donne à ton service un cœur plus joyeux,\nPrompt au sacrifice, Toujours sous tes yeux ;\nQui chante et qui tremble, Humble en sa ferveur,\nUn cœur qui ressemble Au tien, mon Sauveur.''',
    numero: 199,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_200',
    titre: 'COMPTE LES BIENFAITS DE DIEU.',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Quand le vol de la tempête\nVient assombrir ton ciel bleu,\nAu lieu de baisser la tête,\nCompte les bienfaits de Dieu.\n\nChœur\nCompte les bienfaits de Dieu,\nMets-les tous devant tes yeux,\nTu verras, en adorant,\nCombien le nombre en est grand.\n\n2. Quand sur la route glissante\nTu chancelles sous la croix,\nPense à cette main puissante\nQui t’a béni tant de fois.\n\n3. Si tu perds dans le voyage\nPlus d’un cher et doux trésor,\nPense au divin héritage\nQui Là-Haut te reste encore.\n\n4. Bénis donc, bénis sans cesse\nCe Père qui chaque jour\nRépand sur toi la richesse\nDe son merveilleux amour.''',
    numero: 200,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_201',
    titre: 'LA CROIX QUE DIEU ME DONNE',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. La croix que Dieu me donne\nA porter ici-bas\nEst jointe à la couronne\nQui ne se flétrit pas.\nCelui qui me l’impose\nSe nomme mon Sauveur ;\nEn son sein je dépose\nLe soupir de mon cœur.\n\n2. Le premier sur lui-même\nIl a chargé la croix.\nAprès lui, puisqu’il m’aime,\nDois-je en craindre le poids ?\nJésus, en qui j’espère\nEt qui la prit sur lui,\nMe la rendra légère :\nIl est mon sûr appui.\n\n3. Il sait, ce Dieu tout sage,\nIl sait, Bien mieux que moi,\nRégler ce court voyage\nOù s’avance ma foi.\nMa route m’est tracée\nPar sa main, Chaque jour ;\nPeut-elle être placée\nAilleurs qu’en son amour ?\n\n4. Prends donc, prends sans tristesse,\nO mon âme ! ta croix !\nDu Seigneur la sagesse\nEn mesura le poids.\nTon Dieu, ton Dieu fidèle,\nTe tient sous son regard :\nA souffrir s’il t’appelle,\nAh ! sache aimer ta part.''',
    numero: 201,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_202',
    titre: 'INVOQUE-MOI !',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. « Invoque-moi du sein de la détresse :\nMon bras puissant te sauvera. »\nC’est Dieu qui parle, oh ! crois à sa promesse !\nBientôt ta voix l’exaltera.\nC’est Dieu qui parle, oh ! crois à sa promesse !\nBientôt ta voix l’exaltera.\n\n2. Si tout est sombre, oh ! ne perds pas courage,\nNe doute pas du Dieu vivant.\nMême au milieu des fureurs de l’orage,\nDemeure en paix, crois seulement.\nMême au milieu des fureurs de l’orage,\nDemeure en paix, crois seulement.\n\n3. Mais n’attends pas que le mal te domine,\nQue l’ennemi soit dans ton cœur.\nElle est à toi la puissance divine :\nSaisis-la donc et sois vainqueur.\nElle est à toi la puissance divine :\nSaisis-la donc et soit vainqueur.\n\n4. Jamais, jamais Dieu, qui fit la promesse,\nNe manquera de l’accomplir.\nQue son enfant, sauvé de la détresse\nne manque pas de le bénir !''',
    numero: 202,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_203',
    titre: 'UN PARFAIT SAUVEUR.',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Oh ! croyez que Dieu vous donne\nTout ce qu’il promet,\nUn Sauveur qui vous pardonne,\nUn Sauveur parfait,\nUn Sauveur plein de puissance\nSur la terre et dans les cieux,\nUn Sauveur dont la présence\nSeule rend heureux.\n\n2. Ce Sauveur vous fera vivre\nComme il a vécu ;\nVous pourrez partout le suivre\nSans être vaincu.\nJusqu’au bout de la mêlée\nSon bras vous protégera,\nEt dans la sombre vallée\nIl vous conduira.\n\n3. Oh ! Jésus, dis-leur toi-même\nQue ta forte main\nFait passer celui qui t’aime\nPar un sûr chemin,\nQue tu veux de toute chute\nPréserver ton faible enfant,\nPour qu’il sorte de la lutte\nPur et triomphant.\n\n4. Oui, Seigneur, malgré l’orage\nEt malgré la nuit,\nNous voulons prendre courage,\nForts de ton appui.\nEt joyeux, pleins d’assurance,\nNous avancer vers le ciel,\nEn saluant à l’avance\nLe jour éternel.''',
    numero: 203,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_204a',
    titre: 'RESTE AVEC NOUS, SEIGNEUR',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Reste avec nous, Seigneur, le jour décline,\nLa nuit s’approche et nous menace tous ;\nNous implorons ta présence divine :\nReste avec nous Seigneur, reste avec nous.\n\n2. En toi nos cœurs ont salué leur Maître,\nEn toi notre âme a trouvé son Epoux ;\nA ta lumière elle se sent renaître ;\nReste avec nous, Seigneur, reste avec nous.\n\n3. Dans nos combats si ta main nous délaisse,\nSatan vainqueur nous tiendra sous ses coups ;\nQue ta puissance arme notre faiblesse ;\nReste avec nous, Seigneur, reste avec nous.\n\n4. Sous ton regard la joie est sainte et bonne,\nPrès de ton cœur les pleurs même sont doux ;\nSoit que ta main nous frappe ou nous couronne,\nReste avec nous, Seigneur, reste avec nous.''',
    numero: 204,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_204b',
    titre: 'AUSSI LONGTEMPS QU’ETRANGER SUR LA TERRE',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Aussi longtemps qu’étranger sur la terre,\nJe foulerai les sentiers douloureux,\nFais qu’en tout temps, à tout bien je préfère\nCe que tu veux, Seigneur ! ce que tu veux !\n\n2. Oui, qu’en tout temps, sous la croix la plus dure,\nAux jours mauvais comme aux jours radieux,\nJe puisse dire, éloignant tout murmure :\nComme tu veux, Seigneur ! comme tu veux !\n\n3. Je ne demande, ô mon Dieu ! qu’une chose :\nSois mon trésor, mon appui précieux ;\nPour tout le reste, ordonne, fais, dispose\ncomme tu veux, Seigneur ! comme tu veux.\n\n4. Etablis donc sur mon cœur ton empire ;\nRègne si bien et par de si doux nœuds,\nQue rien jamais ne m’empêche de dire :\nComme tu veux, Seigneur ! comme tu veux.\n\n5. Et puis un jour, sans trouble, sans alarmes,\nJe chanterai, sur des bords plus heureux,\nL’hymne qu’ici je mêle avec mes larmes :\nComme tu veux, Seigneur ! comme tu veux.''',
    numero: 204,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_205',
    titre: 'TON BEAU NOM CALME ET CONSOLE.',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Ton beau nom calme et console,\nO Jésus, mon Rédempteur !\nJe savoure ta parole,\nQuand ta voix parle à mon cœur\nSur toi seul je me repose,\nTa promesse me soutient ;\nAvec toi j’ai toute chose,\nEt mon âme t’appartient.\n\n2. Je t’apporte ma faiblesse,\nMieux que moi tu la connais.\nJe t’apporte ma tristesse,\nEt tu me donnes la paix.\nMes soucis tu les partages ;\nTu prends sur toi mes fardeaux ;\nDu regard tu m’encourages ;\nEt tu guéris tous mes maux.''',
    numero: 205,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_206',
    titre: 'QUEL AUTRE QUE TOI ?',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Quel autre au ciel ai-je que toi ?\nO mon Dieu, mon Sauveur !\nN’as-tu pas ouvert à ma foi\nLes trésors de ton cœur ?\nTu t’es donné toi-même à moi,\nEt, vivant sous ta douce loi,\nJe ne prends de plaisir qu’en toi,\nO mon Dieu, mon Sauveur !\n\n2. Que me font les biens d’ici-bas ?\nO mon Dieu, mon Sauveur !\nIls passent, tu ne passes pas ;\nTu suffis à mon cœur.\nDans le deuil ou la pauvreté,\nDans l’exil ou l’adversité,\nTu restes ma félicité,\nO mon Dieu, mon Sauveur !\n\n3. Je serai toujours avec toi,\nO mon Dieu, mon Sauveur !\nRien ici-bas, non, rien ne doit\nM’arracher de ton cœur.\nLes vents peuvent se déchainer,\nLes torrents peuvent déborder :\nTa grâce est mon ferme rocher,\nO mon Dieu, mon Sauveur !\n\n4. Par la main droite tu m’as pris,\nO mon Dieu, mon Sauveur !\nPar ton conseil, tu me conduis\nAu repos sur ton cœur ;\nEt quand viendra le dernier jour,\nTu m’ouvriras avec amour\nLes portes du divin séjour,\nO mon Dieu, mon Sauveur !''',
    numero: 206,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_207',
    titre: 'TIENS DANS TA MAIN…',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Tiens dans ta main, ta main puissante et forte,\nTon faible enfant qui seul ne peut marcher.\nVers toi, Seigneur, tout mon désir se porte,\nSur mon chemin garde moi de broncher !\n\n2. Tiens dans ta main tous les jours de ma vie,\nQu’ils soient des jours de peine ou de bonheur.\nQue de t’aimer, soit toute mon envie,\nQue je sois à toi, Jésus, mon Sauveur !\n\n3. Tiens dans ta main, mon cœur Plein de faiblesse,\nSans ton secours je ne puis faire un pas.\nEcoute-moi, regarde ma tristesse,\nviens, secours moi, ne m’abandonne pas !\n\n4. Tiens dans ta main, ma main parfois tremblante,\nQuand vient l’épreuve et ses jours de douleur.\nDonne à ma foi, souvent si chancelante,\nPlus de douceur, de paix et de ferveur !\n\n5. Tiens dans ta main mon âme tout entière ;\nRévèle-moi, Jésus, tout ton amour ;\nSois mon rocher, mon ancre, ma lumière,\nMon Roi, mon Maître, Jésus ! chaque jour !''',
    numero: 207,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_208',
    titre: 'COMME UN FLEUVE IMMENSE.',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Comme un fleuve immense\nEst la paix de Dieu.\nParfaite elle avance\nVainqueur en tout lieu ;\nParfaite elle augmente\nConstamment son cours ;\nParfaite sa pente\nS’abaisse toujours.\n\nChœur\nFondés sur Dieu même,\nNos cœurs à jamais\nont pour bien suprême\nsa parfaite paix.\n\n2. Sous ta main meurtrie,\nse brise, ô mon Roi !\nToute arme ennemie\nqu’on forge pour moi !\nRien ne peut me nuire\nni troubler mon cœur,\nTu veux me conduire,\nTu seras Vainqueur.\n\n3. Tu traces ma voie :\nj’y marche avec foi ;\nL’épreuve et la joie\nme viennent de toi !\nCadran de nos vies,\nMarque, chaque jour,\nles heures bénies\ndu soleil d’amour !\n\n4. Océan de gloire\npaix de mon Sauveur !\nGage de victoire !\nTrésor de bonheur !\nTa grâce infinie,\nCoulant nuit et jour,\nInonde ma vie\nde vagues d’amour !\n\nChœur\nSelon ta promesse,\nO Jésus mon Roi !\nJe trouve sans cesse\npaix parfaite et toi.''',
    numero: 208,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_209',
    titre: 'NE CRAINS RIEN !',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Ne crains rien je t’aime !\nJe suis avec toi !\nPromesse suprême,\nQui soutient ma foi.\nLa sombre vallée\nN’a plus de terreur,\nL’âme consolée,\nJe marche avec mon Sauveur\n\nRefrain\nNon, jamais tout seul,\nNon, jamais tout seul,\nJésus mon Sauveur me garde,\nJamais ne me Laisse seul.\nNon jamais tout seul,\nNon, jamais tout seul,\nJésus mon Sauveur me garde,\nJe ne suis jamais tout seul.\n\n2. L’aube matinière\nNe luit qu’aux beaux jours,\nJésus, ma lumière,\nM’éclaire toujours !\nQuand je perds de vue\nL’astre radieux,\nA travers la nue,\nJésus me montre les cieux.\n\n3. Les dangers accourent,\nSubtils, inconnus :\nDe près ils m’entourent,\nPlus près est jésus,\nQui dans le voyage,\nMe redit : « C’est moi ! »\nNe crains rien : courage !\nJe suis toujours avec toi !''',
    numero: 209,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_210',
    titre: 'JAMAIS DIEU NE DELAISSE.',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Jamais Dieu ne délaisse\nQui se confie en lui.\nSi le monde m’oppresse,\nJésus est mon appui.\nCe Dieu bon et fidèle\nGardes-en sa paix les siens\nPour la vie éternelle,\nEt les comble de biens.\n\n2. Je veux, sachant qu’il m’aime,\nMe remettre à ses soins :\nBeaucoup mieux que moi-même\nIl connait mes besoins.\nCe Dieu plein de tendresse\nConfondrait-il ma foi ?\nNon ; plus le mal me presse,\nPlus Il est près de moi.\n\n3. Monde ! ce qui t’enchante,\nBiens, honneurs, volupté,\nN’est plus ce qui me tente :\nTout n’est que vanité !\nMon trésor, mon partage,\nMon tout, c’est Jésus-Christ,\nQui me donne pour gage\nLe sceau de son Esprit.\n\n4. Seigneur ! par l’efficace\ndu sang versé pour moi,\nAccorde-moi la grâce\nde vivre tout pour toi.\nC’est la vie éternelle\ndéjà dès ici-bas,\nJusqu’au jour qui m’appelle\nà passer dans tes bras.''',
    numero: 210,
    auteur: 'Auteur inconnu',
  ),
  Cantique(
    id: 'petit_troupeau_211',
    titre: 'UN CHRETIEN, JE CROYAIS ETRE.',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Un chrétien, je croyais être.\nMais j’ignorais le bonheur,\nQue Jésus, mon divin Maître,\nVient apporter dans un cœur.\n\nRefrain\nOh ! la paix que Jésus donne,\nJe ne la connaissais pas,\nTout sur mon chemin rayonne,\nDepuis qu’il conduit mes pas.\n\n2. Sa puissance souveraine\nMaintenant règne sur moi ;\nDu péché brise la chaîne,\nMe rend vainqueur par la foi.\n\n3. Et, tranquillement j’avance,\nM’appuyant sur mon Sauveur.\nSon adorable présence\nMe donne le vrai bonheur !''',
    numero: 211,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_212',
    titre: 'SEIGNEUR, TIENS MA MAIN !',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Quand je craindrai sur la route,\nSeigneur, tiens ma main !\nQuand m’assaillira le doute,\nSeigneur, tiens ma main !\n\nChœur\nSeigneur, tiens ma main ! (ma main)\nSeigneur, tiens ma main ! (ma main)\nOh ! Sauveur incomparable,\nToujours tiens ma main !\n\n2. Quand le péché m’environne,\nSeigneur, tiens ma main !\nLa victoire, tu la donnes,\nSeigneur, tiens ma main !\n\n3. Dans la joie ou la tristesse,\nSeigneur, tiens ma main !\nDans la paix ou la détresse,\nSeigneur, tiens ma main !\n\n4. Dans la nuit d’épreuve amère,\nSeigneur, tiens ma main !\nConduis-moi vers la lumière !\nSeigneur, tiens ma main !\n\n5. Je verrai ta main meurtrie,\nPour toujours là-haut !\nDans la céleste patrie,\nOh ! divin Agneau !''',
    numero: 212,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_213',
    titre: 'QUEL AMI FIDELE ET TENDRE !',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Quel ami fidèle et tendre\nNous avons en Jésus-Christ,\nToujours prêt à nous entendre,\nA répondre à notre cri !\nIl connait nos défaillances,\nNos chutes de chaque jour\nSévère en ses exigences,\nIl est riche en son amour\n\n2. Quel ami fidèle et tendre\nNous avons en Jésus-Christ,\nToujours prêt à nous comprendre\nQuand nous sommes en souci !\nDisons-lui toutes nos craintes,\nOuvrons-lui tout notre cœur\nBientôt ses paroles saintes\nNous rendrons le vrai bonheur.\n\n3. Quel ami fidèle et tendre\nNous avons en Jésus-Christ,\nToujours prêt à nous défendre\nQuand nous presse l’ennemi !\nIl nous suit dans la mêlée,\nNous entoure de ses bras,\nEt c’est lui qui tient l’épée\nQui décide des combats.\n\n4. Quel ami fidèle et tendre\nNous avons en Jésus-Christ,\nToujours prêt à nous apprendre\nA vaincre en comptant sur lui !\nS’il nous voit vrais et sincères\nA chercher la sainteté,\nIl écoute nos prières\nEt nous met en liberté.\n\n5. Quel ami fidèle et tendre\nNous avons en Jésus-Christ !\nBientôt il viendra nous prendre\nPour être au ciel avec lui.\nSuivons donc l’étroite voie\nEn comptant sur son secours\nBientôt nous aurons la joie\nDe vivre avec lui toujours !''',
    numero: 213,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_214',
    titre: 'O JOUR BENI !',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. O jour béni, jour de victoire\nQue je ne saurais oublier ;\nJ’ai vu, j’ai vu le Roi de gloire\nApparaissant sur mon sentier !\n\n2. Sa beauté, sa gloire infinie\nDe tous les côtés m’entourait ;\nSo regard, qui porte la vie,\nSur ma pauvre âme s’abaissait.\n\n3. Son manteau couvrait ma misère,\nSes bras me serraient sur son cœur ;\nil me portait dans sa lumière,\nloin du péché, de la douleur.\n\n4. De sa main essuyant mes larmes,\nIl me parlait de son amour :\nViens mon enfant, sois sans alarmes ;\nJe te prends à moi sans retour.\n\n5. Et je suis dans cette retraite,\nDont je ne sortirai jamais ;\nEt je goûte une paix parfaite,\nOù ma foi s’abreuve à longs traits\n\n6. Non, tout ceci n’est point un rêve,\nMais la grande réalité ;\nC’est un jour nouveau qui se lève,\nQui doit durer l’éternité.\n\n7. En avant donc, avec courage,\nAvec espoir, avec bonheur,\nJe me consacre sans partage\nA mon Dieu, mon Roi, mon Sauveur.\nIl dit à mon âme ravie\nNe t’occupe plus que de moi,\nEt je dirigerai ta vie\nEt je m’occuperai de toi.\n\n8. Il a saisi mes mains tremblantes ;\nJ’ai dit amen à ce contrat !\nIl étend des mains bénissantes,\nC’est en effet lui qui combat.\n\n9. Et, les yeux fermés, je m’avance,\nTranquille, sur le droit chemin.\nJ’entonne un chant de délivrance ;\nIl peut tout, car je ne suis rien !''',
    numero: 214,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_215',
    titre: 'SUR TOI JE ME REPOSE.',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Sur toi je me repose,\nO jésus, mon Sauveur !\nFaut-il donc autre chose\npour un pauvre pécheur ?\nConduit par ta lumière,\nGardé par ton amour,\nVers la maison du Père\nMarchant de jour en jour …\n\nRefrain\nSur toi je me repose,\nO Jésus, mon Sauveur !\nFaut-il donc autre chose\nPour un pauvre pécheur ?\n\n2. Ah ! ma misère est grande !\nMais tu m’as pardonné ;\nSainte et vivante offrande\npour moi tu t’es donné ;\net de toute souillure,\npar le sang de ta croix,\nMon âme devient pure ;\nTu l’as dit, je le crois !\n\n3. Moi-même en sacrifice\nimmolé désormais,\nSeigneur, à ton service\nme voici pour jamais !\nQu’importe ma faiblesse,\nPuisque je t’appartiens :\nTu n’as point de richesse\nqui ne soit pour les tiens.\n\n4. Au plus fort de l’orage\nTu te tiens près de moi,\nRanimant mon courage\net soutenant ma foi :\nC’est dans ton cœur qui m’aime\nQue tu sais me cacher ;\nEn vain Satan lui-même\nvoudrait m’en arracher…\n\n5. En toi j’ai la victoire,\nla paix, la liberté ;\nA toi je rendrai gloire\ndurant l’éternité ;\nSi du bonheur qui passe\nla source doit tarir,\nC’est assez de ta grâce\npour vivre et pour mourir…''',
    numero: 215,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_216',
    titre: 'FACE A FACE.',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Voir mon Sauveur face à face,\nVoir Jésus dans sa beauté,\nO joie ! ô suprême grâce !\nO bonheur ! félicité !\n\nChœur\nOui, dans ta magnificence\nJe te verrai, divin Roi !\nPour toujours en ta présence\nJe serai semblable à toi !\n\n2. Ta gloire est encore voilée,\nAh ! d’un voile ensanglanté !...\nBientôt sera révélée\nTon ineffable beauté !\n\n3. Oh ! quels transports d’allégresse,\nQuand tes yeux baissés sur moi,\nMe diront avec tendresse :\n« Je mourus aussi pour toi ! »''',
    numero: 216,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_217',
    titre: 'IL VA VENIR, LE SEIGNEUR QUE J’ADORE',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Il va venir, le Seigneur que j’adore ;\nBientôt sa voix retentira du ciel.\nA mes regards l’horizon se colore\nDes purs rayons du Soleil éternel.\n\nChœur\nGloire à toi seul, Seigneur Jésus,\nGloire à jamais, gloire à ton nom !\nDe ton beau ciel je ne sortirai plus\net pour toujours j’exalterai ton nom.\n\n2. Qu’autour de moi s’élève la tempête\nJe suis en paix, car tu veilles sur moi ;\nJe puis, ô mon Sauveur, lever la tête,\nTu vas venir me prendre auprès de toi.\n\n3. Maison du Père, où ton amour m’appelle,\nSainte cité, demeure des élus,\nLes lieux qu’éclaire une gloire éternelle,\nMe sont ouverts par toi-même, ô Jésus !\n\n4. Bonheur ineffable ! Quand dans ta gloire,\nAux yeux des rachetés tu paraîtras,\nJésus, avec le cri de la victoire\nprès de toi, pour toujours tu me prendras.''',
    numero: 217,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_218',
    titre: 'OR, VERS MINUIT…',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Or, vers minuit, se fit entendre\nun cri disant : « Voici l’Epoux ! »\nC’est Jésus ! voyez-le descendre !\nAutour de lui rallions-nous.\n\nRefrain\nQue l’Eglise aujourd’hui s’apprête\npour l’heure de ce rendez-vous ;\nC’est la veille d’un jour de fête ;\n« Voici l’Epoux ! voici l’Epoux ! »\n\n2. Cette espérance glorieuse\nRanime nos cœurs abattus\nOh ! quelle perspective heureuse,\nD’être bientôt avec Jésus !\n\n3. Ceux qui dorment, de leur poussière\nEntendrons ta voix comme nous ;\nEt, comme nous, loi de la terre,\niront au-devant de l’Epoux.''',
    numero: 218,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_219',
    titre: 'DANS LA PATRIE ETERNELLE',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Dans la patrie éternelle\nLe repos enfin m’attend,\nJésus l’a pour moi, rebelle,\nConquis au prix de son sang.\n\nRefrain\nJésus, Jésus m’y convie,\nPrès de l’aurore de la vie.\nIl promet une patrie,\nun repos pour moi.\nAu péché je suis en butte,\nLà plus de mal, plus de chute,\nLe repos après la lutte,\nLe repos pour moi.\n\n2. Il prépare ma demeure\nPour toute l’éternité\nQuand viendra ma dernière heure,\nTout sera félicité.\n\n3. Jamais douleur, ni tristesse\nNe seront près du Sauveur ;\nTout sera chant d’allégresse,\nTout sainteté, tout bonheur.\n\n4. Nous verrons de Christ la gloire\nEt la mort ne sera plus,\nTriomphez de sa victoire,\nO rachetés de Jésus !\n\n5. Chantez, éclatez de joie,\nHeureux héritiers du ciel !\nCar au terme de la voie\nEst un repos éternel !''',
    numero: 219,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_220',
    titre: 'AVEC ALLEGRESSE !',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Avec allégresse\nMarcher vers le ciel,\nRegarder sans cesse\nNotre Emmanuel ;\nPuiser foi nouvelle\nDans ce doux regard,\nde l’âme fidèle,\nc’est la sûre part.\n\nRefrain\nFrères, frères, les cœurs en haut !\nJésus nous appelle,\nIl viendra bientôt.\nJésus nous appelle,\nil viendra bientôt.\n\n2. Les anges fidèles,\nles saints rachetés,\nTroupes immortelles,\nDisent tes bontés.\nJésus, Roi de gloire !\nTon amour vainqueur,\nGage de victoire\nSauve le pécheur.\n\n3. Là tout est lumière,\nPaix et sainteté ;\nLà, plus de misère,\nTout est charité !\nSur ce doux rivage\nOnt cessé les pleurs ;\nJésus, ton image\nest dans tous les cœurs.\n\n4. Amis, bon courage !\nL’étoile qui lut\ndissipe l’orage\net la sombre nuit.\nVeillons sur notre âme,\nJésus vient bientôt !\nLui seul nous réclame !\nTous les cœurs en haut !\n\nRefrain\nFrères, frères, Le ciel est près.\nJésus, Roi de gloire,\nY règne à jamais !\nJésus, Roi de gloire,\ny règne à jamais.''',
    numero: 220,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_221',
    titre: 'VERS LE CIEL',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Vers le ciel, vers le ciel, j’entends,\nJésus, ton appel, et mon cœur vers toi s’élance,\nDans la joyeuse espérance de te voir, Emmanuel !\n\n2. Quel bonheur ! quel bonheur.\nD’être auprès de toi, Seigneur !\nD’entrer dans la cité sainte,\nDélivré de toute crainte,\nA l’abri du Tentateur.\n\n3. Ici-bas, ici-bas\nTout se flétrit sous nos pas.\nDe toi mon âme est avide ;\nJe voudrais, d’un vol rapide,\naller, ô Dieu ! dans tes bras.\n\n4. Heureux jour, heureux jour\nOù s’ouvrira le séjour\nde mon Sauveur que j’adore.\nQuand brillera ton aurore ?\nJe l’attends, ô Dieu d’amour !''',
    numero: 221,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_222',
    titre: 'LA CITE DU CIEL',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Il est un espoir, qui toujours soulage\nles cœurs fatigués et lassés du chemin ;\nil est un repos au bout du voyage ;\nA toutes nos luttes, il est une fin :\n\nRefrain\nC’est la cité du ciel,\nLe bonheur éternel,\nSéjour où les élus\nContempleront Jésus !\n\n2. Il est un séjour où tout est lumière,\nOù rien de souillé, ni d’impur n’entrera,\nOù ne seront plus ni mort, ni misère,\nOù le racheté pour toujours chantera.\n\n3. Dans la cité sainte, il n’est plus de temple :\nLe Seigneur et l’Agneau seront avec nous.\nPour l’éternité,\nL’Eglise contemple son bien-aimé Sauveur,\nson Chef, son Epoux.\n\n4. O Jérusalem ! céleste patrie !\nTout mon cœur s’enflamme, quand je pense à toi.\nAgneau mis à mort, Prince de la vie,\nEntends mes soupirs et l’appel de ma foi.\n\nRefrain\nBientôt, bientôt au ciel,\nOh ! bonheur éternel,\nAvec tous les élus,\nje te verrai, Jésus !''',
    numero: 222,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_223',
    titre: 'CONNAIS-TU CETTE CITE ?',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Connais-tu cette cité,\nLa cité céleste ?\nDans ses murs tout est clarté,\nPlus d’ombre funeste.\nPèlerins et voyageurs,\nici-bas dans les douleurs,\nToujours ce trésor nous reste,\nLa cité céleste.\n\n2. Connais-tu cette cité,\nLa cité bénie ?\nOù tout est félicité,\nSublime harmonie.\nL’Agneau seul est son soleil\nEt son éclat sans pareil\nIllumine et vivifie\nLa cité bénie.\n\n3. D’or, de perles et d’azur\nEst notre patrie !\nConnais-tu le fleuve pur\nL’arbre de la vie ?\nPlus de fardeaux à jamais,\nPour les élus tout est paix !\nDe Dieu la cité chérie,\nC’est notre patrie.\n\n4. O Salem, repos si doux,\nMon cœur te désire !\nAprès son chef, son époux,\nL’Eglise soupire !\nEtre à toujours devant toi,\nMon Seigneur ! mon divin Roi,\nPour te chanter et te dire :\nMon cœur te désire.''',
    numero: 223,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_224',
    titre: 'CONTEMPLET MON DIEU SUR SON TRONE…',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Contempler mon Dieu sur son trône,\nVivre avec Jésus dans le ciel, (dans le ciel)\nJeter à ses pieds ma couronne,\nC’est là le bonheur éternel. (Dans le ciel).\n\nChœur\nDans le ciel, (dans le ciel),\nDans le ciel, (dans le ciel),\nVivre avec Jésus dans le ciel, (dans le ciel),\nDans le ciel, (dans le ciel),\ndans le ciel, dans le ciel,\nc’est là le bonheur éternel.\n\n2. Unir ma voix aux chœurs des anges,\nBénir, louer Emmanuel, (dans le ciel),\nChanter à jamais ses louanges,\nC’est là le bonheur éternel. (Dans le ciel),\n\n3. Jouir d’une paix infinie,\nRevoir mes amis dans le ciel, (dans le ciel),\nPosséder l’immortelle vie,\nC’est là le bonheur éternel. (Dans le ciel),\n\n4. Retrouver les saints dans la gloire,\nPrès du trône de l’Eternel, (dans le ciel),\nCélébrer la même victoire.\nC’est là le bonheur éternel. (Dans le ciel)''',
    numero: 224,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_225',
    titre: 'AU CIEL EST LA MAISON DU PERE',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Au ciel est la maison du Père,\nEtincelante de beauté.\nTout en elle est gloire et lumière,\nIneffable félicité.\n\nChœur\nVers le ciel, (Vers le ciel),\nvers le ciel (vers le ciel),\nNous marchons vers le ciel,\nC’est au ciel, (C’est au ciel),\nc’est au ciel (c’est au ciel)\nqu’est notre héritage éternel.\n\n2. Là le bonheur est sans mélange,\nLà le péché ne règne plus ;\nC’est l’amour et c’est la louange,\nC’est la présence de Jésus.\n\n3. Dans nos fatigues sur la terre,\nDans nos combats et nos douleurs,\nC’est toi, douce maison du Père,\nQue cherchent nos yeux et nos cœurs.\n\n4. Jours de peine ou jours d’allégresse,\nDouce brise ou vents orageux,\nPoussez-nous, poussez-nous sans cesse\nvers notre demeure des cieux.''',
    numero: 225,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_226',
    titre: 'NOUS ATTENDONS LE SAUVEUR GLORIEUX !',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Nous attendons le Sauveur glorieux\nd’un cœur joyeux, remplis de confiance.\nIl va régner sur la terre et les cieux,\nDans le beau jour de notre délivrance.\n\nRefrain\nVoir face à face Notre Sauveur.\nOh ! quelle grâce, quel parfait bonheur !\nVoir face à face Notre Sauveur,\nOh ! quel parfait bonheur.\n\n2. Autour de lui nous nous retrouverons\nen un clin d’œil, formés à son image :\nA sa rencontre, ensemble nous irons,\nEt le servir sera notre partage.\n\n3. Là, le soleil chasse l’obscurité,\nun jour sans fin succède à la nuit sombre ;\nPlus d’ouragan dans ce port abrité,\nOh ! le bonheur sera pur et sans ombre.\n\n4. Tout près de lui nous pourrons approcher,\net notre main par la sienne tenue,\ndans les lieux saints qu’il fera beau marcher,\naprès la foi, pour toujours par la vue.''',
    numero: 226,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_227',
    titre: 'IL EST UN PAYS MAGNIFIQUE',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Il est un pays magnifique, sans péché,\nsans maux ni chagrins,\nOù des élus le saint cantique\nS’unit aux chœurs des séraphins.\n\nChœur\nAllons tous, allons tous,\nAllons dans ce beau pays promis ;\nAllons tous, Allons dans le paradis.\nAllons tous, allons tous,\nAllons dans ce beau pays promis ;\nAllons tous, allons tous,\nAllons dans le paradis.\n\n2. C’est le pays de la lumière,\nDu vrai repos et de la paix ;\nC’est là que la gloire du Père\nbrille toujours dans son palais.\n\n3. C’est la cité sainte et bénie,\nBrillante d’or et de cristal,\nOù croit aussi l’arbre de vie,\nEt d’où l’Agneau chasse tout mal.\n\n4. C’est le pays de la promesse\nque la foi nous fait entrevoir.\nAh ! puissions-nous louer sans cesse\nJésus, pour ce précieux espoir.''',
    numero: 227,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_228',
    titre: 'LA TROMPETTE A RETENTI',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. La trompette a retenti :\nEcoutez, écoutez,\ndu ciel résonne ce cri :\nLe Seigneur revient !\nOh ! toi qui sommeilles\nEcoutez, écoutez,\nViens et te réveille :\nLe Seigneur revient !\n\n2. Entendez-vous le clairon\nEcoutez, écoutez,\nL’Epouse en connait le son :\nJésus vient bientôt !\nEt dans l’allégresse\nEcoutez, écoutez,\nSon cœur dit sans cesse :\nJésus, biens bientôt !\n\n3. La trompette retentit :\nEcoutez, écoutez,\nLevez-vous, il est minuit,\nVoici l’Epoux vient !\nAu banquet de fête\nEcoutez, écoutez,\nQue chacun s’apprête\nVoici l’Epoux vient !''',
    numero: 228,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_229',
    titre: 'ICI PLEURER ET SOUFFRIR',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Ici pleurer et souffrir,\nVoir ceux qu’on aime mourir,\nAux cieux plus de tristesse !\n\nRefrain\nOh ! nous serons aux cieux\npour toujours, toujours heureux.\nPrès du Seigneur Jésus.\nOù l’on ne se quitte plus !\n\n2. Purs, par le sang de l’Agneau,\nRachetés, nés de nouveau,\nSaints comme Dieu lui-même.\n\n3. Nous verrons notre Sauveur :\nO grâce, ô gloire, ô bonheur !\nOui, nous verrons sa face !\n\n4. D’âge en âge, en son saint lieu,\nNous dirons à notre Dieu\nLe cantique qu’il aime.''',
    numero: 229,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_230',
    titre: 'SAINTE SION !',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Sainte Sion, ô patrie éternelle !\nSéjour des cieux qu’habite le grand Roi,\nOù doit sans fin régner l’âme fidèle,\nC’est mon bonheur que de penser à toi.\n\n2. Dans tes parvis tout est joie, allégresse,\nChants de triomphe, ineffables plaisirs ;\nLà plus de deuil, plus de maux, de détresse,\nLà plus d’ennuis, de langueurs, de soupirs.\n\n3. Tes habitants ne craignent plus l’orage ;\nIls sont au port, ils y sont pour jamais :\nLeur ciel est pur, il n’a plus de nuage,\nDieu dans leur cœur fait abonder la paix.\n\n4. O mon Sauveur, qui par ton sacrifice,\nAux rachetés ouvris ces nouveaux cieux.\nTu m’as couvert de ta sainte justice ;\nvers ta Sion j’élève en paix mes vœux.''',
    numero: 230,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_231',
    titre: 'OH ! QUAND SERA-CE, FILS DE DIEU',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Oh ! quand sera-ce, Fils de Dieu,\nQue ton Eglise émue\nVerra son Epoux, du saint lieu\nDescendre sur la nue ?\nRéponds à notre cri Seigneur,\nEt viens bientôt puissant Vainqueur !\nOh ! viens, Seigneur Jésus !\nOh ! Viens, Seigneur Jésus !\n\n2. Tu nous donnes ta douce paix,\nNous sentons ta présence ;\nTu ne nous laisseras jamais,\nC’est là notre assurance,\nMais quand pourrons-nous donc enfin\nte voir ô notre Epoux divin ?\nOh ! viens, Seigneur Jésus !\nOh ! viens, Seigneur Jésus !\n\n3. De tous tes ennemis, ô Dieu,\nNous voyons la puissance :\nQue de rebelles en tout lieu,\nDe vice et de souffrance !\nViens bientôt, grand Triomphateur,\nMettre un terme à tant de douleur !\nOh ! viens, Seigneur Jésus !\nOh ! viens, Seigneur Jésus !\n\n4. « Veillez, priez, nous dit Jésus,\nTenez vos lampes prêtes ! »\nQue rien ne nous entrave plus,\nLevons, levons nos têtes !\nIl vient, il vient, entendez-vous\nCe cri : « Voici, voici l’Epoux ! »\nTu viens, Seigneur Jésus !\nTu viens, Seigneur Jésus !''',
    numero: 231,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_232',
    titre: 'NOMBREUX COMME LE SABLE DES PLAGES.',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Oh ! quel beau jour, où, devant ta face,\nTous tes rachetés apparaîtront,\nEn célébrant ta gloire et ta grâce !\nDe leurs chants les cieux retentiront.\n\nChœur\nNombreux comme le sable des plages !\nNombreux comme la sable des plages !\nOh ! que ce sera beau, lorsque nous irons là-haut,\nAussi nombreux que le sable des plages !\n\n2. Je la vois cette armée innombrable,\nSes rangs reflétant l’éclat des cieux,\nTressaillant d’un bonheur ineffable,\nSur le soleil du séjour radieux.\n\n3. De son trône éclatant de lumière,\nJ’entends la douce voix du Seigneur :\n« Venez, vous bien-aimés de mon Père,\nLa couronne est à chaque vainqueur ».\n\n4. Puis au sein du vaste océan d’anges\nNos cohortes déversent leurs flots ;\nL’Univers tremble au son des louanges ;\nPlus de combats, de pleurs, de sanglots !''',
    numero: 232,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_233',
    titre: 'QUEL BONHEUR ! JESUS VIENT !',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Quel bonheur ! Jésus vient ! Sa voix se fait entendre ;\nLes ténèbres s’en vont ; voici le point du jour.\nQu’il nous trouve veillant, les reins ceints pour l’attendre,\nPortant du fruit pour lui, heureux dans son amour !\n\n2. Bientôt près de son trône, où notre âme ravie\nGoûtera le repos du séjour glorieux,\nNos yeux contempleront le Prince de la vie,\nCelui qui s’abaissa pour nous ouvrir les cieux.\n\n3. Alors éclatera l’hymne de l’allégresse ;\nNos lèvres s’ouvriront dans un parfait bonheur,\nEt tous, à l’unisson, répéteront sans cesse\nles gloires de l’Agneau, du divin Rédempteur.''',
    numero: 233,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_234',
    titre: 'BIENTOT, SEIGNEUR, TU REVIENDRAS !',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Bientôt, Seigneur, tu reviendras !\nToi, notre chef, notre espérance !\nJour de bonheur, de délivrance !\nAu ciel tu nous introduiras :\nTu reviendras !\n\n2. Tu l’as promis : plus qu’un instant,\nJe viens vous prendre dans ma gloire ;\njusqu’au signal de la victoire,\nVeillez, priez, en combattant,\nPlus qu’un instant !\n\n3. Ne tarde plus : reviens, Seigneur !\nC’est le soupir de ton Eglise ;\nElle est à toi, tu l’as acquise,\nMourant pour elle, ô Rédempteur !\nReviens Seigneur !\n\n4. Pour ton retour, oh ! tiens-nous prêts !\nQue ton Esprit nous sanctifie,\nQue nul des tiens, manquant de vie,\nNe soit confus à ton aspect.\nOui, tiens-nous prêts !''',
    numero: 234,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_235',
    titre: 'PELERIN SUR CETTE TERRE',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Pèlerin sur cette terre,\nJe m’avance vers le ciel,\nVers le pays de lumière,\nSéjour éternel !\nIci d’ennemis sans nombre\nJe me vois environné,\nMa route souvent est sombre,\nMais je suis aimé.\n\n2. Aimé du plus tendre Père\nQui m’a conduit en chemin,\nEt dirigé ma carrière\nPar sa sûre main.\nPendant l’épreuve et l’orage,\nDans l’angoisse et la douleur,\nSa voix me dit :\n« Prends courage, Je suis ton Sauveur ! »\n\n3. Travailler pour un tel Maître,\nLe servir en l’attendant,\nApprendre à le mieux connaitre\nEn le contemplant !\nQuel bonheur incomparable,\nEt qu’il est heureux mon sort !\nOui, mon Sauveur adorable\nMe conduit au port !\n\n4. Le port, c’est le doux rivage\nOù cesseront tous nos pleurs,\nOù de Jésus-Christ l’image\nRavira nos cœurs.\nQu’importe donc la souffrance,\nJésus vient ! levons les yeux !\nBien près est la délivrance,\nils s’ouvrent les cieux !''',
    numero: 235,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_236',
    titre: 'LE TEMPS S’ENVOLE !',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Le temps s’envole et nous emporte,\nEn vain voulons-nous l’arrêter,\nSa course toujours la plus forte,\nSans trêve, rapide, nous porte.\nInutile de regretter.\n\n2. Le temps s’envole. Et tout s’efface.\nLe monde n’est que vanité !\nSa gloire, ses faveurs, tout passe.\nDe ses attraits le cœur se lasse\nSur le seuil de l’Eternité.\n\n3. Le temps s’envole. Et tout rayonne\nSur ton chemin, sainte Cité !\nDu Sauveur l’amour qui pardonne,\nInonde le cœur et l’étonne…\nIneffable félicité !\n\n4. Le temps s’envole. Et notre Père\nNous prépare pour son séjour.\nDans tous nos cœurs sa grâce opère,\nil recueille notre prière.\nFrères, croyons à son amour.\n\n5. Le temps s’envole. Et la souffrance,\nLes pleurs, le désespoir, la mort,\nvont disparaitre, en la présence\nde Jésus-Christ notre espérance ;\nQuand nous entrerons dans le port.\n\n6. Le temps s’envole. Et sur la nue\nNos yeux contempleront Jésus.\nOh ! quel jour pour l’Eglise émue\nQue la gloire de sa venue !\nQuel triomphe pour les élus''',
    numero: 236,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_237',
    titre: 'QU’ILS SONT BEAUX SUR…',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Qu’ils sont beaux sur les montagnes\nLes pieds de tes serviteurs,\nQui parcourent les campagnes,\nPrêchant la grâce aux pécheurs !\n\n2. O délicieuse vie\nD’un serviteur de Jésus,\nQui pour son Maître s’oublie,\nEn annonçant ses vertus !\n\n3. Libre de toute autre chaîne,\nLe chrétien qui sert son Dieu,\nDans la souffrance et la peine\nSuit son modèle en tout lieu.\n\n4. Il faut qu’en vivante offrande\nIl se donne à son Sauveur ;\nC’est là ce que Dieu demande\nD’un fidèle serviteur.\n\n5. Au pécheur qui désespère\nAnnoncez la guérison,\nPrêchez la mort salutaire\nQui paya notre rançon.\n\n6. Dans le cœur le plus aride,\nDieu fait jaillir en un jour\nLa source fraîche et limpide\nDe son éternel amour.\n\n7. Parlez du Dieu qui console\nA tous les cœurs affligés ;\nQu’aux accents de sa parole\nLes pécheurs soient réveillés.\n\n8. Montrez-leur, dans leur misère,\nCelui qui veut les sauver,\nEt que partout sur la terre\nOn apprenne à l’invoquer.''',
    numero: 237,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_238',
    titre: 'GLOIRE AU RESSUSCITE ! CHŒUR',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Alléluia ! Jésus sort de la tombe,\nAdorons tous ce glorieux Sauveur.\nSous son pouvoir déjà la mort succombe,\nJésus est Roi,\nIl est le grand Vainqueur.\n\nChœur\nGloire, honneur, au Ressuscité ;\nGloire durant l’éternité !\nQue la terre, avec les cieux,\nChante son nom glorieux.\nGloire ! Alléluia !\n\n2. Alléluia ! Exaltons la victoire\nde Jésus-Christ, le grand Libérateur.\nIl nous invite à vivre pour sa gloire,\nNous le pourrons s’il vit en notre cœur.\n\n3. Alléluia ! Jésus nous justifie,\nDevant son Père, il plaide avec amour.\nQue peut la mort ?\nC’est lui qui vivifie ;\nIl nous attend au radieux séjour.''',
    numero: 238,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_239',
    titre: 'CHRIST EST MA PORTION. CHŒUR',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. O toi, Seigneur Jésus, intarissable source\nde la paix, de la joie et du seul vrai bonheur,\nViens Jésus, viens remplir mon cœur qui dans sa course\ndepuis longtemps déjà te désire, Seigneur.\nDaigne seul, en tout temps, occuper mes pensées,\nTiens-les, ô mon Sauveur ! sur toi seul attachées,\nCar nul autre que toi, ne peut, ô Rédempteur\nDans ce triste désert, satisfaire mon cœur.\n\n2. De ton trône éternel, rayonnant de lumière,\nO Dieu ! ton œil sonda mon immense malheur,\nEt d’en-haut, mesurant ma profonde misère,\nSur la terre tu vins, pour me sauver, Seigneur,\npour me donner du ciel les splendeurs éternelles,\nPour me faire goûter des délices nouvelles.\nPour partager ton trône et ta gloire avec moi,\nPour ouvrir l’espérance aux regards de ma foi.\n\n3. Seigneur, que désormais, ma constante devise,\nJusqu’au moment béni de ton prochain retour\npour m’introduire enfin dans la terre promise,\nSoit de vivre pour toi, de croître en ton amour.\nAttache, ô mon Sauveur ! mon âme à ta parole,\nC’est elle qui soutient, qui guide et qui console,\nEt qui, dans ce désert peut diriger mes pas.\nPour surmonter le monde et tous ses vains appâts.''',
    numero: 239,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_240',
    titre: 'SEIGNEUR JESUS, BON BERGER !',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Seigneur Jésus ! Bon Berger\nDes petits agneaux :\nEfface tous mes péchés,\nPrends tous mes fardeaux.\n\n2. Garde-moi tout près de Toi\nSur l’étroit chemin :\nTous les jours, oh ! conduits-moi\nPar ta sûre main.\n\n3. Et de ta parfaite paix,\nRemplis tout mon cœur.\nNe m’abandonne jamais,\nMon divin Sauveur.\n\n4. Toi qui m’aimas le premier,\nJe t’aime en retour :\nComment te remercier\nPour ton grand amour ?''',
    numero: 240,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_241',
    titre: 'TOUT JOYEUX',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Tout joyeux bénissons le Seigneur,\nChantons et célébrons ses louanges,\nAdorons avec foi le Sauveur,\nNous joignant aux célestes phalanges.\n\nChœur\nGloire à Dieu ! (Gloire à Dieu !)\nGloire à Dieu ! (Gloire à Dieu !)\nQue ce chant retentisse en tout lieu ! (Gloire à Dieu !)\nGloire à Dieu ! (Gloire à Dieu !)\nGloire à Dieu ! (Gloire à Dieu !)\nQue ce chant retentisse en tout lieu.\n\n2. Dieu, dans son incomparable amour,\nDu ciel envoya son Fils unique,\nEt la terre et les cieux, dans ce jour,\nS’unissent pour chanter ce cantique.\n\n3. Le châtiment qui produit la paix,\nJésus-Christ l’a subi pour mon âme ;\nIl voulut expier nos forfaits,\nEn mourant, lui, sur le bois infâme.\n\n4. Nous voulons en retour, non Sauveur,\nT’aimer par-dessus tout autre chose ;\nForme ton amour dans notre cœur,\nEt puis, de chacun de nous dispose !''',
    numero: 241,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_242',
    titre: 'JE SUIS PETIT …',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Je suis petit, mais que m’importe ?\nDu bon Berger je suis l’Agneau.\nJe puis donc entrer par la porte\nQui mène au ciel tout son troupeau.\n\nRefrain\nAh ! que je mette,\nAh ! que je mette,\nO bon Sauveur ! Sous ta houlette,\nSous ta houlette, Mon jeune cœur !\n\n2. Je suis petit, mais de mon âge ;\nJésus, tu fus tout comme moi ;\nSi donc ton Esprit me rend sage,\nAlors je serai comme toi.\n\n3. Je suis petit, mais si ma vie est\naussi chétive ici-bas,\nJésus, la tienne est infinie,\nEt d’elle tu m’enrichiras.''',
    numero: 242,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_243',
    titre: 'SUIVEZ L’AGNEAU…',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Suivez, suivez l’Agneau jusqu’au soir de la vie ;\nSuivez, suivez-le tous, enfants, dès le berceau.\nAu bonheur des élus sa grâce vous convie :\nSuivez (suivez) toujours (toujours) suivez toujours l’Agneau !\n\n2. Suivez-le sans frayeur au joue de la tristesse,\nDéposez dans son sein votre pesant fardeau.\nSuivez-le dans la paix au jour de l’allégresse :\nSuivez (suivez) toujours (toujours) suivez, suivez l’Agneau !\n\n3. Mais suivez-le partout, le Berger qui vous mène\nNe saurait égarer son cher, son faible agneau.\nOui, le joug du Seigneur est une douce chaîne :\n(suivez) toujours (toujours) suivez partout l’Agneau !\n\n4. Suivez-le sans broncher ! Le chemin solitaire\ndoit vous conduire, un jour, au céleste repos,\nMais pour le suivre au ciel, suivez-le sur la terre :\nSuivez (suivez) toujours (toujours) ne suivez que l’Agneau !''',
    numero: 243,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_244',
    titre: 'BIENTOT JESUS VA NOUS PRENDRE',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Bientôt Jésus va nous prendre,\nAuprès de lui dans le ciel ;\nIl nous a dit de l’attendre,\nJusqu’au jour de son appel.\n\nRefrain\nNous avons (nous avons) la victoire !\nNous vivons avec Jésus dans le ciel ! (dans le ciel !)\nA toi seul (à toi seul) la gloire !\nOh ! viens bientôt, Emmanuel !\n(Emmanuel !)\n\n2. Péchés, travaux et souffrances,\nCesseront et pour toujours.\nDevant sa sainte présence,\nNous chanterons son amour.\n\n3. Combattons avec courage,\nAttendant ce jour heureux,\nEt chantons malgré l’orage :\nNous sommes victorieux !''',
    numero: 244,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_245',
    titre: 'BON SAUVEUR …',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Bon Sauveur, berger fidèle,\nConduis-nous par ton amour ;\nEt, de ta main paternelle,\nNourris-nous au jour le jour.\n\nRefrain\nBéni sois-tu, tendre Maître,\nJésus, nous sommes à toi,\nA toi seul nous voulons être,\nBéni sois-tu, notre Roi !\n\n2. Dans tes riches pâturages,\nApprends-nous à te chercher ;\nQue sous tes divins ombrages\nNous sachions toujours marcher.\n\n3. Toi qui nous reçus par grâce,\nBien que faibles et pécheurs,\nPar ta puissance efficace\nPurifie encore nos cœurs.\n\n4. Enfants, nous voulons te plaire\nT’obéir, garder ta loi.\nOh ! pour cela daigne faire\nQue nous vivions par la foi !\n\n5. Bon Sauveur, berger fidèle,\nPour que nous suivions tes pas,\nRemplis-nous d’un nouveau zèle\nEt porte-noms dans tes bras.''',
    numero: 245,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_246',
    titre: 'LE SEIGNEUR M’AIME',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Le Seigneur m’aime, Bonheur suprême,\nLe Seigneur m’aime il est amour !\n\nRefrain\nJe redirai toujours :\nLe Seigneur m’aime,\nLe Seigneur m’aime,\nIl est amour !\n\n2. Dans la misère La plus amère,\nDans la misère j’étais plongé.\n\n3. Dans la souffrance Sans espérance,\nDans la souffrance Je gémissais.\n\n4. Portant ma peine, Ma lourde chaîne\nPortant ma peine, j’étais perdu.\n\n5. Dieu, dans sa grâce Prit à ma place,\nDieu dans sa grâce Pris son cher Fils.\n\n6. En sacrifice à la justice,\nEn sacrifice Il vint s’offrir.\n\n7. Le poids immense De mon offense.\nLe poids immense Tomba sur lui.\n\n8. Sur le Calvaire Loin de son Père,\nSur le Calvaire Il vint mourir.\n\n9. Il purifie toute ma vie,\nIl purifie avec son sang.\n\n10. A toi la gloire et la victoire,\nA toi la gloire Agneau de Dieu.''',
    numero: 246,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_247',
    titre: 'SOUS LE SANG, LE PRECIEUX SANG.',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''Sous le sang, le précieux sang,\nSous le sang, le précieux sang,\nJe reçois un cœur nouveau,\nSous le précieux sang !''',
    numero: 247,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_248',
    titre: 'JESUS QUITTA LE TRONE DE SON PERE.',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Jésus quitta le trône de son Père\nEt descendit ici-bas sur la terre ;\nIl accepta la crèche pour berceau,\nLui, Roi des rois, le Fils du Dieu Très-Haut !\n\nRefrain\nOh ! oui, c’est vrai ! je sais que c’est vrai !\n« Il est écrit » : cela suffit !\nQue Jésus m’aime ! Oh ! bonheur suprême !\nLa Bible me le dit !\n\n2. En tous les lieux portant la délivrance,\nFaisant le bien, guérissant la souffrance,\nIl pardonnait au pécheur repentant,\nIl bénissait jusqu’au petit enfant.\n\n3. Il fut cloué sur la croix méprisable,\nLui, Juste et Saint, mourut pour moi coupable.\nPour me sauver, son sang fut répandu ;\nC’est pourquoi j’aime le Seigneur Jésus !\n\n4. Plus que vainqueur il sortit de la tombe,\nGloire à l’Agneau, divin Sauveur du monde !\nIl règne au ciel, intercède pour moi,\nEt vient bientôt me chercher je le crois !''',
    numero: 248,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_249',
    titre: 'RAYON DE SOLEIL',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Jésus me demande d’être un rayon de soleil,\nQui gaîment fasse connaître Son amour sans pareil,\n\nRefrain\nUn rayon de joie,\nUn doux rayon de soleil.\nQue Jésus envoie !\nOh ! quel bonheur sans pareil !\n\n2. Jésus me demande d’être\nUn rayon bienfaisant,\nComme un reflet de ce Maître\nAimable et complaisant,\n\n3. Oui, Seigneur, donne-moi d’être\nComme un rayon d’espoir,\nParaissant à la fenêtre\nQuand le ciel est tout noir.\n\n4. Oh ! que m’oubliant moi-même,\nJe ne m’efforce plus\nQue d’être pour ceux que j’aime,\nUn reflet de Jésus.\n\n5. Que partout mon gai sourire\nEt ma joyeuse humeur\nSoit un baume à qui soupire\nEt réjouisse un cœur !\n\nRefrain\nQue Jésus m’emploie\nEt qu’il me rende pareil\nAux rayons de joie,\nAux doux rayons du soleil !''',
    numero: 249,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_250',
    titre: 'CHAQUE JOUR DE MA VIE.',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Chaque jour de ma vie,\nJe veux dire au Seigneur :\nApprends-moi, je te prie,\nA te donner mon cœur.\n\n2. Dès que le jour commence,\nJe veux dire au Seigneur ;\nTiens-moi dans ta présence,\nMon Dieu, mon Rédempteur !\n\n3. Souvent dans la journée,\nJe veux dire au Seigneur :\nToi qui me l’as donnée,\nSois en le bienfaiteur.\n\n4. Et quand vient la nuit sombre,\nJe veux dire au Seigneur :\nTu me vois sous ton ombre,\nGarde-moi ta faveur.''',
    numero: 250,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_251',
    titre: 'DES AUJOURD’HUI !',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Dès aujourd’hui je veux aimer\nDe tout mon cœur le bon berger ;\nPuisqu’en son amour il m’appelle,\nJe veux saisir sa main fidèle.\nSeigneur Jésus, je viens à toi,\nDu mal pour toujours garde-moi,\nDu mal pour toujours garde-moi.\n\n2. Dès ce jour je veux obéir\nA mon Sauveur et le servir,\nPuisqu’à le suivre il me convie,\nJe veux lui consacrer ma vie,\nSeigneur Jésus, je viens à toi,\nA ton service accepte-moi,\nA ton service accepte-moi.\n\n3. Dès aujourd’hui je suis heureux,\nMon nom est écrit dans les cieux\nBientôt je quitterai la terre\nPour le pays de la lumière.\nSeigneur Jésus, je suis à toi,\nJusqu’à ton trône porte moi,\nJusqu’à ton trône porte moi.''',
    numero: 251,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_252',
    titre: 'JESUS NE CHANGE PAS.',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Jésus ne change pas\nNe change pas, Ne change pas\nJésus ne change pas\nNon, jamais !\n\n2. Jésus m’a pardonné\nM’a pardonné, M’a pardonné,\nJésus m’a pardonné,\nPour toujours !\n\n3. Jésus me satisfait,\nMe satisfait, Me satisfait\nJésus me satisfait\nPour toujours !\n\n4. Jésus me recevra,\nMe recevra, Me recevra,\nJésus me recevra\nDans le ciel.\n\n5. Toujours près de Jésus\nPrès de Jésus, Près de Jésus,\nToujours près de Jésus,\nJe serai !\n\n6. Gloire, gloire à Jésus !\nGloire à Jésus ! Gloire à Jésus !\nGloire, gloire à Jésus !\nA jamais !''',
    numero: 252,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_253',
    titre: 'AU PETIT !',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''Au petit, Jésus dit :\n« Je veux être Ton seul Maître. »\nRéponds-lui : « Aujourd’hui,\nSous ta grâce Je me place.\nEt demain, Que ta main\nA sa guise Me conduise.\nEn ce jour, Ton amour\nPour la vie Me convie.\nA mon cœur, Bon Sauveur,\nFait entendre Ta voix tendre.\nMon désir, Mon plaisir\nEst de vivre Pour te suivre.\nPrès de toi, Par la foi,\nQu’à toute heure Je demeure.\nQuel bonheur ! O Seigneur,\nBien suprême, Ton cœur m’aime !''',
    numero: 253,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_254',
    titre: 'DAVID N’AVAIT RIEN QUE SA FRONDE.',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. David n’avait rien que sa fronde\nPour lutter contre le géant ;\nMais au fond de son cœur d’enfant\nHabitait une foi profonde.\nIl savait bien que l’Eternel\nCombattrait avec lui pour sauver Israël !\n\n2. Il avançait ferme et tranquille\nContre le Philistin puissant,\nQui, l’œil hautain et méprisant,\nRiait de son air juvénile,\nEt se moquait de l’Eternel,\nQui choisissait David pour sauver Israël !\n\n3. Mais sans trembler, d’une main sûre,\nL’enfant, que son Dieu dirigeait,\nFit au colosse, d’un seul jet,\nUne inguérissable blessure.\nEt c’est ainsi que l’Eternel,\nSelon son bon plaisir, délivrait Israël !\n\n4. Comme David, tu nous appelles\nA des grands combats, Ô Seigneur !\nPour en sortir à ton honneur,\nComme David, rends-nous fidèles,\nEt l’on verra que l’Eternel\nSe tient auprès de nous, comme auprès d’Israël.\n\n5. Et si le mal nous environne,\nEt s’il devient plus fort que nous,\nNous t’implorerons à genoux,\nToi qui ne rejettes personne !\nEt, répondant à notre appel,\nTu lutteras pour nous, ô Sauveur, Eternel !''',
    numero: 254,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_255',
    titre: 'SEIGNEUR JESUS ! UNE VASTE CARRIERE …',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Seigneur Jésus ! Une vaste carrière\ns’ouvre aux travaux des messagers de paix ;\nDe l’Evangile ils portent les bienfaits\naux malheureux privés de sa lumière.\nA leurs efforts donne un succès heureux !\nNous te prions pour eux.\n\n2. Lorsque partout ces messagers fidèles,\nO Rédempteur ! proclameront ta croix,\nDans les palais, en présence des rois,\nDans les déserts, dans les iles nouvelles,\nA leurs efforts donne un succès heureux !\nNous te prions pour eux.\n\n3. Nous t’en prions, Seigneur ! bénis leur âme :\nQue leur appui soit dans la vérité.\nNous te prions pour que ta charité\nBrûle en leur cœur d’une immortelle flamme.\nA leur amour réponds du haut des cieux !\nNous te prions pour eux.''',
    numero: 255,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_256',
    titre: 'LA VOIX DE CHRIST NOUS APPELLE.',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. La voix de Christ nous appelle ;\nIl est temps de s’éveiller :\n« La moisson est vaste et belle !\nQui veut pour moi travailler ? »\nC’est ton Sauveur, ô mon frère,\nDont l’appel s’adresse à toi.\nRéponds-lui, d’un cœur sincère :\n« Me voici, Maître, prends-moi ! »\n\n2. Sans franchir les mers bruyantes,\nTu peux annoncer Jésus.\nQue d’âmes insouciantes,\nDe cœurs souffrants et perdus\nAutour de nous l’œuvre est grande,\nMais petite est notre foi.\nA Jésus qui nous commande\nRépondons : « Maître, aide-moi ! »\n\n3. Si d’un sublime langage\nTu n’as pas reçu le don.\nTu peux rendre témoignage\nQu’en Jésus est le pardon ;\nA ton frère tu peux dire\nCe que Christ a fait pour toi\nPour que lui-même t’inspire,\nDis-lui : « Maître, enseigne-moi ! »\n\n4. Mais que nul ne nous entende dire encore : « Je ne puis rien : »\nLorsque Jésus nous commande de faire et d’aimer le bien,\nPoursuivons l’œuvre bénie\nAvec zèle, amour et foi ;\nPuis notre tâche finie,\nNous dirons : « Maître, prends-moi ! »''',
    numero: 256,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_257',
    titre: 'LES JARDINS DU PERE.',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Tes jardins, ô Père,\nFais-les refleurir, (refleurir) ;\nEt la terre entière,\nFais-la reverdir.\n\n2. Que dans les campagnes\nChrist soit exalté ; (exalté),\nQue sur les montagnes\nSon Nom soit chanté !\n\n3. Qu’enfin l’on entende\nComme un bruit du vent ; (bruit du vent),\nQue sur nous descende\nL’Esprit tout-puissant !\n\n4. Frères, Dieu l’ordonne :\nSors de ton sommeil ; (ton sommeil)\nDéjà pour toi sonne\nL’heure du réveil !\n\n5. C’est l’heure suprême ;\nOh ! sois le premier (le premier)\nA t’offrir, toi-même,\nA Dieu tout entier !''',
    numero: 257,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_258',
    titre: 'MON SALUT, MA NOURRITURE.',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Mon salut, ma nourriture,\nMon parfait bonheur,\nLe guide en qui je m’assure :\nC’est toi seul, Seigneur.\nEn moi ta Parole opère,\nM’occupant de toi ;\nDe toi, l’Envoyé du Père,\nQui mourus pour moi.\n\n2. O Rédempteur secourable,\nQuand tu m’as trouvé,\nJ’étais perdu, misérable,\nTa main m’a sauvé,\net dans mon insuffisance,\nJ’éprouve en tout temps,\nQue les soins de ta clémence\nSont des soins constants.\n\n3. La paix, la vie éternelle\nSont le lot des tiens ;\nTa faveur perpétuelle\nMe comble de biens.\nPar la foi de l’Evangile,\nMon cœur transformé\nNe veut que toi pour asile,\nSauveur bien-aimé !\n\n4. Ta sagesse, ta justice,\nTa fidélité,\nSont ma gloire, mon délice,\nMa tranquillité.\nRecevant « grâce sur grâce »,\nJ’adore à genoux\nTa tendresse qui dépasse\nMes vœux les plus doux.''',
    numero: 258,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_259',
    titre: 'A JESUS JE M’ABANDONNE.',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. A Jésus je m’abandonne ;\nCe qu’il me dit, je le crois,\nEt je prends ce qu’il me donne,\nLa couronne avec la croix.\n\nChœur\nCompter sur lui d’heure en heure,\nTant que dure le combat,\nQue l’on vive ou que l’on meure,\nCompter sur lui, tout est là.\n\n2. Que si l’ennemi se montre,\nMon cœur n’en est point troublé ;\nAvec Christ, à sa rencontre\nJe puis aller sans trembler.\n\n3. Suis-je en paix, vers la lumière\nMon chant s’élève attendri,\nPour se changer en prière\nSi l’horizon s’assombrit.\n\n4. Qu’on m’approuve ou qu’on me blâme,\nEt demain comme aujourd’hui,\nJe ne veux, quoi qu’on réclame,\nJamais compter que sur lui.''',
    numero: 259,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_260',
    titre: 'DEMEURE PAR TA GRACE …',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Demeure par ta grâce\nAvec nous, Dieu Sauveur !\nQuoi que l’ennemi fasse,\nVeille sur notre cœur.\n\n2. Que ta sainte Parole,\nChaque jour, ici-bas\nSoit la seule boussole\nQui dirige nos pas.\n\n3. Eternelle lumière,\nQue ta vice splendeur\nNous guide, nous éclaire\nEt nous garde d’erreur.\n\n4. Etends sur nous ton aile\nEt demeure à jamais\nAvec nous, Dieu fidèle !\nRépands sur nous ta paix.''',
    numero: 260,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_261',
    titre: 'MON PARENT REDEMPTEUR',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Il a pris un corps semblable au corps du péché\nPour être en toute chose mon parent rédempteur\nIl s’est abaissé pour gouter à la mort\nIl m’a donné l’assurance du salut.\n\nRefrain\nMon parent rédempteur (x3)\nJe ne l’oublierai\n\n2. Il était formé dans le sein d’une vierge\nIl n’est pas venu par la naissance charnelle\nIl avait en lui le sang de Dieu lui-même\nOh ! Il est vraiment mon parent rédempteur.\n\n3. Un parent rédempteur doit être homme riche\nUn homme capable d’accomplir le rachat\nUn parent rédempteur doit être un homme digne\nEt tout cela fut accompli en lui.\n\n4. Il m’avait créé pour être à son image\nDans la chair, j’ai contourné ma théophanie\nEt ma mémoire a été affaiblie,\nMais c’est par l’alliance du sang.''',
    numero: 261,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_262',
    titre: 'EN CHANTANT CE CHANT',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. En chantant ce chant je suis bienheureux de glorifier Jésus mon Sauveur,\nCelui qui quitta Son bon paradis pour me libérer du pouvoir de Satan\n\nChœur\nJésus mon frère, que Tu sois loué\nQue toute mon âme exalte ton nom.\nJe te confie toute ma vie, contrôle mes pas\nSurveille mes pas, Oh ! Jésus je me confie en toi\n\n2. Oh divin amour de frère Jésus,\nSon sang répandu je suis délivré,\nAinsi arraché dans les ténèbres,\nJe ne glorifie que Jésus bien-aimé.\n\n3. Etant pèlerin pour guide ici-bas,\nJ’ai choisi Jésus, lumière de tout\nEt conduit par Lui je me dirige\nVers ce beau rivage cité éternelle.''',
    numero: 262,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_263',
    titre: 'NOUS MONTERONS',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Le nouveau testament est achevé\nEt le temps des gentils est à sa fin\nNous n’attendons plus rien dans cette vie\nQue la promesse de l’Enlèvement\n\nRefrain\nNotre foi défiera la pesanteur\nEt nos corps seront vivifiés\nNous monterons dans le firmament\nNous rencontrerons notre Seigneur.\n\n2. Quand la Pierre de faite descendra\nTous les élus seront manifestés\nCette Eglise atteindra la perfection\nEt la pyramide s’élèvera.\n\n3. Tous les Saints endormis se lèveront\nEt les corps des vivants seront changés\nLa trompette de Dieu retentira\nNous appelant aux Noces de l’Agneau\n\n4. Tous ceux qui ont suivi la voix de Paul\nD’Iréné, de Martin, et Colomban\nDe Luther, de Wesley et de Branham\nCe jour-là, c’est certain nous les verrons.\n\n5. Au-delà des soucis de cette vie\nPèlerins, la cité est préparée\nPour la joie de l’Epouse et de l’Epoux\nSeul l’Amour parfait y entrera.''',
    numero: 263,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_264',
    titre: 'CE JOUR LA',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Ce jour-là sur le mont du Calvaire\nIl fut mis parmi les malfaiteurs\nCe jour-là au lieu appelé crâne\nOh ils le crucifièrent là.\n\nRefrain\nC’était lui Jésus, c’était Lui Mon Roi\nC’était Lui Le Seigneur Le Dieu de Gloire\nC’était Lui Le Messie, c’était Le Prince de Vie\nC’était Lui La Parole faire Chair.\n\n2. Il porta une couronne d’épines\nSon corps fut méchamment flagellé\nEt courbé sous sa très lourde Croix\nTout sanglant il n’y renonça pas.\n\n3. Le Saint fut jugé par des impies\nCondamné il ne dit aucun mot\nDépouillé, il ne réclama point\nL’Agneau fut mené sans résister\n\n4. Crucifié, il sauva le pécheur\nEpuisé, il pardonna encore\nMéprisé, il aima le moqueur\nSon souci, ô Père pardonnez-les\n\n5. Accusant cette génération\nLe Prophète de mon temps s’est levé\nContre toute dénomination\nCrucifiant à nouveau le Message.''',
    numero: 264,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_265',
    titre: 'MON DIEU EST SI BON',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Mon Dieu est si bon Il prend bien soin de moi\nCe Dieu si fidèle c’est lui qui pense à toi,\nIl voudrait t’aider dans tes difficultés,\nIl faut que tu viennes à lui tel que tu es.\n\nRefrain\nDieu sait si bien ce qui te semble lourd\nQui te fait mal, te trouble chaque jour,\nIl connait tes besoins, ta peur du lendemain\nAvec mon Dieu tu sais tout ira bien.\n\n2. Il vit à jamais c’est un Dieu Tout-Puissant\nIl te répondra viens à lui simplement\nQuand tout semble noir, triste et désespéré\nSais-tu que là-haut tu n’es pas oublié ?\n\n3. Mon Dieu t’aidera, il conduira tes pas\nSi tu veux marcher te plier à sa loi\nAlors ne crains plus tu peux compter sur lui\nIl accomplira tout ce qu’il a promis''',
    numero: 265,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_266',
    titre: 'COMMENT NE POURRAI-JE TE LOUER',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. J’étais éloigné de ta parole\nTu m’as envoyé ton Saint Prophète\n\nRefrain\nComment ne pourrais-je te louer\nPour tout ce que tu as fait pour moi\nTu as toujours été mon secours\nChaque fois que l’ennemi me combat\n\n2. J’étais sans aucune consolation\nTu m’as rempli de ton Saint Esprit\n\n3. J’étais prêt à tomber en enfer\nTu m’as montré le chemin du ciel\n\n4. Lorsque les gens parlent en mal de moi\nJ’ai trouvé en toi mon seul ami\n\n5. Je ne connaissais pas le plan de Dieu\nTu m’as révélé les grands mystères\n\n6. J’étais mort dans les dénominations\nTu m’as montré le message de l’heure\n\n7. J’étais terrassé par la maladie\nTu as compati, tu m’as guéri''',
    numero: 266,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_267',
    titre: 'ECOUTE, Ô CIEL',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Ecoute ô ciel et tout ce que tu as\nCombien Jésus-Christ est riche en bonté\nEt toi terre des hommes et bétail des champs\nO louez-le car il est bon.\n\nChœur\nCombien il est bon (x3)\nMon Seigneur mon Dieu\nCombien il est bon alléluia !\nOui je le louerai toujours\n\n2. Il nous a créés pour la vie éternelle\nMais nous avons péché et avons tout perdu\nMais dans sa bonté il se décida\nDe nous ramener à la vie\n\n3. Et comme un Agneau il vint ici-bas\nEt versa son sang pour nous racheter\nDepuis ce jour-là nous pouvons crier\nO mort où est ton aiguillon\n\n4. Pareil à un Aigle Il rode sur nous,\nIl voit nos besoins, nul n’est en danger\nEt à chaque tour, Il jette ce cri\nNe craignez rien car Je suis là\n\n5. Et comme une poule entoure ses poussins\nJésus nous entoure et prend soin de nous\nD’où viendra l’orage qu’il ne saura calmer\nOui, nous sommes plus qu’en sécurité\n\n6. Je loue et j’adore mon Seigneur Jésus\nPour tout ce qu’il ne cesse de faire pour moi\nO je ne puis compter ses nombreux bienfaits\nO combien je veux l’adorer''',
    numero: 267,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_268',
    titre: 'AMENES-LES',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Ecoute la voix du Berger\nVenant du désert sombre et sec\nAppelant la brebis perdue\nQui s’est éloignée du troupeau\n\nChœur\nAmènes-les, amènes-les\nFaites-les sortir de la vie du péché\nAmènes-les, amènes-les\nAmènes les perdus à Jésus\n\n2. Qui aidera ce Bon Berger ?\nA retrouver tous les perdus ?\nA les ramener au troupeau\nLà où ils seront protégés\n\n3. Du désert écoutes leur cri\nVenant des montagnes élevées\nEcoutes le Maître te dit :\nVas me retrouver les brebis.''',
    numero: 268,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_269',
    titre: 'AMOUR DE DIEU EST SI MERVEILLEUX',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''Amour de Dieu est si merveilleux (x2)\nAmour de Dieu est si merveilleux\nOh quel amour !\nComment il est ?\nIl est si haut qu’on ne peut surmonter\nIl est si bas qu’on ne peut renverser\nIl est si large qu’on ne peut contourner\nOh quel amour ! Comment il est ?''',
    numero: 269,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_270',
    titre: 'AMOUR SI MERVEILLEUX',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Que Dieu aima un pécheur tel que moi\nAu point de changer ma tristesse en joie\nAucun repos jusqu’à ce qu’il m’ait ramené\nQuel merveilleux amour est cela\n\nRefrain\nAmour si merveilleux (x2)\nQue Dieu aima un pécheur tel que moi\nQuel merveilleux amour est cela\n\n2. Que Christ descende volontiers sur la terre\nSachant qu’il devrait mourir au calvaire\nPouvez-vous trouver un acte si bon\nQue cet amour divin pour moi\nEt pour un pauvre pécheur tel que moi\n\n3. Le Père sacrifia son fils sur la croix\nRédemption pour un esclave coupable\nQui longtemps défia toutes ses lois\nEt maintenant il me prend sur son cœur\nMe traitant en fils et non serviteur\nTous mes anciens soucis sont loin déjà\nTout grand il m’ouvre ses bras''',
    numero: 270,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_271',
    titre: 'TON AMOUR NOUS ENVIRONNE',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Ton amour nous environne oh Seigneur\nTa gloire resplendit tout comme le soleil\nTon amour nous environne oh Seigneur\nC’est pourquoi nous espérons tous en toi\n\nRefrain\nGloire en ton nom oh Seigneur notre joie\nGloire en ton nom, toi qui nous as sauvés\nGloire en ton nom, toi qui nous aimes tant\nC’est pourquoi nous espérons tous en toi\n\n2. Tu n’as rien caché à ton épouse\nLes mystères de Dieu sont tous accomplis\nNous voyons la Rédemption approcher\nC’est pourquoi nous attendons le départ.''',
    numero: 271,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_272',
    titre: 'POUR LA JOIE QUE TU M’AS',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Pour la joie que tu m’as donnée\nJe te louerai, je te louerai\n\nChœur\nQue ferai-je pour Toi Seigneur Jésus\nTu m’as tout donné, tu m’as tout donné\nJe vivrai pour toi toute ma vie,\nVis dans mon cœur, Tu m’as tout donné\n\n2. Pour le salut que tu m’as donné, …\n\n3. Pour l’amour que tu m’as donné, …\n\n4. Pour la paix que tu m’as donnée, …\n\n5. Pour la victoire que tu m’as donnée, …\n\n6. Pour le pardon que tu m’as donné\n\n7. Pour la vie que tu m’as donnée''',
    numero: 272,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_273',
    titre: 'BLANC, PLUS BLANC QUE NEIGE',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Bénie soit la fontaine de Sang\nRévélée au monde des pécheurs\nBéni soit le Cher Fils de Dieu\nQui guérit par ses meurtrissures\nJ’ai erré loin de sa Bergerie\nJ’ai causé de la peine à mon cœur\nLaves-moi dans le Sang de l’Agneau\nJe serai plus blanc que la neige\n\nRefrain\nBlanc, plus blanc que neige\nBlanc, plus blanc que neige\nLaves-moi dans le Sang de l’Agneau\nJe serai plus blanc que la neige\n\n2. Oh ! Père, j’ai erré loin de Toi\nSouvent mon cœur s’est égaré\nMes péchés sont rouges cramoisi\nL’eau ne peut pas les nettoyer\nJésus je viens à Ta fontaine\nNe comptant que sur Ta promesse\nLaves-moi par Ton Divin lavage\nJe serai plus blanc que la neige.''',
    numero: 273,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_274',
    titre: 'BIEN-AIME, CROIS-EN MOI …',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Dans ces temps difficiles où le monde évolue\nCet âge le plus sombre que l’Eglise ait connu\nSeule la voix du Seigneur nous rassure et nous console\n\nRefrain\nBien-aimé, bien-aimé, crois-en Lui tu es sauvé\nVois la croix du salut érigée devant toi\nVois le sang du rachat qui coula à Golgotha\nEt la voix de l’Agneau qui t’appelle à chaque instant\nBien-aimé, bien-aimé, crois-en lui tu es sauvé\n\n2. Quand l’agneau t’a tiré du bourbier du péché\nOù étaient tes parents, tes amis et tes voisins\nAlors vends tes soucis, tiens l’épée avec joie.\n\n3. Combien de grands autels sont bâtis au nom de Dieu\nDes temples et chapelles érigés en tous les lieux\nMais il n’y a qu’une place où l’on peut trouver Jésus\n\n4. Prêtres et religieuses ont moisi dans les couvents\nDes grands théologiens ont vieilli au Séminaire\nMais pour vous (petits) enfants, la Parole est révélée\n\n5. Partout dans les campagnes, écoutez prêcher des gens\nPlus zélés que ceux-là qui ont reçu mon vrai mandat\nMais la main du Seigneur n’est que là où est son Nom\n\n6. Avant que tu n’existes Moi j’avais connu ton nom\nAvant que tu ne vives Moi j’avais tracé Mon plan\nPour que toute la gloire me revienne à tout moment''',
    numero: 274,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_275',
    titre: 'CRI DU JUBILE',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. J’ai entendu le cri du Jubilé\nJ’ai décidé de tout abandonner\nEt libéré des tourments du péché\nJe n’ai plus rien d’autre qu’un seul souci\n\nRefrain\nMon souci, mon seul souci Seigneur\nMon souci, être comme Jésus\n\n2. Privé de tout ce qui m’était un gain\nJ’ai préféré le chemin du mépris\nTout en sachant que si je perdais tout\nJ’aurais acquis la Vie qui vient de Dieu\n\n3. Si par des fois toute la nuit durant\nPris d’insomnie je médite tes lois\nS’il faut veiller, s’il faut de fois jeûner\nCe n’est pour rien d’autre dans cette vie\n\n4. S’il faut monter sur mes monts, les collines\nPour témoigner de l’Amour de mon Dieu\nS’il faut passer sous la pluie ou le froid\nCe n’est que pour être comme Jésus\n\n5. Dans les épreuves et dans les tentations\nJ’aime penser comment ferait Jésus\nDans la misère et dans les maladies\nJ’aime savoir ce que ferait Jésus.''',
    numero: 275,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_276',
    titre: 'CAR TA BONTE',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Car ta bonté vaut mieux que la vie (x4)\n\n1. J’annoncerai ton nom à mes frères (x2)\nJe leur dirai donc tu les aimes\nCar ta bonté vaut mieux que la vie\n\n2. Je lèverai mes mains en ton nom (x2)\nJe te bénirai donc toute ma vie\nCar ta bonté vaut mieux que la vie''',
    numero: 276,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_277',
    titre: 'MUMANYI MUNENE WA MVITA',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Mumanyi munene wa mvita,\nMutshimunyi wa kale kale,\nTshilobo tshikole mu mvita\nYesu ukena kutshimuna\n\nRefrain\nTshilobo\nDjuka wenda\nMadiunda mubaluishi bebe\nBana bebe babandila\nLuendu luebe lua butshimunyi\n\n2. Misumba yonso ya mu diulu\nIdi panyima pebe wewe,\nBwa kutumbisha dina diebe,\nMumanyi munene wa mvita\n\n3. Diboko diebe dia bukola\nDidi dibandishibwe kulu\nPamutu pa makola anso\nNena manya onso a mvita\n\n4. Dituku dikadi pa buipi,\nDiwa kulula bantu babi\nNe mwambi wabo wa mashini\nPopamue ne nyama wa lonyi''',
    numero: 277,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_278',
    titre: 'DIEU TOUT PUISSANT',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Dieu tout puissant !\nQuand mon cœur considère\nTout l’Univers créé par ton pouvoir\nLe Ciel d’azur, les éclairs, les tonnerres\nLe Clair matin et les ombres du soir\n\nRefrain\nDe tout mon être\nAlors s’élève un chant !\nDieu tout puissant\nQue tu es grand (x2)\n\n2. Quand par les bois\nOu la forêt profonde !\nJ’erre et j’entends,\nTous les oiseaux chantés\nQuand sur les monts\nLa source avec son onde\nLivre au Zéphyr\nSon chant doux et léger\n\nRefrain\nMon Cœur heureux s’écrie à chaque instant\nÖ Dieu d’amour que tu es grand (x2)\n\n3. Mais quand je songe\nO sublime mystère\nQu’un Dieu si grand\nAit pu penser à moi\nQue Son cher Fils\nEst devenu mon frère\nEt que je suis l’héritier du Grand Roi\n\nRefrain\nAlors mon Cœur redit\nLa nuit, le jour,\nQue tu es bon\nÖ Dieu d’amour (x2)\n\n4. Quand le Seigneur\nEclatant de lumière\nSe lèveras de son trône Eternel\nEt que laissant les douleurs de la terre\nJe pourrais voir les splendeurs de son ciel\n\nRefrain\nJe redirais dans son divin séjour\nRien n’est plus grand\nQue ton amour (x2)''',
    numero: 278,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_279',
    titre: 'N’EST-IL PAS MERVEILEUX',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''N’est-il pas Merveilleux (x3)\nNotre Maître,\nInvisible aux humains\nMais présent pour tous les Siens\nOui, Jésus n’est-il pas Merveilleux ?\n\nCertes, il est Merveilleux (x3)\nNotre Maître,\nInvisible aux humains\nMais présent pour tous les Siens\nOui, Jésus est toujours Merveilleux.\n\nMerveilleux (x2)\nJésus est pour moi\nConseiller, Dieu puissant, Prince de la Paix\nIl me sauve, Il me garde, à Lui à jamais\nMerveilleux est Mon Sauveur\nMon Dieu, Mon Roi\n\nLouons Le Seigneur\nLouons-Le, le matin\nLouons-Le, le soir\nLouons Le Seigneur\nLouons-Le en tout temps\n\nPrions Le Seigneur\nPrions-Le, le matin\nPrions-Le, le soir\nPrions Le Seigneur,\nPrions-Le en tout temps\n\nAimons Le Seigneur\nAimons-Le le matin\nAimons-Le le soir\nAimons Le Seigneur\nAimons-Le en tout temps\n\nChantons Le Seigneur\nChantons-Le le matin\nChatons-Le le soir\nChantons Le Seigneur\nChantons-Le en tout temps''',
    numero: 279,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_280',
    titre: 'DANS MON CŒUR CHANTE',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''Refrain\nDans mon cœur chante un Amour\nAmour de mon Sauveur\nDans mon cœur chante un Amour\nQui fait tout mon Bonheur\n\n1. C’est pour moi qu’il fut tant maltraité\nPour moi qui ne mérite rien\nC’est pour moi qu’il fut tant maltraité\nPour moi Oui Seigneur Oui pour Moi\n\n2. C’est pour moi qu’il a tellement souffert\nPour moi qui ne mérite rien\nC’est pour moi, qu’il a tellement souffert\nPour moi Oui Seigneur, Oui pour moi\n\n3. C’est pour moi qu’il fut crucifié\nPour moi qui ne mérite rien\nC’est pour moi qu’il fut crucifié\nPour moi oui Seigneur, Oui pour moi\n\n4. C’est pour moi qu’il est ressuscité\nPour moi qui ne mérite rien\nC’est pour moi qu’il est ressuscité\nPour moi, oui Seigneur, Oui pour moi\n\n5. C’est pour moi qui ne mérite rien\nC’est pour moi qu’il est glorifié\nPour moi, Oui Seigneur, Oui pour moi''',
    numero: 280,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_281',
    titre: 'JESUS, JE T’AIME',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''Refrain\nJésus (x2)\nJe t’aime (x3)\nJésus (x2) Mon Roi\n\n1. Tu souffris sur la Croix, pour moi\nMoi, si petit, aimé d’un Roi\nTu voulais me faire vivre en Toi\nJésus, Jésus mon Roi\n\n2. Pourrais-je oublier mon Roi\nMon Roi si tendre est mort pour moi\nJe veux toujours suivre sa voie\nJésus, Jésus mon Roi\n\n3. Et maintenant, Tu vis en gloire\nTu m’as donné ce grand Espoir\nQue bientôt, je verrai Mon Roi\nJésus, Jésus, C’est Toi''',
    numero: 281,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_282',
    titre: 'JESUS PAR TON SANG',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Jésus par Ton Sang Précieux\nEnlève mon iniquité\nRegarde-moi du haut des Cieux\nDis-moi que tu m’as pardonné\nJ’ai longtemps erré cœur rebelle\nMais j’entends Ta voix qui m’appelle\nAu pieds de Ta Croix\nMaintenant, tout confus\nBrisé, je me rends\n\nRefrain\nBlanc, plus blanc que neige (x2)\nLaver dans le Sang de l’Agneau,\nJe serai plus blanc que la neige\n\n2. Oh le fardeau de mon pêché\nDieu très Saint, est trop Grand pour moi\nJe veux en être délivré\nA cette heure, oh révèle-toi\nJésus viens sois ma délivrance\nSeul, Tu peux calmer ma souffrance\nAu pieds de Ta Croix maintenant\nTout confus, brisé, je me rends\n\n3. Oh, Jésus Ton Sang Précieux\nA lavé mon iniquité\nOui tu m’as répondu des Cieux\nTon amour m’a tout pardonné\nJe te contemple, et puis croire\nQu’en toi, j’ai complète Victoire\nAux pieds de ta croix, Maintenant\nJe me relève Triomphant.''',
    numero: 282,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_283',
    titre: 'QUEL BONHEUR DE MARCHER',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Quel bonheur de marcher avec Lui (x2)\nIl conduira tous les pas\nDe mon voyage ici-bas\nQuel bonheur de marcher avec Lui\n\n2. Alléluia Gloire à son Saint Nom (x2)\nLe Seigneur m’a racheté\nDans Son Sang Il m’a lavé. Alléluia\nGloire à Son Saint Nom\n\n3. Alléluia Jésus me Guérit (x2)\nIl guérit parfaitement\nMe libère entièrement\nAlléluia Jésus me Guérit\n\n4. Il me baptisa de Son Esprit (x2)\nIl me rend tellement heureux\nEn me baptisant de feu\nIl me baptisa de Son Esprit\n\n5. Avec Lui, je monte toujours plus haut (x2)\nJésus est le Bon Berger\nJe ne crains aucun Danger\nAvec Lui, je monte toujours plus haut\n\n6. Alléluia Gloire à Son Saint Nom (x2)\nBientôt, Jésus reviendra\nDans Son Règne Il me prendra\nAlléluia, Gloire à Son Saint Nom.''',
    numero: 283,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_284',
    titre: 'QUEL JOUR DE GLOIRE',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''Refrain\nQuel jour de gloire\nQuand Jésus m’a Sauvé (x4)\n\n1. Des chaînes du pêché\nJésus m’a libéré (x3)\nQuel jour de gloire\nQuand Jésus m’a sauvé\nAlléluia\n\n2. Aux choses du passé\nJe ne veux plus toucher (x3)\nQuel jour de gloire\nQuand Jésus m’a sauvé\nAlléluia\n\n3. Ce n’est plus moi qui vis\nC’est Christ qui vis en moi (x3)\nQuel jour de gloire\nQuand Jésus m’a sauvé\nAlléluia\n\n4. Je suis prédestiné avant la fondation (x3)\nQuel jour de gloire\nQuand Jésus m’a sauvé\nAlléluia\n\n5. Je serai enlevé quand\nJésus reviendra (x3)\nQuel jour de gloire\nQuand Jésus m’a sauvé\nAlléluia''',
    numero: 284,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_285',
    titre: 'JESUS-CHRIST NOTRE SAUVEUR',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Jésus-Christ notre Sauveur,\nPréparé pour nous\nLa Cité de la nouvelle Jérusalem (x2)\n\nRefrain\nLa terre est vieille\nAvec ses montagnes\nLa terre est vieille\nElle n’est plus si belle\nJésus-Christ notre Sauveur\nPrépare pour Nous\nLa Cité de la Nouvelle Jérusalem\n\n2. Annonçons aux habitants\nDe cette vieille terre,\nQue bientôt sur les nuées\nParaîtra le Christ (x2)\n\n3. Les Elus seront enlevés\nDans les nuées\nLes condamnés seront\nDans la fournaise Ardente (x2)''',
    numero: 285,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_286',
    titre: 'VEUX-TU BRISER DU PECHE',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Veux-tu briser du pêché le pouvoir ?\nLa force est en Christ ! (x2)\nSi dans ton cœur tu veux le recevoir :\nLa force est dans le sang de Christ !\n\nRefrain\nJe suis fort, fort ! Oui, plus que vainqueur,\nPar le sang de Jésus !\nJe suis fort, fort ! Oui, plus que vainqueur,\nParle sang de Jésus, mon Sauveur !\n\n2. Veux-tu braver et la mort et l’enfer ?\nLa force est en Christ (x2)\nJésus, d’un mot fait tomber tous tes fers :\nLa force est dans le sang de Christ !\n\n3. Veux-tu marcher toujours pur, triomphant ?\nLa force est en Christ (x2)\nPour te garder, Jésus est tout-puissant :\nLa force est dans le sang de Christ !''',
    numero: 286,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_287',
    titre: 'CHAQUE INSTANT DE CHAQUE JOUR',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Chaque instant de chaque jour qui passe,\nEn Jésus je puis me confier;\nCet ami que jamais rien ne lasse,\nMe soutient, sait me vivifier.\n\nRefrain\nEt son cœur si patient, si tendre\nSait pourvoir aux besoins de ma foi;\nÀ lui seul j'ai appris à m'attendre\nEt je sais qu'il s'occupe de moi.\n\n2. Aide-moi à n'avoir confiance,\nQu'en toi seul mon maître, mon Seigneur.\nTu connais toutes mes défaillances;\nMon salut est seul en ta faveur.\n\n3. Prends ma main, tiens-moi quand je chancelle;\nLe chemin est sombre et rocailleux.\nOh! permets que je te sois fidèle,\nConduis-moi jusqu'au séjour des cieux.''',
    numero: 287,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_288',
    titre: 'AGNEAU DE DIEU, MESSAGER DE LA GRÂCE',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Agneau de Dieu, messager de la grâce,\nJe veux entendre ta voix, le langage de la croix :\nPour toi je fus livré, méprisé, maltraité,\nBattu, meurtri, blessé, pour ton iniquité.\n\n2. Agneau de Dieu, messager de la grâce,\nJ’ai péché, je viens à toi, je t’invoque, réponds-moi !\nPour toi je fus brisé, d’épines couronnées,\nDe tous abandonné, frappé pour ton péché.\n\n3. Agneau de Dieu, messager de la grâce,\nOh ! Fais passer sur mon cœur, tout ton sang, divin Sauveur !\nMon côté fut percé, et mon sang fut versé ; Dans ce sang, ton passé, pécheur, est effacé.\n\n4. Agneau de Dieu, messager de la grâce,\nJe me confie et je crois,\nTon pardon, je le reçois !\nSur l’enfant racheté, que fait ma volonté\nJe mets ma sainteté, ma divine beauté.''',
    numero: 288,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_289',
    titre: 'AKWABA - EXO Éclats d\'Afrique',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''Refrain\nAkwaba, Jésus-Christ !\nAkwaba, Saint-Esprit !\nAkwaba, hosanna !\nAkwaba, alléluia !\n\n1. Toi qui désaltères par la vie,\nEt arroses la terre jour et nuit\nDe la bienveillance de ton cœur\nEt de l'abondance de tes pleurs.\n\n2. Toi dont les paroles nous apaisent,\nDevant qui les vents de conflit se taisent\nEt pour qui les yeux de notre pays\nS'ouvrent aux plans de paix de ton Esprit.\n\n3. Aux nations désunies nous disons :\n"Vos idolâtries nous décrions\nMais que le Dieu d'Amour vous secoure\nQue le Prince de Paix vienne régner !"\n\n4. Akwaba, mes enfants !\nDescendants de mon sang\nAkwaba, Race élue,\nHéritiers du salut !\nPeuple saint, grain divin\nLaisse enfin tes chagrins,\nDanse tes danses chante tes chants\nJoue pour moi sur tes instruments.''',
    numero: 289,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_290',
    titre: 'ATTENDS LE VENT - EXO Éclats 4',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Attends le vent\nLe vent qu'il a promis\nAttends le vent de son Esprit\nAttends, attends\nAttends et obéis\nAttends le vent de son Esprit\nQui sait d'où il vient et où il va\nInvisible à nos yeux\nIl nous environne\nEt nous envahit\nDe la sainteté de Dieu\n\nRefrain\nTant d'espoirs et tant de larmes aussi\nTant de rêve déployés\nPour si peu de temps\nÀ chercher vraiment\nLa volonté du Seigneur\nCombien d'heures\nEt d'aubes à écouter\nCombien de jours, de soupirs\nPour qu'en un instant\nTout s'éveille au chant\nDe l'Esprit de son amour\n\nDernier refrain\nEntends le vent\nLe vent qu'il a promis\nEntends le vent de son Esprit\nEntends, entends\nEntends et obéis\nEntends le vent de son Esprit\nEntends le vent de son Esprit\nEntends le vent de son Esprit''',
    numero: 290,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_291',
    titre: 'AUPRÈS DE TOI - EXO Éclats 5',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''Auprès de Toi\nAu creux de tes bras\nRien n'a plus d'importance\nQue le son de ta voix\nTon Cœur qui bat\nEt le mien qui retrouve un sens\nSous ton abri où mon cœur revit\nLes merveilles et les mystères\nDe ton amour Si doux, si fort\nPlus précieux que l'or\nÔ mon berger, je veux rester\nSûr et comblé de ta grâce\nRien ne pourra m'arracher\nLa beauté de ta présence\nJésus, Jésus''',
    numero: 291,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_292',
    titre: 'COMME UN PHARE',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Comme un phare sur la plage,\nPerçant l’ombre de la nuit,\nL’amour de Dieu, dans l’orage,\nCherche l’homme et le conduit.\n\nRefrain\nÔ Sauveur ! Que ta lumière\nResplendisse sur les flots,\nEt, vers le ciel, qu’elle éclaire\nEt sauve les matelots.\n\n2. Nulle étoile n’étincelle\nPour vous guider, ô rochers !\nQui gardera la nacelle\nDes écueils et de rochers ?\n\n3. Dans la nuit qui m’environne,\nDe ton amour, ô Jésus !\nQue par moi l’éclat rayonne\nAux yeux des marins perdus !''',
    numero: 292,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_293',
    titre: 'DESCENDS SUR NOUS - EXO Éclats 4',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Du sein de notre Dieu\nDe l'infini des cieux\nDescend de son saint lieu sur nous\nLe flot de son amour\nQue tant de paix entoure\nDe bienveillance\nEt de grâce envers nous\nEt là pour l'adorer\nNos cœurs émerveillés\nReçoivent en sa bonté la joie\nDe vivre en son alliance\nAu puits de sa présence\nDes sources inépuisables\nDe sa voix\n\nRefrain\nViens nous combler de toi\nViens couronner de foi\nNotre espérance\nDescends sur nous\nÔ Dieu de Gloire\n\n2. Viens partager ta vie\nQu'au chant de ton Esprit\nNos cœurs répandent aussi ton nom\nQu'ils parlent et qu'ils s'épanchent\nQu'ils s'ouvrent et qu'ils se penchent\nSur les eaux\nImmuables du pardon\nQue tous ensemble ainsi\nDevant toi réunis\nNous recevions cette huile sainte\nBonne et abondante\nPure et bienfaisante\nOrdonnance éternelle\nDe ta main\n\nRefrain\nViens nous combler de toi\nViens couronner de foi\nNotre espérance\nDescends sur nous\nÔ Dieu de Gloire''',
    numero: 293,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_294',
    titre: 'JE SUIS FAIT POUR ÇA - EXO Éclats d\'Afrique',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Contempler ta majesté\nMéditer, émerveillé\nPar ce grand mystère\nLe Roi de l'univers\nDieu incarné dans la chair.\nTe chercher fidèlement\nTe trouver toujours présent\nÉcouter ta voix\nVivre de ta joie\nJésus je suis fait pour ça\n\n2. Des cœurs imparfaits, tu fais\nTa demeure et ton palais\nDans ce beau mystère\nMa vie éphémère\nDevient divin sanctuaire\nOù tes œuvres se dévoilent\nSe dépeignent sur la toile\nDe mes jours de joie\nQui renaissent en toi\nJésus je suis fait pour ça.\n\n3. Porteurs dans ces vases d'argile\nDu bonheur de l'Évangile\nChacun missionnaire\nJoyeux émissaires\nMessagers de Ta lumière\nReflets du Ressuscité\nTon amour, tes mains, tes pieds\nQue le monde voit\nQue le monde croit\nJésus nous sommes faits pour ça.''',
    numero: 294,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_295',
    titre: 'JE SUIVRAI MON SEIGNEUR - EXO Éclats 4',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''Je suivrai mon Seigneur\nEt mon Maître\nSans jamais m'éloigner de ses pas\nSans que rien ici-bas ne m'arrête\nEt sans rien que le chant de sa voix\nJe vivrai de bonheur\nEt de grâce\nDe l'amour que son cœur m'a donné\nEt que rien ici-bas ne l'efface\nC'est le vœu de mon âme assoiffée\nUn seul instant\nAuprès de toi\nVaut bien les heures et la route\nTout, pour autant\nQue ce soit toi\nQui m'accompagne\nAu parvis de ta joie''',
    numero: 295,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_296',
    titre: 'J’AI SOIF DE TA PRESENCE',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. J’ai soif de Ta présence,\nDivin Chef de ma foi;\nDans ma faiblesse immense\nQue ferais-je sans Toi?\n\nChœur\nChaque jour, à chaque heure,\nOh! j’ai besoin de Toi;\nViens Jésus, et demeure\nAuprès de moi.\n\n2. Des ennemis, dans l’ombre,\nRôdent autour de moi;\nAccablé par le nombre,\nQue ferais-je sans Toi ?\n\n3. Pendant les jours d’orage,\nD’obscurité, d’effroi.\nQuand faiblit mon courage,\nQue ferais-je sans Toi?\n\n4. Ô Jésus ! Ta présence\nC’est la vie et la paix;\nLa paix dans la souffrance.\nEt la vie à jamais,''',
    numero: 296,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'petit_troupeau_297',
    titre: 'SEIGNEUR PRENDS SOIN DE MOI',
    collectionId: 'petit_troupeau',
    collection: 'Petit Troupeau Tab',
    contenu:
        '''1. Seigneur, prends soin de moi.\nJ'ai besoin de toi.\nSeul, je ne suis rien,\nTu le sais bien.\nComment pourrais-je vivre ton amour,\nComment pourrais-je vivre ?\nQui es-tu, Seigneur, et qui suis-je ?\nGarde-moi toujours.\n\n2. Et ta Parole est venue jusqu'à moi\nPour me tracer la route.\nO mon Dieu, efface mes doutes.\nDonne-moi la foi.\n\n3. Tu m'as donné la force de ton corps,\nTu as changé ma vie.\nO Seigneur, je t'en remercie\nUne fois encore.''',
    numero: 297,
    auteur: 'Auteur inconnu',
  ),

  //CANTIQUES INSPIRES
  Cantique(
    id: 'cantiques_inspires_001',
    titre: 'LE GRAND JOUR',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. Le grand jour s’est levé\nDieu nous a visités\nVoici des temps nouveaux.\nChantons gloire à l’Agneau\nNous recevons de Christ\nCe qu’Il avait promis\nLe Saint-Esprit est là.\n\nChœur\nLe Saint-Esprit est là\nLe Saint-Esprit est là\nLa mort a disparu\nDieu donne un plein salut\nEt sur le monde entier\nLe grand jour s’est levé\nLe Saint-Esprit est là.\n\n2. L’obscurité s’enfuit\nLa lumière a jailli\nChassé de cœurs troublés\nToute incrédulité\nCar Christ, le Roi des rois\nRépand l’esprit de foi\nLe Saint-Esprit est là.\n\n3. Le grand Consolateur\nVient remplir tous les cœurs\nL’Esprit de vérité\nNous met en liberté\nIl ouvre les prisons\nRépand la guérison\nLe Saint-Esprit est là.\n\n4. Que tous les rachetés\nChantent leur liberté\nChrist a tout accompli\nIl a donné l’Esprit\nVoyez trembler l’enfer\nCar dans tout l’Univers\nLe Saint-Esprit est là''',
    numero: 1,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_002',
    titre: 'ROCHER D’AGES',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. Rocher d’âges fendu pour moi\nLaisse-moi me cacher en Toi\nLaisse l’eau avec le sang\nQui coulèrent de tes plaies\nÊtre un double remède\nSauver et me rendre pur.\n\n2. Que mes larmes coulent à jamais\nEt mon zèle ne s’éteigne point\nCela n’ôte pas mon péché\nC’est Toi seul qui dois sauver\nDans ma main rien n’est porté\nJe m’attache à ta croix\n\n3. Alors que j’aspire ce souffle\nQuand mes yeux se fermeront\nEt quand je me lèverai\nJe te verrai sur ton trône\nRocher d’âges, fendu pour moi\nLaisse-moi me cacher en Toi.''',
    numero: 2,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_003',
    titre: 'MA FOI REGARDE A TOI',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. Ma foi regarde à Toi\nToi Agneau du Calvaire\nSauveur divin\nEcoute-moi quand je prie\nÔte tous mes péchés\nO laisse-moi dès ce jour\nEtre à Toi.\n\n2. Que ta grâce infinie\nFortifie mon cœur\nInspire mon zèle\nComme Tu mourus pour moi\nPuisse mon amour pour ‘Toi\nPur chaud inchangé être\nUn feu vivant.\n\n3. Durant ma sombre vie\nLes épreuves m’environnent\nSois mon seul guide\nQue l’ombre se dissipe\nEssuie mes tristes larmes\nNe me laisse pas m’égarer\nLoin de Toi.''',
    numero: 3,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_004',
    titre: 'LE GRAND MEDECIN',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. Le grand médecin\nEst ici maintenant\nLe compatissant Jésus\nRéconforte le cœur brisé\nEcoute la voix de Jésus.\n\nChœur\nLe plus doux chant des Séraphins\nLe plus doux nom\nPour les mortels\nLe plus doux chœur\nJamais chanté\nJésus, béni Soit Jésus.\n\n2. Tes nombreux péchés pardonnés\nEcoute la voix de Jésus\nVas en paix sur ta route au ciel\nPorte une couronne avec lui\n\n3. Toute gloire à l’Agneau immolé\nJe crois maintenant en Jésus\nJ’aime le nom béni du Sauveur\nJ’aime le nom de Jésus-Christ.\n\n4. Son nom dissipe mes fautes et peur\nPas autre nom mais Jésus\nCombien mon âme se réjouit\nD’entendre ce nom Jésus !''',
    numero: 4,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_005',
    titre: 'PRES DE LA CROIX',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. Près de la croix garde-moi\nLa fontaine précieuse\nGratuite et guérissante\nCoule du Calvaire.\n\nChœur\nA la croix, à la croix\nSoit ma gloire à jamais\nEt que mon âme enlevée\nTrouve repos là-haut.\n\n2. Près de la croix, tout tremblant\nAmour, grâce m’ont trouvé\nLà l’Etoile du matin\nRayonne autour de moi,\n\n3. Près de la croix, O Agneau\nMontre-moi tes scènes\nAide-moi à marcher toujours\nAvec tes ombres sur moi.\n\n4. Près de la croix j’attendrai\nVeillant, croyant, toujours,\nJusqu’au jour où j’atteindrai\nL’autre rive dorée.''',
    numero: 5,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_006',
    titre: 'ALLELUIA, NOUS RESSUSCITERONS',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. Au matin de résurrection\nLa trompette de Dieu sonnera\nNous vivrons, alléluia ! Nous vivrons\nLes saints viendront, se réjouissant,\nAucune larme ne sera trouvée\nNous vivrons, alléluia ! Nous vivrons.\n\nChœur\nNous vivrons, alléluia ! Nous vivrons amen.\nNous vivrons alléluia !\nAu matin de résurrection sont brisées les barres de la mort.\nNous vivrons alléluia nous vivrons\n\n2. Au matin de résurrection\nOh ! Quelle rencontre ça sera\nNous vivrons alléluia ! Nous vivrons.\nQuand nos pères et nos mères,\nEt nos bien-aimés nous verrons\nNous vivrons, alléluia ! Nous vivrons.\n\n3. Au matin de résurrection\nPour moi c’est une pensée bénie\nNous vivrons, alléluia ! Nous vivrons,\nJe verrai mon Sauveur béni\nQui pour moi mourut librement\nNous vivrons, alléluia ! Nous vivrons.\n\n4. Au matin de résurrection\nDans les airs nous Le rencontrerons\nNous vivrons, alléluia! Nous vivrons.\nÊtre enlevés dans la gloire\nVers notre demeure pure et belle,\nNous virons, alléluia! Nous vivrons.''',
    numero: 6,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_007',
    titre: 'TEL QUE JE SUIS',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. Tel que je suis sans rien à moi\nSinon Ton sang versé pour moi\nEt Ton invitation\nÀ Toi Agneau de Dieu\nJe viens je viens !\n\n2. Tel que je suis sans trainer de\nDébarrasser mon âme de tout\nA Toi dont le sang, lave\nChaque tâche Agneau de Dieu,\nJe viens, Je viens !\n\n3. Tel que je suis, tu vas laver\nPardonner, recevoir, aider\nCar à Ta promesse\nJe crois Agneau de Dieu,\nJe viens, je viens !\n\n4. Tel que je suis,\nTon grand amour\nA dû renverser\nChaque barrière\nMaintenant pour être à Toi,\nToi seul Agneau de Dieu,\nJe viens, je viens !''',
    numero: 7,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_008',
    titre: 'IL EST UNE FONTAINE',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. Il est une fontaine pleine de sang\nTiré des veines d’Emmanuel,\nLes pécheurs plongés dans ce flot\nPerdent toutes leurs souillures. (x2)\nLes pécheurs plongés dans ce flot\nPerdent toutes leurs souillures.\n\n2. Le voleur mourant s’est réjoui\nDe voir cette fontaine,\nEt là aussi puis-je comme lui\nLaver tous mes péchés. (x2)\nEt là aussi puis-je comme lui\nLaver tous mes péchés.\n\n3. L’Agneau mourant\nTon sang précieux,\nNe perdra pas sa puissance\nJusqu’à ce que l’Eglise de Dieu\nSoit sauvée, du péché\nSoit sauvée du péché (x2)\nJusqu’à ce que L’Eglise de Dieu\nSoit Sauvée du péché.\n\n4. Par la foi j’ai vu ce ruisseau\nSortant de tes blessures:\nL’amour rédempteur est mon thème\nJusqu’au jour de ma mort(x4)\nL’amour rédempteur est mon thème\nJusqu’au jour de ma mort.\n\n5. Puis dans un chant\nNoble et doux\nJe chanterai Ta puissance\nLorsque mes lèvres tremblantes\nDescendront au tombeau (x3)\nLorsque mes lèvres tremblantes\nDescendront au tombeau.''',
    numero: 8,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_009',
    titre: 'J’ABANDONNE TOUT',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. Tout à Jésus, j’abandonne\nJe Lui donne tout librement\nEt je me confierai en Lui\nJe vivrai dans sa présence.\n\nChœur\nJ’abandonne tout\nJ’abandonne tout\nTout à Lui mon Sauveur béni\nJ’abandonne tout\n\n2. Tout à Jésus, j’abandonne\nJe me prosterne à ses pieds\nLes plaisirs du monde oubliés\nJésus prends-moi maintenant.\n\n3. Tout à Jésus, j’abandonne\nFais-moi Sauveur tout à Toi\nLaisse-moi sentir le Saint-Esprit,\nSavoir que Tu es pour moi.\n\n4. Tout à Jésus, j’abandonne\nSeigneur, je me donne à Toi\nRemplis-moi de Ta Puissance\nSur moi laisse Tes bénédictions.\n\n5. Tout à Jésus, j’abandonne\nEt, je suis le feu sacré\nOh! La joie du salut parfait!\nGloire, gloire à Son Nom.''',
    numero: 9,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_010',
    titre: 'QUAND JE VERRAI LE SANG',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. Christ Rédempteur\nEst mort sur la croix\nPour le pécheur Il paya son dû\nAspergez votre âme avec le sang\nEt je passerai par-dessus vous.\n\nChœur\nQuand je verrai le sang\nQuand je verrai le sang\nQuand je verrai le sang\nJe passerai par-dessus vous.\n\n2. Pauvre pécheur.\nJésus sauvera\nIl fera tout ce Qu’Il a promis\nLavez-vous dans la fontaine ouverte\nEt je passerai par-dessus vous.\n\n3. Le jugement vient,\net tous y seront\nChacun recevra juste son dû\nCachez-vous dans le sang qui Blanchit\nEt Je passerai par-dessus vous.\n\n4. Grande compassion.\nAmour divin\nAmour bienveillant,\nFidèle et sincère.\nTrouvez paix et abri sous le sang,\nEt Je passerai par-dessus vous.''',
    numero: 10,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_011',
    titre: 'ILS VIENNENT DE L’EST ET D’OUEST',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. Ils viennent de l’Est et d’Ouest\nIls viennent de lointains pays\nFêter avec le Roi,\nComme Ses invités\nQue ces pèlerins soient bénis\nContemplant son saint visage\nBrillant d’éclats divins\nParticipants de sa grâce\nComme joyaux de Sa couronne.\n\nChœur\nMon cœur est heureux depuis\nQue Jésus m ‘a libéré.\nJe ne porte plus\nLe fardeau de soucis\nSon joug est si doux pour moi\nMon âme était noire comme nuit\nMais les ténèbres ont fui\nMaintenant je crie victoire\nCar Jésus m’a libéré.\n\n2. Je regarde le grand Trône Blanc\nLes sauvés se tiennent devant\nMaintenant plus de larmes\nNi chagrins connus\nNi mort dans ce bon pays\nLe Sauveur m’a précédé\nMe préparant la voie\nBientôt nous serons ensemble\nDans le temps ou l’éternité.\n\n3. Les portails de ce saint lieu\nRestent ouverts la nuit, le jour\nRegarde au Seigneur\nQui donne plus de grâce\nDont l’amour prépare la voie\nUne place dans ses belles demeures\nQu’il réserva pour tous\nPour te préparer aux noces\nObéis à cet appel\n\n4. O Jésus revient bientôt\nAlors nos peines sont finies\nSi notre Seigneur venait maintenant\nPour ceux qui sont sans péchés\nAurez-vous alors la joie\nOu le chagrin, la peine\nQuand Il viendra dans Sa gloire\nNous le rencontrerons là-haut.''',
    numero: 11,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_012',
    titre: 'QUEL JOUR CA SERA',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. Il y a un jour qui vient\nOù les maux ne seront plus\nNi les nuages dans le ciel\nPlus de larmes à jamais\nTout est paix pour toujours\nSur l’autre rive pavée d’or\nO quel jour, glorieux jour ça sera\n\nChœur\nO quel jour ça sera\nQuand je ‘verrai mon Jésus\nEt je vois de face\nCelui qui m’a sauvé par Sa grâce\nQuand Il me prend par la main\nMe conduit à la terre promise\nO quel jour, glorieux jour ça sera !\n\n2. Il n’y aura ni chagrin\nNi fardeaux à porter\nNon plus la maladie\nDouleurs et séparation\nPour toujours je serais avec\nCelui qui est mort pour moi\nO quel jour glorieux jour ça sera''',
    numero: 12,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_013',
    titre: 'LAISSE-LE',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. Si le monde te prive\nDe son argent et son or\nEt que tu dois vivre\nAvec le moindre frais\nRappelle-toi dans Sa Parole\nIl nourrit même les oiseaux\nAbandonne tes fardeaux\nA ton Seigneur.\n\nChœur\nLaisse-les, laisse-les\nAbandonne tes fardeaux\nÀ ton Seigneur\nSi tu crois sans défaillir\nIl saura te secourir\nAbandonne tes fardeaux\nÀ ton Seigneur.\n\n2. Si ton corps endure la peine\nSans recouvrer la santé\nTon âme presque noyée\nDans le désespoir\nJésus sait ce que tu sens\nIl peut sauver et guérir\nAbandonne tes fardeaux\nA ton Seigneur.\n\n3. Quand tes ennemis t’assaillent\nTon cœur commence à faillir\nN’oublie pas que\nDieu répond à la prière\nIl fera une voie pour toi\nTe conduira sûrement\nAbandonne tes fardeaux\nA ton Seigneur\n\n4. Si ta jeunesse t’abandonne\nEt tu commences à vieillir\nTon corps se courbe\nSous le poids de soucis\nIl ne te quittera pas\nIl ira avec toi au bout\nAbandonne tes fardeaux\nÀ ton Seigneur.''',
    numero: 13,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_014',
    titre: 'GLOIRE A SON NOM',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. A la croix où mourut mon Sauveur\nJ’ai crié pour être purifié\nLà le sang fut appliqué\nÀ mon cœur ;\nGloire à Son Nom.\n\nChœur\nGloire à son Nom Gloire à Son Nom\nLà le sang fut appliqué à mon cœur\nGloire à Son Nom.\n\n2. Je suis incroyablement sauvé\nDans la douceur Jésus est en moi\nLà à la croix où Il m’a reçu\nGloire à Son Nom.\n\n3. Fontaine qui sauve du péché\nJe suis heureux\nD’y être plongé\nLà-bas Jésus me sauve et me lave\nGloire à son Nom.\n\n4. Viens à la fontaine riche et douce\nJette ton âme aux pieds du Sauveur\nPlonge-t’y aujourd’hui et sois pur,\nGloire à Son Nom''',
    numero: 14,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_015',
    titre: 'JESUS PAYA TOUT',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. J’entends le sauveur dire\nMalgré ta moindre force\nFaible enfant, veille et prie\nTrouve en Moi tout ton tout.\n\nChœur\nJésus paya tout\nEt je Lui dois tout,\nDes mes péchés cramoisis\nIl m’a lavé comme neige.\n\n2. Seigneur, vraiment je trouve\nQue seulement Ta Puissance\nPeut épurer un lépreux\nEt fondre un cœur de pierre.\n\n3. Comme je n’ai rien de bon\nJe réclame Ta grâce\nJe blanchirai mes robes\nDans le sang de l’agneau.''',
    numero: 15,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_016',
    titre: 'LA IL ME CONDUIT',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. J’entends mon Sauveur\nQui appelle (ter)\nPrends ta croix,\nViens et suis-Moi\n\nChœur\nOu il me conduit je suivrai (ter)\nJe ferai route avec Lui\n\n2. J’irai avec Lui au jardin (ter)\nJ’irai sur le chemin.\n\n3. A travers le jugement (ter)\nJ’irai sur le chemin\n\n4. Il me donnera gloire et grâce (ter)\nIl fera route avec moi.''',
    numero: 16,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_017',
    titre: 'QUAND LES SAINTS ENTRERONT',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. Je suis pèlerin étranger\nErrant dans ce monde pécheur\nSur ma route vers la cité\nLorsque les saints entreront.\n\nChœur\nQuand les saints entreront\nLorsque les saints entreront\nSeigneur je veux être de ce nombre\nLorsque les saints entreront.\n\n2. Je sais, je verrai mon Sauveur\nSi ma vie est libérée\nLe ciel m’ouvrira ses portes\nLorsque les saints entreront.\n\n3. Assemblés autour du trône\nEt les portes sont fermées\nJe crierai :’’Gloire, Gloire’’\nLorsque les saints entreront.\n\n4. J’attends que le chariot descende\nEt je monterai à bord\nSur les nuées j’irai au ciel\nLorsque les saints entreront.''',
    numero: 17,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_018',
    titre: 'RIEN MAIS LE SANG',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. Qu’est ce qui peut laver mon péché\nRien que le sang de Jésus !\nQu’est ce qui peut me parfaire encore,\nRien que le sang de Jésus !\n\nChœur\nOh ! Précieux est le flot\nQui me rend blanc comme neige\nJe ne connais d’autres sources\nRien que le sang de Jésus !\n\n2. Pour ma pureté je ne vois,\nRien que le sang de Jésus !\nLa plaidoirie pour mon pardon,\nRien que le sang de Jésus !\n\n3. Rien ne peut expier le péché\nRien que le sang de Jésus !\nNi rien de bon que j’ai pu faire\nRien que le sang de Jésus !\n\n4. C’est mon espoir et ma paix,\nRien que le sang de Jésus !\nC’est aussi ma justice,\nRien que le sang de Jésus !\n\n5. Et maintenant comme je vaincrai,\nRien que le sang de Jésus !\nComment j’atteindre ma maison,\nRien que le sang de Jésus !\n\n6. Gloire, gloire ainsi je chante,\nRien que le sang de Jésus !\nToute ma louange j’apporte,\nRien que le sang de Jésus !''',
    numero: 18,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_019a',
    titre: 'JE LE RECONNAITRAI',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. Debout quelque part\nDans l’ombre tu trouveras Jésus.\nIl est celui qui se soucie et comprend.\nOh ! Debout quelque part dans l’ombre tu Le trouveras\nTu le connaîtras\nPar les empreintes des clous.\n\nChœur\nOh ! Je le reconnaîtrai\nComme Rédempteur par son côté\nOh ! Je le reconnaîtrai\nPar les empreintes de clous\nDans Ses bras\n\n2. Lorsque mon travail terminé\nJe passe la marrée haute quand\nJe vois le matin brillant et glorieux\nJe reconnaîtrai mon Sauveur\nQuand j’atteindrai l’autre rive\nSon sourire sera\nLe premier à m’accueillir.\n\n3. Oh ! Mon âme tressaille de joie\nQuand je vois Sa face bénie\nEt l’éclat doux et rayonnant\nDe Ses yeux mon cœur\nLe louera pour Sa Bonté,\nAmour et grâce qui préparent\nPour moi une maison au ciel.\n\n4. Oh! Mes bien-aimés\nDans la Gloire m’invitent à venir\nJe me rappelle de notre séparation\nDans le doux Vallon d’Eden\nIls chanteront à la maison\nJe désire en premier\nRencontrer mon Dieu.''',
    numero: 19,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_019b',
    titre: 'JE LE RECONNAITRAI',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. Debout quelque part dans l’ombre, tu trouveras Jésus,\nIl est Celui qui toujours prend soin, comprend,\nDebout quelque part dans l’ombre, tu vas Le trouver,\nTu Le reconnaitras aux marques dans Ses mains.\n\nChœur\nOui, je vais Le reconnaitre,\nRacheté, je serai près de Lui :\nOui, je vais Le reconnaitre\nPar les empreintes des clous dans Ses mains.\n\n2. Quand mon travail terminé, je passe la marée haute ;\nQuand je vois le matin brillant et glorieux ;\nJe reconnaitrai Mon Sauveur, là, sur l’autre rive ;\nSon sourire va m’accueillir en premier lieu.\n\n3. Mon âme tressaille de joie quand je vois Sa face bénie\nEt le doux éclat rayonnant de Ses yeux ;\nMon cœur Le loue pour Sa bonté, Son amour, Sa grâce\nQui préparent pour moi une maison au ciel.\n\n4. Oh ! Mes bien-aimés dans la gloire m’invitent à venir ;\nJe me souviens de notre séparation.\nDans la belle vallée d’Eden, ils chantent à la maison,\nJe désire en premier rencontrer Mon Dieu.\n\n5. Vêtu d’une robe, Dieu me conduira vers les portails\nDe la Cité ou il n’y aura point des larmes ;\nEt je chanterai une gaie chanson avec les anges,\nJe désire en premier rencontrer Mon Dieu.''',
    numero: 19,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_020',
    titre: 'AMOUR DE DIEU',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. L’amour de Dieu\nEst de loin plus grand\nQue langue ou plume,\nNe peuvent le dire\nIl va plus que, la plus haute étoile\nIl atteint le plus bas enfer\nLe coupable,\nSous Son fardeau\nDieu donna Son Fils,\nPour vaincre\nIl réconcilia Son fils errant\nLui pardonna son péché.\n\nChœur\nOh ! L’Amour de Dieu,\nCombien riche et pur\nIl est sans mesure et fort\nIl endurera, sans cesse et toujours,\nLes chants des saints et des anges\n\n2. Quand le temporel.\nVa disparaître\nEt que les trônes terrestres tombent\nMême si les hommes refusent de prier\nEt d’invoquer sur les montagnes ;\nL’Amour de Dieu\nEndurera encore,\nIl est sans mesure et fort\nGrâce divine pour la race d’Adam,\nLe chant des saints et des anges\n\n3. Si les océans étaient pleins d’encre\nEt les cieux faits de parchemins\nSi chaque tige était une plume\nEt tout homme était écrivain :\nDécrire l’Amour de Dieu Céleste\nSécherait les océans\nLe rouleau ne peut contenir le tout\nQuoique étendu d’un bout à l’autre.''',
    numero: 20,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_021',
    titre: 'PRENDS LE NOM DE JESUS',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. Prends le nom de Jésus avec toi\nEnfant de tristesse et peine\nIl va te procurer la joie\nPrends-Le partout où tu vas.\n\nChœur\nPrécieux Nom, Nom si doux\nEspoir de la terre, joie du Ciel\nPrécieux Nom, Nom si doux\nEspoir de la terre, joie du ciel\n\n2. Prends toujours le nom de Jésus\nComme bouclier face aux pièges\nQuand les tentations surviennent\nMurmure ce nom en priant\n\n3. Oh ! Le précieux\nNom de Jésus\nFait frémir nos âmes de joie\nLorsque Ses bras nous reçoivent\nEt nous chantons ses cantiques.\n\n4. A son Nom, nous nous inclinons\nNous prosternant à Ses pieds\nRoi des rois Le couronnerons\nQuand le voyage est fini.''',
    numero: 21,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_022a',
    titre: 'IL Y A LA PUISSANCE DANS LE SANG',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. Veux-tu briser tes fardeaux de péché ?\nLa force est dans le sang ! (x2)\nVeux-tu avoir la victoire sur le mal ?\nLa force merveilleuse est dans le sang.\n\nChœur\nIl y a force, force !\nMerveilleuse force\nDans le sang de l’Agneau !\nIl y a force, force,\nMerveilleuse force\nDans le sang précieux de l’Agneau !\n\n2. Veux-tu être blanc\nPlus blanc que la neige ?\nLa force est dans le sang ! (x2)\nLes souillures du péché y sont lavées\nLa force merveilleuse est dans le sang !\n\n3. Veux-tu rendre service à Jésus-Christ ?\nLa force est dans le sang ! (2)\nVeux-tu vivre et chanter\nSes louanges\nLa force merveilleuse\nEst dans le sang !''',
    numero: 22,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_022b',
    titre: 'VEUX-TU BRISER DU PECHE',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. Veux-tu briser du péché le pardon\nLa force est en Christ (bis)\nSi dans ton cœur tu veux le recevoir,\nLa force est dans le sang de Christ.\n\nChœur\nJe suis fort ! Fort ! Oui plus que vainqueur\nPar le sang de Jésus\nJe suis fort ! Fort ! Oui plus que vainqueur\nPar le sang de Jésus, mon Sauveur.\n\n2. Veux-tu briser et la mort et l’enfer ?\nLa force est en Christ(bis)\nd’un mot fait tomber tous tes fers.\nLa force est dans le sang de Christ.\n\n3. Veux-tu marcher toujours pur triomphant ?\nLa force est en Christ (bis)\nPour te garder Jésus-Christ est Tout-Puissant.\nLa force est dans le sang de Christ.''',
    numero: 22,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_023',
    titre: 'CROIS SEULEMENT',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. Crains rien, petit troupeau\nDe la crois au trône\nDe la mort à la vie il partit\nPour les siens\nTout pouvoir sur terre\nTout pouvoir au ciel est donné\nÀ Lui pour l’amour\nDu troupeau.\n\nChœur\nCrois seulement,\nCrois seulement,\nTout est possible\nCrois seulement (bis)\n\n2. Crains rien petit troupeau\nIl est parti devant Ton Berger\nFait le choix du chemin à suivre\nIl va purifier l’eau de Mara pour toi\nA Gethsémani, Il a bu l’amertume.\n\n3. Crains rien petit troupeau\nPeu importe ta charge\nIl entre dans les chambres\nLes portes étant fermées\nJamais Il n’abandonne\nEt ne peut oublier\nEspères en sa présence\nDans la nuit et le jour.''',
    numero: 23,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_024',
    titre: 'BIENTOT DANS LA DOUCEUR',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. Il y a un endroit plus beau qu’un jour\nEt par la foi nous pouvons le voir\nCar le Père nous attend sur le chemin\nPour nous préparer là un palais.\n\nChœur\nBientôt dans la douceur\nNous nous rencontrerons\nSur cette rive\nBientôt dans la douceur\nNous nous rencontrerons\nSur cette rive.\n\n2. Nous chanterons sur ce beau rivage\nChants mélodieux de bénédiction\nNos esprits ne s’affligeront plus,\nPas un soupir pour les bénédictions\n\n3. A notre généreux Père Céleste\nNous offrirons nos hommages et louanges\nPour le glorieux don de Son amour\nEt les bénédictions consacrées.''',
    numero: 24,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_025',
    titre: 'LES AILES D’UNE COLOMBE',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. Noé a bien navigué\nSur les eaux bien de jours\nIl chercha la terre ferme\nDe plusieurs manières\nDes ennuis, il en avait bien eu\nMais non pas du ciel\nDieu lui donna Son signe\nSur les ailes d’une colombe.\n\nChœur\nSur les ailes d’une colombe\nBlanche comme neige\nDieu envoya Son amour doux, pur\nUn signe du ciel\nSur les ailes d’une colombe.\n\n2. Jésus, notre Sauveur\nVint un jour sur la terre\nNé dans une étable\nDans une crèche de paille\nIci-bas rejeté.\nMais non pas du ciel\nDieu nous donna Son signe\nSur les ailes d’une colombe.\n\n3. Bien qu’ayant beaucoup souffert\nDe bien de manières,\nJe criais pour la guérison\nLa nuit comme le jour\nMais la foi ne fut pas oubliée\nPar le Père du ciel\nIl me donna Son signe\nSur les ailes d’une colombe.''',
    numero: 25,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_026',
    titre: 'QUEL SAUVEUR',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. Quel Sauveur merveilleux je possède.\nIl s’est sacrifié pour moi ;\nEt Sa vie innocente Il céda\nPour mourir sur l’infâme bois.\n\nChœur\nAttaché à la croix pour moi (2 fois)\nIl a pris mon péché\nIl m’a délivré\nAttaché à la crois pour moi.\n\n2. Il renonce à la gloire céleste\nPour le plan rédempteur de Dieu\nHumble et d’apparence modeste\nOh ! Quel prix pour me libérer.\n\n3. Maltraité pour mon indigne vie\nBrisé pour mes iniquités\nIl prit sur lui mes maladies\nEt mourut pour me rendre heureux.\n\n4. Le salut accompli pour Ses frères\nLe Sauveur fut reçu au ciel\nIl revient ô profond mystère\nMon bonheur sera éternel.''',
    numero: 26,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_027',
    titre: 'JE M’ENVOLERAI',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. Un beau matin\nQuand tout sera fini,\nJe m’envolerai ;\nA la maison\n0ù habite mon Jésus,\nJe m’envolerai.\n\nChœur\nJe m’envolerai oh ! Gloire !\nJe m’envolerai.\nA la fin, alléluia\nTout à l’heure Je m’envolerai.\n\n2. Juste encore\nUn peu de temps et alors,\nJe m’envolerai.\nDans ce pays où la joie demeure ;\nJe m’envolerai.\n\n3. Quand l’ombre de ma vie Sera partie,\nJe m’envolerai\nComme un oiseau libéré de prison\nJe m’envolerai.''',
    numero: 27,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_028',
    titre: 'A L’OUEST LE SOLEIL SE COUCHE',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. A l’Ouest le soleil se couche\nIl arrive à la fin de sa course\nEt je vois combien ce temps est là !\nOh ! Le temps du coucher du soleil !\n\nChœur\nC’est la fin, c’est la fin,\nC’est la fin de la course\nC’est la fin, c’est la fin,\nC’est la fin de toute chose !\n\n2. Et voici que la lumière du soir\nA l’Ouest pour moi a paru\nElle manifeste le fils de l’homme\nEt je crois, c’est vrai je le crois\n\n3. Pèlerin, c’est la fin de course !\nIl faut vaincre le monde et partir\nAttention ! Quelle heure est-il ?\nIl faut vaincre le monde et partir.''',
    numero: 28,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_029',
    titre: 'AU NOM DE JESUS',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''Chœur\nAu Nom de Jésus (x2)\nNous avons la victoire.\nAu Nom de Jésus (x2)\nVenez monter avec Lui.\nSi nous avançons au Nom de Jésus,\nDites-moi qui peut résister ?\nAu Nom Puissant de Jésus\nNous avons la victoire.''',
    numero: 29,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_030',
    titre: 'FILS DE DIEU EN AVANT',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''Chœur\nFils de Dieu en avant\nDans la puissance du Saint-Esprit\nFils de Dieu en avant\nCar Jésus est toujours le même\nFils de Dieu en avant\nNous avons la puissance en Son sang\nFils de Dieu en avant\nDans la puissance du Saint-Esprit.''',
    numero: 30,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_031',
    titre: 'SI RICHE, SI PROFOND',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. Si riche, si profond, insondable\nC’est l’Amour Divin\nL’Amour Rédempteur.\n\nChœur\nPour moi, pour moi.\nIndigne, Sauvé par grâce\nPour moi, pour moi ;\nL’Amour Rédempteur.\n\n2. Immuable, incomparable,\nInexprimable ;\nC’est l’Amour Divin ,\nL’Amour Rédempteur.\n\n3. Comme c’est beau\nComme c’est doux.\nDe fredonner de l’Agneau Divin\nL’Amour Rédempteur.''',
    numero: 31,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_032',
    titre: 'J’AI RETROUVE',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. J’ai retrouvé, J’ai retrouvé.\nOh ! Venez\nJ’ai retrouvé ma pierre vivante\nSource de la Vie Éternelle\nDe la vie éternelle.''',
    numero: 32,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_033',
    titre: 'NOUS SOMMES LES ENFANTS',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. Nous sommes les enfants du père,\nCohéritiers avec le Fils\nNous sommes sujets de Son Royaume\nNous sommes un.''',
    numero: 33,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_034',
    titre: 'SOURIANT, SOURIANT',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. Souriant, souriant\nLe chrétien croit tout\nEt accepter tout\nSouriant, Souriant\nLe chrétien prend tout\nPar le bon bout.''',
    numero: 34,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_035',
    titre: 'EMMANUEL, EMMANUEL',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. Emmanuel, Emmanuel.\nET Il S’appelle.\nC’est le Seigneur\nEt Il S’appelle, Emmanuel.''',
    numero: 35,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_036',
    titre: 'DIEU SOIT AVEC VOUS',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. Dieu soit avec vous jusqu’au revoir,\nPar Ses conseils vous soutenant.\nDans Sa bergerie vous gardant.\nDieu soit avec vous\nJusqu’à nous revoir !\n\nChœur\nAu revoir ! Au revoir !\nAu revoir au pied de Jésus\nAu revoir ! Au revoir !\nDieu soit avec vous\nJusqu’à nous revoir !\n\n2. Dieu soit avec vous jusqu’au revoir,\nVous protégeant sous Ses ailes,\nVous donnant la manne quotidienne.\nDieu soit avec vous\nJusqu’à nous revoir !\n\n3. Dieu soit avec vous jusqu’au revoir,\nQuand les périls vous confondent,\nTenez Ses bras infaillibles\nDieu soit avec vous\nJusqu’à nous revoir !\n\n4. Dieu soit avec vous\nJusqu’au revoir\nFlottant de vous Sa bannière\nEloignant de vous la crainte\nDieu soit avec vous\nJusqu’à nous revoir !''',
    numero: 36,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_037',
    titre: 'TIENS L’IMMUABLE MAIN',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. Le temps est plein de transitions\nRien sur terre n’est immuable\nEspère en des choses éternelles\nTiens l’immuable main de Dieu.\n\nChœur\nTiens l’Immuable main de Dieu (x2)\nEspère en des choses éternelles\nTiens l’Immuable main de Dieu.\n\n2. Confie-toi en l’Eternel Dieu\nQuoi qu’apportent les années\nSi tes amis t’abandonnent\nAttache-toi toujours à Lui.\n\n3. Ne convoite pas les richesses vaines\nQui pourrissent rapidement\nCherche les trésors célestes\nQui ne passeront jamais.\n\n4. Quand s’achèvera ton voyage\nSi tu étais fidèle à Dieu\nTon âme ravie dans la gloire\nTrouvera une belle demeure.''',
    numero: 37,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_038',
    titre: 'JE DESIRE LE VOIR',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. Voyageant dans le pays\nJe chante en marchant\nGuidant les âmes au Calvaire\nAu flot cramoisi\nMon âme percée par les flèches\nDedans et dehors\nMon Sauveur me conduit\nPar Lui je vaincrai.\n\nChœur\nJe désire Le voir\nContempler Sa face\nEt chanter pour toujours\nSa divine Grâce\nDans les rues de Gloire\nElever ma voix\nLes soucis sont passes\nOh ! Joie éternelle !\n\n2. Au service de mon Seigneur\nMême dans la nuit sombre\nJe m’accrocherai à Lui\nIl va m’éclairer\nEt les pièges de Satan\nPeuvent troubler mon âme\nMais mon Sauveur\nPrend la direction de tout.\n\n3. Du fin fond de la vallée\nJe regarde en haut\nJe contemple mon Sauveur\nDirigeant la guerre\nIl me prend de la vallée\nPar Sa tendre main\nIl me guide, je peux voir\nMarchant en avant.\n\n4. Quand devant moi les flots montent\nDu fond de l’abîme\nMon Seigneur dirige ma barque\nIl prend soin de moi\nIl me conduit tendrement\nA travers ce monde\nOh ! Il est mon Ami\nEt je L’aime tant.''',
    numero: 38,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_039',
    titre: 'JE PEUX, JE VEUX',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. Je le peux,\nJe le veux,\nJe le crois (x3)\nJésus-Christ me guérit.\n\n2. Je me confie\nEn mon Seigneur (3x)\nJésus-Christ me guérit.''',
    numero: 39,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_040',
    titre: 'GRACE ETONNANTE',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. Grâce étonnante !\nOh ! Quel doux son\nMe sauva malheureux !\nJ’étais perdu, je suis retrouvé\nAveugle, maintenant je vois\n\n2. Cette grâce m’a enseigné la crainte.\nElle ôta mes frayeurs\nCombien précieuse\nParut cette grâce.\nAu moment où j’ai cru.\n\n3. A travers les dangers et pièges\nPar où je suis venu\nCette grâce m’a gardé aussi loin\nMe conduira au ciel.\n\n4. Le Seigneur m’a promis du bien\nSa Parole me soutient.\nIl sera mon abri, ma part.\nTant que j’aurai la vie.\n\n5. Quand tombera cette robe de chair,\nMa vie mortelle cessera.\nJe posséderai dans l’au-delà.\nUne vie de joie et paix.\n\n6. Nous aurons pendant dix mille ans\nBrillé comme le soleil\nNous pourrons louer notre Dieu\nPlus qu’à notre début.''',
    numero: 40,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_026',
    titre: 'QUEL SAUVEUR',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. Quel Sauveur merveilleux je possède.\nIl s’est sacrifié pour moi ;\nEt Sa vie innocente Il céda\nPour mourir sur l’infâme bois.\n\nChœur\nAttaché à la croix pour moi (2 fois)\nIl a pris mon péché\nIl m’a délivré\nAttaché à la crois pour moi.\n\n2. Il renonce à la gloire céleste\nPour le plan rédempteur de Dieu\nHumble et d’apparence modeste\nOh ! Quel prix pour me libérer.\n\n3. Maltraité pour mon indigne vie\nBrisé pour mes iniquités\nIl prit sur lui mes maladies\nEt mourut pour me rendre heureux.\n\n4. Le salut accompli pour Ses frères\nLe Sauveur fut reçu au ciel\nIl revient ô profond mystère\nMon bonheur sera éternel.''',
    numero: 26,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_027',
    titre: 'JE M’ENVOLERAI',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. Un beau matin\nQuand tout sera fini,\nJe m’envolerai ;\nA la maison\n0ù habite mon Jésus,\nJe m’envolerai.\n\nChœur\nJe m’envolerai oh ! Gloire !\nJe m’envolerai.\nA la fin, alléluia\nTout à l’heure Je m’envolerai.\n\n2. Juste encore\nUn peu de temps et alors,\nJe m’envolerai.\nDans ce pays où la joie demeure ;\nJe m’envolerai.\n\n3. Quand l’ombre de ma vie Sera partie,\nJe m’envolerai\nComme un oiseau libéré de prison\nJe m’envolerai.''',
    numero: 27,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_028',
    titre: 'A L’OUEST LE SOLEIL SE COUCHE',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. A l’Ouest le soleil se couche\nIl arrive à la fin de sa course\nEt je vois combien ce temps est là !\nOh ! Le temps du coucher du soleil !\n\nChœur\nC’est la fin, c’est la fin,\nC’est la fin de la course\nC’est la fin, c’est la fin,\nC’est la fin de toute chose !\n\n2. Et voici que la lumière du soir\nA l’Ouest pour moi a paru\nElle manifeste le fils de l’homme\nEt je crois, c’est vrai je le crois\n\n3. Pèlerin, c’est la fin de course !\nIl faut vaincre le monde et partir\nAttention ! Quelle heure est-il ?\nIl faut vaincre le monde et partir.''',
    numero: 28,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_029',
    titre: 'AU NOM DE JESUS',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''Chœur\nAu Nom de Jésus (x2)\nNous avons la victoire.\nAu Nom de Jésus (x2)\nVenez monter avec Lui.\nSi nous avançons au Nom de Jésus,\nDites-moi qui peut résister ?\nAu Nom Puissant de Jésus\nNous avons la victoire.''',
    numero: 29,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_030',
    titre: 'FILS DE DIEU EN AVANT',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''Chœur\nFils de Dieu en avant\nDans la puissance du Saint-Esprit\nFils de Dieu en avant\nCar Jésus est toujours le même\nFils de Dieu en avant\nNous avons la puissance en Son sang\nFils de Dieu en avant\nDans la puissance du Saint-Esprit.''',
    numero: 30,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_031',
    titre: 'SI RICHE, SI PROFOND',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. Si riche, si profond, insondable\nC’est l’Amour Divin\nL’Amour Rédempteur.\n\nChœur\nPour moi, pour moi.\nIndigne, Sauvé par grâce\nPour moi, pour moi ;\nL’Amour Rédempteur.\n\n2. Immuable, incomparable,\nInexprimable ;\nC’est l’Amour Divin ,\nL’Amour Rédempteur.\n\n3. Comme c’est beau\nComme c’est doux.\nDe fredonner de l’Agneau Divin\nL’Amour Rédempteur.''',
    numero: 31,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_032',
    titre: 'J’AI RETROUVE',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. J’ai retrouvé, J’ai retrouvé.\nOh ! Venez\nJ’ai retrouvé ma pierre vivante\nSource de la Vie Éternelle\nDe la vie éternelle.''',
    numero: 32,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_033',
    titre: 'NOUS SOMMES LES ENFANTS',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. Nous sommes les enfants du père,\nCohéritiers avec le Fils\nNous sommes sujets de Son Royaume\nNous sommes un.''',
    numero: 33,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_034',
    titre: 'SOURIANT, SOURIANT',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. Souriant, souriant\nLe chrétien croit tout\nEt accepter tout\nSouriant, Souriant\nLe chrétien prend tout\nPar le bon bout.''',
    numero: 34,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_035',
    titre: 'EMMANUEL, EMMANUEL',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. Emmanuel, Emmanuel.\nET Il S’appelle.\nC’est le Seigneur\nEt Il S’appelle, Emmanuel.''',
    numero: 35,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_036',
    titre: 'DIEU SOIT AVEC VOUS',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. Dieu soit avec vous jusqu’au revoir,\nPar Ses conseils vous soutenant.\nDans Sa bergerie vous gardant.\nDieu soit avec vous\nJusqu’à nous revoir !\n\nChœur\nAu revoir ! Au revoir !\nAu revoir au pied de Jésus\nAu revoir ! Au revoir !\nDieu soit avec vous\nJusqu’à nous revoir !\n\n2. Dieu soit avec vous jusqu’au revoir,\nVous protégeant sous Ses ailes,\nVous donnant la manne quotidienne.\nDieu soit avec vous\nJusqu’à nous revoir !\n\n3. Dieu soit avec vous jusqu’au revoir,\nQuand les périls vous confondent,\nTenez Ses bras infaillibles\nDieu soit avec vous\nJusqu’à nous revoir !\n\n4. Dieu soit avec vous\nJusqu’au revoir\nFlottant de vous Sa bannière\nEloignant de vous la crainte\nDieu soit avec vous\nJusqu’à nous revoir !''',
    numero: 36,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_037',
    titre: 'TIENS L’IMMUABLE MAIN',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. Le temps est plein de transitions\nRien sur terre n’est immuable\nEspère en des choses éternelles\nTiens l’immuable main de Dieu.\n\nChœur\nTiens l’Immuable main de Dieu (x2)\nEspère en des choses éternelles\nTiens l’Immuable main de Dieu.\n\n2. Confie-toi en l’Eternel Dieu\nQuoi qu’apportent les années\nSi tes amis t’abandonnent\nAttache-toi toujours à Lui.\n\n3. Ne convoite pas les richesses vaines\nQui pourrissent rapidement\nCherche les trésors célestes\nQui ne passeront jamais.\n\n4. Quand s’achèvera ton voyage\nSi tu étais fidèle à Dieu\nTon âme ravie dans la gloire\nTrouvera une belle demeure.''',
    numero: 37,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_038',
    titre: 'JE DESIRE LE VOIR',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. Voyageant dans le pays\nJe chante en marchant\nGuidant les âmes au Calvaire\nAu flot cramoisi\nMon âme percée par les flèches\nDedans et dehors\nMon Sauveur me conduit\nPar Lui je vaincrai.\n\nChœur\nJe désire Le voir\nContempler Sa face\nEt chanter pour toujours\nSa divine Grâce\nDans les rues de Gloire\nElever ma voix\nLes soucis sont passes\nOh ! Joie éternelle !\n\n2. Au service de mon Seigneur\nMême dans la nuit sombre\nJe m’accrocherai à Lui\nIl va m’éclairer\nEt les pièges de Satan\nPeuvent troubler mon âme\nMais mon Sauveur\nPrend la direction de tout.\n\n3. Du fin fond de la vallée\nJe regarde en haut\nJe contemple mon Sauveur\nDirigeant la guerre\nIl me prend de la vallée\nPar Sa tendre main\nIl me guide, je peux voir\nMarchant en avant.\n\n4. Quand devant moi les flots montent\nDu fond de l’abîme\nMon Seigneur dirige ma barque\nIl prend soin de moi\nIl me conduit tendrement\nA travers ce monde\nOh ! Il est mon Ami\nEt je L’aime tant.''',
    numero: 38,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_039',
    titre: 'JE PEUX, JE VEUX',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. Je le peux,\nJe le veux,\nJe le crois (x3)\nJésus-Christ me guérit.\n\n2. Je me confie\nEn mon Seigneur (3x)\nJésus-Christ me guérit.''',
    numero: 39,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_040',
    titre: 'GRACE ETONNANTE',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. Grâce étonnante !\nOh ! Quel doux son\nMe sauva malheureux !\nJ’étais perdu, je suis retrouvé\nAveugle, maintenant je vois\n\n2. Cette grâce m’a enseigné la crainte.\nElle ôta mes frayeurs\nCombien précieuse\nParut cette grâce.\nAu moment où j’ai cru.\n\n3. A travers les dangers et pièges\nPar où je suis venu\nCette grâce m’a gardé aussi loin\nMe conduira au ciel.\n\n4. Le Seigneur m’a promis du bien\nSa Parole me soutient.\nIl sera mon abri, ma part.\nTant que j’aurai la vie.\n\n5. Quand tombera cette robe de chair,\nMa vie mortelle cessera.\nJe posséderai dans l’au-delà.\nUne vie de joie et paix.\n\n6. Nous aurons pendant dix mille ans\nBrillé comme le soleil\nNous pourrons louer notre Dieu\nPlus qu’à notre début.''',
    numero: 40,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_041',
    titre: 'QUE TU ES GRAND',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. Seigneur mon Dieu !\nQuand dans mon étonnement\nJe considère, le monde fait par tes mains,\nJe vois les étoiles et j’entends les tonnerres,\nTa puissance plane à travers l’Univers.\n\nChœur\nMon âme chante\nA Toi Dieu mon Sauveur\nQue tu es Grand !\nQue tu es Grand ! (bis)\n\n2. Quand dans les bois\nDans la forêt je marche,\nAlors j’entends\nLe doux chant des oiseaux.\nQuand je regarde\nDu haut de la montagne\nJ’entends les ruisseaux\nEt je sens la brise\n\n3. Quand je pense que\nDieu n’épargna pas Son Fils\nIl L’envoya mourir\nOh ! Quel mystère !\nQue sur la croix,\nJoyeux portant mon fardeau\nSaigna, mourut\nPour ôter mon Péché.\n\n4. Quand Christ viendra\nAvec pleine acclamation,\nIl me prendra\nJoyeux sera mon cœur\nJe vais m’incliner\nDans l’humble adoration,\nEt proclamer mon Dieu\nQue Tu es Grand.''',
    numero: 41,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_042',
    titre: 'NOUS MARCHONS VERS SION',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. Laissons voir notre joie\nNous qui aimons le Seigneur\nJoignons au chant un doux accord ;\nJoignons au chant un doux accord ;\nEt environnant le trône.\nEt environnant le trône.\n\nChœur\nNous marchons vers Sion\nMerveilleuse, merveilleuse Sion\nNous montons tout droit vers Sion\nLa Merveilleuse cité de Dieu.\n\n2. Qu’ils refusent de chanter,\nCeux qui ne connaissent pas notre Dieu\nMais les enfants du Roi céleste\nMais les enfants du Roi céleste\nProclameront leur joie\nProclameront leur joie.\n\n3. La colline de Sion\nNous produit les délices sacrés\nAvant de fouler\nLes domaines célestes (x2)\nNous marchons sur les rues d’or (x2)\n\n4. Puissent nos chants abonder\nEt chaque larme être séchée\nNous marchons\nSur les traces d’Emmanuel,\nNous marchons\nSur les traces d’Emmanuel,\nVers les beaux pays\nD’En-Haut Vers les beaux\nPays d’En-Haut.''',
    numero: 42,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_043',
    titre: 'JÉSUS EST TOUT POUR MOI',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''Jésus est tout, Jésus est tout pour moi\nJésus est tout Jésus est tout pour moi\nCar Il est mon Père, et ma mère\nEt ma sœur et mon frère\nJésus est tout pour moi.''',
    numero: 43,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_044',
    titre: 'JE SAIS C’ETAIT LE SANG',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''Je sais c’était le Sang,\nJe sais c’était le Sang\nJe sais c’était le Sang pour moi\nLorsque j’étais perdu\nA la croix Il mourut\nJe sais c’était le Sang pour moi''',
    numero: 44,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_045',
    titre: 'VEILLERAS–TU AVEC MOI ?',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''Veilleras-tu avec moi une heure ?\nComme je vais là-bas\nComme je vais là-bas\nVeilleras-tu avec moi une heure\nPendant que je vais prier ?''',
    numero: 45,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_046',
    titre: 'JE SUIS UN VAINQUEUR',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''Je suis un vainqueur\nJe suis un vainqueur\nJe suis un vainqueur\nJe suis un vainqueur\nCar j’aime Jésus\nIl est mon Sauveur\nIl me sourit et m’aime aussi.''',
    numero: 46,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_047',
    titre: 'PARLONS DE JÉSUS',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''Parlons de Jésus,\nIl est le Roi des rois,\nLe Seigneur des seigneurs\nDurant l’éternité,\nLe grand « Je Suis »,\nLa Porte, la Vie, la Vérité\nParlons de Jésus pour toujours.''',
    numero: 47,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_048',
    titre: 'ES-TU LAVE DANS LE SANG',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. As-tu rencontré Jésus qui purifie ?\nEs-tu lavé dans le Sang de l’Agneau ?\nAs-tu pleinement confiance,\nEn Sa grâce maintenant ?\nEs-tu lavé dans le sang de l’Agneau ?\n\nChœur\nEs-tu lavé dans le sang\nDe l’Agneau\nQui purifie les âmes ?\nTon habit est-il pur\nAussi blanc que la neige ?\nEs-tu lavé dans le sang de l’Agneau ?\n\n2. Marches-tu chaque\nJour à côté du Sauveur ?\nEs-tu lavé dans le sang de l’Agneau ?\nDemeures-tu chaque jour dans le crucifié ?\nEs-tu lavé dans le sang de l’Agneau ?\n\n3. Quand l’Epoux viendra\nTa robe sera-t-elle blanche ?\nPure et blanche dans le Sang de l’Agneau ?\nTon âme va-t-elle s’apprêter pour le palais ?\nEt sois lavé dans le Sang de l’Agneau ?\n\n4. Débarrasse-toi de cet habit de péché,\nSois lavé dans le Sang de l’Agneau\nIl ya une fontaine\nQui coule pour l’âme impure\nOh ! Sois lavé dans le Sang de l’Agneau.''',
    numero: 48,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_049',
    titre: 'JÉSUS BRISE TOUTE CHAINE',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. Je suis maintenant sur l’autel (ter)\nQui fut dressé pour moi\nJésus brise toute chaîne (ter)\nCar Il me libère !\n\n2. Je ne doute pas mon Sauveur (ter)\nCar Il me purifie\nJe donnerai à Dieu la Gloire (ter)\nCar Il me libère !\n\n3. Sur l’autre côté du Jourdain\nDans les doux champs d’Eden\nOù fleurit l’Arbre de Vie\nIl y a du repos pour moi\nJe crierai Alléluia (ter)\nCar Il me libère !''',
    numero: 49,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_050',
    titre: 'L’HOMME DE GALILEE',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. Dans une crèche,\nIl y a longtemps\nPour moi c’est évident\nUn bébé naquit Sauveur du pécheur\nJean le vit sur le rivage\nL’Agneau plus que jamais\nO Christ le crucifié du calvaire.\n\nChœur\nOh ! Que j’aime\nCet Homme de Galilée,\nParce qu’Il a fait beaucoup\nPour moi.\nIl pardonna mes péchés\nMe remplit du Saint-Esprit\nOh ! Que j’aime\nCet Homme de Galilée !\n\n2. Le Publicain vint prier\nAu temple ce jour-là\nIl cria : ’’ Seigneur, aie pitié de moi’’\nSes péchés furent pardonnés\nUne douce paix le remplit\nIl dit : ’’Venez voir\nL’Homme de Galilée.’’\n\n3. Les boiteux pouvaient marcher\net les muets parler\nCela fut proclamé avec amour\nEt l’aveugle pouvait voir,\nje sais c’est évident\nC’est la puissance de l’Homme de Galilée.\n\n4. Nicodème vint de nuit\nDécouvrir le chemin\nIl demanda au fils de l’Homme que faire\nCelui-ci lui dit ces mots :\n’’ Tu dois naître de nouveau’’\nPar l’Esprit de cet Homme de Galilée.\n\n5. Il avait dit les péchés\nDe la femme au puits\nComment les cinq maris elle avait eu,\nSes péchés furent pardonnés\nUne douce paix la remplit\nElle dit : ’’Venez voir\nL’Homme de Galilée.’’''',
    numero: 50,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_051',
    titre: 'NOTRE SEIGNEUR REVIENT',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. J’attends la Venue du Glorieux\nEt Grand Jour de Millénium\nQuand notre Seigneur béni\nViendra pour chercher Son Epouse.\nOh ! Mon cœur est rempli de ravissement\nComme je veille et prie\nCar notre Seigneur\nRevient bientôt sur terre.\n\nChœur\nOh ! Notre Seigneur\nRevient bientôt sur terre (bis)\nSatan sera lié pour mille ans\nNous ne serons plus tentés\nQuand Jésus reviendra\nDe nouveau sur terre.\n\n2. Le retour de Jésus sera\nLa consolation du monde\nLa connaissance du Seigneur\nRemplira la terre et les Cieux\nDieu prendra toutes nos maladies Et séchera nos larmes\nCar notre Sauveur\nRetournera sur terre\n\n3. Les rachetés du Seigneur\nViendrons à Sion avec joie\nSur Sa sainte montagne\nRien ne causera le chagrin\nEt la paix et l’amour parfait règneront dans tous les cœurs\nQuand Jésus reviendra\nDe nouveau sur terre.\n\n4. Le péché, la mort, le chagrin\nDe ce monde cesseront\nDans le règne glorieux avec\nJésus pendant mille ans de paix\nLa terre entière gémit\nPour ce Jour de douce délivrance\nPour que notre Jésus retourne sur terre.''',
    numero: 51,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_052',
    titre: 'HIER, AUJOURD’HUI ET POUR TJRS',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. Oh ! Qu’il est doux le Message glorieux\nLa Foi proclame Hier, aujourd’hui,\nPour toujours Jésus reste le même.\nIl sauve encore le pécheur\nEt guérit les malades\nIl console et calme la tempête\nGloire à Son Nom.\n\nChœur\nHier, aujourd’hui,\nPour toujours Jésus reste le même Tout peut changer\nMais Jésus ne changera jamais.\nGloire à son nom. Amen\nGloire à son nom. Amen\nTout peut changer Mais Jésus ne changera jamais\n\n2. Lui qui fut l’Ami des pécheurs\nIl te cherche aussi\nViens pécheur t’incliner\nA Ses pieds et repent-toi\nLui dit : ’’Je ne te condamne pas,\nVas ne pèche plus’’\nIl te dit ces mots de pardon\nComme aux jours passés\n\n3. Etant sur terre Il guérissait\nPar Sa main Puissante\nIl ordonnera encore aux peines,\nDe nous quitter\nLui dont la vertu guérit\nLa femme qui le toucha,\nA la foi qui veut sa plénitude\nIl donnera.\n\n4. Lui qui pardonna à Pierre\nIl ôtera ta peur\nLui qui secourut Thomas\nIl ôtera tes doutes\nLe disciple bien–aimé\nSe reposa sur Lui\nIl t’accueillera avec amour\nDans Sa poitrine.\n\n5. Lui qui en pleine tempête\nMarcha sur les eaux\nIl peut calmer notre tempête\nComme en Galilée\nLui qui pria ave angoisse\nA Gethsémani,\nIl boit avec nous la coupe,\nDe notre agonie.\n\n6. Comme Il marcha avec eux\nSur le chemin d’Emmaüs\nIl veut marcher avec nous\nSur le chemin de vie\nNous le contemplerons\nO Seigneur, Ce même Jésus’’\nComme Il est monté.''',
    numero: 52,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_053',
    titre: 'IL RUISSELLEDE SANG',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. Le premier à mourir\nPour le plan de l’Esprit\nFut Jean le Baptiste\nMais il mourut en homme\nPuis le Seigneur Jésus\nIls L’ont crucifié\nIl prêcha, que l’Esprit\nSauverait le pécheur.\n\nChœur\nIl ruisselle de Sang (bis)\nL’Evangile du Saint-Esprit\nIl ruisselle de Sang\nLe Sang des disciples\nMorts pour la Vérité\nL’Evangile du Saint-Esprit\nIl ruisselle de Sang.\n\n2. Il y avait Pierre et Paul\nEt puis Jean le divin\nIls ont donné leurs vies\nPour que l’Evangile brille\nIls ont mêlé leur Sang\nComme les anciens prophètes\nPour que la Parole\nVraie Soit fidèlement prêchée\n\n3. Ils lapidèrent Etienne\nQui condamnait le mal\nExcitant leur colère\nIls coupèrent sa tête\nIl mourut dans l’Esprit\nIl rendit son âme\nIl alla rejoindre\nTous les anciens martyrs\n\n4. Des âmes sont sous l’autel\nCriant :\n’’Jusqu’à quand’’\nPour que le Seigneur punisse\nTous ceux qui font le mal\nIl y en aura beaucoup\nDont le sang coulera\nA cause de l’Evangile\nEt du flot cramoisi.''',
    numero: 53,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_054',
    titre: 'RIEN QUE TA VOIE',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. Seule Ta voie Seigneur\nRien que Ta voie Tu es le Potier,\nJe suis l’argile\nFaçonne-moi par Ta volonté\nPendant que j’attends\nFaible et soumis.\n\n2. Seule ta voie Seigneur\nRien que Ta voie\nCherche et sonde-moi\nMaître aujourd’hui\nPlus blanc que neige\nLave-moi maintenant,\nComme je m’incline\nDans ta présence\n\n3. Seule ta voie Seigneur\nRien que ta voie. Blessé, fatigué,\nAide-moi je prie\nToute puissance est sûrement à Toi\nTouche et guéris-moi\nDivin Sauveur.\n\n4. Seule Ta voie Seigneur\nRien que Ta voie\nTiens tout mon être\nInfluencé\nDonne-moi Ton Esprit\nJusqu’à ce que\nJe verrai Christ vivant en moi''',
    numero: 54,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_055',
    titre: 'JÉSUS A UNE TABLE',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. Jésus a une table où\nLes Saints de Dieu sont nourris\nIl invite Son peuple élu :\n« Viens diner »\nIl nourrit avec la manne\nEt pourvoit à nos besoins\nC’est bon de souper\nAvec Lui Tout le temps.\n\nChœur\nViens dîner,\nLe maître appelle\nViens dîner\nTu peux fêter à la table\nTout le temps\nLui qui a nourri la foule\nEt changea de l’eau en vin\nUn appel à l’affamé\nViens dîner\n\n2. Les disciples étaient venus\nObéissant ainsi à Christ\nPuis le Maître appela :\nViens dîner\nLà, ils trouvèrent leurs désirs\nPain et poisson sur le feu\nIl satisfait les affamés\nTout le temps\n\n3. L’Agneau va prendre l’Epouse\nPour toujours à Ses côtés\nEt tous les hôtes du ciel\nVont s’assembler\nCe sera une belle vue\nTous les Saints vêtus en blanc\nAvec Jésus ils vont fêter\nPour toujours.''',
    numero: 55,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_056',
    titre: 'JE NE CHANCELLE PAS',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. Jésus est mon Sauveur\nJe ne chancelle pas\nSon Amour et faveur\nJe ne chancelle pas\nJuste comme un arbre\nPlanté près des eaux,\nJe ne chancelle pas.\n\nChœur\nJe ne chancelle,\nJe ne chancelle pas\nJe ne chancelle,\nJe ne chancelle pas\nJuste comme un arbre\nPlanté près des eaux,\nJe ne chancelle pas.\n\n2. Caché dans le Christ,\nJe ne chancelle pas.\nCaché dans son Amour\nJe ne chancelle pas.\nJuste comme un arbre,\nPlanté près des eaux,\nJe ne chancelle pas.\n\n3. Si je le crois toujours\nJe ne chancelle pas\nIl ne peut me lâcher,\nJe ne chancelle pas.\nJuste comme un arbre\nPlanté près des eaux\nJe ne chancelle pas.\n\n4. Gloire, Alléluia,\nje ne chancelle pas.\nAncré dans Jéhovah,\nJe ne chancelle pas.\nJuste comme un arbre,\nPlanté près des eaux,\nJe ne chancelle pas.\n\n5. Que l’enfer m’assaille\nje ne chancelle pas.\nJésus ne me lâche pas,\nje ne chancelle pas.\nJuste comme un arbre planté\nprès des eaux, je ne chancelle pas.\n\n6. Que les tempêtes sévissent,\nJe ne chancelle pas.\nSur le Rocher des âges,\nJe ne chancelle pas.\nJuste comme un arbre,\nPlanté près des eaux,\nJe ne chancelle pas.\n\n7. Je suis dans son Amour,\nJe ne chancelle pas\nJe me confie en Lui,\nJe ne chancelle pas.\nJuste comme un arbre,\nplanté près des eaux,\nJe ne chancelle pas.\n\n8. Je mange ta Parole,\nje ne chancelle pas.\nIl est bien le Guide,\nje ne chancelle pas.\nJuste comme un arbre,\nPlanté près des eaux,\nJe ne chancelle pas.''',
    numero: 56,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_057',
    titre: 'DANS CETTE CITE',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. Il y a un pays au-delà des étoiles,\nIl y a une cité\nOù il n’y a point de nuit,\nSi nous sommes fidèles,\nNous irons là bientôt,\nC’est la cité\nOù l’Agneau est la lumière.\n\nChœur\nDans cette cité\nOù l’Agneau est la lumière,\nCette cité\nOù il n’y a point de nuit,\nJ’ai un beau palais là-haut,\nEt libéré des soucis,\nJe m’en irai où l’Agneau est la lumière.\n\n2. Ici nous sommes éclairés\nMais nous savons,\nQue ce soleil\nQui luit sur nous maintenant,\nSe changera en nuage\nQuand nous irons,\nA la cité où l’Agneau\nEst la lumière.\n\n3. Là il y a des fleurs à jamais et le jour,\nSera un jour éternel et pas de nuit.\nNos larmes seront essuyées\nÀ jamais, Dans cette cité\nOù l’Agneau est la lumière.\n\n4. Ici nous avons toujours des déceptions Et nos espoirs\nRencontrent l’opposition\nIci nous pleurons, Là-bas sera la joie, Dans cette cité\nOù l’Agneau est la lumière.\n\n5. Que le soleil faiblisse\nOu qu’il y ait la nuit,\nMon cœur bienheureux n’a peur d’aucun ombrage\nCar je sais que là au Ciel\nJ’ai une maison, Dans cette\nOù l’Agneau est la lumière.''',
    numero: 57,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_058',
    titre: 'DESCENDS DOUX CHARIOT',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. Je regarde au loin\nAu-delà du Jourdain\nVenant m’amener à la maison\nUne cohorte d’anges\nQui vient après moi\nVenant m’amener à la maison.\n\nChœur\nDescends, doux chariot\nVenant m’amener à la maison\nDescends, doux chariot\nVenant m’amener à la maison.\n\n2. Si tu entres là-bas\nAvant mon arrivée\nVenant m’amener à la maison\nDis à tous mes amis\nQue je viendrai aussi\nVenant m’amener à la maison.''',
    numero: 58,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_059',
    titre: 'MARCHANT PLUS PRES',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. Je suis faible, Tu es fort\nJésus garde-moi du mal\nJe serai satisfait tous les jours\nComme je marche,\nGarde-moi près de Toi.\n\nChœur\nMarchant toujours avec Toi\nJésus exauce ma prière\nMarchant toujours près Toi\nLaisse qu’il en soit ainsi mon Seigneur.\n\n2. Dans ce monde des peines et pièges En tombant qui me protège ? Qui\nm’aide à porter mon fardeau ?\nRien que Toi,\nCher Seigneur, Rien que Toi.\n\n3. Quand ma faible vie expire\nEt mon temps ne sera plus\nGuide-moi en sécurité\nVers les rivages de Ton Royaume''',
    numero: 59,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_060',
    titre: 'L’ANCIEN EVANGILE',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. C’est encore l’ancien Saint-Esprit, Et Satan ne peut l’approcher\nC’est pourquoi les peuples le craignent\nMais Il est si bon pour moi.\n\nChœur\nDonne-moi l’ancien Evangile,\nDonne-moi l’ancien Evangile,\nDonne-moi l’ancien Evangile,\nIl est si bon pour moi.\n\n2. Il mettra fin à tes mensonges,\nIl te sauvera de la mort,\nIl fera s’enfuir le démon\nEt Il est si bon pour moi.\n\n3. Il est bon, je n’en veux d’autre\nCar Il me fait aimer mon frère\nIl met toute chose à découvert\nEt Il est si bon pour moi.\n\n4. Il était si bon pour nos pères\nIl fut bon pour Paul et Sillas\nIl est si bon pour frère Branham\nEt Il est si bon pour moi.''',
    numero: 60,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_061',
    titre: 'C’EST LE VIEUX BATEAU DE SION',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. C’est le vieux bateau de Sion\nC’est le vieux bateau de Sion\nC’est le vieux bateau de Sion\nEmbarquez, embarquez.\n\n2. Il fit arriver mon papa\nIl fit arriver mon papa\nIl fit arriver mon papa\nEmbarquez, embarquez''',
    numero: 61,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_062',
    titre: 'J’AI UN PERE DANS L’AU-DELA',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. Oui, j’ai un Père\nDans l’au-delà (x3)\nLà de l’autre côté.\n\n2. Et un beau jour\nJ’irai Le voir (x3)\nLà de l’autre côté\n\n3. Quelle bonne rencontre\nCe sera (x3)\nLà de l’autre côté.\n\n4. Ce beau jour\nPeut être demain (x3)\nLà de l’autre côté''',
    numero: 62,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_063',
    titre: 'LA VIEILLE CROIX RUGUESE',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. Sur une colline lointaine\nSe tenait une vieille croix\nEmblème de souffrance et de honte Et j’aime cette vieille croix\nOù Le Très cher mourut\nPour un monde\nDes pécheurs perdus.\n\nChœur\nAinsi j’aimerai cette vieille croix\nJusqu’à ce que je déposé mes armes Je vais m’attacher à la vieille croix Et l’échanger contre une couronne.\n\n2. Cette vieille croix rugueuse\nSi méprisée du monde\nElle a une attraction pour moi\nLe Cher Agneau de Dieu\nAbandonna sa gloire\nPour la porter là au Calvaire.\n\n3. Oh ! Dans cette vieille croix\nTeintée de Sang Divin\nUne merveilleuse beauté je vois\nC’est sur cette vieille croix\nQue mon Jésus mourut\nPour mon pardon, ma pureté.\n\n4. Et à cette vieille croix\nJe serai si fidèle\nJoyeux je porterai sa honte\nUn jour Il m’appellera\nA ma maison lointaine\nPour être toujours dans sa gloire.''',
    numero: 63,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_064',
    titre: 'JE VAIS A LA TERRE PROMISE',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. Aux rebords du Jourdain,\nJe me tiens\nMes yeux se portent au loin\nVers le beau pays de Canaan\nOù se trouve mon trésor.\n\nChœur\nJe vais à la terre promise (x2)\nOh ! Qui veut venir avec moi\nJe vais à la terre promise.\n\n2. Sur ces larges plaines étendues\nBrille un jour éternel\nLà le Fils de Dieu règne à\nJamais et dissipe la nuit.\n\n3. Ni souffle, ni vent, ni froideur\nSur ce rivage saint\nLa mort, la peine, la maladie\nN’y sont jamais senties.\n\n4. Quand j’atteindrai ce bel endroit\nEtre à jamais béni\nQuand je verrai la face du Père\nMe reposer en Lui.''',
    numero: 64,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_065',
    titre: 'QUEL AMI',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. Quel Ami nous avons en Jésus\nPortant nos péchés ; et peines\nOh ! Quel privilège d’apporter\nTout à Dieu dans la prière,\nSouvent nous perdons la paix.\nEn vain nous portons la peine\nParce que nous n’apportons pas\nTout à Dieu dans la prière.\n\n2. Avons-nous épreuves tentations ?\nY a-t-il trouble quelque part ?\nNe perdons jamais courage\nAmenons tout au Seigneur\nOù trouver l’ami fidèle\nQui peut partager nos peines\nJésus connait nos faiblesses\nAmenons tout au Seigneur\n\n3. Sommes-nous faibles\nEt tellement chargés\nPar le fardeau des soucis ?\nPrécieux Sauveur, notre refuge\nAmenons tout au Seigneur\nTes amis t’ont abandonné,\nAmenons tout au Seigneur\nDans ses bras Il te gardera\nLà tu seras consolé.''',
    numero: 65,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_066',
    titre: 'LE JOUR DE LA REDEMPTION',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. Les nations se disloquent\nIsraël se réveille.\nLes signes que les prophètes prédirent\nLes jours des gentils comptés\nEncombrés d’horreur\nBientôt sera l’Eternité.\n\nChœur\nLe jour de la rédemption est proche Les cœurs des hommes sont effrayés\nSois rempli de l’Esprit,\nTa lampe pleine et claire\nRegarde ta rédemption\nEst proche !\n\n2. Le figuier bourgeonne\nJérusalem est restaurée\nSa vie nationale détrônée\nElle appelle aujourd’hui\nSa dernière pluie tombe\n’’Reviens’’ Oh ! Toi dispersée.\n\n3. Les Cieux ébranlés\nBeaucoup sont trompés\nSur ce qui se passe\nDans le ciel l’Eglise est la puissance Qui\nsecoue cette heure.\nLe jour de la rédemption est proche.\n\n4. Les faux prophètes trompent\nIls nient la Vérité ;\nCelle de Jésus-Christ notre Dieu.\nIls ont rejeté la Révélation.\nNous suivons les pas des apôtres.''',
    numero: 66,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_067',
    titre: 'OH! COMBIEN J’AIME JÉSUS',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. Oh ! Combien j’aime Jésus !\nOh Combien j’aime Jésus !\nOh Combien j’aime Jésus !\nCar Il m’aima le premier.\n\n2. Je ne peux l’oublier\nJe ne peux l’oublier\nJe ne peux l’oublier\nCar Il m’aima le premier.''',
    numero: 67,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_068',
    titre: 'DEBOUT SUR LES PROMESSES',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. Debout sur les promesses\nDe Christ mon Roi.\nQu’à travers les âges\nSes louanges soient\nGloire dans les lieux\nTrès-hauts je chanterai.\nDebout sur les promesses de Dieu.\n\nChœur\nDebout, Debout,\nDebout, sur les promesses\nDe Dieu mon Sauveur\nDebout, Debout Je me tiens\nSur les promesses de Dieu.\n\n2. Debout sur les promesses infaillibles Quand les vents de doute\nEt de peur assaillent,\nPar la Parole de Dieu\nVivant Je vaincrai,\nDebout sur les promesses de Dieu.\n\n3. Debout sur les promesses,\nMoi je peux voir\nDans le Sang\nLa purification pour moi.\nDebout dans la liberté\nQui vient de Christ,\nDebout sur les promesses de Dieu.\n\n4. Debout sur les promesses de Jésus-Christ,\nAttaché à Lui par la corde d’Amour Toujours victorieux\nPar l’Epée de l’Esprit,\nDebout sur les promesses De Dieu.\n\n5. Debout sur les promesses,\nje ne peux tomber\nToujours écoutant la voix\nDu Saint-Esprit Reposé\nDans mon Sauveur mon tout en tout,\nDebout sur les promesses de Dieu.''',
    numero: 68,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_069',
    titre: 'L’UN D’ENTRE EUX',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. Il y a presque partout,\nDes peuples dont\nLes cœurs enflammés\nPar le feu purifiant\nDescendu à la pentecôte,\nEt il brûle maintenant\nDans tout mon cœur\nA son Nom la gloire,\nJe suis heureux de dire\nJe suis l’un d’entre eux.\n\nChœur\nL’un d’entre eux (x2)\nJe suis heureux de dire\nJe suis l’un d’entre eux (Bis)\n\n2. Bien que ces peuples ne portent pas la renommée du monde,\nBaptisés au Nom de Jésus Ils reçurent la pentecôte\nEt ils parlent maintenant\nDe son immuable puissance,\nJe suis heureux de dire\nJe suis l’un d’entre eux.\n\n3. Ressemblés dans la chambre haute Ils priaient tous en son Nom, Ils étaient tous baptisés\nDu Saint-Esprit pour le service\nCe qu’il a fait pour eux en ce jour\nIl peut le faire pour toi\nJe suis heureux de dire\nJe suis l’un d’entre eux\n\n4. Viens mon frère\nChercher cette bénédiction\nQui te rendra pur\nEt qui fera sonner\nLes cloches de joie\nDans tout ton cœur\nElle enflammera ton âme,\nElle brûle en moi,\nGloire à son Nom !\nJe suis heureux de dire\nJe suis l’un d’entre eux.''',
    numero: 69,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_070',
    titre: 'PLUS BLANC QUE NEIGE',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. Bénie soit la fontaine de Sang\nRévélée au monde des pécheurs\nBénie soit le Cher Fils de Dieu\nQui guérit par ses meurtrissures\nJ’ai erré loin de sa Bergerie\nJ’ai causé de la peine à mon cœur\nLave-moi dans le Sang de l’Agneau\nJe serai plus blanc que la neige\n\nChœur\nBlanc plus blanc que neige\nBlanc plus blanc que neige\nLave-moi dans Le Sang de l’Agneau,\nJe serai plus blanc que la neige\n\n2. Oh ! Père, j’ai erré\nLoin de Toi Souvent mon cœur s’est égaré Mes péchés sont rouges cramoisi L’eau ne peut pas\nLes nettoyer Jésus je viens à la fontaine,\nNe comptant que sur ta promesse\nLave-moi par Ton Divin lavage\nJe serai plus blanc que la neige.''',
    numero: 70,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_071',
    titre: 'OH ! QUEL PRECIEUX',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''Oh ! Quel précieux amour du Père\nPour la race déchue d’Adam\nIl a donné son Fils unique\nPar grâce, Il nous racheta.''',
    numero: 71,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_072',
    titre: 'JESUS M’A LIBERE',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. Je suis heureux\nJésus m’a libéré (ter)\nGloire ! Alléluia\nJésus m’a libéré\n\n2. Je suis heureux\nJésus m’a enlevé (ter)\nGloire ! Alléluia\nSur ma route au ciel''',
    numero: 72,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_073',
    titre: 'REMPLIS-MOI D’AMOUR',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. Laisse-moi marcher Seigneur\nPar où tu es passé\nChemin conduisant vers le ciel\nPartout donnant la joie\nAux gens abandonnés\nRemplis-moi chaque jour d’Amour.\n\nChœur\nRemplis-moi chaque jour d’Amour\nComme je marche avec la Colombe\nLaisse-moi marcher toujours\nAvec chant et sourire\nRemplis-moi chaque jour d’Amour.\n\n2. Garde-moi à côté\nDe mon Sauveur et guide\nNe me laisse pas dans les ténèbres\nGarde-moi du courroux\nEt satisfait mon âme\nRemplis-moi chaque jour d’Amour.\n\n3. Bientôt la fin de course\nLa fin de mon voyage\nJ’habiterai au ciel chez moi\nQue je chante, Roi béni\nSur la route vers la route\nRemplis-moi chaque jour d’Amour.''',
    numero: 73,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_074',
    titre: 'N’OUBLIEZ PAS LA PRIERE',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''N’oubliez pas la prière en famille\nJésus veut vous trouver là\nIl va s’occuper de vous\nOh! N’oubliez pas la prière en famille.''',
    numero: 74,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_075',
    titre: 'MOMENT DE PRIERE',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. Moment de prière\nMoment de prière\nQui m’appelle d’un monde de souci\nEt m’approche du trône de mon Père\nPour faire connaître mes désirs.\nEn temps de peine et de chagrin\nMon âme est toujours consolée\nEt préservée des tentations\nPar ton retour, moment de prière.\n\n2. Moment de prière,\nMoment de prière,\nJe suis dans la félicité,\nAvec ceux dont\nLes cœurs s’enflamment\nDe grands désirs pour ton retour\nAvec eux je partirai là''',
    numero: 75,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_076',
    titre: 'JE CONNAIS EN QUI J’AI CRU',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. Je ne sais pourquoi dans sa grâce\nDieu se révèle à moi\nNi pourquoi Christ\nDans Son Amour\nM’a racheté pour Lui.\n\nChœur\nMais je connais en qui j’ai cru\nJe suis persuadé qu’Il est capable\nDe garder ce que je Lui soumets\nJusqu’au jour de Son retour.\n\n2. Je ne sais comment le Seigneur\nM’avait donné la foi\nNi comment croyant\nSa Parole j’ai la paix dans mon cœur\n\n3. Je ne sais comment\nSon Esprit\nConvainc tous les pécheurs\nRévélant Jésus la Parole\nIl crée la foi en Lui\n\n4. Je ne sais quel bien ou quel mal\nPeut m’être réservé\nDes jours de joie ou de tristesse\nAvant de voir sa face.\n\n5. Je ne sais quand mon Sauveur vient\nEn plein jour ou la nuit\nSi je vais monter dans les airs\nOu descendre avec Lui.''',
    numero: 76,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_077',
    titre: 'EN AVANT SOLDATS CHRETIENS',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. En avant, soldats chrétiens\nMarchant comme à la guerre\nAvec la croix de Jésus\nAllons tous en avant Christ\nLe Maître royal\nMène contre l’ennemi\nTout droit dans la bataille\nRegardez ses bannières.\n\nChœur\nEn avant soldats chrétiens\nMarchant comme à la guerre\nAvec la croix de Jésus\nAllons tous en avant.\n\n2. Comme une armée puissante\nDebout, Eglise de Dieu,\nFrères, nous sommes en marche\nSur les traces des Saints\nNous ne sommes pas divisés\nTous nous sommes un seul corps\nUn dans l’espoir et doctrine\nUn dans la charité.\n\n3. Couronnes et trônes périront\nLes royaumes tomberont\nMais l’Eglise de Jésus\nDemeurera constante\nMême les portes de l’enfer\nNe prévaudront contre elle\nNous avons la promesse\nInfaillible de Christ.\n\n4. Par le signe du triomphe\nFuit l’armée de Satan\nOh ! Alors, soldats chrétiens\nMarchez vers la victoire\nL’enfer est tout ébranlé\nPar le cri de louange\nOh ! Frères, élevez vos voix\nQue votre hymne monte.\n\n5. En avant vous les peuples\nJoignez notre heureuse foule\nMêlez vos voix aux nôtres\nDans le chant de triomphe\nEloge, gloire et honneur\nA Christ, Le Roi des rois\nDans les âges éternels\nChantent les hommes et les anges.''',
    numero: 77,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_078',
    titre: 'APPORTANT LES FRUITS',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. Semant le matin\nLes semences d’amour\nSemant en pleine marée\nLa veille de rosée\nAttendant la moisson\nLe temps de récolte\nNous serons dans la joie\nApportant les fruits.\n\nChœur\nApportant Les fruits\nApportant les fruits\nNous serons dans la joie\nApportant les fruits (bis)\n\n2. Semant sous le soleil\nSemant dans les ombres\nNe craignant ni nuage\nNi le froid d’hiver\nBientôt la récolte et le travail fini\nNous serons dans la joie\nApportant les fruits\n\n3. Avançant avec des pleurs\nSemant pour le Maître\nBien que perdant la force\nEsprits affligés\nQuand nos pleurs finiront\nIl nous accueillera\nNous serons dans la joie\nApportant les fruits.''',
    numero: 78,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_079',
    titre: 'TOUS DANS LA CHAMBRE HAUTE',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. Tous dans la Chambre Haute\nEtaient d’un commun accord\nQuand le Saint-Esprit descendit\nComme promis par le Seigneur.\n\nChœur\nSeigneur envoie Ta Puissance\nSeigneur en voie Ta Puissance\nSeigneur en voie Ta Puissance\nEt baptise tout le monde.\n\n2. La Puissance du Ciel descendit\nAvec un son impétueux\nEt des langues de feu\nVinrent sur eux\nComme promis par le Seigneur.\n\n3. Cette ancienne Puissance fut donnée\nA nos pères fidèles à Dieu\nCela fut promis aux croyants\nNous pouvons aussi L’avoir.''',
    numero: 79,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_080',
    titre: 'QU’IL FAIT BON A TON SERVICE',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. Qu’il fait bon à Ton service\nJésus mon Sauveur\nQu’il est doux le sacrifice\nQue T’offre mon cœur.\n\nChœur\nPrends, ô Jésus,\nPrends ma vie,\nElle est toute à Toi !\nEt dans ta Grâce infinie,\nDu mal garde-moi!\n\n2. Mon désir,\nMon vœu suprême,\nC’est Ta volonté\nRien je ne veux et je n’aime\nQue ta volonté.\n\n3. Comme l’ange au vol rapide,\nJe veux te servir\nLes yeux fixés sur mon Guide\nToujours obéir.\n\n4. Travail, douleur et souffrance,\nNon, je ne crains rien\nToi, Jésus, mon Espérance\nVoilà mon seul bien.\n\n5. Ensemble donc vers la gloire\nMarchons en avant\nChantant l’hymne de victoire\nToujours triomphant.''',
    numero: 80,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_081',
    titre: 'IL PREND SOIN DE TOI',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''Il prend soin de toi\nIl prend soin de toi\nPendant le jour ou la nuit\nIl prend soin de toi.''',
    numero: 81,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_082',
    titre: 'PLUS TARD',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. Tentés, éprouvés,\nNous nous demandons,\nPourquoi c’est ainsi le long du jour ?\nPendant qu’il y en a\nD’autres comme nous\nQuoique dans le mal sont impunis.\n\nChœur\nPlus tard\nNous saurons ce qu’il en est\nPlus tard\nNous comprendrons le pourquoi.\nCourage mon frère\nVis dans la lumière,\nNous comprendrons tout\nDans peu de temps.\n\n2. Quand la mort vient\nEt prend nos bien- aimés,\nLaissant notre maison solitaire;\nNous nous demandons\nPourquoi les méchants\nProspèrent jour après jour ici-bas.\n\n3. Fidèles jusqu’à la mort\nDit le Maître\nNotre labeur est bientôt fini\nLes peines du chemin\nSeront oubliées\nQuand nous franchirons\nLa belle porte.\n\n4. Nous voyons Jésus\nVenant dans la gloire\nComme Il vient\nDe Sa Maison céleste\nNous Le rencontrerons\nDans ce Palais\nNous comprendrons tout\nDans peu de temps.''',
    numero: 82,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_083',
    titre: 'AMENE-LES',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. Ecoute la Voix du Berger\nVenant du désert sombre et sec\nAppelant la brebis perdue\nQui s’est éloignée du troupeau.\n\nChœur\nAmène-les, amène-les\nEt sors-les de la vie du péché\nAmène-les, amène-les\nAmène-les perdus à Jésus.\n\n2. Qui aidera ce Bon Berger\nA retrouver tous les perdus,\nA les ramener au troupeau\nLà où ils seront protégés ?\n\n3. Du désert écoute leur cri\nVenant, des montagnes élevées\nEcoute le Maître te dit:\nVas me retrouver les brebis.''',
    numero: 83,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_084',
    titre: 'SEIGNEUR, PARLE',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. Ecoutez le Maître de la moisson:\nQui travaillera pour moi\nAujourd’hui ?\nQui m’amènera ceux qui sont perdus‘?\nQui leur montrera l’étroite voie?\n\nChœur\nSeigneur parle, Seigneur parle\nParle et ma réponse sera prête\nSeigneur parle, Seigneur parle\nParles et je répondrai:\n“Envoie-moi.”\n\n2. Quand la braise toucha le prophète\nLe rendant aussi pur\nQue l’on peut l’être\nQuand la Voix le Dieu dit:\nQui ira pour nous ?\nIl répondit: « Maître envoie-moi »\n\n3. Des milliers sont mourants\nDans les péchés\nEcoute leur cri triste et amer\nDépêchez-vous frère\nPour les secourir\nEt Répondez: ‘Maître me voici”.\n\n4. Bientôt le temps\nDe la moisson prend fin\nNous serons rassemblés\nÀ la maison\nLe Maître de la moisson\nNous dira: “ Enfants\nVous avez bien travaillé.”''',
    numero: 84,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_085',
    titre: 'OH ! JE L’AIME',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''Oh je l’aime, oh ! Je l’aime\nParce qu’il m’a aimé\nEt a donné Sa Vie pour moi\nA Golgotha''',
    numero: 85,
    auteur: 'Auteur inconnu',
  ),

  Cantique(
    id: 'cantiques_inspires_086',
    titre: 'SEIGNEUR, JE REVIENS',
    collectionId: 'cantiques_inspires',
    collection: 'Cantiques Inspirés',
    contenu:
        '''1. J’étais errant plus loin de Dieu,\nMaintenant je reviens,\nLe péché longtemps,\nj’ai suivi, Seigneur, je reviens\n\nChœur\nJe reviens, je reviens\nPour ne plus errer,\nOuvre Tes larges bras d’amour\nSeigneur, je reviens.\n\n2. Oui j’ai perdu beaucoup d’années\nMaintenant je reviens\nJe me repens avec des larmes\nSeigneur, je reviens.\n\n3. Fatigué du péché, Seigneur\nMaintenant je reviens\nJe me confie en ton amour\nSeigneur, je reviens.\n\n4. Mon âme malade\nMon cœur touché,\nMaintenant je reviens\nRedonne la force,\nRestaure l’espoir\nSeigneur je reviens.\n\n5. Mon seul espoir, ma seule prière,\nMaintenant je reviens\nEst que Jésus mourut pour moi\nSeigneur, je reviens\n\n6. Je sais, j’ai besoin\nDe ton sang\nMaintenant je reviens\nOh! Lave-moi\nPlus blanc que la neige,\nSeigneur je reviens.''',
    numero: 86,
    auteur: 'Auteur inconnu',
  ),
];
