Movie.destroy_all
Director.destroy_all
Comment.destroy_all

Genre.create!([{ name: 'Kryminał' }, { name: 'Dramat' }, { name: 'Komedia' }, { name: 'Obyczajowy' }, { name: 'Thriller' }, { name: 'Sensacyjny' }])

Director.create!([{
		name: 'Chuck Lorre',
		photo_url: 'http://i.forbesimg.com/media/lists/people/chuck-lorre_416x416.jpg',
		birth: '1952-10-18',
		bio: 'Chuck Lorre jeszcze nie ma biografii.'
	},{
		name: 'Lorem Ipsum',
		photo_url: 'http://random-ize.com/lorem-ipsum-generators/lorem-ipsum/lorem-ipsum.jpg',
		birth: '1900-10-18',
		bio: 'Lorem ipsum dolor sit amet enim. Etiam ullamcorper. Suspendisse a pellentesque dui, non felis. Maecenas malesuada elit lectus felis, malesuada ultricies. Curabitur et ligula. Ut molestie a, ultricies porta urna. Vestibulum commodo volutpat a, convallis ac, laoreet enim. Phasellus fermentum in, dolor. Pellentesque facilisis. Nulla imperdiet sit amet.'
	},{
		name: 'Ridley Scott',
		photo_url: 'http://www.wired.com/wp-content/uploads/archive/images/article/magazine/1510/ff_scott_580_f.jpg',
		birth: '1937-11-30',
		bio: 'Ridley Scott to reżyser, który dzięki realizacji tak doskonałych filmów jak "Obcy: Ósmy pasażer Nostromo" oraz "Łowca androidów" zapewnił sobie trwałą i wysoką pozycję wśród twórców światowej kinematografii. Obrazy Scotta wyróżniają się ciekawymi i oryginalnymi zdjęciami a także niesamowitym nastrojem w kreowaniu którego artysta jest prawdziwym mistrzem. W dużej mierze umiejętność tą zawdzięcza swojemu wykształceniu, które oprócz edukacji filmowej obejmowało również grafikę malarstwo. Swój pierwszy film Scott zrealizował jeszcze podczas nauki w Royal Academy of Art. Po jej ukończeniu, z wyróżnieniem, artysta wyjechał na roczne stypendium do USA, gdzie pracował przy realizacji filmów dokumentalnych. Po powrocie do Anglii Scott został zatrudniony w telewizji BBC, gdzie bardzo szybko awansował na stanowisko niezależnego reżysera. W 1967 r. artysta opuścił telewizję i otworzył swoją własną firmę Ridley Scott Associates, która w szybkim czasie stała się jedną z najważniejszych firm tworzących reklamy dla potrzeb telewizji. Przez kolejnych 10 lat Scott zrealizował około 2000 reklam, z których wiele zostało nagrodzonych. W 1977 r. artysta zdecydował się zadebiutować jako reżyser filmowy. Zrealizował wtedy obraz na podstawie powieści Joedpha Conrada pt. "Pojedynek". Film został dobrze przyjęty przez krytykę a Scott otrzymał nagrodę za najlepszy debiut na festiwalu w Cannes, ale niestety mimo sukcesów artystycznych okazał się finansową klapą. Na szczęście Scott się nie zniechęcił i w 1979 r. zrealizował jeden ze swoich najlepszych filmów "Obcy" Ósmy pasażer Nostromo". Obraz stał się wielkim przebojem po obu stronach oceanu (do dnia dzisiejszego doczekał się jeszcze 3 kolejnych części) a nazwisko Scotta zaczęło być znane. Trzy lata później powstaje "Łowca androidów", film, który mimo początkowych niepochlebnych recenzji dziś uważany jest za jeden z najwybitniejszych obrazów SF w historii kina a przez wielu uważany jest za kultowy (w tym przypadku nie jest to nadużycie tego słowa). Kolejne filmy Scotta nie były już tak dobre i trzeba było czekać aż do roku 1991, kiedy powstała "Thelma i Louise" aby nazwisko reżysera pojawiło się ponownie na "pierwszych stronach gazet". Film był ogromnym przebojem i na całym świecie wzbudził nie tylko zachwyt krytyków, ale również wiele kontrowersji. Rok później Scott zdecydował się na realizację widowiska historycznego i nakręcił epicką opowieść opowiadającą o odkryciu Ameryki przez Krzysztofa Kolumba pt. "1492: Odkrycie raju". Niestety film ten okazał się kompletną klapą i nie spodobał się ani widzom ani krytykom. Podobnie było ze zrealizowanym 4 lata później "Sztormem", który również okazał się finansową klapą. W 1997 r. Scott zrealizował "G.I. Jane", bardzo kontrowersyjny film opowiadających o kobiecie w amerykańskich oddziałach specjalnych a trzy lata później nakręcił doskonałego "Gladiatora".'
	},{
		name: 'Martin Scorsese',
		photo_url: 'https://biografia24.pl/biografie/wp-content/uploads/2013/11/img-martin-scorsese_14532014334.jpg',
		birth: '1942-02-03',
		bio: %q{'Martin Scorsese zalicza się do najwybitniejszych reżyserów światowego kina. W swoich wywiadach często wspomina, iż filmy były jego pasją od najmłodszych lat. Mimo to, zanim zdecydował się na studia w szkole filmowej, wstąpił do seminarium duchownego z zamiarem zostania księdzem. "Na szczęście" zrezygnował i rozpoczął naukę na nowojorskim uniwersytecie, gdzie kształcił się w sztuce filmowej. Podczas studiów zrobił kilka filmów, z których "It's Not Just You, Murray" i "Kto puka do moich drzwi" przyniosły mu duże zainteresowanie krytyków. Ostatni z wymienionych filmów trafił nawet na duże ekrany, wywołując spore zainteresowanie widzów. W 1973 roku Scorsese wyreżyserował "Ulice nędzy", obraz, który otworzył mu drzwi do światowej kariery. W 1976 r. artysta otrzymał swoją pierwszą ważną nagrodę - Złotą Palmę za film "Taksówkarz". Od tamtej pory Scorsese pozostaje w czołówce najlepszych twórców światowego kina. Kolejne jego filmy nigdy nie przechodziły bez echa. Ekranizacja powieści Nikosa Kazantazkisa "Ostatnie kuszenie Chrystusa" wywołała burzę na całym świecie i w niektórych krajach nie została nawet dopuszczona do dystrybucji, a sam reżyser został oskarżony o bluźnierstwo. Scorsese jest również twórcą telewizyjnym. Ma na swoim koncie kilka odcinków seriali, reklamówek, a także teledysk do piosenki Michaela Jacksona "Bad".'}
	},{
		name: 'Quentin Tarantino',
		photo_url: 'http://fullhdpictures.com/wp-content/uploads/2016/02/Quentin-Tarantino-Pictures-HD.jpeg',
		birth: '1963-03-27',
		bio: %q{Gdy w 1992 roku na ekrany wszedł film "Wściekłe psy", wyreżyserowany przez nikomu nieznanego debiutanta Quentina Tarantino, krytycy chórem krzyknęli, że oto mamy do czynienia z narodzinami prawdziwego talentu. Kiedy dwa lata później powstał obraz pt. "Pulp Fiction", zachwyt przeszedł wszelkie granice. Film zdobył Złotą Palmę w Cannes, Oscara za scenariusz i został okrzyknięty, podobnie jak jego twórca, kultowym. Tygodnik "Variety" twierdził, że Tarantino jest pierwszym z nowej generacji reżyserów - artystów, którzy swojego fachu będą uczyli się nie w szkołach, ale oglądając film na wideo. Powoływali się na fakt, iż Quentin, będąc maniakiem kina, pięć lat przepracował w wypożyczalni kaset, gdzie miał łatwy dostęp do filmów i mógł je oglądać też w godzinach pracy. Codziennie pochłaniał po kilka obrazów, od niskobudżetowych produkcji rodem z Hongkongu po dzieła francuskiej "nowej fali". Była to jego szkoła filmowa. Realizacją "Wściekłych psów" udało mu się zainteresować Harveya Keitela, który nie dość, że zwiększył budżet filmu z 35 tysięcy dolarów do 1,5 miliona, to jeszcze przekonał do zagrania w nim takich aktorów jak Tim Roth czy Michael Madsen. Obecnie Quentin Tarantino jest prawdopodobnie jednym z najchętniej oglądanych i najczęściej dyskutowanych reżyserów naszych czasów. Przez wielu krytyków przedstawiany jest jako wzorowy przykład twórcy postmodernistycznego.}
	},])
Movie.create!([{
		 title: 'Big Bang Theory',
		 year: 2007,
		 show: true,
		 director_id: 1,
		 photo_url: 'http://ecx.images-amazon.com/images/I/81Q4YEuPKwL._SL1500_.jpg',
		 review: "Sezon 1: Fizycy Leonard i Sheldon rozumieją wszystko począwszy od nieuchronnego przyciągania czarnej dziury, a skończywszy na skomplikowanej budowie atomu. Ale jeśli złożycie te atomy w kobietę, wtedy ich rozumowanie nagle się kończy. A kiedy Penny, kobieta ze wszystkimi atomami we właściwym miejscu, wprowadza się do mieszkania naprzeciwko, wszechświat Leonarda i Sheldona zaczyna się rozszerzać do rozmiarów, których nigdy nie podejrzewali.",
		 genre_ids: [3]
	}, {
		 title: 'Lie to me',
		 year: 2009,
		 show: true,
		 director_id: 2,
		 photo_url: 'http://ecx.images-amazon.com/images/I/91cZthjmxrL._SL1500_.jpg',
		 review: "Serial opowiada o naukowcu behawioryście, który jest ekspertem w dziedzinie wykrywania kłamstwa. Dr Cal Lightman (Tim Roth) pomaga zarówno FBI, policji, kancelariom prawniczym, korporacjom jak i osobom prywatnym. Dr Gillian Foster (Kelli Williams) jest psychologiem skupiającym się na ogólnym odbiorze będąc przeciwwagą dla szczegółowego Lightmana. Eliego Lokera (Brendan Hines) cechuje szczerość, przez którą co rusz wpada w tarapaty. Natomiast Ria Torres (Monica Raymund) jako jedna z niewielu potrafi wykrywać kłamstwa nie posiadając naukowego przeszkolenia, a jedynie wrodzoną intuicję. ",
		 genre_ids: [6]
	}, {
		 title: 'Breaking Bad',
		 year: 2008,
		 show: true,
		 director_id: 2,
		 photo_url: 'http://ecx.images-amazon.com/images/I/51CZO-3OGNL.jpg',
		 review: "Głównym bohaterem 'Breaking Bad' jest Walter White (Bryan Cranston), nauczyciel chemii mieszkający w Nowym Meksyku wraz z żoną (Anna Gunn) oraz nastoletnim synem (RJ Mitte) cierpiącym na porażenie mózgowe. Kiedy u Waltera zostaje zdiagnozowany rak w trzecim stadium, lekarze rokują, że pozostały mu dwa lata życia. Dzięki tym prognozom Walter wyzbywa się wszelkich lęków i pragnąc zabezpieczyć swoją rodzinę finansowo decyduje się wkroczyć do niebezpiecznego świata narkotyków i zbrodni. Serial ukazuje jak śmiertelna diagnoza jaką postawiono White'owi, zwyczajnemu mężczyźnie z typowymi, codziennymi problemami zmienia go z łagodnego domatora w trzon narkotykowej branży.",
		 genre_ids: [1, 5]
	}, {
		 title: 'Dexter',
		 year: 2006,
		 show: true,
		 director_id: 2,
		 photo_url: 'http://ecx.images-amazon.com/images/I/91S-0DP41EL._SL1500_.jpg',
		 review: "Dexter jest seryjnym mordercą. W dzieciństwie został przygarnięty przez policjanta, Harry'ego, który nauczył go zaspokajać swoje chore pragnienia, będące wynikiem traumatycznych przeżyć. Dexter, posługując się 'kodeksem' przybranego ojca, zabija ludzi, którzy sobie (w jego mniemaniu) na to zasłużyli, a jednocześnie swojemu 'głodowi' zabijania mówi stanowcze nie! Od czasu śmierci Harry'ego nie ma nikogo, kto znałby mroczną prawdę o Dexterze. Nie wie o tym nawet jego przybrana siostra Deb, pracująca w tym samym oddziale policji Miami. Pewnego dnia w sielankowe życie bohatera wkrada się ktoś, kto wyrywa Dextera z rutyny - morderca z ciężarówki-chłodni. Okalecza swe ofiary w niezwykle oryginalny i wyjątkowy sposób, co imponuje Dexterowi. Okazuje się, że obaj panowie mają ze sobą więcej wspólnego, niż się wydaje...",
		 genre_ids: [1, 5]
	}, {
		 title: 'Suits',
		 year: 2011,
		 show: true,
		 director_id: 2,
		 photo_url: 'http://ecx.images-amazon.com/images/I/61XzKzRzONL._SL1073_.jpg',
		 review: "Mike Ross (Patrick J. Adams) jest leniwym, lecz błyskotliwym, wyrzuconym z uniwersytetu chłopakiem, cechującym się pamięcią fotograficzną, która pomogła mu zdać egzaminy adwokackie, nie uczęszczając do szkoły prawniczej. Harvey Specter (Gabriel Macht), jeden z najlepszych prawników na Manhattanie, zatrudnia Rossa na stanowisku jego nowego współpracownika. Jednakże musi on udawać, że ukończył studia prawnicze na Uniwersytecie Harvarda, ponieważ tego oczekuje od pracowników polityka firmy.",
		 genre_ids: [3]
	}, {
		 title: 'True Detective',
		 year: 2014,
		 show: true,
		 director_id: 2,
		 photo_url: 'http://ecx.images-amazon.com/images/I/91awzyMpCGL._SL1500_.jpg',
		 review: "Hipnotyzujący serial HBO. W 1995 roku, Marty Hart (Woody Harrelson) i Rust Cohle (zdobywca Oscara Matthew McConaughey), detektywi i partnerzy Wydziału Śledczego w Luizjanie, zostają przypisani do prowadzenia śledztwa w sprawie makabrycznego morderstwa. Sprawa jest wielowątkowa, dotyczy lokalnych kościołów, polityki, zahacza o inne zbrodnie... Na wszystko cieniem kładą się konflikty i poplątane losy obu policjantów, których życie prywatne jest równie skomplikowane i tragiczne jak praca. W 2012 roku, podobny przypadek doprowadza dwóch nowych detektywów do zabójstwa z 1995 roku. Marty i Rust opowiadają, ze swojej perspektywy, historię prowadzonego przez nich dochodzenia, ich życia, i tego, jaki wpływ mieli na siebie na wzajem jako detektywi, przyjaciele i mężczyźni.",
		 genre_ids: [1, 5]
	}, {
		 title: 'Gladiator',
		 year: 2000,
		 director_id: 3,
		 show: false,
		 photo_url: 'http://ecx.images-amazon.com/images/I/81QVTiMK1wL._SL1500_.jpg',
		 review: "Generał Maximus, jeden z najwybitniejszych dowódców w rzymskiej armii, dowiaduje się, że umierający cesarz Marek Aureliusz chce uczynić go swoim następcą na tronie. Nie podoba się to prawowitemu dziedzicowi, Kommodusowi, który postanawia pozbyć się rywala i skazuje go na karę śmierci wraz z całą rodziną. Maximusowi cudem udaje się uciec. Trafia do niewoli, gdzie zostaje wyszkolony na gladiatora. Z walki na walkę zyskuje popularność, a na jego występy zaczyna przychodzić coraz więcej ludzi. Maximus jako gladiator wraca do Rzymu, by pomścić swoich bliskich, ale wie, że jedyną potęgą większą od władzy cesarza jest wola ludu i dlatego, by dokonać zemsty, musi stać się największym bohaterem Imperium.",
		 genre_ids: [2] 
	}, {
		 title: 'The Wolf of Wall Street',
		 year: 2013,
		 director_id: 4,
		 show: false,
		 photo_url: 'http://ecx.images-amazon.com/images/I/71q7DTVY45L._SL1054_.jpg',
		 review: "Jeden z największych reżyserów naszych czasów, laureat Oscara Martin Scorsese przedstawia prawdziwą historię jednego z najbardziej kontrowersyjnych bohaterów Wall Street. Jordan Belfort był złotym dzieckiem świata amerykańskich finansów. Szybki i oszałamiający sukces przyniósł mu fortunę, władzę i poczucie bezkarności. Pokusy czaiły się wszędzie, a Belfort lubił im ulegać i robił to w wielkim stylu. Najpiękniejsze kobiety. Najdroższe jachty. Najbardziej wyszukanee narkotyki. Szalona impreza bez cienia poczucia odpowiedzialności. A w ślad za tym nieuniknione błędy i pragnienie jeszcze większego bogactwa. Korupcja, naginanie prawa i malwersacje podatkowe – w tym także Belfort okazał się mistrzem. Zrealizowana z rozmachem i poczuciem humoru, urzekająca blichtrem, a jednak gorzka opowieść o człowieku, który zawsze chciał więcej, a dostał to na co zasłużył.",
		 genre_ids: [1, 3] 
	}, {
		 title: 'Shutter Island',
		 year: 2010,
		 director_id: 4,
		 show: false,
		 photo_url: 'http://ecx.images-amazon.com/images/I/916VtXkyrHL._SL1500_.jpg',
		 review: "Akcja filmu rozgrywa się w 1954 roku na pięknej wyspie Zatoki Bostońskiej. W tak bajecznym miejscu znajduje się szpital dla obłąkanych przestępców. Na wyspie będzie prowadzone śledztwo w sprawie tajemniczego zniknięcia jednej z pacjentek. Sprawa jest prowadzona przez federalnych szeryfów Tedda i Chucka. Kobieta zniknęła z pokoju, który był zamknięty, a w oknach były kraty. Pozostała po niej tylko zaszyfrowana wiadomość. Nad wyspę nadciąga huragan i łączność z resztą świata zostaje zerwana.",
		 genre_ids: [5] 
	}, {
		 title: 'Seven',
		 year: 1995,
		 director_id: 2,
		 show: false,
		 photo_url: 'http://ecx.images-amazon.com/images/I/91Xdok-6W0L._SL1500_.jpg',
		 review: "Siedem. To liczba ofiar, których dosięgnie gniew jego wybrańca. To liczba sposobów odebrania życia, które on wybierze. To liczba dni tygodnia z życia deszczowej metropolii, które obejrzysz na ekranie, poznając zakamarki umysłu szaleńca. Ale czy na pewno jest on szalony, czy może szalone są tylko drogi, którymi prowadzi pozbawione empatii społeczeństwo do oświecenia?",
		 genre_ids: [1, 5] 
	}, {
		 title: 'The Usual Suspects',
		 year: 1995,
		 director_id: 2,
		 show: false,
		 photo_url: 'http://ecx.images-amazon.com/images/I/51FSYTWAsxL.jpg',
		 review: "Gdy w tajemniczej eksplozji na statku zakotwiczonym w porcie Los Angeles ginie 27 osób, policja przesłuchuje jednego z dwóch ocalałych przy życiu świadków tragedii, drobnego kryminalistę Verbala Kinta (Spacey). Kint stara się przekonać wszystkich, że odpowiedzialność za eksplozję ponosi mityczny król przestępczego półświatka, Keyser Soze, którego istnienie od dawna poddawane jest w wątpliwość. Twierdzi, że dysponujący nadludzkimi niemal mocami Soze wciągnął jego samego i czterech jego wspólników w niebezpieczną rozrywkę, w której stawką był ładunek kokainy o wartości kilkudziesięciu milionów dolarów. Jego opowieść układa się w logiczną całość - może nawet zbyt logiczną...",
		 genre_ids: [1]
	}, {
		 title: 'Pulp Fiction',
		 year: 1994,
		 director_id: 5,
		 show: false,
		 photo_url: 'http://ecx.images-amazon.com/images/I/91Wpbzk%2BHCL._SL1500_.jpg',
		 review: "Płatni mordercy, Jules (Samuel L. Jackson) i Vincent (John Travolta), dostają zlecenie, by odzyskać z rąk przypadkowych rabusiów tajemniczą walizkę bossa mafii. Nie dość tego, Vincent dostaje kolejną robotę - na czas nieobecności gangstera w mieście ma zaopiekować się jego poszukującą wrażeń żoną Mią (Uma Thurman). Vincent i Jules niespodziewanie wpadają po uszy, gdy przypadkowo zabijają zakładnika. Kłopoty ma też podupadły bokser (Bruce Willis), który otrzymał dużą sumę za przegranie swojej walki. Walkę jednak wygrywa, a Los Angeles staje się od tej chwili dla niego za małe. Specjaliści od mokrej roboty będą mieli co robić... ",
		 genre_ids: [1, 6] 
	}])	


