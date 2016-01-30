# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Movie.destroy_all

Movie.create!([{
		 title: 'Big Bang Theory',
		 year: 2007,
		 director: 'Chuck Lorre',
		 show: true,
		 amazon_id: 'http://ecx.images-amazon.com/images/I/81Q4YEuPKwL._SL1500_.jpg',
		 review: "Sezon 1: Fizycy Leonard i Sheldon rozumieją wszystko począwszy od nieuchronnego przyciągania czarnej dziury, a skończywszy na skomplikowanej budowie atomu. Ale jeśli złożycie te atomy w kobietę, wtedy ich rozumowanie nagle się kończy. A kiedy Penny, kobieta ze wszystkimi atomami we właściwym miejscu, wprowadza się do mieszkania naprzeciwko, wszechświat Leonarda i Sheldona zaczyna się rozszerzać do rozmiarów, których nigdy nie podejrzewali."
	}, {
		 title: 'Lie to me',
		 year: 2009,
		 director: 'Samuel Baum',
		 show: true,
		 amazon_id: 'http://ecx.images-amazon.com/images/I/91cZthjmxrL._SL1500_.jpg',
		 review: "Serial opowiada o naukowcu behawioryście, który jest ekspertem w dziedzinie wykrywania kłamstwa. Dr Cal Lightman (Tim Roth) pomaga zarówno FBI, policji, kancelariom prawniczym, korporacjom jak i osobom prywatnym. Dr Gillian Foster (Kelli Williams) jest psychologiem skupiającym się na ogólnym odbiorze będąc przeciwwagą dla szczegółowego Lightmana. Eliego Lokera (Brendan Hines) cechuje szczerość, przez którą co rusz wpada w tarapaty. Natomiast Ria Torres (Monica Raymund) jako jedna z niewielu potrafi wykrywać kłamstwa nie posiadając naukowego przeszkolenia, a jedynie wrodzoną intuicję. "
	}, {
		 title: 'Breaking Bad',
		 year: 2008,
		 director: 'Vince Gilligan',
		 show: true,
		 amazon_id: 'http://ecx.images-amazon.com/images/I/51CZO-3OGNL.jpg',
		 review: "Głównym bohaterem 'Breaking Bad' jest Walter White (Bryan Cranston), nauczyciel chemii mieszkający w Nowym Meksyku wraz z żoną (Anna Gunn) oraz nastoletnim synem (RJ Mitte) cierpiącym na porażenie mózgowe. Kiedy u Waltera zostaje zdiagnozowany rak w trzecim stadium, lekarze rokują, że pozostały mu dwa lata życia. Dzięki tym prognozom Walter wyzbywa się wszelkich lęków i pragnąc zabezpieczyć swoją rodzinę finansowo decyduje się wkroczyć do niebezpiecznego świata narkotyków i zbrodni. Serial ukazuje jak śmiertelna diagnoza jaką postawiono White'owi, zwyczajnemu mężczyźnie z typowymi, codziennymi problemami zmienia go z łagodnego domatora w trzon narkotykowej branży."
	}, {
		 title: 'Dexter',
		 year: 2006,
		 director: 'Michael Cuesta',
		 show: true,
		 amazon_id: 'http://ecx.images-amazon.com/images/I/91S-0DP41EL._SL1500_.jpg',
		 review: "Dexter jest seryjnym mordercą. W dzieciństwie został przygarnięty przez policjanta, Harry'ego, który nauczył go zaspokajać swoje chore pragnienia, będące wynikiem traumatycznych przeżyć. Dexter, posługując się 'kodeksem' przybranego ojca, zabija ludzi, którzy sobie (w jego mniemaniu) na to zasłużyli, a jednocześnie swojemu 'głodowi' zabijania mówi stanowcze nie! Od czasu śmierci Harry'ego nie ma nikogo, kto znałby mroczną prawdę o Dexterze. Nie wie o tym nawet jego przybrana siostra Deb, pracująca w tym samym oddziale policji Miami. Pewnego dnia w sielankowe życie bohatera wkrada się ktoś, kto wyrywa Dextera z rutyny - morderca z ciężarówki-chłodni. Okalecza swe ofiary w niezwykle oryginalny i wyjątkowy sposób, co imponuje Dexterowi. Okazuje się, że obaj panowie mają ze sobą więcej wspólnego, niż się wydaje..."
	}, {
		 title: 'Suits',
		 year: 2011,
		 director: 'Aaron Korsh',
		 show: true,
		 amazon_id: 'http://ecx.images-amazon.com/images/I/61XzKzRzONL._SL1073_.jpg',
		 review: "Mike Ross (Patrick J. Adams) jest leniwym, lecz błyskotliwym, wyrzuconym z uniwersytetu chłopakiem, cechującym się pamięcią fotograficzną, która pomogła mu zdać egzaminy adwokackie, nie uczęszczając do szkoły prawniczej. Harvey Specter (Gabriel Macht), jeden z najlepszych prawników na Manhattanie, zatrudnia Rossa na stanowisku jego nowego współpracownika. Jednakże musi on udawać, że ukończył studia prawnicze na Uniwersytecie Harvarda, ponieważ tego oczekuje od pracowników polityka firmy."
	}, {
		 title: 'True Detective',
		 year: 2014,
		 director: 'Nic Pizzolatto',
		 show: true,
		 amazon_id: 'http://ecx.images-amazon.com/images/I/91awzyMpCGL._SL1500_.jpg',
		 review: "Hipnotyzujący serial HBO. W 1995 roku, Marty Hart (Woody Harrelson) i Rust Cohle (zdobywca Oscara Matthew McConaughey), detektywi i partnerzy Wydziału Śledczego w Luizjanie, zostają przypisani do prowadzenia śledztwa w sprawie makabrycznego morderstwa. Sprawa jest wielowątkowa, dotyczy lokalnych kościołów, polityki, zahacza o inne zbrodnie... Na wszystko cieniem kładą się konflikty i poplątane losy obu policjantów, których życie prywatne jest równie skomplikowane i tragiczne jak praca. W 2012 roku, podobny przypadek doprowadza dwóch nowych detektywów do zabójstwa z 1995 roku. Marty i Rust opowiadają, ze swojej perspektywy, historię prowadzonego przez nich dochodzenia, ich życia, i tego, jaki wpływ mieli na siebie na wzajem jako detektywi, przyjaciele i mężczyźni."
	}, {
		 title: 'Gladiator',
		 year: 2000,
		 director: 'Ridley Scott',
		 show: false,
		 amazon_id: 'http://ecx.images-amazon.com/images/I/81QVTiMK1wL._SL1500_.jpg',
		 review: "Generał Maximus, jeden z najwybitniejszych dowódców w rzymskiej armii, dowiaduje się, że umierający cesarz Marek Aureliusz chce uczynić go swoim następcą na tronie. Nie podoba się to prawowitemu dziedzicowi, Kommodusowi, który postanawia pozbyć się rywala i skazuje go na karę śmierci wraz z całą rodziną. Maximusowi cudem udaje się uciec. Trafia do niewoli, gdzie zostaje wyszkolony na gladiatora. Z walki na walkę zyskuje popularność, a na jego występy zaczyna przychodzić coraz więcej ludzi. Maximus jako gladiator wraca do Rzymu, by pomścić swoich bliskich, ale wie, że jedyną potęgą większą od władzy cesarza jest wola ludu i dlatego, by dokonać zemsty, musi stać się największym bohaterem Imperium." 
	}, {
		 title: 'The Wolf of Wall Street',
		 year: 2013,
		 director: 'Martin Scorsese',
		 show: false,
		 amazon_id: 'http://ecx.images-amazon.com/images/I/71q7DTVY45L._SL1054_.jpg',
		 review: "Jeden z największych reżyserów naszych czasów, laureat Oscara Martin Scorsese przedstawia prawdziwą historię jednego z najbardziej kontrowersyjnych bohaterów Wall Street. Jordan Belfort był złotym dzieckiem świata amerykańskich finansów. Szybki i oszałamiający sukces przyniósł mu fortunę, władzę i poczucie bezkarności. Pokusy czaiły się wszędzie, a Belfort lubił im ulegać i robił to w wielkim stylu. Najpiękniejsze kobiety. Najdroższe jachty. Najbardziej wyszukanee narkotyki. Szalona impreza bez cienia poczucia odpowiedzialności. A w ślad za tym nieuniknione błędy i pragnienie jeszcze większego bogactwa. Korupcja, naginanie prawa i malwersacje podatkowe – w tym także Belfort okazał się mistrzem. Zrealizowana z rozmachem i poczuciem humoru, urzekająca blichtrem, a jednak gorzka opowieść o człowieku, który zawsze chciał więcej, a dostał to na co zasłużył." 
	}, {
		 title: 'Shutter Island',
		 year: 2010,
		 director: 'Martin Scorsese',
		 show: false,
		 amazon_id: 'http://ecx.images-amazon.com/images/I/916VtXkyrHL._SL1500_.jpg',
		 review: "Akcja filmu rozgrywa się w 1954 roku na pięknej wyspie Zatoki Bostońskiej. W tak bajecznym miejscu znajduje się szpital dla obłąkanych przestępców. Na wyspie będzie prowadzone śledztwo w sprawie tajemniczego zniknięcia jednej z pacjentek. Sprawa jest prowadzona przez federalnych szeryfów Tedda i Chucka. Kobieta zniknęła z pokoju, który był zamknięty, a w oknach były kraty. Pozostała po niej tylko zaszyfrowana wiadomość. Nad wyspę nadciąga huragan i łączność z resztą świata zostaje zerwana." 
	}, {
		 title: 'Seven',
		 year: 1995,
		 director: 'David Fincher',
		 show: false,
		 amazon_id: 'http://ecx.images-amazon.com/images/I/91Xdok-6W0L._SL1500_.jpg',
		 review: "Siedem. To liczba ofiar, których dosięgnie gniew jego wybrańca. To liczba sposobów odebrania życia, które on wybierze. To liczba dni tygodnia z życia deszczowej metropolii, które obejrzysz na ekranie, poznając zakamarki umysłu szaleńca. Ale czy na pewno jest on szalony, czy może szalone są tylko drogi, którymi prowadzi pozbawione empatii społeczeństwo do oświecenia?" 
	}, {
		 title: 'The Usual Suspects',
		 year: 1995,
		 director: 'Bryan Singer',
		 show: false,
		 amazon_id: 'http://ecx.images-amazon.com/images/I/51FSYTWAsxL.jpg',
		 review: "Gdy w tajemniczej eksplozji na statku zakotwiczonym w porcie Los Angeles ginie 27 osób, policja przesłuchuje jednego z dwóch ocalałych przy życiu świadków tragedii, drobnego kryminalistę Verbala Kinta (Spacey). Kint stara się przekonać wszystkich, że odpowiedzialność za eksplozję ponosi mityczny król przestępczego półświatka, Keyser Soze, którego istnienie od dawna poddawane jest w wątpliwość. Twierdzi, że dysponujący nadludzkimi niemal mocami Soze wciągnął jego samego i czterech jego wspólników w niebezpieczną rozrywkę, w której stawką był ładunek kokainy o wartości kilkudziesięciu milionów dolarów. Jego opowieść układa się w logiczną całość - może nawet zbyt logiczną..."
	}, {
		 title: 'Pulp Fiction',
		 year: 1994,
		 director: 'Quentin Tarantino',
		 show: false,
		 amazon_id: 'http://ecx.images-amazon.com/images/I/91Wpbzk%2BHCL._SL1500_.jpg',
		 review: "Płatni mordercy, Jules (Samuel L. Jackson) i Vincent (John Travolta), dostają zlecenie, by odzyskać z rąk przypadkowych rabusiów tajemniczą walizkę bossa mafii. Nie dość tego, Vincent dostaje kolejną robotę - na czas nieobecności gangstera w mieście ma zaopiekować się jego poszukującą wrażeń żoną Mią (Uma Thurman). Vincent i Jules niespodziewanie wpadają po uszy, gdy przypadkowo zabijają zakładnika. Kłopoty ma też podupadły bokser (Bruce Willis), który otrzymał dużą sumę za przegranie swojej walki. Walkę jednak wygrywa, a Los Angeles staje się od tej chwili dla niego za małe. Specjaliści od mokrej roboty będą mieli co robić... " 
	}])	

