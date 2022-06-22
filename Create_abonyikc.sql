-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2022. Máj 22. 15:42
-- Kiszolgáló verziója: 10.4.17-MariaDB
-- PHP verzió: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `abonyikc`
--
CREATE DATABASE IF NOT EXISTS `abonyikc` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `abonyikc`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `ffeln`
--

CREATE TABLE `ffeln` (
  `id` int(2) NOT NULL,
  `datum` date NOT NULL,
  `csapatok` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `eredmeny` varchar(20) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `ffeln`
--

INSERT INTO `ffeln` (`id`, `datum`, `csapatok`, `eredmeny`) VALUES
(1, '2021-09-19', 'CKKSE-Abonyi KC. - Erdőkertesi SE.', '62 - 26'),
(2, '2021-09-25', 'Kőrösi KDSE. - CKKSE-Abonyi KC.', '24 - 21');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `ffelncikk`
--

CREATE TABLE `ffelncikk` (
  `id` int(2) NOT NULL,
  `datum` date NOT NULL,
  `cim` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `cikk` varchar(4000) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `eredmeny` varchar(100) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `csapattagok` varchar(500) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `kepek` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

-- --------------------------------------------------------
INSERT INTO `ffelncikk` (`id`, `datum`, `cim`, `cikk`, `eredmeny`, `csapattagok`, `kepek`) VALUES
(1, '2021-10-10','Újabb két pont a fiúknak!','Nehéz szavakat találni a tegnap lejátszott megyei bajnoki mérkőzésre.
	Többféle főcímet is lehetett volna neki adni, de az nem biztos, hogy túl diplomatikus lenne. A lényeg, hogy meg van a két pont!
    Nagyon nehezen lendültek bele a fiúk, átvették az ellenfelünk lassú ,álmoskás, tempóját. De a mogyoródi csapatnak ez is volt a taktikája, 
	hiszen jelentős korkülönbség is volt a két csapat közt a javunkra.
    A második félidőre aztán már tudtuk fokozni a tempót ami az eredmény növelésében is látszott. Sajnos a hibák ma sem kerültek el bennünket, 
	ezeken nagyon gyorsan javítanunk kell hiszen a következő hétvégén már egy olyan mérkőzés következik ami jelentősen befolyásolhatja a 
	bajnokság végkimenetelét is.
	Varga Péter edzőnk nyilatkozata: Nagyon kellemetlen, helyenként durva ellenféllel szemben kellett játszanunk. Örülök hogy nem sérült 
	meg senki. A nagyarányú győzelem ellenére nem vagyok elégedett. A hozzáállás a helyzet kihasználás is hagyott kívánni valót maga után, 
	a felforgatott csapatról már nem is beszélve. Sajnos magunknak tettük kellemetlenné a mérkőzést ez nem nagyon hasonlított az 
	elvártakhoz, csalódott vagyok. Ez a későbbiekben biztos, hogy nem lesz elég.','Ceglédi KKSE-Abonyi KC - Mogyoródi KSK 37-19 (16-12)',
	'Bárány N 3, Bugyi M 2, Gulyás P 2, Kelemen P 1, Komáromi Z 2 ,Nagy A 6 ,Müller B 4, Szilágyi J 2, Ujhelyi T 9, 
	Ujhelyi Z 2, Varga A 4 Kelemen T, Benyus M',0),
(2, '2021-10-19','Rangadót nyertünk!','Az elmúlt hétvégén a Pásztói KC csapata látogatott hozzánk, akik jelenleg a tabella harmadik helyén állnak. Nem vártunk könnyű mérkőzést és ennek tudatában készültünk is fel. 
                Sajnos a COVID protokoll miatt több játékosunk sem tudott pályára lépni. Ez viszont nem remegtette meg a csapatot, végig koncentráltan kézilabdáztunk. 
                Viszont a helyzetek kihasználásával voltak gondjaink, védekezésünk csak az első félidő közepétől működött úgy, 
                ahogyan szerettük volna. Ellenfelünk remekül tartotta magát és látszott rajtuk, hogy szeretnék elvinni a két pontot. 
                A második félidőben már többször sikerült könnyű gólokat szereznünk és egy nagyobb előnyt is kiépíteni, ami elég volt a mérkőzés végéig. 
                Így a két pontot is sikerült bezsebelni, ami továbbra is azt jelenti, hogy a csapatunk remekül halad a kitűzött cél felé.
	Varga Péter edzőnk nyilatkozata: Tudtuk, hogy ez már keményebb mérkőzés lesz az elmúlt hetekhez képest. Be is bizonyosodott, egy kellemetlen, nagyon szervezett, kulturált játékot játszó ellenfelet tudtunk legyőzni. 
                Itthon nem is lehet más az elvárás, de ez nem mindig könnyű, mert megint változott a csapat összetétele. Hátrány számunkra hogy bal kezes lövő nélkül tudtunk felállni. 
                A védekezésünk sem állt össze úgy ahogy szerettem volna, de hangsúlyozom a jó adottságokkal rendelkező vendégek is jól játszottak. A kapott gólokat sokallom, mert jó pár elkerülhető gólt kaptunk. 
                Voltak hibák, de jó mentalitással, küzdve-harcolva sikerült végül is magabiztosan nyerni. Szépen lassan lépkedünk előre játékban.
                Gratulálok a csapatnak!',
	'Ceglédi KKSE-Abonyi KC - Pásztói KC 33-29 (17-13)','Farkas B 3, Makai N 1, Majoros L 3, Müller B 3, Ollári Sz 7, Szilágyi J 5, Varga A 4, Ujhelyi T 5, 
                Ujhelyi Z 2, Bárány N, Kelemen P, Nagy A, Gulyás P, Varga P, Kelemen T, Horváth G.', 4);



CREATE TABLE `fooldal` (
  `id` int(2) NOT NULL,
  `cim` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `datum` date NOT NULL,
  `leiras` varchar(1000) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `csapathorog` varchar(20)  NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;
-- -------------------------------------------------------------

INSERT INTO `fooldal` (`id`, `cim`, `datum`, `leiras`, `csapathorog`) VALUES
(1, 'Háromból három!', '2021-09-18', 'Harmadik mérkőzését is megnyerte női ifjúsági csapatunk, Albertirsáról hozták el a két pontot...','uNoiIfi.php#1'),
(2, 'A második fordulóban is remekelt a csapat!','2021-09-19','U14-es leány csapatunk a legutóbbi játéknapon Szászbereken mérkőzött meg két csapattal!','u14.php#1');



--
-- Tábla szerkezet ehhez a táblához `lu11`
--

CREATE TABLE `lu11` (
  `id` int(2) NOT NULL,
  `datum` date NOT NULL,
  `csapatok` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `eredmeny` varchar(20) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `lu11`
--

INSERT INTO `lu11` (`id`, `datum`, `csapatok`, `eredmeny`) VALUES
(1, '2021-11-06', 'Abonyi KC. - Hort SE.', '8 - 9'),
(2, '2021-11-06', 'Malév SC. - Abonyi KC.', '5 - 12');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `lu11cikk`
--

CREATE TABLE `lu11cikk` (
  `id` int(2) NOT NULL,
  `datum` date NOT NULL,
  `cim` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `cikk` varchar(3000) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `eredmeny` varchar(100) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `csapattagok` varchar(500) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `kepek` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `lu11cikk`
--

INSERT INTO `lu11cikk` (`id`,`datum`, `cim`, `cikk`, `eredmeny`, `csapattagok`, `kepek`) VALUES
(1,'2021-11-08', 'U11-es csapatunk is megkezdte a bajnokságot!', 'A legkisebb korosztályunkban sokan először öltötték fel az abonyi mezt \n				és először kerültek éles helyzetbe a pályán. \n                El kell hogy mondjuk, nagyon magabiztosan kezelték ezt a helyzetet a csöppségek. Remekül helytálltak, \n                szinte már-már azt lehetett érezni, hogy nem az első bevetésük. Csak dicséret illeti a lányokat, \n                első mérkőzésükön egy szoros csatában egy gólos vereséget szenvedtek, de a második meccsen már megízlelhették a \n                győzelem ízét, ahol egy magabiztos sikert könyvelhettek el. De ami mindennél fontosabb, élvezték a játékot a \n                lányok, ami ebben a korosztályban is a leglényegesebb dolog!!!\n				Tóth Renáta edző: Micsoda rajt volt csajok! Büszke vagyok rátok! \n                A hétvégén Gyálra utazott a csapat, nagy izgalommal várták a gyerekek a mérkőzéseket. Néhányuknak az első \n                megmérettetése volt az országos gyermekbajnokságban. Évek óta gyakorolnak, de valljuk be a meccsdrukk \n                dolgozott a gyerekekben. Egy győzelemmel és egy egygólos vereséggel utaztunk haza. Nagyon élvezték a \n                játékot a lányok, kipróbálták az edzéseken begyakorolt cseleket, ügyes gólpasszokat adtak egymásnak. \n                Így tovább! Hajrá Abony! Hajrá Abonyi KC!', 'Abonyi KC - Hort SE 8-9 (3-2) * * *  Malév SC - Abonyi KC 5-12  (3-7)', 'A csapat \n				tagjai: Domoszlai Zora, Döme Laura, Holló Barbara, Juhász Jázmin, Lipák Rubina, Mayer Anna Zsófia, \n                Mucsi Regina Zoé, Rabi Rebeka, Schwarczenberger Zoé, Szabó Blanka, Szőke Liliána Dorka.',4),
(2,'2021-11-22', 'A 2021.11.21. napon megrendezett mérkőzéskre Covid-karantén miatt nem tudtak elutazni játékosaink!', ' ', ' ', ' ',0);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `lu12`
--

CREATE TABLE `lu12` (
  `id` int(2) NOT NULL,
  `datum` date NOT NULL,
  `csapatok` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `eredmeny` varchar(20) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `lu12`
--

INSERT INTO `lu12` (`id`, `datum`, `csapatok`, `eredmeny`) VALUES
(1, '2021-10-02', 'EURONOVEX USE II. - Abonyi KC.', '6 - 5'),
(2, '2021-10-02', 'Abonyi KC. - EURONOVEX USE.', '9 - 22');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `lu12cikk`
--

CREATE TABLE `lu12cikk` (
  `id` int(2) NOT NULL,
  `datum` date NOT NULL,
  `cim` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `cikk` varchar(3000) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `eredmeny` varchar(100) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `csapattagok` varchar(500) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `kepek` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `lu12cikk`
--

INSERT INTO `lu12cikk` (`id`, `datum`, `cim`, `cikk`, `eredmeny`, `csapattagok`, `kepek`) VALUES
(1, '2021-10-19', '1 gólos vereség és 22 gólos győzelem!', 'U12-es leány csapatunk Abonyban, a Ceglédi Kék Cápák rendezésében lezajló, \n				soron következő fordulón vettek részt. \n                Az első mérkőzésen a Ceglédi Kék Cápák ellen játszottak  ahol egy igen változatos és szoros mérkőzésen, \n				egy góllal alul maradtak lányaink. \n                Sajnos a második félidő elejét egy kicsit bealudták a lányok így, a Cegléd el tudott lépni, a végére már csak felzárkózni \n				tudtunk de a győzelmet nem sikerült megszerezni. \n                Második mérkőzésen a Dabas csapata volt az ellenfél, ahol egy felszabadult játékot mutattak a lányok és nagyon \n				magabiztosan, jelentős gólkülönbséggel nyerték meg a mérkőzést.', 'Ceglédi Kék Cápák SE - Abonyi KC  9-8 (3-3) * * * Abonyi KC - Dabas KC VSE  23-1 (9-0).', 'Majercsik Regina, Sulyok Abonyi Viktória, Vígh Emma, Zsákai Mirjam, Domoszlai Zora, Döme Rebeka, \n				Mayer Anna Zsófia, Mucsi Regina, Rabi Rebeka, Szabó Blanka, Szőke Liliána.', 4),
(2, '2021-12-01', 'Szabó Linda edzőnk beszámolója', 'U12-es lánycsapatunk a hétvégén Dabasra látogatott a Gyermekbajnokság soron következő fordulójára.\n                Az ENUSE I. ellen léptek először pályára a lányok. Mivel az ellenfél összesen 6 játékossal tudott eljönni erre \n                a mérkőzésnapra, sportszerűségből mi is ennyien játszottuk végig a találkozót. A szabályok szerint, mivel az ellenfél nem \n                tudott teljes létszámmal kiállni, automatikusan mi nyertük a mérkőzést.\n                A második meccsen, a Cegléd ellen nem tudtunk jó játékot bemutatni. Védekezésben voltunk ezen a napon \n                erősebbek. Sajnos a támadásaink kevés góllal végződtek. Sok kihagyott helyzet, pontatlan lövések jellemezték \n                a találkozót. Állandó kapusunk is hiányzott ezen a napon. A helyére beálló tartalék kapusunk ügyesen helyt \n                állt. Hiába végződött vereséggel a találkozó, büszke vagyok a lányokra.\n                Idén ez volt az utolsó forduló a bajnokságban.', '', '', 0);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `lu13`
--

CREATE TABLE `lu13` (
  `id` int(2) NOT NULL,
  `datum` date NOT NULL,
  `csapatok` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `eredmeny` varchar(20) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `lu13`
--

INSERT INTO `lu13` (`id`, `datum`, `csapatok`, `eredmeny`) VALUES
(1, '2021-09-26', 'Abonyi KC. - Tigrisek CSKSE.', '13 - 11'),
(2, '2021-09-26', 'Aranyszarvas SE. - Abonyi KC.', '7 - 17');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `lu13cikk`
--

CREATE TABLE `lu13cikk` (
  `id` int(2) NOT NULL,
  `datum` date NOT NULL,
  `cim` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `cikk` varchar(3000) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `eredmeny` varchar(100) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `csapattagok` varchar(500) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `kepek` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `lu13cikk`
--

INSERT INTO `lu13cikk` (`id`, `datum`, `cim`, `cikk`, `eredmeny`, `csapattagok`, `kepek`) VALUES
(1, '2021-10-10', 'Gólzáporos mérkőzések!', 'U13-as leány csapatunk a második fordulóban is két mérkőzésen van túl és ráadásul \n				mindkétszer győztesen jöttek le a pályáról!\n				Magabiztos játékkal, jelentős gólkülönbséggel sikerült a lányoknak túlnőni az ellenfeleken.',				'Szentesi FKC. - Abonyi KC. 3-27 (2-13) * * * Tiszaföldvári VSE. - Abonyi KC. 9-28 (4-11)', 'Bazsó Hanna, Bőszény Izabella, Kiss Anna Virág, Rimóczi Zora, Döme Rebeka, Vígh Emma, Schwarczenberger Lili, \n				Majercsik Regina, Földi Nikolett Panna, Havellant Katalin Réka.',2),
(2, '2021-11-09', 'Egy vereség, egy győzelem!', 'U13-as lányaink 50%-os teljesítménnyel zárták a hétvégi fordulót amit Szászbereken \n				rendeztek meg. \n                Sajnos már a csapat indulásánál adódtak gondok, de hála a kedves szülőknek, sikerült elhárítani a problémát. \n                Talán ez is közre játszhatott az első mérkőzésen, ahol még egy kicsit szétszórtak voltak a lányok, de küzdeni akarásból \n				így is jelesre vizsgáztak. \n                Az ENUSE csapata volt az első mérkőzésen az ellenfél, ahol remekül helyt álltak lányaink de a győzelmet nem sikerült \n				megszerezni, csak egy szoros eredményt elérni. A második mérkőzés már egy nyugodtabb, összeszedettebb játékot hozott,\n                aminek meg is lett az eredménye. Az első félidőben eldöntötték a lányok a győzelem sorsát, a mérkőzés második \n                részében már felszabadult játékot játszhatunk.',	'ENUSE - Abonyi KC 16-12  (10-5) * * * Abonyi KC - Mizse KC 35-3  (17-1)', 'Földi Nikolett Panna, Bazsó Hanna Anita, Gazsovics Nóra, Kiss Anna Virág, \n                Rimóczi Zora, Schwarczenberger Lili, Pető Lili, Vígh Emma, Sulyok-Abonyi Viktória, Döme Rebeka.</p>\n				Edző: Mayer-Nagy Zsuzsanna.',1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `lu14`
--

CREATE TABLE `lu14` (
  `id` int(2) NOT NULL,
  `datum` date NOT NULL,
  `csapatok` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `eredmeny` varchar(20) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `lu14`
--

INSERT INTO `lu14` (`id`, `datum`, `csapatok`, `eredmeny`) VALUES
(1, '2021-09-19', 'Abonyi KC. - Albertirsa SE.', '25 - 3'),
(2, '2021-09-19', 'Törökszentmiklósi SZKE. - Abonyi KC.', '9 - 9');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `lu14cikk`
--

CREATE TABLE `lu14cikk` (
  `id` int(2) NOT NULL,
  `datum` date NOT NULL,
  `cim` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `cikk` varchar(3000) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `eredmeny` varchar(100) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `csapattagok` varchar(500) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `kepek` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `lu14cikk`
--

INSERT INTO `lu14cikk` (`id`, `datum`, `cim`, `cikk`, `eredmeny`, `csapattagok`, `kepek`) VALUES
(1, '2021-10-05', 'A második fordulóban is remekelt a csapat!', 'U14-es leány csapatunk két fordulón van túl, a legutóbbi mérkőzésnapon a 
	Hajdúszoboszló és az ENUSE csapataival csaptak össze. A lányok már nagyon várták a mérkőzéseket, hiszen tavaly sajnos nem volt 
	játéklehetőség... Így ismét nagy volt bennük a mérkőzés láz!', 'Abonyi KC - ENUSE 15-19 (9-8) * * * Hajdúszoboszló-Abonyi KC 17-23 (11-12)',
	'Bazsó Hanna, Gazsovics Nóra, Gócsa Lili, Kiss Anna Virág, Kovács Brigitta, Rimóczi Zora, Schwarczenberger Lili, Szarvák Boglárka, 
	Havellant Katalin, Földi Nikolett, Benyus Anna.',0),
(2, '2021-10-19', 'A hétvégi mérleg: egy győzelem, egy vereség.', 'U14-es lány csapatunk az elmúlt hétvégén Törökszentmiklóson lépett \n				pályára, a soron következő bajnoki forduló mérkőzésein. \n                Az első mérkőzést a Ceglédi Kék Cápák ellen játszották a lányok, ahol remek játékkal sikerült egy magabiztos győzelmet \n				aratni. \n                A második mérkőzésen már nem volt olyan friss a csapat, de remekül helytálltak a lányok - jelenleg - a tabella élén álló \n				Sütő Kézisuli ellen. \n                Azonban csak egy félideig bírták tartani a szorosabb eredményt. Lányaink a bajnokság második helyéről várják a folytatást!', 'Ceglédi Kék Cápák SE - Abonyi KC  10-18 (5-7) * * * Abonyi KC - Sütő Kézisuli  9-17 (4-8)', 'Bazsó Hanna, Gazsovics Nóra, Kovács Brigitta, Rimóczi Zora, Schwarczenberger Lili, Szarvák Boglárka, Pető Lili, Bőszény Izabella, Kiss Anna, Földi Nikolett',1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `nifi`
--

CREATE TABLE `nifi` (
  `id` int(2) NOT NULL,
  `datum` date NOT NULL,
  `csapatok` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `eredmeny` varchar(20) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `nifi`
--

INSERT INTO `nifi` (`id`, `datum`, `csapatok`, `eredmeny`) VALUES
(1, '2021-09-18', 'Jászfényszaru VSE. - Abonyi KC.', '18 - 40'),
(2, '2021-09-25', 'Abonyi KC. - Gyáli BKSE.', '35 - 28');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `nificikk`
--

CREATE TABLE `nificikk` (
  `id` int(2) NOT NULL,
  `datum` date NOT NULL,
  `cim` varchar(100) COLLATE utf8_hungarian_ci NOT NULL,
  `cikk` varchar(3000) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `eredmeny` varchar(100) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `csapattagok` varchar(500) COLLATE utf8_hungarian_ci DEFAULT NULL,
  `kepek` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `nificikk`
--

INSERT INTO `nificikk` (`id`, `datum`, `cim`, `cikk`, `eredmeny`, `csapattagok`, `kepek`) VALUES
(1, '2021-10-05', 'Háromból három!', 'Harmadik mérkőzését is megnyerte női ifjúsági csapatunk, Albertirsáról hozták el a két pontot.\n                A mérkőzés elején sikerült jó rajtot venni a lányoknak és több góllal is el tudtak lépni ellenfelüktől. \n                Az első félidő vége viszont az Irsának sikerült jobban így feltudtak zárkózni.\n                A második játékrész elején ismét sikerült elhúzniuk az abonyi lányoknak és végig uralni is tudták a mérkőzést. Még akkor \n				is, amikor kettős emberhátrányba kerültek. \n                Rengeteg volt a kiállítás a mérkőzésen, ami egy kicsit meg is zavarta a csapatokat. De a lényeg, hogy győztesen hagytuk el a pályát. Gulyás Péter edzőnk nyilatkozata:\n                Remek ütemben kapták el a lányok a mérkőzést és ez az eredményben is megmutatkozott. Viszont az első félidő végére egy \n				kicsit megtorpantunk és ellenfelünk felzárkózott. \n                A második játékrészben a sok kiállítás miatt nehéz volt bármilyen taktikát alkalmazni, mert nem nagyon voltunk teljes \n				létszámban a pályán. Nem volt egy szép mérkőzés, de a lényeg, hogy a két pontot a mi nevünk mellé írták be.\n                Sajnálatos, hogy kapusunk, Skultéti Gréti a mérkőzés végén megsérült. Egyenlőre pontos diagnózist még nem tudunk, de \n				várhatóan több hetet kell kihagynia. Mielőbbi gyógyulást kívánunk Neki és természetesen várjuk vissza!', 'Albertirsa SE - Abonyi KC  25 - 29 (11 - 12)', 'Egedi G 1, Barna B 6, Pető B 3, Varga B 5, Pál D 4, Bodor V 3, Kocsi H 5, Antal Cs 2, Dénes V, Halasi N, \n				Somodi B , Skultéti G, Molnár Cs, Micskó N.',2),
(2, '2021-10-19', 'Furcsa győzelem', 'Kicsit furcsán szerezte meg a két pontot női ifjúsági csapatunk!\n				Az új COVID protokoll alapján, a tápiószentmártoni lányok létszám hiány miatt nem tudtak eljönni a mérkőzésre \n				(nem volt elég játékosuk, aki valamilyen védettséggel rendelkezett volna).\n                Mivel már halasztás nincs, így az abonyi lányokat illeti meg a két pont, 10-0-ás gólkülönbséggel. Tudjuk, nem olyan nagy \n				dicsőség így nyerni, de sajnos most ez a szabály. Gulyás Péter edző: Sok mindent nem lehet ehhez fűzni. Készülünk a következő mérkőzésre.', 'Abonyi KC - Aranyszarvas SE 10-0', ' ',0);
--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `ffeln`
--
ALTER TABLE `ffeln`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `fooldal`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `ffelncikk`
--
ALTER TABLE `ffelncikk`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `lu11`
--
ALTER TABLE `lu11`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `lu11cikk`
--
ALTER TABLE `lu11cikk`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `lu12`
--
ALTER TABLE `lu12`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `lu12cikk`
--
ALTER TABLE `lu12cikk`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `lu13`
--
ALTER TABLE `lu13`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `lu13cikk`
--
ALTER TABLE `lu13cikk`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `lu14`
--
ALTER TABLE `lu14`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `lu14cikk`
--
ALTER TABLE `lu14cikk`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `nifi`
--
ALTER TABLE `nifi`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `nificikk`
--
ALTER TABLE `nificikk`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `ffeln`
--
ALTER TABLE `ffeln`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
  
  
ALTER TABLE `fooldal`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT a táblához `ffelncikk`
--
ALTER TABLE `ffelncikk`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT a táblához `lu11`
--
ALTER TABLE `lu11`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT a táblához `lu11cikk`
--
ALTER TABLE `lu11cikk`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT a táblához `lu12`
--
ALTER TABLE `lu12`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT a táblához `lu12cikk`
--
ALTER TABLE `lu12cikk`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT a táblához `lu13`
--
ALTER TABLE `lu13`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT a táblához `lu13cikk`
--
ALTER TABLE `lu13cikk`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT a táblához `lu14`
--
ALTER TABLE `lu14`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT a táblához `lu14cikk`
--
ALTER TABLE `lu14cikk`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT a táblához `nifi`
--
ALTER TABLE `nifi`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT a táblához `nificikk`
--
ALTER TABLE `nificikk`
  MODIFY `id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
