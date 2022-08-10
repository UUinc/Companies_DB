-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 10, 2022 at 08:37 PM
-- Server version: 10.5.16-MariaDB
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id19380378_companies`
--

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `city_id` int(11) NOT NULL,
  `city_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `city_name`) VALUES
(1, 'Casablanca'),
(2, 'Rabat'),
(3, 'Marrakech'),
(4, 'Safi'),
(5, 'Bengrir'),
(6, 'Nador'),
(7, 'Tanger'),
(8, 'Tinghir'),
(9, 'El Jadida'),
(10, 'Kenitra'),
(11, 'Agadir'),
(12, 'Mohammedia'),
(13, 'Tata'),
(14, 'Bou Azzer'),
(15, 'Taroudant'),
(16, 'Essaouira'),
(17, 'Youssoufia'),
(18, 'Ouarzazat'),
(19, 'El Kelaa des Sraghna'),
(20, 'Fes'),
(21, 'Sale'),
(22, 'Meknes'),
(23, 'Oujda-Angad'),
(24, 'Tetouan'),
(25, 'Taourirt'),
(26, 'Temara'),
(27, 'Laâyoune'),
(28, 'Kouribga'),
(29, 'Beni Mellal'),
(30, 'Ait Melloul'),
(31, 'Taza'),
(32, 'Settat'),
(33, 'Barrechid'),
(34, 'Al Khmissat'),
(35, 'Inezgane'),
(36, 'Ksar El Kebir'),
(37, 'Larache'),
(38, 'Guelmim'),
(39, 'Khénifra'),
(40, 'Berkane'),
(41, 'Bouskoura'),
(42, 'Al Fqih Ben Çalah'),
(43, 'Oued Zem'),
(44, 'Sidi Slimane'),
(45, 'Errachidia'),
(46, 'Guercif'),
(47, 'Oulad Teïma'),
(48, 'Ad Dakhla'),
(49, 'Wislane'),
(50, 'Tiflet'),
(51, 'Lqoliaa'),
(52, 'Sefrou'),
(53, 'Fnidq'),
(54, 'Ait Ali'),
(55, 'Sidi Qacem'),
(56, 'Tiznit'),
(57, 'Moulay Abdallah'),
(58, 'Tan-Tan'),
(59, 'Sa’ada'),
(60, 'Martil'),
(61, 'Aïn Harrouda'),
(62, 'Skhirate'),
(63, 'Ouezzane'),
(64, 'Sidi Yahya Zaer'),
(65, 'Benslimane'),
(66, 'Al Hoceïma'),
(67, 'Beni Enzar'),
(68, 'M’diq'),
(69, 'Sidi Bennour'),
(70, 'Midalt'),
(71, 'Azrou'),
(72, 'Ain El Aouda'),
(73, 'Beni Yakhlef'),
(74, 'Semara'),
(75, 'Ad Darwa'),
(76, 'Al Aaroui'),
(77, 'Qasbat Tadla'),
(78, 'Boujad'),
(79, 'Jerada'),
(80, 'Chefchaouene'),
(81, 'Mrirt'),
(82, 'Sidi Mohamed Lahmar'),
(83, 'El Aïoun'),
(84, 'Azemmour'),
(85, 'Temsia'),
(86, 'Zoumi'),
(87, 'Laouamra'),
(88, 'Zagora'),
(89, 'Ait Ourir'),
(90, 'Sidi Bibi'),
(91, 'Aziylal'),
(92, 'Sidi Yahia El Gharb'),
(93, 'Biougra'),
(94, 'Taounate'),
(95, 'Bouznika'),
(96, 'Aourir'),
(97, 'Zaïo'),
(98, 'Aguelmous'),
(99, 'El Hajeb'),
(100, 'Mnasra'),
(101, 'Mediouna'),
(102, 'Zeghanghane'),
(103, 'Imzouren'),
(104, 'Loudaya'),
(105, 'Oulad Zemam'),
(106, 'Bou Ahmed'),
(107, 'Tit Mellil'),
(108, 'Arbaoua'),
(109, 'Douar Oulad Hssine'),
(110, 'Bahharet Oulad Ayyad'),
(111, 'Mechraa Bel Ksiri'),
(112, 'Mograne'),
(113, 'Dar Ould Zidouh'),
(114, 'Asilah'),
(115, 'Demnat'),
(116, 'Lalla Mimouna'),
(117, 'Fritissa'),
(118, 'Arfoud'),
(119, 'Tameslouht'),
(120, 'Bou Arfa'),
(121, 'Sidi Smai’il'),
(123, 'Souk et Tnine Jorf el Mellah'),
(124, 'Mehdya'),
(125, 'Oulad Hammou'),
(126, 'Douar Oulad Aj-jabri'),
(127, 'Aïn Taoujdat'),
(128, 'Dar Bel Hamri'),
(129, 'Chichaoua'),
(130, 'Tahla'),
(131, 'Bellaa'),
(132, 'Oulad Yaïch'),
(133, 'Ksebia'),
(134, 'Tamorot'),
(135, 'Moulay Bousselham'),
(136, 'Sabaa Aiyoun'),
(137, 'Bourdoud'),
(138, 'Aït Faska'),
(139, 'Boureït'),
(140, 'Lamzoudia'),
(141, 'Oulad Said'),
(142, 'Missour'),
(143, 'Ain Aicha'),
(144, 'Zawyat ech Cheïkh'),
(145, 'Bouknadel'),
(146, 'El Ghiate'),
(147, 'Safsaf'),
(148, 'Ouaoula'),
(149, 'Douar Olad Salem'),
(150, 'Oulad Tayeb'),
(151, 'Echemmaia Est'),
(152, 'Oulad Barhil'),
(153, 'Douar Ayn Dfali'),
(154, 'Setti Fatma'),
(155, 'Skoura'),
(156, 'Douar Ouled Ayad'),
(157, 'Zawyat an Nwaçer'),
(158, 'Khenichet-sur Ouerrha'),
(159, 'Ayt Mohamed'),
(160, 'Gueznaia'),
(161, 'Oulad Hassoune'),
(162, 'Bni Frassen'),
(163, 'Tifariti'),
(164, 'Zawit Al Bour'),
(165, 'ONLINE'),
(166, 'Had Soualem');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `company_id` int(11) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `telephone` varchar(17) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `industry_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`company_id`, `company_name`, `email`, `address`, `telephone`, `website`, `industry_id`, `city_id`) VALUES
(1, 'BLEZA PREFA', NULL, '04 Rue Jean Chelle, Quartier Oasis 20000 Casablanca, Morocco', '+212 522 99 17 59', NULL, 1, 1),
(2, 'GROUPE OCP', NULL, 'Route Djorf- El youdi - Safi BP 219', NULL, NULL, 2, 4),
(3, 'LLC', NULL, NULL, NULL, NULL, 3, 1),
(4, 'AGRO FOOD', NULL, 'Qt Sidi Ghanem-102, Route de Safi- 40110 Marrakech', NULL, NULL, 4, 3),
(5, 'Aircelle Maroc', NULL, 'BP 80 Technopôle Nouaser - Casablanca', NULL, NULL, 5, 1),
(6, 'Centrelec', 'ghennami212@gmail.com', '34, Bd Moulay Slimane Casablanca', '+212 522 34 57 00', 'http://centrelec.ma', 6, 1),
(7, 'SIMACOM', NULL, 'Z.I. Ouled Saleh, Secteur 135 Lot 85, Bouskoura', NULL, NULL, 4, 1),
(8, 'OCP - Benguerir', NULL, 'Correon Industriel- Benguerir- Maroc', NULL, NULL, 2, 5),
(9, 'SOLABRIQ', NULL, 'Km 5 - CR jakma- Rn de Beni Mellal N°13 Berrechid', NULL, NULL, 8, 6),
(11, 'SI3 - MARRAKECH', NULL, 'Lot 167 PI sidighanem Marrakech', NULL, NULL, 9, 3),
(26, 'SOMACA- RENAULT', NULL, 'Autoroute Casa/rabat, Km12- Casablanca', NULL, NULL, 10, 1),
(27, 'SUTA- Groupe COSUMAR', 'recrutement@cosumar.co.ma', 'km.6 route de Marrakech - KmisOuledAyad - BP80 - 23000 BeniMellal', NULL, 'https://www.cosumar.co.ma', 11, 29),
(28, 'SEWS CABIND MAROC- SAS ', NULL, NULL, NULL, NULL, 10, 1),
(29, 'ONEE', NULL, NULL, NULL, NULL, 7, 3),
(30, 'Société Métallurgique d\'Imiter (SMI)', NULL, 'BP 30 Tinghir', NULL, NULL, 12, 1),
(31, 'Automotrices Casablanca (PAR)', NULL, NULL, NULL, NULL, 13, 1),
(32, 'ASERTI EL Jadida', 'aserti@aserti.ma', 'Succursale 2, Boulevard Jabrane Khalil Jabrane -El Jadida', '+212 523 35 24 32', 'https://www.aserti.ma', 4, 9),
(33, 'CIMENT DE L\'ATLAS', 'contact@cimat.ma', '28, La Colline II, Sidi Maârouf Casablanca - Maroc', '+212 522 67 75 00', 'https://www.cimat.ma', 9, 1),
(34, 'ATLAS COUSCOUS', NULL, 'Zone industriel. Sidi Ghanem,lot 124- 40010  Marrakech', NULL, NULL, 4, 3),
(35, 'Fujikura', 'tfo.maroc@tfosolutions.ma', 'Kenitra Lots 216, 217, 218 et 219 Atlantic Free Zone RN 4 Commune Amer Saflia Kenitra', '+212 522 99 55 98', 'https://www.fujikura.co.jp/eng/', 10, 10),
(36, 'Centrale laitière', 'sighidi@centralelaitiere.com', 'route de BeniMellal , km 2 FKIH BEN SALAH', '+212 800 09 20 20', 'https://corporate.danone.ma', 4, 3),
(37, 'PASTOR S.A ', NULL, '49, Rue Ennasrine- Casablanca', NULL, NULL, 14, 1),
(38, 'Les GRANDS Moulins Du Tensift', NULL, '359, Q.I. Sidi Ghanem - Marrakech', NULL, NULL, 4, 3),
(39, 'Marsa maroc casablanca', NULL, NULL, NULL, NULL, 15, 1),
(40, 'ABB S.A', NULL, 'Lot 37-38 Lotissement La colline 2 Sidi Maârouf,  20190 Casablanca', NULL, NULL, 6, 1),
(41, 'VOID', 'casa@void.fr', '217 boulevard Zerktouni', '+212 667 04 20 85', 'https://void.fr', 50, 1),
(42, 'BAYER', NULL, '3 Boulevard Mohamed Zerktouni 20100, Casablanca, Morocco', '+212 622 43 83 91', 'http://www.bayer.com/', 17, 1),
(43, 'WEBJET CONSEIL', NULL, '15 Avenue Al Abtal N4 Agdal – Agdal Riyad (AR)  RABAT', NULL, NULL, 18, 2),
(44, 'AGRIDATA CONSULTING', 'contact@agridata-consulting.com', 'Agridata Consulting, Imm.Azizia, 2ème ét, Av .Hassan', '+212 663 34 70 93', 'http://agridata-consulting.com/', 19, 11),
(45, 'SWISS TECH', NULL, 'N°4 lot 952 route de safi - Marrakech', NULL, NULL, 50, 3),
(46, 'DELTA HOLDING', 'dg@deltaholding.ma', 'Skhirat Complex Angle with Hassan II Avenue and Beach road Skhirat - Maroc', '+212 537 62 17 00', 'https://www.deltaholding.ma', 21, 62),
(47, 'MEDASYS SA', 'medasys@medasys.ma', 'Lot N° 34, Zone industrielle Attasnia, Temara, Maroc', '+212 530 10 50 50', 'https://www.medasys.ma/', 22, 2),
(48, 'ATOS MAROC', NULL, 'Shore 2 11 000 bd Alqods Sidi Maarouf 20270 Casablanca, Morocco', '+212 529 01 42 00', 'https://atos.net/fr/morocco', 23, 1),
(49, 'MEDFLEX DECORATION', NULL, NULL, NULL, NULL, 24, 3),
(50, 'PLASTIMA SA', NULL, 'rue al Maadane route coutiere 111 km 11 Casablanca', NULL, NULL, 25, 1),
(51, 'REKRUTE.COM', 'contact@ReKrute.com', '2 rue Al Hatimi 5ème étage, angle bd Brahim Roudani - Al Batha 20390 Casablanca - Maroc', '+212 522 50 51 53', 'https://www.rekrute.com/', 26, 165),
(52, 'ANTIPODES', NULL, '7 residence la tour orientale; rue blida 5eme étage, N°10 quartier des hôpitaux 20100 casablanca', NULL, NULL, 27, 1),
(53, 'LC WAIKIKI RETAIL MA', NULL, NULL, NULL, NULL, 28, 1),
(54, 'DATA EMBASSY', NULL, '438, q.Isidighanem 40110 Marrakech', '+212 524 33 88 00', NULL, 29, 3),
(55, 'APTIV TANGER (DELPHI)', NULL, NULL, NULL, NULL, 10, 7),
(56, 'FAME TECHNOLOGY', NULL, '52 lotiss. Amine 1°ét. Ouled Haddou Hay sidi maarouf 1', NULL, NULL, 50, 1),
(57, 'COLORADO', NULL, 'Route MlyThami km 15 commune rurale OuladAzouz Dar Bouazza', NULL, NULL, 31, 1),
(58, 'SPHINX ELECTRIC', NULL, '13, Rue Recroix, Belvdère, Casablanca', NULL, NULL, 32, 1),
(59, 'ONCF RABAT', NULL, '8bis, rue abderrahmane el rafiki agdal Rabat', NULL, NULL, 33, 2),
(60, 'MANAGEM', NULL, NULL, NULL, NULL, 34, 13),
(61, 'RICHBOND', NULL, 'km 11.7 autoroute casa-rabat CASABLANCA', NULL, NULL, 24, 1),
(62, 'SEMLALIYA', NULL, NULL, NULL, NULL, 35, 3),
(63, 'LAFARGE BOUSKOURA', NULL, NULL, NULL, NULL, 9, 1),
(64, 'AKZONOBEL', 'chakib.lazrak@akzonobel.com', 'Akzonobel Coatings S.A rte cotière Mohemmadia bd  annassij Ain sebâa Casablanca', '+212 661 20 93 91', 'https://www.akzonobel.com', 31, 1),
(65, 'FESTO E.U.R.L', 'fluides_systemes@menara.ma', '79 boulevard Ibn Tachfine 20300 Casablanca', '+212 522 44 17 38', 'https://www.festo.com/', 36, 1),
(66, 'CIM D\'EQUIPEMENT', NULL, '25 rue Karatchi , 1° étg. 20110 Casablanca', '+212 522 31 40 25', 'http://cimeq.ma', 9, 1),
(67, 'Guemassa', NULL, NULL, NULL, NULL, 37, 14),
(68, 'Waterleau Maroc', 'maroc@waterleau.com', 'Boulevard de la corniche, Immeuble Marina Centre , N°20, Casablanca, Maroc', '+212 522 27 15 38', 'https://www.waterleau.com/', 38, 1),
(69, 'Samir', NULL, 'BP 89-100 la route coutiére MOHAMMEDIA', NULL, NULL, 39, 12),
(70, 'Compagnie des boissons gazeuses du sud (C.B.G.S)', NULL, 'Azli, route d\'essaouira , BP 791-40000 Marrakech', NULL, NULL, 59, 3),
(71, 'OCP Maroc Chimie - Safi ', NULL, NULL, NULL, NULL, 2, 4),
(72, 'WANA CORPORAT', NULL, NULL, NULL, NULL, 41, 1),
(73, 'IB Maroc', NULL, NULL, NULL, NULL, 42, 1),
(74, 'ZTE', NULL, NULL, NULL, NULL, 41, 2),
(75, 'INTELCOM SA CASABLANCA', NULL, NULL, NULL, NULL, 43, 1),
(76, 'CBI', 'cbi@cbi.ma', 'CBI Building, 29/30, Lot.Attaoufik, Sidi Maârouf, 20270 Casablanca - Maroc', '+212 522 43 71 71', 'https://www.cbi.ma/', 44, 1),
(77, 'ORANGE (MEDITEL)', NULL, NULL, NULL, NULL, 41, 1),
(78, 'BRIMAK S.A', NULL, 'Km 3.5 Dar Kaïd Si Aïssa Road B.P 338 46 000 Safi - Morocco', '+212 524 62 37 75', 'http://www.brimak.com', 9, 4),
(79, 'ONDA Agadir', NULL, 'BP 2000 Aéroport Agadir ALMASSIRA', NULL, NULL, 45, 11),
(80, 'COPAG', NULL, 'zone industrielle Aït Aizza - b.p.1001 - 83000  Taroudant', NULL, NULL, 4, 15),
(81, 'MAYMOUNA Marrakech', NULL, '359, Q.I. Sidi Ghanem - Marrakech', NULL, NULL, 46, 3),
(82, 'Jorf Fertilizers Company', NULL, 'BP 118 jorf Lasfar - ELJADIDA', NULL, NULL, 47, 1),
(83, 'FRAMACO SA', NULL, '5 km route d\'essaouira Marrakech', NULL, NULL, 4, 3),
(84, 'CORTEXIUM', 'cortexium@gmail.com', 'N490 1er etage bureau B6 qisidi ghanem Marrakech  40000', '+212 662 86 79 63', NULL, 48, 3),
(85, 'SILVERFOOD', NULL, 'Km 5RP 3005 Douar bouhala Lakhyayeta BP 290 Casablanca', NULL, NULL, 4, 1),
(86, 'FID-UP GROUP', NULL, 'Immeuble galaxie 44000 ESSAOUIRA', NULL, NULL, 49, 16),
(87, 'SQLI MAROC', NULL, 'Mahaj Ryad Center Buildings 1 & 2, Floors 3,4 and 5, Hay Riad 10000 Rabat Morocco', '+212 537 27 41 50', 'https://www.sqli.com/ma-fr', 3, 2),
(88, 'AVEMPACE CONSULTING', NULL, '466 technopark sidi maarouf Casablanca', NULL, 'http://www.avempace.tech', 50, 1),
(89, 'MAKAUDIT', NULL, 'Hay el Amal 6 lot chakir Eljadida', NULL, NULL, 51, 9),
(90, 'NORSYS AFRIQUE', 'direction_naf@norsys.fr', 'Lot Koutoubia, Villa N° 38 et 39 Quartier Amerchich - 40080 Marrakech', '+212 524 30 04 62', 'https://www.norsys.fr/agence/marrakech', 50, 3),
(91, '3D CONCEPT', NULL, 'Centre d\'Affaires Borj Ménara II. Imm. A Bureau 21. 5ème étage. Marrakech 40140', '+212 524 44 97 88', 'http://bet3dconcept.com', 52, 3),
(92, 'URBAN FUSION AGENCY', 'WELCOME@URBANFUSION.AGENCY', 'RESIDENCE EL KHATABI AV. ABDELKARIM EL KHATABI 2 ÉTAGE APP. 9 GUÉLIZ- 40000 MARRAKECH', '+212 524 43 79 27', 'http://urbanfusion.agency/', 53, 3),
(93, 'MENARA PREFA Marrakech', NULL, '0,5 Km Route d\'Agadir - Bp 4741 Hay Massira - 40005 Marrakech', NULL, NULL, 9, 3),
(94, 'NUXIA sarl', NULL, '9 C1 res koutoubia Ag Av zerktouni Med albaqal Gueliz - MARRAKECH', NULL, 'https://www.linkedin.com/in/nuxia-technologies-8611a716b/', 54, 3),
(95, 'OCP - EL JADIDA', NULL, '5 rue c cite des cadres immeuble ocp EL JADIDA', NULL, NULL, 2, 9),
(96, 'COOPER PHARMA', NULL, '41, Rue Mohammed Diouri, Casablanca, Maroc', '+212 522 45 32 00', 'https://cooperpharma.ma', 17, 1),
(97, 'MAGHREB STEEL SA', NULL, 'Route national 9, 10 km (Aéroclub Tit Mellil) Ahl Moughlam - BP : 3553 Casablanca 20600', NULL, NULL, 55, 1),
(98, 'THYSSENKRUPP MAROC', NULL, NULL, NULL, NULL, 56, 1),
(99, 'IRIS DOMOTOQUE ELJADIDA', NULL, 'Route de Marrakech, Près de centrale laitière, N° 10  Lot M\'hrech, EL JADIDA', NULL, 'http://www.iris-domotique.com', 57, 9),
(100, 'MAPICER GROUPE SNEF', NULL, '257 lot lina sidi maarouf CP 20190 Casablanca', NULL, NULL, 58, 1),
(101, 'S.B.G.S AGADIR', NULL, 'zone industrielle Tassila PB 135 AGADIR', NULL, NULL, 59, 11),
(102, 'TAQA MOROCCO', NULL, 'BP 95 SIDI BOUZID ELJADIDA', NULL, NULL, 7, 1),
(103, 'SMART-ELECTROTEC', 'contact@smart-electrotec.com', 'Quartier Takaddoum Rue Oujda Koleaa BP N° 1259 Ait Melloul ZI 86150 Agadir', '+212 661 38 28 60', 'https://smart-electrotec.com', 60, 11),
(104, 'SCHIELE MAROC', NULL, NULL, NULL, NULL, 61, 1),
(105, 'BIG4COM', 'contact@big4com.com', 'BD. PRINCE MY ABDELLAH, B 15 N 85 MARRAKECH', '+212 668 40 58 01', 'https://big4com.com/', 16, 3),
(106, 'UPSIDE SYSTEMS', 'contact@upsysmaroc.com', 'Borj Menara 2 porte A N° 23 Av.Abdelkarim Elkhattabi, Marrakech', '+212 524 42 36 00', 'https://www.upsysmaroc.com/', 50, 3),
(107, 'PULSE DIGITAL MAROC', 'maroc@pulse.digital', 'Quartier industriel, Sidi Ghanem Numéro 292, bureaux 1 et 2، 40000', '+212 524 33 52 63', 'https://blog.pulse.digital/', 50, 3),
(108, 'SHARP INFO', NULL, NULL, NULL, NULL, 50, 3),
(109, 'CORPORATE SOFTWARE', NULL, NULL, NULL, NULL, 62, 1),
(110, 'NAWARIT', NULL, 'Sidi Maârouf , CASABLANCA - Maroc', NULL, NULL, 62, 1),
(111, 'YAZAKI TANGER', NULL, 'Lot 101 Zone Franche D Exportation Aeroport De Tanger, Route De Rabat, Tanger 90000, Maroc', NULL, NULL, 10, 7),
(112, 'ACCOLAD Centre', NULL, NULL, NULL, NULL, 29, 1),
(113, 'SPEEDWAY', NULL, '96 Boulevard d\'Anfa, Casablanca 20000, Maroc', NULL, NULL, 63, 1),
(114, 'INFORMATION& TECHNOLOGIES', NULL, NULL, NULL, NULL, 50, 1),
(115, 'SOPRA BANKING SOFTWARE', NULL, 'Adresse: 17, Rue OraïbiJilali (ex Rue De Foucauld) - Casablanca', NULL, 'https://www.soprabanking.com', 64, 1),
(116, 'INFOSAT', 'CONTACT@INFOSAT.MA', '18 rue 486 les amicales Agadir', '+212 528 23 24 62', 'http://www.infosat.ma/', 50, 11),
(117, 'OMNISHORE', NULL, NULL, NULL, NULL, 50, 1),
(118, 'ALTERIPSO Maroc', NULL, '39 Av, Lalla El Yacout 5 Eme Etage, Appt, D - Casablanca', NULL, NULL, 65, 1),
(119, 'MAGNUS CLOUD CORP', NULL, NULL, NULL, NULL, 66, 1),
(120, 'ESAV', NULL, NULL, NULL, NULL, 35, 3),
(121, 'VALUE IT', NULL, 'Value itsarlbur 215 imm Paquet 71 place Nicholas Paquet  - CASABLANCA', NULL, NULL, 50, 1),
(122, 'CAPGEMINI', NULL, 'Shore 8A Casa nearshore Boulevard Al Qods1100sidi maarouf Casablanca', NULL, NULL, 50, 1),
(123, 'MANAGEM', 'recrutement@managemgroup.com', 'Twin Center, Tour A, Angle Boulevards Zerktouni and Al Massira Al Khadra  BP 5199, Casablanca', '+212 522 95 65 65', 'https://www.managemgroup.com', 12, 1),
(124, 'RENAULT TANGER', NULL, 'Renault Tanger exploitation zone franche de  Melloussa1 commune de Melloussa province FahsAnjra Tanger', NULL, NULL, 10, 7),
(125, 'OCP YOUSSOUFIA', NULL, 'bd Moulay Youssef, 46300,Youssoufia', NULL, NULL, 2, 17),
(126, 'Comptoir general du dades', NULL, 'Imm 83-84 lot Chemes 2 - Ouarzazate', NULL, NULL, 9, 18),
(127, 'P PRIME', NULL, 'Centre de vie, Lot.C 73 A.I. Tassila - DCHIERAINEZEGUANE', NULL, NULL, 67, 11),
(128, 'SAFILAIT (JIBAL)', NULL, NULL, NULL, NULL, 4, 1),
(129, 'SILOGIK', 'contacts@silogik.net', 'ANGLE AVENUE YACOUB EL MANSOUR ET ALLAL EL FASSI IMMEUBLE OUIRIDA 53 ETAGE N°5 BUREAU 46', '+212 657 91 50 47', 'https://www.silogik.net/silogik/', 50, 3),
(130, 'CEGELEC MAROC', NULL, '62, bd Oqba ibno Nafia - Casablanca', NULL, NULL, 68, 1),
(131, 'LESIEUR CRISTAL', NULL, '15 Km ancienne route de rabat ain harrouda CASABLANCA', NULL, NULL, 69, 1),
(132, 'ONDA MARRAKECH', NULL, 'Aéroport Marrakech - Ménara BP 13201', NULL, NULL, 45, 3),
(133, 'HPS', NULL, 'Nearshorepark shore1 1100 boulvard al qods sidi Maarouf 20270 Casablanca', NULL, 'http://www.hps-worldwide.com/', 64, 1),
(134, 'STRUCTIS MAROC', NULL, 'Casanearshore Park 1100 Boulevard AL Qods Shore 13, Quartier Sidi Maarouf, Casablanca', NULL, 'http://www.structis.ma', 50, 1),
(135, 'RNDFY', 'hello@rndfy.com', 'Imm N°66, N°5, Hay El Fath, CYM, Rabat-MAROC', '+212 661 84 98 82', 'https://www.rndfy.com', 50, 2),
(136, 'REBITECH', NULL, '77 rue abou al al azahar Quartier des hopitaux Casablanca', NULL, NULL, 68, 1),
(137, 'Tensift', NULL, NULL, NULL, NULL, 70, 3),
(138, 'TOURELEC', NULL, '21 BD Lahcenoulder - Casablanca', NULL, NULL, 61, 1),
(139, 'HÖTELIER', NULL, NULL, NULL, NULL, 64, 1),
(140, 'VISEO', 'contact@viseo.com', 'Casanearshore 1100 bd Al Qods, Shore 23 plateau 701, Casablanca 20200, Maroc', '+212 529 00 73 30', 'https://www.viseo.com/fr/emea/casablanca', 50, 1),
(141, 'COSUMAR Groupe', NULL, '8 rue Mouatamid Ibnou Abbad, BP 3098 Roches Noires Casablanca – Maroc', '+212 522 67 83 00', 'https://www.cosumar.co.ma', 11, 1),
(142, 'SICOFAM', NULL, '3 Rue ibn Toufail - Marrakech', NULL, NULL, 9, 3),
(143, 'GFI', NULL, '1100, bdQods ,Parc Casa Near-Shore 2.B - 3°ét. Qu: Sidi Maarouf - CASABLANCA', NULL, 'http://www.gfimaroc.com', 18, 1),
(144, 'BDSI BNP Paribas', NULL, NULL, NULL, NULL, 71, 1),
(145, 'TECH MY TEAM', NULL, NULL, NULL, NULL, 18, 3),
(146, 'Qualitiz Technologies', NULL, NULL, NULL, NULL, 50, 3),
(147, 'Maltem Africa', NULL, NULL, NULL, NULL, 50, 1),
(148, 'Carta solutions processing services', NULL, '4, rue Molière 2ème étage Racine Casablanca', NULL, NULL, 64, 1),
(149, 'S2M', 'contact@s2m.ma', 'Casablanca Nearshore, Casa Nearshore Park – 2C – 306 Casablanca Nearshore، 1100 Bd El Qods, Casablanca 20270', '+212 522 87 83 00', 'https://s2mworldwide.com', 64, 1),
(150, 'Global S2I', NULL, NULL, NULL, NULL, 64, 1),
(151, 'BC SKILLS', NULL, 'Avenue Mohamed Belkhadir, Safi', NULL, NULL, 50, 4),
(152, 'Monark IT', NULL, NULL, NULL, NULL, 73, 3),
(153, 'BEWEB', NULL, NULL, NULL, NULL, 72, 1),
(154, 'Marrakech Software Solution', NULL, 'Appt 22, 4ème étage Résidence Warda B Rue Ibn Hanbal Hivernage MARRAKECH', NULL, NULL, 50, 3),
(155, 'Solpack', NULL, NULL, NULL, NULL, 75, 3),
(156, 'AGC AAIM', NULL, NULL, NULL, NULL, 10, 10),
(157, 'Automelec – Casablanca', NULL, NULL, NULL, NULL, 36, 1),
(158, 'BONTAZ – El Jadida', NULL, NULL, NULL, NULL, 10, 9),
(159, 'CA2E MAROC – Casablanca', NULL, NULL, NULL, NULL, 36, 1),
(160, 'Faurecia – Kenitra', 'Faycal.Ghandri@gmail.com', NULL, NULL, 'https://www.faurecia.com', 10, 10),
(161, 'Green Energy Park', NULL, NULL, NULL, NULL, 7, 5),
(162, 'SEBN-MA – Tanger', NULL, NULL, NULL, NULL, 10, 7),
(163, 'TE Connectivity Morocco – Tanger', NULL, NULL, NULL, NULL, 18, 7),
(164, 'Telepac Technology – Casablanca', NULL, NULL, NULL, NULL, 76, 1),
(165, 'Tuyauto Gestamp Morocco – Kenitra', NULL, NULL, NULL, NULL, 10, 10),
(166, 'Agilorg', 'contact@agilorg.com', '13 Boulevard Moulay Rachid Marrakech', '+212 524 43 58 91', 'http://www.agilorg.com/', 50, 3),
(167, '212 Communication MARRAKECH', 'contact@212communication.com', 'Avenue Abdelkarim Khattabi Centre d’affaires Borj Menara II, Bloc B,RDC Bureau N°5 - Marrakech', '+212 661 21 22 56', 'https://www.212communication.com/', 50, 3),
(168, '4US Maroc', 'contact@4us.ma', '13 av Doukkalah, Aviation Rabat Morocco', '+212 537 63 06 35', 'http://4us.ma', 74, 2),
(169, 'AB SEC', NULL, ' rue Ibn Hanbal Res Warda B 4ème étage aptt 23 Marrakech - Maroc', NULL, NULL, 72, 3),
(170, 'ACCOLADE', 'contact@accolade-center.com', 'Boulevard Yacoub El Mansour 156, 20100, Casablanca', '+212 522 77 70 70', 'http://www.accolade-center.com/', 29, 1),
(171, 'AM SOFT', NULL, 'ETAGE 2 BUREAU N 10 IMMEUBLE NAKHIL RUE OUM RABIA 40000 Marrakech', '+212 524 45 88 45', NULL, 72, 3),
(172, 'BMCI', NULL, '26, Place des nations unies CASABLANCA', NULL, NULL, 77, 1),
(173, 'BYTE LANCE', NULL, 'AV de France imm 24 Appt 3 (au dessus de la BMCI) Agdal I-Rabat', NULL, NULL, 72, 2),
(174, 'CASANET', 'contact@casanet.ma', 'Av. Annakhil, Hay Riad, Imm. Riad 1 RDC – Rabat', '+212 537 54 82 00', 'https://www.casanet.ma/', 50, 2),
(175, 'CEGEDIM ACTIV', NULL, 'Rabat Shore, Technoplis, Bâtiment B1, 2ème Étage, Local N° 202 - Sale', '+212 661 37 02 76', NULL, 76, 2),
(176, 'CGI Maroc', NULL, '1100, bd El Qods (Sidi Maârouf), Casanearshore, bât. shore 5, 2°ét. , Sidi Maarouf', NULL, 'https://www.cgi.com/maroc', 50, 2),
(177, 'CHU MARRAKECH', 'communication@chumarrakech.ma', 'CHU Mohammed BP 2360 Principal, Avenue Ibn Sina, Marrakesh, Maroc', '+212 524 30 07 00', 'https://www.chumarrakech.ma/', 78, 3),
(178, 'CIH BANQUE', NULL, '187 avenu hassan 2 - Casablanca', NULL, NULL, 77, 1),
(179, 'CLEVING', NULL, 'APP N 9 2E ETG MENZEH ATLAS 2 DAR ARRI IMMEUBLE 36 40030 Marrakech', NULL, NULL, 50, 3),
(180, 'Dial Technologies', 'contact@dialy.net', '74, Bd Abdelmoumen 6th floor, Casablanca, Morocco', '+212 522 23 54 00', 'http://www.dialtechnologies.net/', 50, 1),
(181, 'ENIAC INFORMATION TECHNOLOGY', NULL, 'Rue IBN Aicha Res;alHadika Al koubra Imm F Appt 8 Gueliz', NULL, NULL, 50, 3),
(182, 'EURAFRIC INFORMATION', NULL, 'Green City , campus Bmce Bank bat. B2 BOUSKOURA', '+212 520 47 51 00', 'https://www.eurafric-information.com/', 50, 1),
(183, 'Exelys', NULL, '375 technopark Casablanca', '+212 522 43 02 00', NULL, 72, 1),
(184, 'Global Edge Advisors', NULL, '84 Avenue Abdelkarim El Khattabi - 40 000 - Marrakech-Médina (AR)', NULL, 'http://www.globaledgeadvisors.com/', 72, 3),
(185, 'GUELIZ INSTITUT', 'contact@guelizinstitut.com', '62,70 Avenue Mohammed V Gueliz Marrakech Maroc .', '+212 525 07 21 41', 'http://guelizinstitut.com/', 76, 48),
(186, 'IBM Application & Technologies', 'najlaa.hachami@hotmail.fr', 'Casablanca Nearshore Park 1100bd al qods sidi Maarouf shore1 5ème étage Casablanca', NULL, 'https://www.ibm.com/ma-fr/employment', 50, 1),
(187, 'Immeuble d\'Or ', NULL, '34 rue arabie saoudite angel 6 Q ibnsina -Temara', '+212 537 61 08 08', NULL, 1, 26),
(188, 'Integral Consulting ', 'integral@integralc.com', '193, Avenue Hassan II 2ème étage Casablanca', '+212 522 20 24 07', 'http://www.integralc.com', 72, 1),
(189, 'INTEL COM', NULL, '219 BD Zerktouni Angle BD Roudani 7ème ETAGE 20100 Casablanca', '+212 522 25 26 16', 'https://www.intelcom.co.ma/', 50, 1),
(190, 'INWI - Sidi Ghanem', NULL, 'N° 371 Quartier industriel Sidi Ghanem Marrakech ( à côté de DHL)', '+212 700 06 69 77', NULL, 41, 3),
(191, 'IT NEW APPROACH', NULL, 'Bureau 339 Technopark CASABLANCA', NULL, NULL, 50, 1),
(192, 'LAOUN WAY', NULL, '9,rue Imam Malik, 1 résidence Al Majid Marrakech - Maroc', NULL, NULL, 75, 3),
(193, 'LYDEC SA', NULL, '48. rue Mohamed Diouri CASABLANCA, 20000 Morocco', '+212 522 54 90 44', 'https://client.lydec.ma', 7, 1),
(194, 'MANGUS CLOUD CORP', NULL, '187, bd Abdelmoumen, 6°ét. appt. 26.Quartier: Palmiers - Casablanca', NULL, NULL, 50, 1),
(195, 'MATEKAP', 'contact@matekap.com', '18 Rue ouedtensift appt 14 agdal – RABAT', NULL, 'http://www.matekap.com', 50, 2),
(196, 'MEDITEL', NULL, 'Lotissement la coline II, Imm les Quatre temps, Sidi Maarouf, 20270 CASABLANCA', NULL, NULL, 76, 1),
(197, 'MINDEVS', NULL, 'BdMoulay Rchid, Imm 54 Bureau N°7 MARRAKECH', NULL, 'http://www.mindevs.top', 50, 3),
(198, 'Agence MIT', NULL, '4ème étage - Appartement 16 - Immeuble 16 Avenue  Mouzdalifa, Marrakesh 40090', NULL, 'http://mit.co.ma', 50, 3),
(199, 'NEOXIA MAROC', NULL, '119 boulevard Emile Zola 20 300 CASABLANCA', NULL, 'https://neoxia.com/', 50, 1),
(200, 'Nokia Solutions and Networks', NULL, '4,rue zalagh agdal RABAT', '+212 537 68 70 00', NULL, 62, 2),
(201, 'NOVOPHARMA', 'info@novopharma.ma', 'Zone Industrielle I2, Tit Mellil, Casablanca', '+212 522 51 10 00', 'http://novopharma.ma/', 17, 1),
(202, 'OCP CASABLANCA', NULL, 'Rue Al Abtal, Hay Erraha, 20200, Casablanca, Maroc - BP Maârif 5196', NULL, NULL, 2, 1),
(203, 'OMNIDATA', NULL, '74, Bd Abdelmoumen 20340 CASABLANCA', NULL, NULL, 50, 1),
(204, 'QUANTIK', 'info@quantik.ma', 'Quantik Maroc, 7 rue Messaoudi, Appt 8-9, 20100, Casablanca, Maroc.', '+212 522 64 74 00', 'https://www.quantik.ma/', 76, 1),
(205, 'RADEES SAFI', 'radees@radeesafi.ma', 'Avenue Moulay Driss 1er. BP : 218. SAFI. MAROC', '+212 524 61 91 20', 'https://www.radees.ma/', 79, 4),
(206, 'Rosari IT services', NULL, 'Gueliz, la renaissance JACKAR Etage 3, Appt 18', '+212 524 42 06 42', 'https://web.facebook.com/rosariitservices', 50, 3),
(207, 'SG2I Consulting', 'Contact@Sg2i.Com', '15, Rue Duhaume Casablanca 20250 Maroc', '+212 522 78 67 93', 'https://sg2i.com/', 72, 1),
(208, 'SGGI Maroc', 'sggi.maroc@gmail.com', 'Centre d\'affaires BURJ MALAK, Entrée B, 2ème étage (Près du pont Q.I. Sidi Ghanem) Marrakech', '+212 524 35 57 57', 'https://www.sggi-maroc.com/', 50, 3),
(209, 'SIGMATEL', 'sigmatel@sigmatel.ma', 'Sidi Maarouf, Casablanca, Maroc', '+212 522 97 47 49', 'http://www.sigmatel.ma/', 80, 1),
(210, 'Tacharok Technologies', NULL, '39, Rue Omar Slaoui , Plateau Taoufik', NULL, NULL, 50, 1),
(211, 'Valuepass Consulting', NULL, 'Casablanca Technopark, BP.16570', NULL, NULL, 72, 1),
(213, 'WEB INTERACTIF', 'contact@wis.ma', '16 bis Arset el Kortbi. Avenue Prince Moulay Abdellah, Marrakech 40000, Maroc', '+212 661 46 45 11', 'https://wis.ma', 50, 3),
(214, 'Web Pick', NULL, 'Emerging Business Factory, 61, Quartier Industriel Sidi Ghanem WEBPICK, Marrakesh 40000', '+212 661 80 18 61', 'https://webpick.info', 50, 3),
(215, 'Reseau Entreprendre Maroc', NULL, NULL, NULL, 'https://www.reseau-entreprendre.org/maroc/', 74, 1),
(216, 'Green Light-It Maroc', NULL, 'Lot sidi Abbad residence Al hamra B Imm 312, 1er étage  App N°7', NULL, NULL, 50, 3),
(217, 'MIC Consulting', 'micconsulting2010@gmail.com', 'Avenue My Abdellah, Résidence Safaa Bloc B Appt 12 Marrakech', '+212 524 29 00 66', NULL, 72, 3),
(218, 'THESEE MAROC', NULL, 'Casa nearshore (Sidi Maarouf), Plateau 501 - Shore 14 - 20270', '+212 522 27 23 32', NULL, 27, 1),
(219, 'EVINSYS', NULL, 'App N22 4ème étage Résidence Worda B rue Inb Hanbal Hivernage', NULL, NULL, 50, 3),
(220, 'Bombardier Aerospace', NULL, 'B.P.197 Zone Franche Midparc, Nouasseur، Nouaceur 27000', NULL, NULL, 5, 1),
(221, 'Melton Maghreb', NULL, 'Route des Ouled Ziane, Casablanca 20100', NULL, NULL, 81, 1),
(222, 'AGENCE DU BASSIN HYDRAULIQUE DU TENSIFT', 'info@eau-tensift.net', 'Avenu jnane el harti (BP 2388) Guéliz Marrakech', '+212 524 44 89 64', 'http://eau-tensift.net', 70, 3),
(223, 'ONEE Branche E°4', NULL, 'Quartier Administratif B.P 235 ozte - Tinghir', NULL, 'http://www.one.org.ma', 79, 8),
(224, 'ASERTI', 'aserti@aserti.ma', 'Succursale 2, Boulevard Jabrane Khalil Jabrane -El Jadida', '+212 523 35 24 32', 'https://www.aserti.ma', 4, 9),
(225, 'ASERTI Casablanca', 'aserti@aserti.ma', '29 route Med VI Centre commercial ERAC, 1er étage Im. F2, Appt N° 4 Casablanca', '+212 523 35 24 32', 'https://www.aserti.ma', 4, 1),
(226, 'ASTEMA', NULL, 'Angle Bd ALKHARABA et rue le Caire QI Aine Sebaa, sidi bernoussi', '+212 662 06 51 90', NULL, 76, 1),
(227, 'CAPELEM Maroc', 'capelem@groupe-simonin.ma', '24, zone ind. Sud-Ouest - 20800 Mohammedia', '+212 523 32 57 75', NULL, 25, 12),
(228, 'Ciment du Maroc - Agadir', 'ri-contact@cimar.co.ma', 'Usine Ait Baha Rte Principale 1007- Km10 commune  ImiMqorn - AGADIR', '+212 522 85 94 50', 'https://www.cimentsdumaroc.com', 9, 11),
(229, 'Ciment du Maroc - Marrakech', NULL, 'Ciments du Maroc Km 46, Route N°10 Mzoudia Marrakech Maroc', '+212 524 33 93 00', 'https://www.cimentsdumaroc.com', 9, 3),
(230, 'CMG - Marrakech', NULL, 'Hajar à 35 km au sud de Marrakech, Draa Sfar à 13  km au nord de Marrakech', NULL, NULL, 12, 3),
(231, 'Compagnie de Tifnout Tiranimine (CTT) - Guemassa', 'k.fahmi@managemgroup.com', 'Site de Hajar Bp.469 Marrakech', '+212 522 95 65 85', NULL, 37, 3),
(232, 'GPC Carton', 'support@etalent.ma', 'Route De Tanger Quartier Al Assam, Kénitra 14000,  Maroc', '+212 523 32 77 50', 'http://www.gpccarton.com/', 82, 10),
(233, 'LAFARGE - MEKNES', NULL, '11, z.i. Sidi Bouzekri Usine lafargecadem - MEKNES', NULL, NULL, 9, 22),
(234, 'Marsa maroc agadir', NULL, 'Port d’Agadir BP 36', NULL, NULL, 15, 11),
(235, 'Menara Holding - El kalaa des Sraghna', 'contact@menara-holding.ma', 'Route de beni mellal El kalaa des Sraghna', '+212 24 49 99 00', 'https://menara-holding.ma', 1, 19),
(236, 'OCP - JORF LASFER', NULL, '5 rue c cite des cadres immeuble ocp EL JADIDA', NULL, NULL, 2, 9),
(237, 'PLADER', 'plader@menara.ma', '229, z.i. Sidi Ghanem, rte de Safi - 40000 Marrakech', '+212 524 33 56 17', NULL, 25, 3),
(238, 'Siemens Maroc', 'siemensma@siemens.com', 'Anfa Place Centre d’affaires “EST”, RDC Boulevard  de la cornice 20200 Casablanca', NULL, 'https://new.siemens.com/ma/fr.html', 57, 1),
(239, 'Société Couscous Tensift (Socoten)', NULL, 'Quartier Industriel Azli , Lot. 18, Marrakech 40000,  Maroc', NULL, NULL, 4, 3),
(240, 'Société Nouvelle de Volailles (S.N.V.)', 'snv@snv.ma', 'Avenue Hassan II, Zone industrielle, Témara, Maroc', '+212 537 74 00 45', 'https://www.snv.ma', 83, 26),
(241, 'ART ETUDE ET CONSEIL', NULL, 'App 5, Imm N197,CM DAOUDIATE MARRAKECH', NULL, NULL, 73, 3),
(242, 'SOCOTEC MAROC', NULL, '20, bd Prince Moulay Abdallah, résid. Safae bloc A  MARRAKECH', '+212 522 40 13 60', 'https://www.socotec.fr', 18, 3),
(243, 'Unit Consulting', NULL, '50 rue attirmidi - Casablanca', NULL, NULL, 73, 1),
(244, 'HNP', NULL, 'Succursale 4ème étage, N°20 Res Harmonie 3, Angle Bd Abdelkrim Khatabi Marrakech, 40000', '+212 524 44 80 46', 'http://hnpmaroc.com', 72, 3),
(245, 'BISCUITERIE MODERNE ZINE', 'contact@zinecapitalinvest.ma', 'Route Principal 3011 zone industrielle Sahel – Had  soualem', '+212 522 96 77 77', 'https://www.zinecapitalinvest.ma/BMZ.php', 84, 166),
(246, 'EG ELECTRIC', NULL, 'Sokoma 1N° 835 – Marrakech', NULL, NULL, 50, 3),
(247, 'Maroc Service Industriel  - Tanger', NULL, '2 AV Prince Héritière N9, 90000 - Tanger', NULL, NULL, 54, 7),
(248, 'Safarelec', 'safarelec@menara.ma', 'Lote 324 zone industrielle 344 – Eljadida', '+212 523 35 10 60', NULL, 40, 9),
(249, 'AUTELEC', 'autelec@autelec.ma', 'N°12 Res Fatima Zahra Rue Ibnou Adara Al Mourrakouchi, Casablanca', '+212 522 70 82 88', 'https://autelec.ma', 54, 1),
(250, 'NOMAC MAROC', NULL, 'Avenue Mehdi Ben Barka - N°65 Souissi Rabat 10100', '+212537287878', 'https://www.nomac.com', 85, 2),
(251, 'SMART-ELECTROTEC  -  AIT MELLOUL', 'contact@smart-electrotec.com', 'Quartier tkaddoum rue oujda kolea BP N1259 AIT MELLOUL', '+212 661 38 28 60', 'https://smart-electrotec.com', 60, 30),
(252, 'Devoteam', 'yousra.guedira@devoteam.com', 'DEVOTEAM AFRICA 7, Rue Al Mariniyinne – Hassan 10020 Rabat Morocco', '+212 537 70 59 64', 'https://africa.devoteam.com', 50, 2),
(253, 'Maroc Telecom', 'a.essemlali@iam.ma', 'Avenue Annakhil Hay Riad - Rabat - Maroc', '+212 537 71 90 00', 'https://www.iam.ma', 80, 2),
(254, 'Sofac Crédit', 'abdelmahi@sofac.co.ma', '57 Boulevard Abdelmoumen Casablanca, 20000 Morocco', '+212 522 42 96 96', 'https://www.sofac.ma', 77, 1),
(255, 'Centre Monétique Interbancaire (CMI)', 'rbenabdallah@cmi.co.ma', NULL, NULL, 'https://www.cmi.co.ma', 77, 165),
(256, 'BULL MAROC', 'casus_ali@msn.com', '20270 Casanearshore Park, 1100, Bd Al Qods Shore 10, Plateau 001, Quartier Sidi Maarouf - Casablanca', '+212 529 01 42 00', 'www.bull.ma', 62, 1),
(257, 'L’Oreal', 'RH.maroc@loreal.com', '17 Aman Street, Ex Caporal Beaux, Casablanca 20100', '+212 522 44 02 40', 'https://www.loreal.com/en/morocco', 17, 1),
(258, 'Wafa Assurance', 'h.besri@wafaassurance.co.ma', NULL, NULL, 'https://www.wafaassurance.ma', 88, 165),
(259, 'Cercle RH', 'basma.ghafir@yahoo.fr', 'Residence Riad Al Otors, D N°8, Bloc C, Avenue Annakhil, Hay Riad, Rabat', '+212 537 56 56 46', 'https://cerclerh.ma', 73, 2),
(260, 'GROUPE WALILI D’INVESTISSEMENT', 'alaoui.ismaili.g1@gmail.com', '227, Bd d’Anfa, Casablanca', '+212 522 39 71 39', 'https://groupewalili.com', 73, 1),
(261, 'OXIA', 'chehin.gharsallah@oxia-group.com', NULL, NULL, 'https://www.wevioo.com', 18, 1),
(262, 'CDG RABAT', 'Chennaoui@cdg.ma', 'Tour Mamounia, Place Moulay Hassan Rabat - Maroc', '+212 537 66 52 52', 'https://www.cdgcapital.ma', 77, 2),
(263, 'KPMG Maroc', 'm.barbe@kpmg.co.ma', NULL, NULL, NULL, 77, 165),
(264, 'Wafasalaf', 'hraouia_amal@yahoo.fr', '72, angle rue Ram Allah et bd Abdelmoumen, Casablanca', '+212 522 54 51 51', 'https://www.wafasalaf.ma', 77, 1),
(265, 'SCRH GROUP', 'siham1_ma@yahoo.fr', NULL, NULL, 'https://scrhgroup.com/espace-candidats', 26, 165),
(266, 'AXA ASSURANCE MAROC', 'lamya.hadji@axa.ma', '120 122 AVENUE HASSAN II CASABLANCA, 20070 Morocco', '+212 522 88 92 92', 'https://www.axa.ma', 88, 1),
(267, 'Deloitte Maroc', 'sbuzinkay@deloitte.co.ma', '288, Bd Zerktouni, Casablanca, Grand Casablanca, MA', NULL, 'http://www.deloitte.co.ma', 73, 1),
(268, 'Colas Rail Maroc', 'mustaphahamdani@hotmail.fr', 'Route de Meknès – Ain Houala – 11110 Salé – Maroc.', NULL, 'https://colasrail.com/notre-presence-dans-le-monde/maroc', 13, 21),
(269, 'BMCI - Groupe BNP Paribas', 'bahiya.hanoun@gmail.com', NULL, NULL, 'https://www.bmci.ma/nous-connaitre/home-recrutement', 77, 1),
(270, 'AXA Services Maroc', 'halima_hantoum@ymail.com', NULL, NULL, 'https://www.axaservices.ma', 50, 165),
(271, 'SNOP Maroc', 'rharis@snop.fr', NULL, NULL, 'https://jobs.snop.eu/go/Morocco/8544602/', 55, 7),
(272, 'ONP', 'fz.hermani@gmail.com', '15, rue Lieutenant Mahroud B.P. 16243 - 20300 Casablanca', '+212 522 24 05 51', 'http://www.onp.ma', 89, 1),
(273, 'Attijariwafa bank', 'hilal.mariem@gmail.com', '2, Boulevard Moulay Youssef, 20 000 Casablanca, MAROC', '+212 522 29 88 88', 'https://www.attijariwafabank.com', 77, 1),
(274, 'APM TERMINALS TANGIER', 'assid.houbane@gmail.com', 'one Franche, Ksar Al Majaz Oued R’Mel, Commune Anjra, Route de Fenideq, BP 216, Ksar Sghir', '+212 531 06 11 00', 'https://www.apmterminals.com/en/tangier', 18, 7),
(275, 'G4S Maroc', 'saraibenmoussa@gmail.com', '24, LOTISSEMENT LA COLLINE SIDI MAAROUF – CASABLANCA MAROC', '+212 522 49 74 00', 'https://www.g4s.com/fr-ma', 38, 1),
(276, 'Groupe Dislog', 'widad.idrissi@hotmail.com', '3 Boulevard Al Massira Al Khadra, Casablanca 20100', '+212 520 00 20 60', 'https://www.spe-capital.com', 91, 1),
(277, 'WAFA GESTION', 'ad.idrissi@gmail.com', '416, Mustapha El Maani Street - Casablanca', '+212 522 26 63 79', 'https://www.wafagestion.com', 77, 1),
(278, 'URBANOS Maroc', 'issam.ihsane@gmail.com', 'Boulevard Moulay Ismail et Route de Rabat ( r.p. 1), Km 7, Ain Sebâa , 20250', '+212 520 42 04 80', ' http://www.urbanos.com', 91, 1),
(279, 'SIMON', 'ijaouharaten@gmail.com', 'Zone industrielle Gzenaya Lot 152/160 Route de Rabat Tanger', '+212 539 39 34 34', 'https://www.simonelectric.com/ma', 6, 7),
(280, 'Groupe Koutoubia', 'live_your-life@hotmail.fr', NULL, NULL, 'https://www.koutoubia.net', 4, 3),
(281, 'Uniforce informatique', 'k.jababdi@uniforce.ma', '320 Bd Zerktouni 20000 Casablanca, Morocco', '+212 522 29 72 40', 'http://www.uniforce.ma', 50, 1);

-- --------------------------------------------------------

--
-- Table structure for table `industry`
--

CREATE TABLE `industry` (
  `industry_id` int(11) NOT NULL,
  `industry_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `industry`
