-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 09, 2022 at 09:31 AM
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
(165, 'ONLINE');

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
(1, 'BLEZA PREFA', NULL, NULL, NULL, NULL, 1, 1),
(2, 'GROUPE OCP', NULL, NULL, NULL, NULL, 2, 4),
(3, 'LLC', NULL, NULL, NULL, NULL, 3, 1),
(4, 'AGRO FOOD', NULL, NULL, NULL, NULL, 4, 3),
(5, 'Aircelle Maroc', NULL, NULL, NULL, NULL, 5, 1),
(6, 'Centrelec casa', NULL, NULL, NULL, NULL, 6, 1),
(7, 'SIMACOM sarl', NULL, NULL, NULL, NULL, 4, 1),
(8, 'OCP - Benguerir', NULL, NULL, NULL, NULL, 2, 5),
(9, 'SOLABRIQ', NULL, NULL, NULL, NULL, 8, 6),
(10, 'Branche E°4', NULL, NULL, NULL, NULL, 7, 8),
(11, 'SI3 - MARRAKECH', NULL, NULL, NULL, NULL, 9, 3),
(26, 'SOMACA- RENAULT', NULL, NULL, NULL, NULL, 10, 1),
(27, 'SUTA- Groupe COSUMAR', NULL, NULL, NULL, NULL, 11, 29),
(28, 'SEWS CABIND MAROC- SAS ', NULL, NULL, NULL, NULL, 10, 1),
(29, 'ONEE', NULL, NULL, NULL, NULL, 7, 3),
(30, 'Société Métallurgique d\'Imiter (SMI)', NULL, NULL, NULL, NULL, 12, 1),
(31, 'Automotrices Casablanca (PAR)', NULL, NULL, NULL, NULL, 13, 1),
(32, 'ASERTI', NULL, NULL, NULL, NULL, 4, 9),
(33, 'CIMENT DE L\'ATLAS', NULL, NULL, NULL, NULL, 9, 1),
(34, 'ATLAS COUSCOUS', NULL, NULL, NULL, NULL, 4, 3),
(35, 'Fujikura', NULL, NULL, NULL, NULL, 10, 10),
(36, 'Centrale laitière', NULL, NULL, NULL, NULL, 4, 3),
(37, 'PASTOR S.A ', NULL, NULL, NULL, NULL, 14, 1),
(38, 'Les GRANDS Moulins Du Tensift', NULL, NULL, NULL, NULL, 4, 3),
(39, 'Marsa maroc casablanca', NULL, NULL, NULL, NULL, 15, 1),
(40, 'ABB S.A', NULL, NULL, NULL, NULL, 6, 1),
(41, 'VOID SARL', NULL, NULL, NULL, NULL, 16, 11),
(42, 'BAYER', NULL, '3 Boulevard Mohamed Zerktouni 20100, Casablanca, Morocco', '+212 622 43 83 91', 'http://www.bayer.com/', 17, 1),
(43, 'WEBJET CONSEIL', NULL, NULL, NULL, NULL, 18, 2),
(44, 'AGRIDATA CONSULTING', 'contact@agridata-consulting.com', 'Agridata Consulting, Imm.Azizia, 2ème ét, Av .Hassan', '+212 663 34 70 93', 'http://agridata-consulting.com/', 19, 11),
(45, 'SWISS TECH', NULL, NULL, NULL, NULL, 50, 3),
(46, 'DELTA HOLDING', 'dg@deltaholding.ma', 'Skhirat Complex Angle with Hassan II Avenue and Beach road Skhirat - Maroc', '+212 537 62 17 00', 'https://www.deltaholding.ma', 21, 62),
(47, 'MEDASYS SA', 'medasys@medasys.ma', 'Lot N° 34, Zone industrielle Attasnia, Temara, Maroc', '+212 530 10 50 50', 'https://www.medasys.ma/', 22, 2),
(48, 'ATOS MAROC', NULL, NULL, NULL, NULL, 23, 1),
(49, 'MEDFLEX DECORATION', NULL, NULL, NULL, NULL, 24, 3),
(50, 'PLASTIMA SA', NULL, NULL, NULL, NULL, 25, 1),
(51, 'REKRUTE.COM', 'contact@ReKrute.com', '2 rue Al Hatimi 5ème étage, angle bd Brahim Roudani - Al Batha 20390 Casablanca - Maroc', '+212 522 50 51 53', 'https://www.rekrute.com/', 26, 165),
(52, 'ANTIPODES', NULL, '7 residence la tour orientale; rue blida 5eme étage, N°10 quartier des hôpitaux 20100 casablanca', NULL, NULL, 27, 1),
(53, 'LC WAIKIKI RETAIL MA', NULL, NULL, NULL, NULL, 28, 1),
(54, 'DATA EMBASSY', NULL, '438, q.Isidighanem 40110 Marrakech', '+212 524 33 88 00', NULL, 29, 3),
(55, 'APTIV TANGER (DELPHI)', NULL, NULL, NULL, NULL, 10, 7),
(56, 'FAME TECHNOLOGY SARL', NULL, NULL, NULL, NULL, 50, 1),
(57, 'COLORADO', NULL, NULL, NULL, NULL, 31, 1),
(58, 'SPHINX ELECTRIC', NULL, NULL, NULL, NULL, 32, 1),
(59, 'ONCF RABAT', NULL, NULL, NULL, NULL, 33, 2),
(60, 'MANAGEM', NULL, NULL, NULL, NULL, 34, 13),
(61, 'RICHBOND', NULL, NULL, NULL, NULL, 24, 1),
(62, 'SEMLALIYA', NULL, NULL, NULL, NULL, 35, 3),
(63, 'LAFARGE BOUSKOURA', NULL, NULL, NULL, NULL, 9, 1),
(64, 'AKZONOBEL', NULL, NULL, NULL, NULL, 31, 1),
(65, 'FESTO E.U.R.L', NULL, NULL, NULL, NULL, 36, 1),
(66, 'CIMAT', NULL, NULL, NULL, NULL, 9, 1),
(67, 'Guemassa', NULL, NULL, NULL, NULL, 37, 14),
(68, 'Waterleau Maroc', 'maroc@waterleau.com', 'Boulevard de la corniche, Immeuble Marina Centre , N°20, Casablanca, Maroc', '+212 522 27 15 38', 'https://www.waterleau.com/', 38, 1),
(69, 'Samir', NULL, NULL, NULL, 'http://www.samir.ma/', 39, 12),
(70, 'Gazeuses du sud Marrakech', NULL, NULL, NULL, NULL, 40, 3),
(71, 'OCP Maroc Chimie - Safi ', NULL, NULL, NULL, NULL, 2, 4),
(72, 'WANA CORPORAT', NULL, NULL, NULL, NULL, 41, 1),
(73, 'IB Maroc', NULL, NULL, NULL, NULL, 42, 1),
(74, 'ZTE', NULL, NULL, NULL, NULL, 41, 2),
(75, 'INTELCOM SA CASABLANCA', NULL, NULL, NULL, NULL, 43, 1),
(76, 'CBI', 'cbi@cbi.ma', 'CBI Building, 29/30, Lot.Attaoufik, Sidi Maârouf, 20270 Casablanca - Maroc', '+212 522 43 71 71', 'https://www.cbi.ma/', 44, 1),
(77, 'ORANGE (MEDITEL)', NULL, NULL, NULL, NULL, 41, 1),
(78, 'BRIMAK S.A', NULL, NULL, NULL, NULL, 9, 4),
(79, 'O.N.D.A Agadir', NULL, NULL, NULL, NULL, 45, 11),
(80, 'COPAG', NULL, NULL, NULL, NULL, 4, 15),
(81, 'MAYMOUNA Marrakech', NULL, NULL, NULL, NULL, 46, 3),
(82, 'Jorf Fertilizers Company', NULL, NULL, NULL, NULL, 47, 9),
(83, 'FRAMACO SA', NULL, NULL, NULL, NULL, 4, 3),
(84, 'CORTEXIUM', NULL, NULL, NULL, NULL, 48, 3),
(85, 'SILVERFOOD', NULL, NULL, NULL, NULL, 4, 1),
(86, 'FID-UP GROUP', NULL, 'Immeuble galaxie 44000 ESSAOUIRA', NULL, NULL, 49, 16),
(87, 'SQLI MAROC', NULL, NULL, NULL, NULL, 3, 2),
(88, 'AVEMPACE CONSULTING', NULL, '466 technopark sidi maarouf Casablanca', NULL, 'http://www.avempace.tech', 50, 1),
(89, 'MAKAUDIT', NULL, NULL, NULL, NULL, 51, 9),
(90, 'NORSYS AFRIQUE', NULL, NULL, NULL, NULL, 50, 3),
(91, '3D CONCEPT sarl', NULL, NULL, NULL, NULL, 52, 3),
(92, 'URBAN FUSION AGENCY', NULL, NULL, NULL, NULL, 53, 3),
(93, 'MENARA PREFA Marrakech', NULL, NULL, NULL, NULL, 9, 3),
(94, 'NUXIA sarl', NULL, NULL, NULL, NULL, 54, 3),
(95, 'OCP - JORF LASFER', NULL, NULL, NULL, NULL, 47, 9),
(96, 'COOPER PHARMA', NULL, NULL, NULL, NULL, 17, 1),
(97, 'MAGHREB STEEL SA', NULL, NULL, NULL, NULL, 55, 1),
(98, 'THYSSENKRUPP MAROC', NULL, NULL, NULL, NULL, 56, 1),
(99, 'IRIS DOMOTOQUE ELJADIDA', NULL, NULL, NULL, NULL, 57, 9),
(100, 'MAPICER GROUPE SNEF', NULL, NULL, NULL, NULL, 58, 1),
(101, 'S.B.G.S AGADIR', NULL, NULL, NULL, NULL, 59, 11),
(102, 'TAQA MOROCCO', NULL, NULL, NULL, NULL, 7, 1),
(103, 'SMART-ELECTROTEC', NULL, NULL, NULL, NULL, 60, 11),
(104, 'SCHIELE MAROC', NULL, NULL, NULL, NULL, 61, 1),
(105, 'BIG4COM', 'contact@big4com.com', 'BD. PRINCE MY ABDELLAH, B 15 N 85 MARRAKECH', '+212 668 40 58 01', 'https://big4com.com/', 16, 3),
(106, 'UPSIDE SYSTEMS', NULL, NULL, NULL, NULL, 50, 3),
(107, 'PULSE DIGITAL MAROC', NULL, NULL, NULL, NULL, 50, 3),
(108, 'SHARP INFO SARL', NULL, NULL, NULL, NULL, 50, 3),
(109, 'CORPORATE SOFTWARE', NULL, NULL, NULL, NULL, 62, 1),
(110, 'NAWARIT', NULL, NULL, NULL, NULL, 62, 1),
(111, 'YAZAKI TANGER', NULL, NULL, NULL, NULL, 10, 7),
(112, 'ACCOLAD Centre', NULL, NULL, NULL, NULL, 29, 1),
(113, 'SPEEDWAY', NULL, NULL, NULL, NULL, 63, 1),
(114, 'INFORMATION& TECHNOLOGIES', NULL, NULL, NULL, NULL, 50, 1),
(115, 'SOFWARE & SOPRA STERIA', NULL, NULL, NULL, NULL, 64, 1),
(116, 'INFOSAT', 'CONTACT@INFOSAT.MA', '18 rue 486 les amicales Agadir', '+212 528 23 24 62', 'http://www.infosat.ma/', 50, 11),
(117, 'OMNISHORE', NULL, NULL, NULL, NULL, 50, 1),
(118, 'ALTERIPSO Maroc', NULL, '39 Av, Lalla El Yacout 5 Eme Etage, Appt, D - Casablanca', NULL, NULL, 65, 1),
(119, 'MAGNUS CLOUD CORP', NULL, NULL, NULL, NULL, 66, 1),
(120, 'ESAV', NULL, NULL, NULL, NULL, 35, 3),
(121, 'VALUE IT', NULL, NULL, NULL, NULL, 50, 1),
(122, 'CAPGEMINI', NULL, 'Shore 8A Casa nearshore Boulevard Al Qods1100sidi maarouf Casablanca', NULL, NULL, 50, 1),
(123, 'CMG - Managem Siège', NULL, NULL, NULL, NULL, 12, 1),
(124, 'RENAULT TANGER', NULL, NULL, NULL, NULL, 10, 7),
(125, 'OCP YOUSSOUFIA', NULL, NULL, NULL, NULL, 2, 17),
(126, 'Comptoir general du dades', NULL, NULL, NULL, NULL, 9, 18),
(127, 'P PRIME sarl', NULL, NULL, NULL, NULL, 67, 11),
(128, 'SAFILAIT (JIBAL)', NULL, NULL, NULL, NULL, 4, 1),
(129, 'SILOGIK', NULL, NULL, NULL, NULL, 50, 3),
(130, 'CEGELEC MAROC', NULL, '62, bd Oqba ibno Nafia - Casablanca', NULL, NULL, 68, 1),
(131, 'LESIEUR CRISTAL', NULL, NULL, NULL, NULL, 69, 1),
(132, 'MARRAKECH (ONDA) ', NULL, NULL, NULL, NULL, 45, 3),
(133, 'HPS', NULL, 'Nearshorepark shore1 1100 boulvard al qods sidi Maarouf 20270 Casablanca', NULL, 'http://www.hps-worldwide.com/', 64, 1),
(134, 'STRUCTIS MAROC', NULL, NULL, NULL, NULL, 50, 1),
(135, 'RNDFY', NULL, NULL, NULL, NULL, 50, 2),
(136, 'REBITECH sarl', NULL, NULL, NULL, NULL, 68, 1),
(137, 'Tensift', NULL, NULL, NULL, NULL, 70, 3),
(138, 'TOURELEC sarl', NULL, NULL, NULL, NULL, 61, 1),
(139, 'HÖTELIER', NULL, NULL, NULL, NULL, 64, 1),
(140, 'VISEO', NULL, NULL, NULL, NULL, 50, 1),
(141, 'COSUMAR Groupe', NULL, NULL, NULL, NULL, 11, 1),
(142, 'SICOFAM', NULL, NULL, NULL, NULL, 9, 3),
(143, 'GFI', NULL, '1100, bdQods ,Parc Casa Near-Shore 2.B - 3°ét. Qu: Sidi Maarouf - CASABLANCA', NULL, 'http://www.gfimaroc.com', 18, 1),
(144, 'BDSI BNP Paribas', NULL, NULL, NULL, NULL, 71, 1),
(145, 'TECH MY TEAM', NULL, NULL, NULL, NULL, 18, 3),
(146, 'Qualitiz Technologies', NULL, NULL, NULL, NULL, 50, 3),
(147, 'Maltem Africa', NULL, NULL, NULL, NULL, 50, 1),
(148, 'Carta solutions processing services', NULL, '4, rue Molière 2ème étage Racine Casablanca', NULL, NULL, 64, 1),
(149, 'S2M', NULL, NULL, NULL, NULL, 64, 1),
(150, 'Global S2I', NULL, NULL, NULL, NULL, 64, 1),
(151, 'BC SKILLS', NULL, NULL, NULL, NULL, 50, 4),
(152, 'Monark IT', NULL, NULL, NULL, NULL, 73, 3),
(153, 'BEWEB', NULL, NULL, NULL, NULL, 72, 1),
(154, 'Marrakech Software Solution', NULL, 'Appt 22, 4ème étage Résidence Warda B Rue Ibn Hanbal Hivernage MARRAKECH', NULL, NULL, 50, 3),
(155, 'Solpack', NULL, NULL, NULL, NULL, 75, 3),
(156, 'AGC AAIM', NULL, NULL, NULL, NULL, 10, 10),
(157, 'Automelec – Casablanca', NULL, NULL, NULL, NULL, 36, 1),
(158, 'BONTAZ – El Jadida', NULL, NULL, NULL, NULL, 10, 9),
(159, 'CA2E MAROC – Casablanca', NULL, NULL, NULL, NULL, 36, 1),
(160, 'Faurecia – Kenitra', NULL, NULL, NULL, NULL, 10, 10),
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
(186, 'IBM Application & Technologies', NULL, 'Casablanca Nearshore Park 1100bd al qods sidi Maarouf shore1 5ème étage Casablanca', NULL, NULL, 50, 1),
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
(197, 'MINDEVS', NULL, 'BdMoulay Rchid, Imm 54 Bureau N°7 MARRAKECH', NULL, 'http://www.mindevs.top', 50, 3);

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
(78, 'Hospital Center');

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
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `company_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=198;

--
-- AUTO_INCREMENT for table `industry`
--
ALTER TABLE `industry`
  MODIFY `industry_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

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
