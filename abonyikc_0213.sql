

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Adatbázis: `abonyikc`
--
CREATE DATABASE abonyikc DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
use abonyikc;
-- --------------------------------------------------------

CREATE TABLE `Lu11` (
  `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `datum` DATE NOT NULL,
  `csapatok` varchar(50) NOT NULL,
  `eredmeny` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;


INSERT INTO `Lu11` (`datum`, `csapatok`, `eredmeny`) VALUES
('2021-11-06', 'Abonyi KC. - Hort SE.', '8 - 9'),
('2021-11-06', 'Malév SC. - Abonyi KC.', '5 - 12'),
('2021-11-21', 'Abonyi KC. - FIAI ISE.', '0 - 0'),
('2021-11-21', 'Abonyi KC. - Hort SE.', '0 - 0');


CREATE TABLE `Lu11cikk` (
  `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `datum` DATE NOT NULL,
  `cim` varchar(100) NOT NULL,
  `cikk` varchar(3000)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

INSERT INTO `Lu11cikk` (`datum`, `cim`, `cikk`) VALUES
('2021-11-06', 'U11-es csapatunk is megkezdte a bajnokságot!', 'A legkisebb korosztályunkban sokan először öltötték fel az abonyi mezt és először kerültek éles helyzetbe a pályán. 
                El kell hogy mondjuk, nagyon magabiztosan kezelték ezt a helyzetet a csöppségek. Remekül helytálltak, 
                szinte már-már azt lehetett érezni, hogy nem az első bevetésük. Csak dicséret illeti a lányokat, 
                első mérkőzésükön egy szoros csatában egy gólos vereséget szenvedtek, de a második meccsen már megízlelhették a 
                győzelem ízét, ahol egy magabiztos sikert könyvelhettek el. De ami mindennél fontosabb, élvezték a játékot a 
                lányok, ami ebben a korosztályban is a leglényegesebb dolog!!!
				Abonyi KC - Hort SE 8-9 (3-2).
				Malév SC - Abonyi KC 5-12  (3-7)
				A csapat tagjai: Domoszlai Zora, Döme Laura, Holló Barbara, Juhász Jázmin, Lipák Rubina, Mayer Anna Zsófia, 
                Mucsi Regina Zoé, Rabi Rebeka, Schwarczenberger Zoé, Szabó Blanka, Szőke Liliána Dorka.
				Tóth Renáta edző: Micsoda rajt volt csajok! Büszke vagyok rátok! 
                A hétvégén Gyálra utazott a csapat, nagy izgalommal várták a gyerekek a mérkőzéseket. Néhányuknak az első 
                megmérettetése volt az országos gyermekbajnokságban. Évek óta gyakorolnak, de valljuk be a meccsdrukk 
                dolgozott a gyerekekben. Egy győzelemmel és egy egygólos vereséggel utaztunk haza. Nagyon élvezték a 
                játékot a lányok, kipróbálták az edzéseken begyakorolt cseleket, ügyes gólpasszokat adtak egymásnak. 
                Így tovább! Hajrá Abony! Hajrá Abonyi KC!'),
('2021-11-22', 'A 2021.11.21. napon megrendezett mérkőzéskre Covid-karantén miatt nem tudtak elutazni játékosaink!', ' '),
('2021-12-07', 'Tóth Renáta edzőnk beszámolója', 'Hétvégén elutazott az U11-es leány csapatunk Örkénybe, az idei év utolsó fordulójára.
                Az előző mérkőzésnapon sajnos nem tudtunk versenyezni, a járvány minket is utolért: 1 gyermek kivételével mindenki 
                karanténban volt.
                A hétvégén két mérkőzésen volt lehetősége a kislányoknak a gyakorlásra, ezáltal a fejlődéshez szükséges 
                mérkőzésrutin erősítésére. Két nagyon erős és vagány csapattal szemben léphettünk pályára. Úgy éreztem, hogy a 
                kitűzött célt elértük, amit beszéltünk sikerült megvalósítani. Kis lépésekben haladunk, mérkőzésről mérkőzésre 
                gyakoroljuk és építjük fel a technikai elemeinek tárházát.
                A hétvégén a cél az volt, hogy a befutó játékosok megtalálják a védők háta mögötti üres területeket és csapattársaik ezt ismerjék fel, 
				próbáljanak nekik passzolni. 
                Sok szép gól született ezáltal! Nagy szeretettel gratulálok a lányoknak és köszönjük a szülőknek a lelkes szurkolást!');

-- -----------------------------------------------------------

CREATE TABLE `Lu12` (
  `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `datum` DATE NOT NULL,
  `csapatok` varchar(50) NOT NULL,
  `eredmeny` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;


INSERT INTO `Lu12` (`datum`, `csapatok`, `eredmeny`) VALUES
('2021-10-02', 'EURONOVEX USE II. - Abonyi KC.',	'6 - 5'),
('2021-10-02', 'Abonyi KC. - EURONOVEX USE.', '9 - 22'),
('2021-10-17', 'Ceglédi Kék Cápák SE. - Abonyi KC.', '9 - 8'),
('2021-10-17', 'Abonyi KC. - Dabas KC VSE.', '23 - 1'),
('2021-11-14', 'Abonyi KC. - Jászberényi TF DSE.', '18 - 5'),
('2021-11-14', 'Abonyi KC. - ENUSE II.', '7 - 27'),
('2021-11-28', 'ENUSE - Abonyi KC.', '0 - 10'),
('2021-11-28', 'Abonyi KC. - Ceglédi KCSE.', '6 - 19');

-- --------------------------------------------------------

CREATE TABLE `Lu12cikk` (
  `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `datum` DATE NOT NULL,
  `cim` varchar(100) NOT NULL,
  `cikk` varchar(3000)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

INSERT INTO `Lu12cikk` (`datum`, `cim`, `cikk`) VALUES
('2021-10-19', '1 gólos vereség és 22 gólos győzelem!', 'U12-es leány csapatunk Abonyban, a Ceglédi Kék Cápák rendezésében lezajló, 
				soron következő fordulón vettek részt. 
                Az első mérkőzésen a Ceglédi Kék Cápák ellen játszottak  ahol egy igen változatos és szoros mérkőzésen, 
				egy góllal alul maradtak lányaink. 
                Sajnos a második félidő elejét egy kicsit bealudták a lányok így, a Cegléd el tudott lépni, a végére már csak felzárkózni 
				tudtunk de a győzelmet nem sikerült megszerezni. 
                Második mérkőzésen a Dabas csapata volt az ellenfél, ahol egy felszabadult játékot mutattak a lányok és nagyon 
				magabiztosan, jelentős gólkülönbséggel nyerték meg a mérkőzést.
				Ceglédi Kék Cápák SE - Abonyi KC  9-8 (3-3).
				Abonyi KC - Dabas KC VSE  23-1 (9-0).
				Csapattagok: Majercsik Regina, Sulyok Abonyi Viktória, Vígh Emma, Zsákai Mirjam, Domoszlai Zora, Döme Rebeka, 
				Mayer Anna Zsófia, Mucsi Regina, Rabi Rebeka, Szabó Blanka, Szőke Liliána.'),
('2021-12-01', 'Szabó Linda edzőnk beszámolója', 'U12-es lánycsapatunk a hétvégén Dabasra látogatott a Gyermekbajnokság soron következő fordulójára.
                Az ENUSE I. ellen léptek először pályára a lányok. Mivel az ellenfél összesen 6 játékossal tudott eljönni erre 
                a mérkőzésnapra, sportszerűségből mi is ennyien játszottuk végig a találkozót. A szabályok szerint, mivel az ellenfél nem 
                tudott teljes létszámmal kiállni, automatikusan mi nyertük a mérkőzést.
                A második meccsen, a Cegléd ellen nem tudtunk jó játékot bemutatni. Védekezésben voltunk ezen a napon 
                erősebbek. Sajnos a támadásaink kevés góllal végződtek. Sok kihagyott helyzet, pontatlan lövések jellemezték 
                a találkozót. Állandó kapusunk is hiányzott ezen a napon. A helyére beálló tartalék kapusunk ügyesen helyt 
                állt. Hiába végződött vereséggel a találkozó, büszke vagyok a lányokra.
                Idén ez volt az utolsó forduló a bajnokságban.');


-- --------------------------------------------------------------

CREATE TABLE `Lu13` (
  `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `datum` DATE NOT NULL,
  `csapatok` varchar(50) NOT NULL,
  `eredmeny` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;


INSERT INTO `Lu13` (`datum`, `csapatok`, `eredmeny`) VALUES
('2021-09-26', 'Abonyi KC. - Tigrisek CSKSE.', '13 - 11'),
('2021-09-26', 'Aranyszarvas SE. - Abonyi KC.', '7 - 17'),
('2021-10-09', 'Szentesi FKC. - Abonyi KC.', '3 - 27' ),
('2021-10-09', 'Tiszaföldvár VSE. - Abonyi KC.', '9 - 28'),
('2021-11-07', 'ENUSE - Abonyi KC.', '16 - 12'),
('2021-11-07', 'Abonyi KC. - Mizse KC.', '35 - 3'),
('2021-11-21', 'Abonyi KC. - Kecskeméti Sportiskola', '0 - 10'),
('2021-11-21', 'Szentesi FKC. - Abonyi KC.', '10 - 0'),
('2021-12-04', 'Abonyi KC. - ENUSE', '13 - 19'),
('2021-11-21', 'Kecskeméti Sportiskola - Abonyi KC.', '26 - 16');

-- --------------------------------------------------------

CREATE TABLE `Lu13cikk` (
  `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `datum` DATE NOT NULL,
  `cim` varchar(100) NOT NULL,
  `cikk` varchar(3000)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

INSERT INTO `Lu13cikk` (`datum`, `cim`, `cikk`) VALUES
('2021-10-11', 'Gólzáporos mérkőzések!', 'U13-as leány csapatunk a második fordulóban is két mérkőzésen van túl és ráadásul 
				mindkétszer győztesen jöttek le a pályáról!
				Magabiztos játékkal, jelentős gólkülönbséggel sikerült a lányoknak túlnőni az ellenfeleken.
				Szentesi FKC. - Abonyi KC. 3-27 (2-13).
				Tiszaföldvári VSE. - Abonyi KC. 9-28 (4-11).
				A csapat tagjai: Bazsó Hanna, Bőszény Izabella, Kiss Anna Virág, Rimóczi Zora, Döme Rebeka, Vígh Emma, Schwarczenberger Lili, 
				Majercsik Regina, Földi Nikolett Panna, Havellant Katalin Réka.'),
('2021-11-09', 'Egy vereség, egy győzelem!', 'U13-as lányaink 50%-os teljesítménnyel zárták a hétvégi fordulót amit Szászbereken 
				rendeztek meg. 
                Sajnos már a csapat indulásánál adódtak gondok, de hála a kedves szülőknek, sikerült elhárítani a problémát. 
                Talán ez is közre játszhatott az első mérkőzésen, ahol még egy kicsit szétszórtak voltak a lányok, de küzdeni akarásból 
				így is jelesre vizsgáztak. 
                Az ENUSE csapata volt az első mérkőzésen az ellenfél, ahol remekül helyt álltak lányaink de a győzelmet nem sikerült 
				megszerezni, csak egy szoros eredményt elérni. A második mérkőzés már egy nyugodtabb, összeszedettebb játékot hozott,
                aminek meg is lett az eredménye. Az első félidőben eldöntötték a lányok a győzelem sorsát, a mérkőzés második 
                részében már felszabadult játékot játszhatunk.
				ENUSE - Abonyi KC 16-12  (10-5).
				Abonyi KC - Mizse KC 35-3  (17-1).
				A csapat tagjai: Földi Nikolett Panna, Bazsó Hanna Anita, Gazsovics Nóra, Kiss Anna Virág, 
                Rimóczi Zora, Schwarczenberger Lili, Pető Lili, Vígh Emma, Sulyok-Abonyi Viktória, Döme Rebeka.</p>
				Edző: Mayer-Nagy Zsuzsanna.'),
('2021-11-22', 'A 2021.11.21. napon megrendezett mérkőzéskre Covid-karantén miatt nem tudtak elutazni játékosaink!', ' '),
('2021-12-07', 'Mayer-Nagy Zsuzsanna edzőnk beszámolója!', 'U13-as lány csapatunkkal az utólsó idei játéknapon Dömsödre látogattunk.
                Sajnos nem tudtunk teljes létszámban elutazni, ez érezhető is volt a nap folyamán. Ezek ellenére nem 
                csalódtam a lányokban, az első mérkőzésen egy szoros csatában maradtunk alul az ENUSE csapata ellen.
                A második mérkőzésen a kecskeméti sportiskola csapatát nem sikerült megszorongatni, így két vereséggel búcsúztunk 
                az őszi szezontól.
                Reméljük, hogy a tavasz folyamán nem küzdünk majd ennyi nehézséggel.
                Mindent egybe vetve gratulálok a lányoknak, mert akármilyen formában is álltunk fel a mérkőzésekre, 
                mindent megtettek a győzelemért!
				Abonyi KC. - ENUSE 13-19  (5-8).
				Kecskeméti Sportiskola - Abonyi KC. 26-16  (11-6).
				A csapat tagjai: FÖLDI NIKOLETT PANNA, HAVELLANT KATALIN RÉKA, BAZSÓ HANNA ANITA, 
                GÓCSA LILI, RIMÓCZI ZORA, SCHWARCZENBERGER LILI, KISS ANNA VIRÁG, MAJERCSIK REGINA, VÍGH EMMA.');

-- --------------------------------------------------------------

CREATE TABLE `Lu14` (
  `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `datum` DATE NOT NULL,
  `csapatok` varchar(50) NOT NULL,
  `eredmeny` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;


INSERT INTO `Lu14` (`datum`, `csapatok`, `eredmeny`) VALUES
('2021-09-19', 'Abonyi KC. - Albertirsa SE.', '25 - 3'),
('2021-09-19', 'Törökszentmiklósi SZKE. - Abonyi KC.', '9 - 9'),
('2021-10-03', 'Abonyi KC. - Euronovex USE.', '15 - 19'),
('2021-10-03', 'KK Hajdúszoboszló - Abonyi KC.', '17 - 23'),
('2021-10-16', 'Ceglédi KCSE. - Abonyi KC.', '10 - 18'),
('2021-10-16', 'Abonyi KC. - Sütő Kézisuli', '9 - 17'),
('2021-11-14', 'Abonyi KC. - Székács KE.', '10 - 0'),
('2021-11-14', 'Abonyi KC. - KK Hajdúszoboszló', '19 - 25'),
('2021-11-28', 'Albertirsa SE. - Abonyi KC.', '5 - 22'),
('2021-11-28', 'Euronovex USE. - Abonyi KC.', '25 - 13');

-- --------------------------------------------------------

CREATE TABLE `Lu14cikk` (
  `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `datum` DATE NOT NULL,
  `cim` varchar(100) NOT NULL,
  `cikk` varchar(3000)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

INSERT INTO `Lu14cikk` (`datum`, `cim`, `cikk`) VALUES
('2021-10-05', 'A második fordulóban is remekelt a csapat!', 'U14-es leány csapatunk két fordulón van túl, a legutóbbi mérkőzésnapon a 
				Hajdúszoboszló és az ENUSE csapataival csaptak össze.
                A lányok már nagyon várták a mérkőzéseket, hiszen tavaly sajnos nem volt játéklehetőség...
                Így ismét nagy volt bennük a mérkőzés láz!
				Abonyi KC - ENUSE 15-19 (9-8).
                Gólszerzők: Benyus A 1, Gazsovics N 1, Gócsa L 1, Kiss Anna V 2, Kovács B 5, Rimóczi Z 1, Szarvák B 3, 
				Schwarczhenberger L 1, Havellant K, Földi N, Bazsó H.
				Hajdúszoboszló-Abonyi KC 17-23 (11-12).
                Gólszerzők: Bazsó H 2, Gazsovics N 5, Gócsa L 3, Kiss Anna V 4, Kovács B 3, Rimóczi Z 3,Schwarczenberger L 3, 
				Szarvák B, Havellant K, Földi N, Benyus A.'),
('2021-10-19', 'A hétvégi mérleg: egy győzelem, egy vereség.', 'U14-es lány csapatunk az elmúlt hétvégén Törökszentmiklóson lépett 
				pályára, a soron következő bajnoki forduló mérkőzésein. 
                Az első mérkőzést a Ceglédi Kék Cápák ellen játszották a lányok, ahol remek játékkal sikerült egy magabiztos győzelmet 
				aratni. 
                A második mérkőzésen már nem volt olyan friss a csapat, de remekül helytálltak a lányok - jelenleg - a tabella élén álló 
				Sütő Kézisuli ellen. 
                Azonban csak egy félideig bírták tartani a szorosabb eredményt. Lányaink a bajnokság második helyéről várják a folytatást!
				Ceglédi Kék Cápák SE - Abonyi KC  10-18 (5-7).
                Gólszerzők: Bazsó H 7, Benyus A 1, Gaszovics N 2, Kiss A 1, Kovács B 3, Rimóczi Z 2, Schwarczenberger L 2, Pető L, 
				Bőszény I, Szarvák B, Földi N.
				KC - Sütő Kézisuli  9-17 (4-8).
                Gólszerzők: Bazsó H 2, Gazsovics N 2, Kovács B 2, Rimóczi Z 1, Schwarczenberger L 1, Szarvák B 1, Pető L, Bőszény I, 
				Kiss A, Földi N,'),
('2021-12-01', 'Farkas Földi Anikó edzőnk beszámolója', 'Az őszi szezon utolsó bajnoki fordulója számunkra nagyon kalandosan indult!
                Út közben jött a hír, hogy a derecskei csarnok nagyon beázott, ezért Debrecenbe kell továbbutaznunk. 
                A változások miatt viszont a menetrend is csúszott egy órával.
				Kis csapatunk kedvét ez sem szegte és az sem, hogy igen kevesen voltunk. Sajnos néhányan karanténban, 
                néhányan pedig betegek voltak. A 14 főből álló csapatunkat most csak 8 játékos tudta képviselni.
                Első mérkőzésünket Albertirsa csapata ellen játszottuk, ahol beigazolódott a papírforma. Még ilyen kevés cserével 
                is derekasan helyt álltak a lányok. Ellenfelünk az első gólját csak az első félidő 18. percében tudta belőni.
                A mérkőzést 5:22-re megnyertük. (Félidő: 1:12).
                Játékosok: Havellant R. kapus, Bazsó H. 3, Benyus A. 1, Bőszény I., Gócsa L. 4, Rimóczi Z. 11, Schwarczenberger L. 3, Szarvák B.
				A második mérkőzésünket az ENUSE csapata ellen játszottuk. Sajnos nem sikerült a két pont megszerzése. 
                Ellenfelünk hiánytalan csapata ellen most kevésnek bizonyult a játékunk.
                A mérkőzést 25:13-ra elveszítettük. (Félidő 11:6).
                Játékosok: Havellant R. kapus, Bazsó H. 1, Benyus A. 1, Bőszény I.1, Gócsa L. 1, Rimóczi Z. 3, Swarczenberger L. 3, 
				Szarvák B.3.');
				
				
-- -----------------------------------------------------------------

CREATE TABLE `Nifi` (
  `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `datum` DATE NOT NULL,
  `csapatok` varchar(50) NOT NULL,
  `eredmeny` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;


INSERT INTO `Nifi` (`datum`, `csapatok`, `eredmeny`) VALUES
('2021-09-18', 'Jászfényszaru VSE. - Abonyi KC.', '18 - 40'),
('2021-09-25', 'Abonyi KC. - Gyáli BKSE.', '35 - 28'),
('2021-10-03', 'Albertirsa SE. - Abonyi KC.', '25 - 29'),
('2021-10-17', 'Abonyi KC. - Aranyszarvas SE.', '10 - 0'),
('2021-10-24', 'Alsónémedi SE. - Abonyi KC.', '33 - 26'),
('2021-10-30', 'Abonyi KC. - Tempo KSE.', '32 - 33'),
('2021-11-06', 'KSA Budapest - Abonyi KC.', '14 - 28'),
('2021-11-27', 'Gyömrői KA. - Abonyi KC.', '55 - 28'),
('2021-12-05', 'Abonyi KC. - Jászberényi TF. DSE.', '23 - 30');

-- --------------------------------------------------------

CREATE TABLE `Nificikk` (
  `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `datum` DATE NOT NULL,
  `cim` varchar(100) NOT NULL,
  `cikk` varchar(3000)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

INSERT INTO `Nificikk` (`datum`, `cim`, `cikk`) VALUES
('2021-10-05', 'Háromból három!', 'Harmadik mérkőzését is megnyerte női ifjúsági csapatunk, Albertirsáról hozták el a két pontot.
                A mérkőzés elején sikerült jó rajtot venni a lányoknak és több góllal is el tudtak lépni ellenfelüktől. 
                Az első félidő vége viszont az Irsának sikerült jobban így feltudtak zárkózni.
                A második játékrész elején ismét sikerült elhúzniuk az abonyi lányoknak és végig uralni is tudták a mérkőzést. Még akkor 
				is, amikor kettős emberhátrányba kerültek. 
                Rengeteg volt a kiállítás a mérkőzésen, ami egy kicsit meg is zavarta a csapatokat. De a lényeg, hogy győztesen hagytuk el 
				a pályát.
				Albertirsa SE - Abonyi KC  25 - 29 (11 - 12)</p>
				Gólszerzők: Egedi G 1, Barna B 6, Pető B 3, Varga B 5, Pál D 4, Bodor V 3, Kocsi H 5, Antal Cs 2, Dénes V, Halasi N, 
				Somodi B , Skultéti G, Molnár Cs, Micskó N.
				Gulyás Péter edzőnk nyilatkozata:
                Remek ütemben kapták el a lányok a mérkőzést és ez az eredményben is megmutatkozott. Viszont az első félidő végére egy 
				kicsit megtorpantunk és ellenfelünk felzárkózott. 
                A második játékrészben a sok kiállítás miatt nehéz volt bármilyen taktikát alkalmazni, mert nem nagyon voltunk teljes 
				létszámban a pályán. Nem volt egy szép mérkőzés, de a lényeg, hogy a két pontot a mi nevünk mellé írták be.
                Sajnálatos, hogy kapusunk, Skultéti Gréti a mérkőzés végén megsérült. Egyenlőre pontos diagnózist még nem tudunk, de 
				várhatóan több hetet kell kihagynia. Mielőbbi gyógyulást kívánunk Neki és természetesen várjuk vissza!'),
('2021-10-19', 'Furcsa győzelem', 'Kicsit furcsán szerezte meg a két pontot női ifjúsági csapatunk!
				Az új COVID protokoll alapján, a tápiószentmártoni lányok létszám hiány miatt nem tudtak eljönni a mérkőzésre 
				(nem volt elég játékosuk, aki valamilyen védettséggel rendelkezett volna).
                Mivel már halasztás nincs, így az abonyi lányokat illeti meg a két pont, 10-0-ás gólkülönbséggel. Tudjuk, nem olyan nagy 
				dicsőség így nyerni, de sajnos most ez a szabály.
				Abonyi KC - Aranyszarvas SE 10-0.
				Gulyás Péter edző: Sok mindent nem lehet ehhez fűzni. Készülünk a következő mérkőzésre.'),
('2021-10-26', 'Vége a veretlenségünknek!', 'Elvesztette veretlenségét női ifjúsági csapatunk, akik az elmúlt hétvégén Alsónémedibe 
				utaztak. 
                Mindenképp szerették volna  a lányok tovább folytatni a szép sorozatot! Ám minden véget ér egyszer, ez most következett be 
				számukra. 
                Több nehézség is hátráltatja Gulyás Péter csapatát. Sokáig viszont nincs idő keseregni, hiszen szombaton hazai pályán ismét a 
				két pont reményében kell harcba szállni a Tempo KSE csapata ellen.
				Alsónémedi SE - Abonyi KC  33-26 (15-12).
				Gólszerzők: Barna B 8, Kocsi H 3, Micskó N 7, Pál D 1, Pető B 4, Varga B 3, Molnár Cs, Ferenczi D, Lendvai K, Dénes V, Dudok B.
				Gulyás Péter edző: A hétvégén Alsónémedi otthonába utaztunk azzal a céllal, hogy elhozzuk a két pontot. 
                Sajnos az utóbbi időben a kézilabda sportágat is egyre erősebben sújtja a COVID és az ezzel járó korlátozások és 
				kellemetlenségek, melyek a mérkőzést megelőző kötelező ellenőrzésekből is fakadnak. 
                Ez alól mi sem vagyunk kivételek, játékosállományunk meggyengült és fogyatkozott, mióta kötelező védettséget igazolni 
				valamilyen dokumentummal. 
                Így sajnos tartósan 4 játékos is elesett attól, hogy bajnoki mérkőzéseken vegyen részt. Azzal a véleménnyel nem vagyok 
				egyedül, hogy eléggé korlátozva lettünk, de nem csak Abonyban van ez így, 
                hiszen az előző fordulónk el is maradt, mert visszamondta ellenfelünk az adott játéknapot.
                Ugyanakkor mindig az a legjobb keret aki éppen meccsre utazik, és ez nem volt másképp most sem. Az igazi problémák a 
				pályán kezdődtek. 
                Az eddig már megszokott játékképünk sajnos nem került elő ezen a hétvégén. Az első félidőt 3 gólos hátrányban fejeztük be, 
				15-12-re a hazai csapat vezetett. 
                Ekkor még minden reményünk és esélyünk meg volt, hiszen az utóbbi időben küzdöttek már ennél jóval nagyobbat is a lányok. 
                Sajnos a második félidőben sem sikerült a bravúr, és továbbra is sok hibával és olykor soha nem tapasztalt idegességgel 
				voltunk a pályán, mely végképp megpecsételte a sorsunkat. 
                Nálunk sok technikai hiba és figyelmetlenségből adódó labdavesztések voltak és ezt nem kompenzálta, az egyébként szintén 
				rövidzárlatos védekezésünk. Ellenfelünk stabilan végig vezetve, és a végére növelve előnyét, megérdemelten tartotta 
				otthon a két pontot.
                Nehezen tudok mit hozzáfűzni! Felborult az eddig működő koncepció...'),
('2021-11-02', 'Fájó vereség', 'Női ifjúsági csapatunk a hétvégén a Tempo KSE csapatát fogadta. Tudtuk, hogy nem lesz könnyű feladat, 
				sokkal összeszedettebben kell kézilabdázni mint az előző hétvégén. 
                Ez sikerült is a lányoknak, és ahogy vártuk, egy igen kellemetlen ellenfélel találták szemben magukat. 
                Sokáig fej-fej mellett haladtak a csapatok, megnyugtató előnyre nem sikerült szert tennie egyik csapatnak sem. 
                A második félidő hajrájára aztán egy kicsit megtudott lépni a hazai gárda. De ezután jött a fekete leves! 
                Sajnos olyan hibákat követtek el a lányok, amik mondhatni nem voltak olyan nagyok, csak sajnos két pontba került. 
                Egy mérkőzés hatvan percig tart, és addig is kell koncentrálni! Egy kis rutintalanság is hozzájárult a mérkőzés elvesztéséhez. 
                Bármilyen furcsa is de ezt is lehet és kell is gyakorolni, mert mint láthattuk, ezeken bukták el a lányok a négygólos 
				vezetést, az utolsó tíz percben.
				Abonyi KC - Tempo KSE 32-33 (17-17).
				Gólszerzők: Barna B 8, Varga B 9, Szegő Sz 1, Pető B 2, Pál D 3, Dénes V 2, ANTAL CS 6, Micskó N 1, Szalkai E, 
                Ferenczi D, Molnár CS.
				Gulyás Péter edző: Rettentően dühös vagyok, oda adtunk két pontot az ellenfélnek a végén elkövetett hibáink miatt. 
                Nem győzöm hangsúlyozni a lányoknak, hogy a mérkőzés végéig koncentrálni kell és minden egyes labdáért muszáj 
                kúszni mászni. Ötven percig azt tudom mondani majdnem minden rendben volt. Utána viszont az utolsó tíz perc, egy rémálom volt!
                De fel kell kelnünk ebből a rémálomból, menni tovább, mert komoly céljaink vannak és el is fogjuk érni azokat.'),
('2021-12-07', 'Gulyás Péter edzőnk beszámolója', 'Hétvégén lejátszottuk női ifjúsági csapatunkkal az ősz utolsó mérkőzését.
                Sajnos nem úgy sikerült ahogyan azt terveztük. Nagyon készültünk pedig a Berény ellen, de sajnos 
                csak az első félidőben tudtunk méltó ellenfelük lenni. Nagyon sajnálom, sokkal többet kellett volna 
                kihoznunk ebből a félévből. Igen is dobogós eredményre számítottunk a félidőben. Ez nem így sikerült, 
                a lényeg, hogy van még egy tavaszi szezon ahol ezen lehet javítani és persze szeretnénk is!
                Megfelelő felkészüléssel és hozzáállásal ez természetesen megoldható. A szerencse, hogy nagyon szoros 
                az élmezőny, és egy jó tavaszi szezonnal nagyon szép eredményt érhetünk el. Ezen leszünk és ezért fogunk dolgozni.
                Abonyi KC. - Jászberényi TF DSE 23-30 (12-14).');


-- ----------------------------------------------------------------

CREATE TABLE `Ffeln` (
  `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `datum` DATE NOT NULL,
  `csapatok` varchar(50) NOT NULL,
  `eredmeny` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;


INSERT INTO `Ffeln` (`datum`, `csapatok`, `eredmeny`) VALUES
('2021-09-19', 'CKKSE-Abonyi KC. - Erdőkertesi SE.', '62 - 26'),
('2021-09-25', 'Kőrösi KDSE. - CKKSE-Abonyi KC.', '24 - 21'),
('2021-10-03', 'CKKSE-Abonyi KC. - Gyáli BKSE.', '35 - 16'),
('2021-10-09', 'CKKSE-Abonyi KC. - Mogyoródi KSK.', '37 - 19'),
('2021-10-17', 'CKKSE-Abonyi KC. - Pásztói KC.', '33 - 29'),
('2021-10-20', 'Vecsés SE. - CKKSE-Abonyi KC.', '24 - 49'),
('2021-10-31', 'Szigetsztmiklós SE. - CKKSE-Abonyi KC.', '26 - 41'),
('2021-11-06', 'CKKSE-Abonyi KC. - Aranyszarvas SE.', '23 - 20'),
('2021-11-21', 'Erdőkertesi SE. - CKKSE-Abonyi KC.', '23 - 56'),
('2021-11-27', 'CKKSE-Abonyi KC. - Kőrösi KDSE.', '22 - 28'),
('2021-12-05', 'Gyáli BKSE. - CKKSE-Abonyi KC.', '21 - 36');

-- --------------------------------------------------------

CREATE TABLE `Ffelncikk` (
  `id` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `datum` DATE NOT NULL,
  `cim` varchar(100) NOT NULL,
  `cikk` varchar(4000)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

INSERT INTO `Ffelncikk` (`datum`, `cim`, `cikk`) VALUES
('2021-10-10', 'Újabb 2 pont a fiúknak!', 'Nehéz szavakat találni a tegnap lejátszott megyei bajnoki mérkőzésre.
                Többféle főcímet is lehetett volna neki adni, de az nem biztos, hogy túl diplomatikus lenne. A lényeg, hogy meg van a két pont!
                Nagyon nehezen lendültek bele a fiúk, átvették az ellenfelünk lassú ,álmoskás, tempóját. De a mogyoródi csapatnak ez is 
				volt a taktikája, hiszen jelentős korkülönbség is volt a két csapat közt a javunkra.
                A második félidőre aztán már tudtuk fokozni a tempót ami az eredmény növelésében is látszott. Sajnos a hibák ma sem 
				kerültek el bennünket, ezeken nagyon gyorsan javítanunk kell hiszen a következő hétvégén már egy olyan mérkőzés 
				következik ami jelentősen befolyásolhatja a bajnokság végkimenetelét is.
				Ceglédi KKSE-Abonyi KC-Mogyoródi KSK 37-19 (16-12).
                Gólszerzők: Bárány N 3, Bugyi M 2, Gulyás P 2, Kelemen P 1, Komáromi Z 2 ,Nagy A 6 ,Müller B 4, Szilágyi J 2, Ujhelyi T 9, 
				Ujhelyi Z 2, Varga A 4 Kelemen T, Benyus M.
				Varga Péter edzőnk nyilatkozata: Nagyon kellemetlen, helyenként durva ellenféllel szemben kellett játszanunk. Örülök hogy 
				nem sérült meg senki.
                A nagyarányú győzelem ellenére nem vagyok elégedett. A hozzáállás a helyzet kihasználás is hagyott kívánni valót maga után, 
				a felforgatott csapatról már nem is beszélve.
                Sajnos magunknak tettük kellemetlenné a mérkőzést ez nem nagyon hasonlított az elvártakhoz, csalódott vagyok.
                Ez a későbbiekben biztos, hogy nem lesz elég.'),
('2021-10-19', 'Rangadót nyertünk!', 'Az elmúlt hétvégén a Pásztói KC csapata látogatott hozzánk, akik jelenleg a tabella harmadik 
				helyén állnak. Nem vártunk könnyű mérkőzést és ennek tudatában készültünk is fel. 
                Sajnos a COVID protokoll miatt több játékosunk sem tudott pályára lépni. Ez viszont nem remegtette meg a csapatot, végig 
				koncentráltan kézilabdáztunk. 
                Viszont a helyzetek kihasználásával voltak gondjaink, védekezésünk csak az első félidő közepétől működött úgy, 
                ahogyan szerettük volna. Ellenfelünk remekül tartotta magát és látszott rajtuk, hogy szeretnék elvinni a két pontot. 
                A második félidőben már többször sikerült könnyű gólokat szereznünk és egy nagyobb előnyt is kiépíteni, ami elég volt a 
				mérkőzés végéig. 
                Így a két pontot is sikerült bezsebelni, ami továbbra is azt jelenti, hogy a csapatunk remekül halad a kitűzött cél felé.
                Ceglédi KKSE-Abonyi KC - Pásztói KC 33-29 (17-13).
                Gólszerzők: Farkas B 3, Makai N 1, Majoros L 3, Müller B 3, Ollári Sz 7, Szilágyi J 5, Varga A 4, Ujhelyi T 5, 
                Ujhelyi Z 2, Bárány N, Kelemen P, Nagy A, Gulyás P, Varga P, Kelemen T, Horváth G.
				Varga Péter edzőnk nyilatkozata: Tudtuk, hogy ez már keményebb mérkőzés lesz az elmúlt hetekhez képest. Be is 
				bizonyosodott, egy kellemetlen, nagyon szervezett, kulturált játékot játszó ellenfelet tudtunk legyőzni. 
                Itthon nem is lehet más az elvárás, de ez nem mindig könnyű, mert megint változott a csapat összetétele. Hátrány számunkra 
				hogy bal kezes lövő nélkül tudtunk felállni. 
                A védekezésünk sem állt össze úgy ahogy szerettem volna, de hangsúlyozom a jó adottságokkal rendelkező vendégek is jól 
				játszottak. A kapott gólokat sokallom, mert jó pár elkerülhető gólt kaptunk. 
                Voltak hibák, de jó mentalitással, küzdve-harcolva sikerült végül is magabiztosan nyerni. Szépen lassan lépkedünk előre 
				játékban.
                Gratulálok a csapatnak!');

INSERT INTO `Ffelncikk` (`datum`, `cim`, `cikk`) VALUES
('2021-10-21', 'Egy híjján ötven!', 'Megyei férfi felnőtt csapatunk hétközi bajnoki fordulón szerepelt a Vecsés otthonában. Több 
				játékosunk nem tudott elutazni munkahelyi elfoglaltság miatt, 
                így Varga Péter edzőnek az ifi csapatból kellett feltölteni a létszámot. Gyorsan érvényesíteni tudta csapatunk, hogy nem 
				akarunk pontok nélkül távozni a Vecsés otthonából. 
                Így már az első félidő végére tetemes előnyre tettek szert a fiúk. A második játékrészben ez csak fokozódott, szebbnél 
				szebb és könnyű gólokat sikerült szereznünk. 
                Mindenkinek játéklehetőséget tudott biztosítani Varga Péter. A fiatalok is remekül helytálltak és bizonyították, hogy 
				lehet rájuk számítani.
				Vecsés SE - Ceglédi KKSE-Abonyi KC 24-49 (12-24).
				Gólszerzők: Bárárny N 2, Farkas B 4, Kelemen P 2, Magyar G 4, Makai N 3, Maradics D 4, Müller B 5, 
                Szilágyi J 7, Újhelyi T 13, Újhelyi Z 3, Seres B 1, Varga P 1, Kelemen T, Horváth G.
				Varga Péter edző: Utazás előtt elsődleges célunk a két pont megszerzése volt.
                A hétközi meccsre sokan nem tudtak velünk tartani a munkahelyi elfoglaltság miatt.
                Tudtuk, hogy utánpótlás korú játékosok ellen kell pályára lépnünk, ráadásul összesen hét játékossal tudtak felállni.
                Örülök, hogy nálunk hat ifi játékos kapott lehetőséget és élt is vele.
                Az első perctől domináltuk a játékot így csak a különbség volt kérdés.
                Gratulálok a fiúknak!'),
('2021-11-02', 'Győzelemmel búcsúztattuk az októberi hónapot!', 'Megyei felnőtt csapatunk október utolsó napján Szigetszentmiklósra utazott.
                Egy kicsit szokatlan időben, délelőtt 11-órakor kezdődött a mérkőzés. Szerencsére nem okozott gondot a srácoknak az időpont, 
                mert már a mérkőzés elejétől koncentráltan kézilabdáztak, aminek meg is lett az eredménye. 
                A szünet előtt jelentős előnyre tettek szert, így a második játékrészben Varga Péter edzőnk több verziós lehetőséget 
                is kipróbálhatott. Létszámban nem voltunk túl sokan, így mindenki megfelelő játékperchez tudott jutni. 
                A mérkőzés végére egy magabiztos győzelmet könyvelhettünk el.
				Szigetszentmiklósi KSK - Ceglédi KKSE-Abony 26-41 (11-18).
				Gólszerzők: Bárány N 1, Varga A 11, Újhelyi T 12, Farkas B 6, Ollári Sz 6, Varga P 3, Kelemen P 2, 
                Majoros L, Maradics D, Újhelyi Z, Kelemen T, Horváth G.
				Varga Péter edző: 
                Ismét kis létszámmal és összesen négy belső posztos játékossal indultunk a kicsit szokatlan délelőtti mérkőzésre. 
                Hiába voltunk kevesen még is azt kértem hogy fussunk és erőltessük a gyors játékot és könnyű gólokkal lépjünk meg az ellenfelétől. 
                Működött is és egy megnyugtató előnyt tudtunk szerezni a félidőben. A második félidőben már amennyire lehetett, forgattam a csapatot, 
                hogy mindenki tudjon pihenni. Több, jó védekezéssel,l abdaszerzéssel és kapus teljesítménnyel tovább tudtuk növelni az előnyünket. 
                Örülök hogy ifistáink is jól szerepeltek.
                Köszönöm a hozzáállást a srácoknak,gratulálok!');
				
INSERT INTO `Ffelncikk` (`datum`, `cim`, `cikk`) VALUES
('2021-11-08', 'Rangadót nyertünk!!!', 'Szombaton este megyei felnőtt csapatunk, az Aranyszarvas-Tápiószele csapatát fogadta.
                Tudtuk, hogy nehéz mérkőzés lesz és ez be is igazolódott a pályán. Sajnos saját magunknak is megnehezítettük a 
                mérkőzés mert nagyon sok ziccer kimaradt -nem beszélve a hétméteresekről... A lényeg, hogy volt tartása a 
                csapatnak és a két pont zsebben van. Ha egy kicsit koncentráltabbak vagyunk a befejezéseknél, akkor ez egy 
                sokkal könnyebb mérkőzés lehetett volna. Nem vagyunk elégedettek, de nyilván örülünk a győzelemnek több okból is.
                A mérkőzés után Bárány Sanyi bácsi jóvoltából és az abonyi Tarka Tér rendezvény keretein belül elfogyasztotta 
                csapatunk a jól megérdemelt vacsoráját. Még egyszer köszönjük szépen!!!!
				CeglédiKKSE-Abony - Aranyszarvas SE-Tápiószele 23-20 (12-9).
				Gólszerzők: Farkas B 1, Nagy A 1, Ollári Sz 5, Szilágyi J 1, ÚJHELYI T 7, Újhelyi Z 1, 
                Varga A 1, VARGA P 6, Kelemen P, Bárány N, Maradics D, Majoros L, Kelemen T, HORVÁTH G.
				Varga Péter edző:
                Azt kaptam amit vártam, igazi presztízs csata volt, de erre is készültünk. Nem volt szép mérkőzés és ha egy 
                kicsit a befejezésekre jobban koncentrálunk, akkor ez egy nyugodtabb 60 perc lehetett volna. A lényeg most a 
                két pont, de a későbbiekben ettől jobban kell teljesítenünk. Megyünk tovább és tesszük a dolgunkat. 
                Sajnos egy sérülés is adódott a mérkőzésen Varga András bokájával, de a mai napra már az is kiderült, 
                hogy nincs nagy baj, kisebb zúzódást szenvedett, ami egy-két hetes kihagyást jelent. Mielőbbi 
                gyógyulást kívánunk neki. Örülünk annak is, hogy Kiss Döme csapattársunk, akinek még a bajnokság elején 
                elszakadt a térdszalagja, szépen alakul a rehabilitációja. Annak meg különösen örülünk, hogy a csapat 
                hazai mérkőzésein a csapattársait buzdítja a kispad mellől!'),
('2021-12-07', 'Varga Péter férfi megyei csapatunk edzői nyilatkozata', 'Megyei csapatunk is lejátszotta idei utolsó mérkőzését a hétvégén.
                Egy kötelező győzelem megszerzésért utaztunk Gyálra. Nem indult túl könnyen ez a mérkőzés sem, 
                sokáig fej-fej mellett haladtunk. De az első félidő végére már magabiztos előnnyel vonulhattunk szünetre.
                A második játékrészben már könnyebb dolgunk volt, gyakorlatilag az eredmény növelésével el is 
                döntöttük a mérkőzést. Mindenkinek sikerült játéklehetőséget biztosítani, amivel élt is mindenki.
                Gyáli BKSE-Ceglédi KKSE-Abony 21-36 (8-16).
				Nem volt egyszerű első fél évünk, de el kell mondani, hogy nagyon sok van még hátra és a fontos mérkőzések 
                majd márciustól következnek. Addig van időnk javítani a hibáinkat. De be kell látni, hogy azért a megyei 
                bajnokságban -főként a Pest megyei bajnokságokban-, nem lehet nagyon biztosra menni egyik ellenféllel sem. 
                Edzeni és dolgozni kell, mert csak rutinnal, nem lehet mérkőzéseket nyerni. A srácok az ünnepek előtt laza 
                levezető edzésekkel búcsúznak ettől az évtől.
                De januártól újra élesen kell edzeni!');


-- -----------------------------------------------------------------