--

INSERT INTO `industry` (`industry_id`, `industry_name`) VALUES
(1, 'Production BTP'),
(2, 'Phosphates, Chemicals'),
(3, 'Technology'),
(4, 'Food Industry'),
(5, 'Aviation Industry'),
(6, 'Electrical Manufacturing'),
(7, 'Electric Power Generation'),
(8, 'Brick Industry'),
(9, 'Construction Industry'),
(10, 'Automotive industry'),
(11, 'Sugar Production'),
(12, 'Mining (metallurgy)'),
(13, 'Train Maintenance'),
(14, 'Candy and Chocolate'),
(15, 'Port management'),
(16, 'Web consulting'),
(17, 'Pharmaceutical'),
(18, 'Import Export'),
(19, 'Farm management software'),
(21, 'Infrastructure, metallurgy'),
(22, 'Sale of IT equipment'),
(23, 'Contractors and supervisors'),
(24, 'Furnishings'),
(25, 'Plastics Industry'),
(26, 'Recruiting Firms'),
(27, 'Communication Agency'),
(28, 'Clothing and Decoration'),
(29, 'Call center'),
(31, 'Paint Manufacturing'),
(32, 'Industry and Infrastructure'),
(33, 'Operation and Construction'),
(34, 'Mining Industry'),
(35, 'Education'),
(36, 'Automation Engineering'),
(37, 'Hydrometallurgy'),
(38, 'Environmental services'),
(39, 'Refining Industry'),
(40, 'Electrical Energy Services'),
(41, 'Telecom Manufacturing'),
(42, 'Managment Information'),
(43, 'Telecom Ingineering'),
(44, 'Global System'),
(45, 'Airport and airline'),
(46, 'Grain Industry'),
(47, 'Phosphate Fertilizer'),
(48, 'Operations management'),
(49, 'Facilities Management'),
(50, 'IT services'),
(51, 'Audit and Management'),
(52, 'Technical studies'),
(53, 'Desing-Communication'),
(54, 'Service Provider'),
(55, 'Metallurgical Industry'),
(56, 'Installation'),
(57, 'Automation and Security'),
(58, 'Automatisme Process'),
(59, 'Soft drink distibution'),
(60, 'Electrical hydraulic'),
(61, 'Electrical Installation'),
(62, 'IT Materials and Services'),
(63, 'Motocycle accessories'),
(64, 'Digital Financial industry'),
(65, 'Communication Technology'),
(66, 'Cloud Consulting'),
(67, 'Electrical Equipment'),
(68, 'Building Technology'),
(69, 'Vegetable oils'),
(70, 'Management of water'),
(71, 'Banking Information System'),
(72, 'IT consulting'),
(73, 'Business consulting'),
(74, 'Business Management'),
(75, 'Marketing Services'),
(76, 'Aerospace Defense Security'),
(77, 'Bank'),
(78, 'Hospital Center'),
(79, 'Water and Electricity supply'),
(80, 'Telecommunication'),
(81, 'Packaging Supply Store'),
(82, 'Paper & Forest Products'),
(83, 'Animal feed'),
(84, 'Biscuit Factory'),
(85, 'Operation & Maintenance'),
(86, 'Consumer Finance'),
(87, 'Beauty Products'),
(88, 'Inssurance'),
(89, 'Fishing'),
(90, 'Security'),
(91, 'Logistics & Supply');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `login_id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`login_id`, `user`, `password`) VALUES
(1, 'admin', 'j91dlx29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`company_id`),
  ADD KEY `industry_id` (`industry_id`),
  ADD KEY `city_id` (`city_id`);

--
-- Indexes for table `industry`
--
ALTER TABLE `industry`
  ADD PRIMARY KEY (`industry_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`login_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `company_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=282;

--
-- AUTO_INCREMENT for table `industry`
--
ALTER TABLE `industry`
  MODIFY `industry_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `login_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `companies`
--
ALTER TABLE `companies`
  ADD CONSTRAINT `companies_ibfk_1` FOREIGN KEY (`industry_id`) REFERENCES `industry` (`industry_id`),
  ADD CONSTRAINT `companies_ibfk_2` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
