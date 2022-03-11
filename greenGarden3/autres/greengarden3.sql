-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 10, 2022 at 03:47 PM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `greengarden`
--
CREATE DATABASE IF NOT EXISTS `greengarden` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `greengarden`;

-- --------------------------------------------------------

--
-- Table structure for table `bdl`
--

DROP TABLE IF EXISTS `bdl`;
CREATE TABLE IF NOT EXISTS `bdl` (
  `bdl_code_client` int(11) NOT NULL,
  `bdl_date` datetime DEFAULT NULL,
  `bdl_numero` int(11) DEFAULT NULL,
  `bdl_num_cde` int(11) DEFAULT NULL,
  `bdl_reference__produit` int(11) DEFAULT NULL,
  `bdl_designation_produit` varchar(20) DEFAULT NULL,
  `bdl_quantite_livree` int(11) DEFAULT NULL,
  PRIMARY KEY (`bdl_code_client`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `commande`
--

DROP TABLE IF EXISTS `commande`;
CREATE TABLE IF NOT EXISTS `commande` (
  `commande_code_client` int(11) NOT NULL,
  `commande_date` datetime DEFAULT NULL,
  `commande_num_cde` int(11) DEFAULT NULL,
  `commande_num_ligne` int(11) DEFAULT NULL,
  `commande_ligne_libelle_produit` varchar(50) DEFAULT NULL,
  `commande_ligne_quantite` int(11) DEFAULT NULL,
  `commande_ligne_ht_brute` int(11) DEFAULT NULL,
  `commande_ligne_remise` int(11) DEFAULT NULL,
  `commande_ligne_ht_nette` int(11) DEFAULT NULL,
  `commande_commande_totale_nette` int(11) DEFAULT NULL,
  `commande_tva` int(11) DEFAULT NULL,
  `commande_ttc` int(11) DEFAULT NULL,
  `client_code_client` int(11) NOT NULL,
  PRIMARY KEY (`commande_code_client`),
  KEY `client_code_client` (`client_code_client`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `commercial`
--

DROP TABLE IF EXISTS `commercial`;
CREATE TABLE IF NOT EXISTS `commercial` (
  `commercial_code_client` varchar(50) NOT NULL,
  `commercial_code` int(11) DEFAULT NULL,
  `commercial_nom` varchar(20) DEFAULT NULL,
  `commercial_prenom` varchar(20) DEFAULT NULL,
  `commercial_region` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`commercial_code_client`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `commercial`
--

INSERT INTO `commercial` (`commercial_code_client`, `commercial_code`, `commercial_nom`, `commercial_prenom`, `commercial_region`) VALUES
('1', 1, 'Berrecloth', 'Swen', 'sud_est'),
('2', 2, 'Cecchi', 'Mac', 'sud_ouest'),
('3', 3, 'Sloegrave', 'Leonidas', 'idf'),
('4', 4, 'Ivanonko', 'Emmet', 'nord_ouest'),
('5', 5, 'Jendrys', 'Nathanael', 'nord_est');

-- --------------------------------------------------------

--
-- Table structure for table `contient`
--

DROP TABLE IF EXISTS `contient`;
CREATE TABLE IF NOT EXISTS `contient` (
  `produit_reference_gg` int(11) NOT NULL,
  `commande_code_client` int(11) NOT NULL,
  PRIMARY KEY (`produit_reference_gg`,`commande_code_client`),
  KEY `commande_code_client` (`commande_code_client`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer_fiche`
--

DROP TABLE IF EXISTS `customer_fiche`;
CREATE TABLE IF NOT EXISTS `customer_fiche` (
  `client_code_client` int(11) NOT NULL,
  `client_pro_part` varchar(20) DEFAULT NULL,
  `client_societe_nom` varchar(50) DEFAULT NULL,
  `client_societe_adresse` varchar(50) DEFAULT NULL,
  `client_societe_cp` int(11) DEFAULT NULL,
  `client_societe_ville` varchar(50) DEFAULT NULL,
  `client_contact_nom` varchar(20) DEFAULT NULL,
  `client_contact_prenom` varchar(20) DEFAULT NULL,
  `client_coefficient` int(11) DEFAULT NULL,
  `client_cond_paie` int(11) DEFAULT NULL,
  `client_encours` decimal(5,2) DEFAULT NULL,
  `client_observations` varchar(500) DEFAULT NULL,
  `client_liv_adresse` varchar(30) DEFAULT NULL,
  `client_liv_cp` int(11) DEFAULT NULL,
  `client_liv_ville` varchar(20) DEFAULT NULL,
  `client_liv_contact_nom` varchar(20) DEFAULT NULL,
  `client_liv_contact_tel` int(11) DEFAULT NULL,
  `client_liv_contact_mail` varchar(50) DEFAULT NULL,
  `client_fact_adresse` varchar(50) DEFAULT NULL,
  `client_fact_cp` int(11) DEFAULT NULL,
  `client_fact_ville` varchar(20) DEFAULT NULL,
  `client_fact_contact_nom` varchar(20) DEFAULT NULL,
  `client_fact_contact_tel` int(11) DEFAULT NULL,
  `client_fact_contact_mail` varchar(50) DEFAULT NULL,
  `commercial_code_client` varchar(50) NOT NULL,
  PRIMARY KEY (`client_code_client`),
  KEY `commercial_code_client` (`commercial_code_client`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_fiche`
--

INSERT INTO `customer_fiche` (`client_code_client`, `client_pro_part`, `client_societe_nom`, `client_societe_adresse`, `client_societe_cp`, `client_societe_ville`, `client_contact_nom`, `client_contact_prenom`, `client_coefficient`, `client_cond_paie`, `client_encours`, `client_observations`, `client_liv_adresse`, `client_liv_cp`, `client_liv_ville`, `client_liv_contact_nom`, `client_liv_contact_tel`, `client_liv_contact_mail`, `client_fact_adresse`, `client_fact_cp`, `client_fact_ville`, `client_fact_contact_nom`, `client_fact_contact_tel`, `client_fact_contact_mail`, `commercial_code_client`) VALUES
(1, '1', 'Jetwire', 'Clarendon', 1, 'Robatal', 'Francillo', 'Carmencita', 19, 52, '3.79', 'Assimilated', 'Transport', 4, 'Piotrkow Kujawski', 'Lumpkin', 7, 'ckupper0@theguardian.com', 'Rowland', 4, 'Kuala Lumpur', 'Kupper', 2, 'ckupper0@odnoklassniki.ru', '5'),
(2, '1', 'Twitterbeat', 'Bay', 2, 'Puget-sur-Argens', 'Sotheby', 'Faye', 6, 33, '0.22', 'Balanced', 'Farmco', 5, 'Castleblayney', 'Agg', 8, 'fstoffers1@forbes.com', 'Namekagon', 5, 'Plavsk', 'Stoffers', 3, 'fstoffers1@discuz.net', '5'),
(3, '1', 'Zazio', 'Rockefeller', 1, 'Barra do Bugres', 'Braywood', 'Aluin', 43, 6, '2.53', 'Enterprise-wide', 'Novick', 5, 'Santa Catalina', 'Neles', 5, 'atrelevan2@ca.gov', 'Westport', 2, 'Zolotkovo', 'Trelevan', 8, 'atrelevan2@bloomberg.com', '5'),
(4, '1', 'InnoZ', 'Porter', 5, 'glgvb Roshcha', 'Morratt', 'Emiline', 11, 18, '0.34', 'contingency', 'Morrow', 4, 'Mwinilunga', 'Durno', 8, 'eaishford3@auda.org.au', 'Rockefeller', 2, 'Ubat', 'Aishford', 7, 'eaishford3@twitpic.com', '5'),
(5, '1', 'Rhycero', 'Caliangt', 0, 'Zhutian', 'Rizzolo', 'Robers', 36, 1, '1.48', 'foreground', 'Monterey', 2, 'Lyon', 'Pagram', 8, 'rlaflin4@prweb.com', 'Forest Dale', 3, 'Danxia', 'Laflin', 3, 'rlaflin4@nps.gov', '4'),
(6, '1', 'Devpoint', 'Prairie Rose', 2, 'Lanzhong', 'Crosskill', 'Gigi', 50, 25, '3.15', 'Down-sized', 'Linden', 1, 'Orneta', 'Kollach', 4, 'gleipelt5@fda.gov', 'Prentice', 4, 'Bauru', 'Leipelt', 5, 'gleipelt5@fotki.com', '4'),
(7, '0', 'Fivechat', 'Hollow Ridge', 1, 'Luhansk', 'Giral', 'Hilda', 17, 40, '1.36', 'Business-focused', 'Elmside', 4, 'Luxi', 'Shasnan', 6, 'hcossans6@themeforest.net', 'Sauthoff', 2, 'Tangxi', 'Cossans', 8, 'hcossans6@t-online.de', '4'),
(8, '0', 'Skiptube', 'Rutledge', 0, 'Oslo', 'McKendo', 'Clarisse', 13, 5, '3.52', 'Seamless', 'Doe Crossing', 4, 'Plottier', 'Frondt', 2, 'clinck7@wisc.edu', 'Waywood', 5, 'Nesterovskaya', 'Linck', 5, 'clinck7@delicious.com', '4'),
(9, '0', 'Izio', 'Bellgrove', 5, 'Indaiatuba', 'Galea', 'Lura', 18, 19, '4.26', 'asynchronous', 'Hanover', 1, 'Dedza', 'Arkin', 1, 'llandsman8@parallels.com', 'Nova', 1, 'Valena', 'Landsman', 8, 'llandsman8@discovery.com', '3'),
(10, '1', 'Dazzlesphere', 'Hallows', 1, 'Goshogawara', 'Burchell', 'Brewer', 10, 60, '1.29', 'motivating', 'Main', 2, 'Qalqnnlyah', 'Petriello', 0, 'bdrohun9@pen.io', 'Westport', 0, 'Ongi', 'Drohun', 8, 'bdrohun9@addthis.com', '3'),
(11, '1', 'Riffwire', 'Fremont', 3, 'Athabasca', 'Saill', 'Karylin', 58, 16, '4.33', 'explicit', 'Loomis', 3, 'Bolotnoye', 'Jacqueminot', 7, 'krutera@irs.gov', 'Dakota', 1, 'Olavarra', 'Ruter', 5, 'krutera@freewebs.com', '3'),
(12, '1', 'Voomm', 'Eliot', 1, 'Saint Paul', 'Wicks', 'Job', 13, 59, '4.70', 'Self-enabling', 'Loeprich', 2, 'Pirassununga', 'Moxson', 9, 'jbaynomb@bigcartel.com', 'Longview', 3, 'San Juan de Planes', 'Baynom', 0, 'jbaynomb@mit.edu', '3'),
(13, '1', 'Trilia', 'Mifflin', 4, 'Houyu', 'Ballefant', 'Beitris', 41, 52, '1.99', 'analyzer', 'Hauk', 5, ' blgblbgl', 'Chorley', 9, 'bbananec@lycos.com', 'Butterfield', 1, 'Azua', 'Banane', 8, 'bbananec@com.com', '2'),
(14, '0', 'Jaloo', 'Westerfield', 1, 'Bunga Mas', 'D\'Errico', 'Pepi', 11, 50, '0.09', 'responsive', 'Corry', 3, 'Resende', 'Cator', 4, 'pbiced@princeton.edu', 'Talisman', 2, 'Citampian', 'Bice', 3, 'pbiced@abc.net.au', '2'),
(15, '1', 'Zoomdog', 'Sullivan', 3, 'Las Tablas', 'Hudel', 'Farly', 47, 41, '2.16', 'Quality-focused', 'Loftsgordon', 4, 'Solnechnoye', 'Torbet', 9, 'fcaudraye@google.pl', 'Green Ridge', 1, 'Gorzyczki', 'Caudray', 0, 'fcaudraye@free.fr', '2'),
(16, '1', 'Muxo', 'Susan', 1, 'dhh', 'Edwinson', 'Kendre', 16, 23, '3.08', '24 hour', 'Crescent Oaks', 2, 'lhjhkhkn', 'Monck', 5, 'kpeschkef@gizmodo.com', 'Hayes', 1, 'Kristianstad', 'Peschke', 7, 'kpeschkef@php.net', '2'),
(17, '1', 'Yodoo', 'Susan', 3, 'Nyinqug', 'Hassell', 'Liliane', 17, 47, '0.66', 'Horizontal', 'Rusk', 5, 'Jiuhua', 'Pedrocco', 5, 'lstranierig@amazon.de', 'Transport', 1, 'Fort Worth', 'Stranieri', 10, 'lstranierig@salon.com', '1'),
(18, '0', 'Quaxo', 'Grim', 3, 'Antony', 'Cuerdall', 'Augusta', 32, 4, '1.17', 'Enhanced', 'Schurz', 4, 'Kampong Thom', 'Dorbin', 2, 'aebbettsh@comsenz.com', 'Homewood', 4, 'Thjnbrj  Bnh', 'Ebbetts', 7, 'aebbettsh@rambler.ru', '1'),
(19, '0', 'Meetz', 'Twin Pines', 0, 'Birinci tnjt', 'Ewbach', 'Adrien', 40, 30, '0.56', 'User-friendly', 'Cherokee', 2, 'Yuqian', 'Orpyne', 4, 'apittwoodi@usda.gov', 'Washington', 2, 'Al kjhnrhj', 'Pittwood', 7, 'apittwoodi@omniture.com', '1'),
(20, '1', 'Tagopia', 'Maryland', 2, 'Cajacay', 'Simkin', 'Melvin', 5, 10, '1.38', 'service-desk', 'Eagle Crest', 3, 'hnliugigb', 'Duerden', 9, 'mleethemj@cbc.ca', 'Londonderry', 2, 'Shangdu', 'Leethem', 4, 'mleethemj@liveinternet.ru', '1');

-- --------------------------------------------------------

--
-- Table structure for table `expedition`
--

DROP TABLE IF EXISTS `expedition`;
CREATE TABLE IF NOT EXISTS `expedition` (
  `bdl_code_client` int(11) NOT NULL,
  `fact_code_client` int(11) NOT NULL,
  PRIMARY KEY (`bdl_code_client`,`fact_code_client`),
  KEY `fact_code_client` (`fact_code_client`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `facturation`
--

DROP TABLE IF EXISTS `facturation`;
CREATE TABLE IF NOT EXISTS `facturation` (
  `fact_code_client` int(11) NOT NULL,
  `fact_date_edition` datetime DEFAULT NULL,
  `fact_num_cde` int(11) DEFAULT NULL,
  `fact_numero` int(11) DEFAULT NULL,
  `fact_reference` int(11) DEFAULT NULL,
  `fact_quantité` int(11) DEFAULT NULL,
  `fact_total_ht` int(11) DEFAULT NULL,
  `fact_total_tva` int(11) DEFAULT NULL,
  `fact_total_ttc` int(11) DEFAULT NULL,
  `fact_date_paie_theorique` date DEFAULT NULL,
  `fact_date_paie_reel` date DEFAULT NULL,
  PRIMARY KEY (`fact_code_client`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fourni`
--

DROP TABLE IF EXISTS `fourni`;
CREATE TABLE IF NOT EXISTS `fourni` (
  `produit_reference_gg` int(11) NOT NULL,
  `fournisseur_num` int(11) NOT NULL,
  PRIMARY KEY (`produit_reference_gg`,`fournisseur_num`),
  KEY `fournisseur_num` (`fournisseur_num`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fournisseur`
--

DROP TABLE IF EXISTS `fournisseur`;
CREATE TABLE IF NOT EXISTS `fournisseur` (
  `fournisseur_num` int(11) NOT NULL,
  `fournisseur_nom` varchar(20) DEFAULT NULL,
  `fournisseur_contact_nom` varchar(50) DEFAULT NULL,
  `fournisseur_contact_tel` int(11) DEFAULT NULL,
  `fournisseur_contact_mail` varchar(50) DEFAULT NULL,
  `fournisseur_adresse` varchar(50) DEFAULT NULL,
  `fournisseur_cp` int(11) DEFAULT NULL,
  `fournisseur_ville` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`fournisseur_num`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fournisseur`
--

INSERT INTO `fournisseur` (`fournisseur_num`, `fournisseur_nom`, `fournisseur_contact_nom`, `fournisseur_contact_tel`, `fournisseur_contact_mail`, `fournisseur_adresse`, `fournisseur_cp`, `fournisseur_ville`) VALUES
(1234567890, '1erfournisseur', 'aaaa', 606060606, 'aaaa@1erfournisseur.fr', '6 chemin de l\'afpa', 17300, 'rochefort'),
(1234567891, '2ndfournisseur', 'zzzz', 707070707, 'zzzz@2ndfournisseur.fr', 'pareille que l\'autre', 17300, 'rochefort'),
(1234567892, '3emefournisseur', 'eeee', 808080808, 'eeee@3emefournisseur.fr', 'la aussi', 17300, 'rochefort'),
(1234567893, '4emefournisseur', 'rrrr', 909090909, 'rrrr@4emefournisseur.fr', 'encore identique', 17300, 'rochefort'),
(1234567894, '5emefournisseur', 'tttt', 1010101010, 'tttt@4emefournisseur.fr', 'he he he', 17300, 'rochefort'),
(1234567895, '6emefournisseur', 'yyyy', 1111111111, 'yyyy@6emefournisseur.fr', 'hi hi hi', 17300, 'rochefort');

-- --------------------------------------------------------

--
-- Table structure for table `mytable`
--

DROP TABLE IF EXISTS `mytable`;
CREATE TABLE IF NOT EXISTS `mytable` (
  `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT,
  `commercial_code` mediumint(9) DEFAULT NULL,
  `commercial_code_client` varchar(10) DEFAULT NULL,
  `commercial_nom` varchar(255) DEFAULT NULL,
  `commercial_prenom` varchar(255) DEFAULT NULL,
  `commercial_region` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mytable`
--

INSERT INTO `mytable` (`id`, `commercial_code`, `commercial_code_client`, `commercial_nom`, `commercial_prenom`, `commercial_region`) VALUES
(1, 4, '157612', 'Michael Byers', 'Aphrodite Jacobs', 'Melilla'),
(2, 8, '75786-8566', 'Petra Golden', 'Francesca Mendoza', 'Gyeonggi'),
(3, 0, '18172', 'Mari Francis', 'Emily Robertson', 'Cajamarca'),
(4, 9, '666565', 'Sylvester Stanton', 'Brandon Meadows', 'Vaupés'),
(5, 2, '264183', 'Kareem Parsons', 'Kaye Lowe', 'West-Vlaanderen'),
(6, 9, '882718', 'Kane Bradshaw', 'Bo House', 'Hà Nam'),
(7, 7, '8805', 'Fulton Buck', 'Emery Orr', 'C?n Th?'),
(8, 3, '32149', 'Willow Mcdowell', 'Sandra Monroe', 'Centre'),
(9, 2, '23347', 'Rhonda Crosby', 'Yoshio Rush', 'Vinnytsia oblast'),
(10, 5, '837498', 'Eugenia Ray', 'Sade Meyers', 'Southeast Sulawesi'),
(11, 8, '437183', 'Adrian Blevins', 'Molly Byrd', 'Jönköpings län'),
(12, 9, '726336', 'Ori Castaneda', 'Macaulay Scott', 'Dalarnas län'),
(13, 8, '68-525', 'Zephania Dalton', 'Indigo Dillard', 'Guerrero'),
(14, 2, 'MR45 2OH', 'Christian Ortega', 'Dalton Talley', 'Victoria'),
(15, 9, '40313', 'Tallulah Ratliff', 'Guinevere Maynard', 'Mpumalanga'),
(16, 2, '66768', 'Maxwell Richmond', 'Troy Stevens', 'Euskadi'),
(17, 7, '1937', 'Gemma Hancock', 'Malachi Gutierrez', 'Friuli-Venezia Giulia'),
(18, 6, '562134', 'Neil Fernandez', 'Curran Rose', 'Tolima'),
(19, 9, '51713', 'Danielle Conley', 'Alexis Dudley', 'Huád?ng'),
(20, 4, '861664', 'Kennedy Sheppard', 'Urielle Chan', 'Phú Yên'),
(21, 9, '7487-8861', 'Asher Pitts', 'Beatrice Murphy', 'Delaware'),
(22, 2, '746013', 'Uriel Lewis', 'Vincent Ross', 'Ma?opolskie'),
(23, 6, '88592', 'Ian Giles', 'Rae Shaffer', 'Toscana'),
(24, 3, '346698', 'Reuben Buckley', 'Kareem Hayes', 'Castilla y León'),
(25, 5, '5043', 'Harlan Rodriguez', 'Nolan Austin', 'Friuli-Venezia Giulia'),
(26, 2, '2150', 'Wayne Burks', 'Felix Warner', 'Ulster'),
(27, 8, '77964', 'Jocelyn Peters', 'Vincent Foster', 'Quebec'),
(28, 4, '0951', 'Tamara Boyer', 'Gillian Craig', 'Ceará'),
(29, 9, '88948-727', 'Christopher Webster', 'Orla Tyson', 'Overijssel'),
(30, 5, '616401', 'Ralph Reynolds', 'Phillip Chapman', 'Pernambuco'),
(31, 3, '20522', 'Avram Fisher', 'Medge Hutchinson', 'Gilgit Baltistan'),
(32, 2, '350578', 'Kenneth Palmer', 'Yoshi Dennis', 'Gilgit Baltistan'),
(33, 4, '528525', 'Amal Mcguire', 'Iona Gallagher', 'Podlaskie'),
(34, 2, '7456-5017', 'Maris Figueroa', 'Roth Lott', 'Gia Lai'),
(35, 0, '51801', 'Alfonso Kim', 'Irma Navarro', 'Bayern'),
(36, 7, '3716-2714', 'Beverly Keller', 'Tanisha Anthony', 'Cantabria'),
(37, 7, '88282', 'Griffith Hopper', 'Byron Price', 'Metropolitana de Santiago'),
(38, 3, '64765-3063', 'Eugenia Allison', 'Edan Shannon', 'Zh?ngnán'),
(39, 3, '16188', 'Linda Ferguson', 'Branden Lowery', 'Gangwon'),
(40, 6, '48718-7861', 'Drake Harris', 'Anjolie Maddox', 'Munster'),
(41, 5, 'B0L 9X7', 'Nathan Burgess', 'Ciara Herrera', 'Rostov Oblast'),
(42, 10, '87712-8528', 'Jena Martinez', 'Quon Camacho', 'Imo'),
(43, 1, '079566', 'Mufutau Lewis', 'Honorato Morton', 'Gävleborgs län'),
(44, 6, '62-32', 'Trevor Terrell', 'Aurora Cannon', 'Andalucía'),
(45, 6, '3365', 'Sybil Mcmillan', 'Tatyana Patton', 'Leinster'),
(46, 8, '93587-688', 'Igor Vaughn', 'Aphrodite Houston', 'Northern Territory'),
(47, 2, '2531 JF', 'Kameko Swanson', 'Shad Walter', 'North Gyeongsang'),
(48, 6, '346325', 'Xena Salazar', 'Lavinia Boone', 'Northern Territory'),
(49, 3, '5832', 'Owen Kemp', 'Cameron Tucker', 'Upper Austria'),
(50, 6, '4876', 'Catherine Anderson', 'Quinlan Larsen', 'Vestland'),
(51, 8, '856456', 'Katell Murray', 'Yasir Kirby', 'Opolskie'),
(52, 8, '2040-3186', 'Rhona Craft', 'Caesar Fleming', 'Sutherland'),
(53, 0, '34889', 'Ulysses Quinn', 'Savannah Irwin', 'Yaroslavl Oblast'),
(54, 8, '160042', 'Bevis Witt', 'Jada Aguirre', 'Marche'),
(55, 4, '63217', 'Hayfa Roberson', 'Rigel Riggs', 'Niger'),
(56, 6, '7077', 'Nell Schultz', 'Gregory Frost', 'Limpopo'),
(57, 2, 'I7P 5X7', 'Sophia Castro', 'Jennifer Kent', 'Mecklenburg-Vorpommern'),
(58, 10, '7835', 'Lael Monroe', 'Indira Curtis', 'Lào Cai'),
(59, 4, '18384-751', 'April Allison', 'Ruth Woodard', 'Lower Austria'),
(60, 3, '3111', 'Fuller Green', 'Zachary Hammond', 'Kirovohrad oblast'),
(61, 1, '7549', 'Kuame Bonner', 'Arthur Reyes', 'West Sumatra'),
(62, 2, '8354 LC', 'Kadeem Kane', 'Aileen Mueller', 'Atlántico'),
(63, 8, '38635', 'Slade King', 'Tate Coffey', 'Saskatchewan'),
(64, 5, '657866', 'Armand Saunders', 'Isaac Rowland', 'North Jeolla'),
(65, 4, '2515', 'Sheila Giles', 'Leroy Dickson', 'Gilgit Baltistan'),
(66, 3, '44451', 'Shay Bradshaw', 'Leilani Richmond', 'Heredia'),
(67, 2, '6761', 'Adrian Leonard', 'Tanek Richards', 'Extremadura'),
(68, 2, '7606', 'Marsden Valentine', 'Leo Noel', 'Gyeonggi'),
(69, 10, '88304-176', 'Lester Rowland', 'Yen Oneal', 'Ma?opolskie'),
(70, 10, '4931', 'Lacy Lott', 'Constance Harrington', 'South Gyeongsang'),
(71, 2, '8372', 'Cullen Albert', 'Logan Keith', 'Tuyên Quang'),
(72, 4, '5656', 'Austin Malone', 'James Owen', 'Viken'),
(73, 6, '2645', 'Xena Santiago', 'Scarlet Oneil', 'Bicol Region'),
(74, 7, '30945', 'Sean Brooks', 'Amela Craft', 'Piura'),
(75, 3, '598236', 'Mara Monroe', 'Tobias Cummings', 'Kayseri'),
(76, 1, '726865', 'Macaulay Serrano', 'Dillon Rutledge', 'La Rioja'),
(77, 4, '74841', 'Paloma Holcomb', 'Reese Sosa', 'Cartago'),
(78, 6, '22862', 'Gil House', 'Lucas Cannon', 'Jönköpings län'),
(79, 5, '68419', 'Chancellor Gonzalez', 'Alea Silva', 'Heredia'),
(80, 1, '301876', 'Darrel Sykes', 'Sonya David', 'Tyumen Oblast'),
(81, 5, '665302', 'Andrew Wiley', 'Cherokee Prince', 'Bengkulu'),
(82, 8, '11-232', 'Carter Long', 'Jordan Finch', 'Melilla'),
(83, 6, '752119', 'Kerry Wagner', 'Silas Dillon', 'Bangsamoro'),
(84, 8, '2112-4721', 'Reed Hunt', 'Clark Clayton', 'Paraná'),
(85, 0, '0324-6847', 'Randall David', 'Lacey Hill', 'Valle d\'Aosta'),
(86, 9, '401114', 'Hunter Whitehead', 'Buckminster Forbes', 'Borno'),
(87, 3, '686733', 'Brett Meyer', 'Kenyon Valdez', 'Aquitaine'),
(88, 4, '51700', 'Donovan Wade', 'Bryar Lewis', 'Kon Tum'),
(89, 8, '216681', 'Tobias Galloway', 'Amber Mcmillan', 'Puglia'),
(90, 8, '57588', 'Zorita Warren', 'Marvin Navarro', 'Drenthe'),
(91, 2, '2478', 'Forrest Potts', 'Abdul Thornton', 'B?n Tre'),
(92, 1, '2787', 'Bell Tanner', 'Aidan Vang', 'Ulyanovsk Oblast'),
(93, 8, '5263', 'Guinevere Buckley', 'Kieran Kim', 'Rio Grande do Sul'),
(94, 5, '2636', 'Cassady Hudson', 'Warren Shepard', 'Tolima'),
(95, 10, '165669', 'Tyler Frazier', 'Echo Ashley', 'Aragón'),
(96, 0, '2181', 'Denton Stephenson', 'Kaye Snider', 'Nord-Pas-de-Calais'),
(97, 8, '46826', 'Dominic Joyner', 'Shafira Maxwell', 'Pernambuco'),
(98, 8, '488422', 'Cassandra Ballard', 'Asher Zimmerman', 'Zh?ngnán'),
(99, 9, '75E 5Z3', 'Tarik Ayers', 'Fulton Wolfe', 'Piemonte'),
(100, 1, '445684', 'Amena Holmes', 'Wanda Franklin', 'Punjab'),
(101, 15, '9', 'Hedda Whitaker', 'Rachel Mcknight', 'Vlaams-Brabant'),
(102, 20, '4', 'Hamish Suarez', 'Stacy Vang', 'Puglia'),
(103, 26, '1', 'Eugenia Deleon', 'Rhoda Raymond', 'Hamburg'),
(104, 3, '6', 'Ferris Stephens', 'Wesley Payne', 'Rivne oblast'),
(105, 1, '3', 'Lyle Dale', 'Noah Salazar', 'Utrecht');

-- --------------------------------------------------------

--
-- Table structure for table `paiement`
--

DROP TABLE IF EXISTS `paiement`;
CREATE TABLE IF NOT EXISTS `paiement` (
  `client_code_client` int(11) NOT NULL,
  `fact_code_client` int(11) NOT NULL,
  PRIMARY KEY (`client_code_client`,`fact_code_client`),
  KEY `fact_code_client` (`fact_code_client`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `preparation`
--

DROP TABLE IF EXISTS `preparation`;
CREATE TABLE IF NOT EXISTS `preparation` (
  `commande_code_client` int(11) NOT NULL,
  `bdl_code_client` int(11) NOT NULL,
  PRIMARY KEY (`commande_code_client`,`bdl_code_client`),
  KEY `bdl_code_client` (`bdl_code_client`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `produit_fiche`
--

DROP TABLE IF EXISTS `produit_fiche`;
CREATE TABLE IF NOT EXISTS `produit_fiche` (
  `produit_reference_gg` int(11) NOT NULL,
  `produit_nom` varchar(20) DEFAULT NULL,
  `produit_categorie` varchar(200) DEFAULT NULL,
  `produit_sous_categorie` varchar(50) DEFAULT NULL,
  `produit_fournisseur_nom` varchar(20) DEFAULT NULL,
  `produit_fournisseur_ref` varchar(20) DEFAULT NULL,
  `produit_prix_achat` int(11) DEFAULT NULL,
  `produit_quantite_stock` int(11) DEFAULT NULL,
  `produit_libelle_court` varchar(30) DEFAULT NULL,
  `produit_libelle_long` varchar(200) DEFAULT NULL,
  `produit_photo` varchar(500) DEFAULT NULL,
  `produit_publication_site` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`produit_reference_gg`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produit_fiche`
--

INSERT INTO `produit_fiche` (`produit_reference_gg`, `produit_nom`, `produit_categorie`, `produit_sous_categorie`, `produit_fournisseur_nom`, `produit_fournisseur_ref`, `produit_prix_achat`, `produit_quantite_stock`, `produit_libelle_court`, `produit_libelle_long`, `produit_photo`, `produit_publication_site`) VALUES
(1, 'Expedition', 'plantes', 'fougeres', 'fournisseurUN', 'FO001', 57, 77, 'donec', 'curabitur gravida nisi at nibh in hac habitasse', 'http://dummyimage.com/117x100.png/5fa2dd/ffffff', '0'),
(2, 'Grand Voyager', 'plantes', 'fougeres', 'fournisseurUN', 'FO001', 6, 47, 'ultrices', 'parturient montes nascetur ridiculus mus', 'http://dummyimage.com/154x100.png/dddddd/000000', '1'),
(3, 'TT', 'plantes', 'fougeres', 'fournisseurUN', 'FO001', 95, 37, 'sapien', 'cras non velit nec nisi vulputate nonummy maecenas', 'http://dummyimage.com/233x100.png/5fa2dd/ffffff', '0'),
(4, 'Tahoe', 'plantes', 'couvrantes', 'fournisseurUN', 'FO001', 37, 74, 'vel', 'aliquet at feugiat non pretium', 'http://dummyimage.com/247x100.png/cc0000/ffffff', '1'),
(5, '530', 'plantes', 'couvrantes', 'fournisseurUN', 'FO001', 29, 4, 'porta', 'diam in magna bibendum imperdiet nullam orci pede venenatis non', 'http://dummyimage.com/183x100.png/cc0000/ffffff', '0'),
(6, 'GTI', 'plantes', 'couvrantes', 'fournisseurUN', 'FO001', 33, 84, 'nec', 'venenatis turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu', 'http://dummyimage.com/137x100.png/dddddd/000000', '1'),
(7, 'Diamante', 'plantes', 'carnivores', 'fournisseurUN', 'FO001', 41, 56, 'id ligula', 'imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet', 'http://dummyimage.com/174x100.png/dddddd/000000', '1'),
(8, '911', 'plantes', 'carnivores', 'fournisseurUN', 'FO001', 15, 22, 'turpis adipiscing', 'ac neque duis bibendum morbi non quam nec dui luctus', 'http://dummyimage.com/111x100.png/cc0000/ffffff', '1'),
(9, 'S-Class', 'plantes', 'agreement', 'fournisseurUN', 'FO001', 9, 85, 'integer', 'sed vel enim sit amet nunc viverra dapibus nulla suscipit ligula in lacus curabitur at ipsum ac', 'http://dummyimage.com/199x100.png/cc0000/ffffff', '0'),
(10, 'Grand Cherokee', 'plantes', 'agreement', 'fournisseurUN', 'FO001', 71, 20, 'amet erat', 'ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac lobortis vel dapibus', 'http://dummyimage.com/212x100.png/5fa2dd/ffffff', '1'),
(11, 'Express 3500', 'plantes', 'cactus', 'fournisseurDEUX', 'FO002', 50, 60, 'ac', 'at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac', 'http://dummyimage.com/161x100.png/5fa2dd/ffffff', '1'),
(12, 'Panamera', 'plantes', 'cactus', 'fournisseurDEUX', 'FO002', 49, 69, 'donec dapibus', 'vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio', 'http://dummyimage.com/231x100.png/5fa2dd/ffffff', '1'),
(13, 'S-Series', 'plantes', 'fleuries', 'fournisseurDEUX', 'FO002', 13, 89, 'erat', 'at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel', 'http://dummyimage.com/113x100.png/dddddd/000000', '1'),
(14, 'Yukon', 'plantes', 'fleuries', 'fournisseurDEUX', 'FO002', 49, 50, 'sem', 'augue quam sollicitudin vitae consectetuer eget rutrum at lorem integer tincidunt ante vel', 'http://dummyimage.com/195x100.png/cc0000/ffffff', '0'),
(15, 'Edge', 'plantes', 'fleuries', 'fournisseurDEUX', 'FO002', 21, 33, 'imperdiet et', 'dictumst morbi vestibulum velit id pretium', 'http://dummyimage.com/147x100.png/dddddd/000000', '1'),
(16, 'Savana 1500', 'plantes', 'vertes', 'fournisseurDEUX', 'FO002', 7, 57, 'cum', 'nunc viverra dapibus nulla suscipit ligula in lacus', 'http://dummyimage.com/212x100.png/5fa2dd/ffffff', '1'),
(17, 'Pajero', 'plantes', 'vertes', 'fournisseurDEUX', 'FO002', 21, 26, 'vestibulum aliquet', 'sollicitudin vitae consectetuer eget rutrum at', 'http://dummyimage.com/102x100.png/dddddd/000000', '0'),
(18, 'DB9', 'plantes', 'vertes', 'fournisseurDEUX', 'FO002', 48, 70, 'sem', 'integer pede justo lacinia eget tincidunt eget tempus', 'http://dummyimage.com/112x100.png/cc0000/ffffff', '1'),
(19, 'Brat', 'plantes', 'champetres', 'fournisseurDEUX', 'FO002', 80, 41, 'potenti', 'vulputate nonummy maecenas tincidunt lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque', 'http://dummyimage.com/246x100.png/cc0000/ffffff', '0'),
(20, 'Continental GT', 'plantes', 'champetres', 'fournisseurDEUX', 'FO002', 7, 72, 'vestibulum', 'magnis dis parturient montes nascetur ridiculus mus etiam', 'http://dummyimage.com/147x100.png/dddddd/000000', '0'),
(21, 'Intrepid', 'fleurs', 'rose_jaune', 'fournisseurTROIS', 'FO003', 39, 2, 'libero', 'vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam', 'http://dummyimage.com/133x100.png/cc0000/ffffff', '0'),
(22, 'Tredia', 'fleurs', 'rose_jaune', 'fournisseurTROIS', 'FO003', 86, 1, 'scelerisque', 'sed augue aliquam erat volutpat in congue etiam justo etiam pretium', 'http://dummyimage.com/116x100.png/cc0000/ffffff', '0'),
(23, 'CR-V', 'fleurs', 'rose_jaune', 'fournisseurTROIS', 'FO003', 86, 21, 'ipsum', 'lobortis vel dapibus at diam', 'http://dummyimage.com/129x100.png/dddddd/000000', '1'),
(24, 'Ram Van 1500', 'fleurs', 'rose_orangee', 'fournisseurTROIS', 'FO003', 76, 93, 'sit amet', 'vel lectus in quam fringilla rhoncus mauris enim leo rhoncus sed vestibulum sit amet cursus', 'http://dummyimage.com/207x100.png/5fa2dd/ffffff', '1'),
(25, '430', 'fleurs', 'rose_orangee', 'fournisseurTROIS', 'FO003', 24, 85, 'non mi', 'sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla', 'http://dummyimage.com/121x100.png/ff4444/ffffff', '0'),
(26, 'Villager', 'fleurs', 'rose_orangee', 'fournisseurTROIS', 'FO003', 43, 1, 'accumsan', 'semper est quam pharetra magna ac consequat metus sapien ut nunc vestibulum ante ipsum primis in faucibus', 'http://dummyimage.com/121x100.png/5fa2dd/ffffff', '0'),
(27, 'Talon', 'fleurs', 'rose_poudree-rose', 'fournisseurTROIS', 'FO003', 29, 7, 'nulla sed', 'justo aliquam quis turpis eget elit sodales scelerisque mauris sit', 'http://dummyimage.com/158x100.png/dddddd/000000', '0'),
(28, 'MDX', 'fleurs', 'rose_poudree-rose', 'fournisseurTROIS', 'FO003', 67, 59, 'pulvinar sed', 'ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla pede ullamcorper', 'http://dummyimage.com/155x100.png/dddddd/000000', '1'),
(29, 'S80', 'fleurs', 'rose_poudree-rose', 'fournisseurTROIS', 'FO003', 18, 47, 'integer ac', 'proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus metus arcu adipiscing molestie hendrerit', 'http://dummyimage.com/171x100.png/ff4444/ffffff', '1'),
(30, 'ES', 'fleurs', 'rose_profond_rose', 'fournisseurTROIS', 'FO003', 53, 22, 'nulla quisque', 'in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id', 'http://dummyimage.com/229x100.png/5fa2dd/ffffff', '0'),
(31, 'A3', 'fleurs', 'rose_profond_rose', 'fournisseurQUATRE', 'FO004', 93, 37, 'id', 'convallis nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum', 'http://dummyimage.com/183x100.png/ff4444/ffffff', '1'),
(32, 'Vision', 'fleurs', 'rose_orange_metis', 'fournisseurQUATRE', 'FO004', 97, 61, 'non', 'vestibulum proin eu mi nulla ac enim in tempor turpis nec', 'http://dummyimage.com/136x100.png/5fa2dd/ffffff', '0'),
(33, 'Tercel', 'fleurs', 'rose_orange_metis', 'fournisseurQUATRE', 'FO004', 97, 94, 'vestibulum', 'morbi a ipsum integer a nibh in quis justo maecenas', 'http://dummyimage.com/198x100.png/ff4444/ffffff', '0'),
(34, 'Sundance', 'fleurs', 'rose_profond_rose', 'fournisseurQUATRE', 'FO004', 27, 80, 'sapien ut', 'a nibh in quis justo maecenas rhoncus aliquam lacus', 'http://dummyimage.com/231x100.png/dddddd/000000', '1'),
(35, 'Talon', 'fleurs', 'rose_profond_rose', 'fournisseurQUATRE', 'FO004', 87, 23, 'ante vestibulum', 'sapien a libero nam dui proin leo odio porttitor id consequat', 'http://dummyimage.com/242x100.png/5fa2dd/ffffff', '0'),
(36, 'Commander', 'fleurs', 'rose_light_fushia', 'fournisseurQUATRE', 'FO004', 14, 99, 'in faucibus', 'amet nunc viverra dapibus nulla', 'http://dummyimage.com/126x100.png/5fa2dd/ffffff', '0'),
(37, 'Express 3500', 'fleurs', 'rose_light_fushia', 'fournisseurQUATRE', 'FO004', 47, 9, 'id massa', 'suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non mauris morbi non', 'http://dummyimage.com/156x100.png/ff4444/ffffff', '0'),
(38, 'Milan', 'fleurs', 'rose_orange_profond', 'fournisseurQUATRE', 'FO004', 73, 51, 'est', 'eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus', 'http://dummyimage.com/226x100.png/ff4444/ffffff', '0'),
(39, 'LeSabre', 'fleurs', 'rose_orange_profond', 'fournisseurQUATRE', 'FO004', 40, 63, 'cubilia', 'adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien iaculis congue vivamus', 'http://dummyimage.com/112x100.png/dddddd/000000', '1'),
(40, '940', 'fleurs', 'rose_orange_profond', 'fournisseurQUATRE', 'FO004', 5, 62, 'amet', 'mi nulla ac enim in tempor turpis nec euismod scelerisque quam turpis adipiscing lorem vitae mattis', 'http://dummyimage.com/149x100.png/dddddd/000000', '0'),
(41, 'Thunderbird', 'potager', 'tomates', 'fournisseurCINQ', 'FO005', 2, 4, 'et', 'augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit', 'http://dummyimage.com/177x100.png/cc0000/ffffff', '0'),
(42, 'Silverado 3500', 'potager', 'tomates', 'fournisseurCINQ', 'FO005', 59, 86, 'tristique', 'felis eu sapien cursus vestibulum proin eu mi nulla ac', 'http://dummyimage.com/144x100.png/cc0000/ffffff', '0'),
(43, 'CR-V', 'potager', 'tomates', 'fournisseurCINQ', 'FO005', 50, 74, 'nec dui', 'sem fusce consequat nulla nisl nunc', 'http://dummyimage.com/109x100.png/dddddd/000000', '0'),
(44, 'Amigo', 'potager', 'aubergines', 'fournisseurCINQ', 'FO005', 79, 18, 'consequat', 'in eleifend quam a odio in hac habitasse platea dictumst maecenas', 'http://dummyimage.com/157x100.png/cc0000/ffffff', '0'),
(45, 'Club Wagon', 'potager', 'aubergines', 'fournisseurCINQ', 'FO005', 61, 2, 'turpis elementum', 'ut ultrices vel augue vestibulum ante ipsum primis in faucibus', 'http://dummyimage.com/120x100.png/ff4444/ffffff', '1'),
(46, 'Ram 2500', 'potager', 'aubergines', 'fournisseurCINQ', 'FO005', 91, 83, 'scelerisque', 'amet sapien dignissim vestibulum vestibulum ante ipsum', 'http://dummyimage.com/186x100.png/cc0000/ffffff', '1'),
(47, '164', 'potager', 'concombre', 'fournisseurCINQ', 'FO005', 17, 81, 'id', 'massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo', 'http://dummyimage.com/210x100.png/dddddd/000000', '1'),
(48, '6 Series', 'potager', 'concombre', 'fournisseurCINQ', 'FO005', 4, 48, 'odio', 'elit proin interdum mauris non ligula pellentesque ultrices', 'http://dummyimage.com/200x100.png/cc0000/ffffff', '0'),
(49, 'Sentra', 'potager', 'concombre', 'fournisseurCINQ', 'FO005', 41, 53, 'semper rutrum', 'diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis', 'http://dummyimage.com/144x100.png/cc0000/ffffff', '1'),
(50, '2500', 'potager', 'courges', 'fournisseurCINQ', 'FO005', 12, 86, 'mauris', 'consequat morbi a ipsum integer a nibh in quis', 'http://dummyimage.com/204x100.png/ff4444/ffffff', '1'),
(51, 'F150', 'potager', 'courges', 'fournisseurSIX', 'FO006', 62, 43, 'felis sed', 'lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien', 'http://dummyimage.com/129x100.png/cc0000/ffffff', '1'),
(52, 'Sierra 3500', 'potager', 'courges', 'fournisseurSIX', 'FO006', 78, 71, 'ipsum primis', 'in est risus auctor sed tristique in tempus sit', 'http://dummyimage.com/234x100.png/cc0000/ffffff', '1'),
(53, 'Viper', 'potager', 'terre', 'fournisseurSIX', 'FO006', 28, 11, 'lorem vitae', 'lacinia aenean sit amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate', 'http://dummyimage.com/128x100.png/ff4444/ffffff', '0'),
(54, 'Grand Marquis', 'potager', 'terre', 'fournisseurSIX', 'FO006', 22, 31, 'turpis elementum', 'habitasse platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida', 'http://dummyimage.com/121x100.png/cc0000/ffffff', '0'),
(55, 'Sportvan G30', 'potager', 'infusions', 'fournisseurSIX', 'FO006', 29, 73, 'consequat in', 'posuere metus vitae ipsum aliquam non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam', 'http://dummyimage.com/157x100.png/5fa2dd/ffffff', '0'),
(56, 'Terraza', 'potager', 'infusions', 'fournisseurSIX', 'FO006', 12, 55, 'tincidunt', 'proin leo odio porttitor id consequat', 'http://dummyimage.com/226x100.png/cc0000/ffffff', '1'),
(57, 'MKZ', 'potager', 'salades', 'fournisseurSIX', 'FO006', 95, 47, 'suspendisse', 'turpis enim blandit mi in porttitor pede justo eu massa donec dapibus duis at velit eu est congue elementum', 'http://dummyimage.com/190x100.png/5fa2dd/ffffff', '1'),
(58, 'E-Class', 'potager', 'salades', 'fournisseurSIX', 'FO006', 80, 66, 'elit proin', 'vitae quam suspendisse potenti nullam porttitor lacus at turpis donec posuere metus vitae ipsum aliquam non', 'http://dummyimage.com/168x100.png/dddddd/000000', '1'),
(59, 'Gemini', 'potager', 'aromatiques', 'fournisseurSIX', 'FO006', 18, 22, 'ut mauris', 'quam turpis adipiscing lorem vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin at turpis', 'http://dummyimage.com/179x100.png/5fa2dd/ffffff', '1'),
(60, 'LSS', 'potager', 'aromatiques', 'fournisseurSIX', 'FO006', 73, 75, 'ultrices posuere', 'posuere cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis', 'http://dummyimage.com/185x100.png/cc0000/ffffff', '0'),
(61, 'Truck', 'exterieur', 'tablesetchaises', 'fournisseurSEPT', 'FO007', 60, 58, 'sit amet', 'vitae mattis nibh ligula nec sem duis aliquam convallis nunc proin', 'http://dummyimage.com/245x100.png/5fa2dd/ffffff', '1'),
(62, 'Crossfire', 'exterieur', 'tablesetchaises', 'fournisseurSEPT', 'FO007', 40, 12, 'venenatis tristique', 'lacus at velit vivamus vel nulla eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget', 'http://dummyimage.com/101x100.png/ff4444/ffffff', '0'),
(63, 'Reno', 'exterieur', 'tablesetchaises', 'fournisseurSEPT', 'FO007', 96, 77, 'blandit', 'cum sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus', 'http://dummyimage.com/170x100.png/5fa2dd/ffffff', '0'),
(64, 'XC90', 'exterieur', 'baindesoleil', 'fournisseurSEPT', 'FO007', 36, 32, 'eleifend', 'augue vestibulum rutrum rutrum neque', 'http://dummyimage.com/143x100.png/5fa2dd/ffffff', '0'),
(65, 'Jetta', 'exterieur', 'baindesoleil', 'fournisseurSEPT', 'FO007', 54, 45, 'elit sodales', 'praesent blandit lacinia erat vestibulum sed magna', 'http://dummyimage.com/209x100.png/5fa2dd/ffffff', '1'),
(66, 'CX-7', 'exterieur', 'baindesoleil', 'fournisseurSEPT', 'FO007', 80, 18, 'eu', 'sit amet consectetuer adipiscing elit proin interdum mauris non ligula pellentesque ultrices phasellus id sapien in sapien', 'http://dummyimage.com/143x100.png/cc0000/ffffff', '0'),
(67, '4Runner', 'exterieur', 'planchas', 'fournisseurSEPT', 'FO007', 74, 35, 'dui', 'platea dictumst maecenas ut massa quis', 'http://dummyimage.com/198x100.png/dddddd/000000', '1'),
(68, 'Frontier', 'exterieur', 'planchas', 'fournisseurSEPT', 'FO007', 46, 12, 'risus', 'id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at', 'http://dummyimage.com/116x100.png/ff4444/ffffff', '0'),
(69, 'Jetta III', 'exterieur', 'planchas', 'fournisseurSEPT', 'FO007', 43, 50, 'ullamcorper', 'ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis sed', 'http://dummyimage.com/157x100.png/dddddd/000000', '1'),
(70, '240SX', 'exterieur', 'barbecu', 'fournisseurSEPT', 'FO007', 55, 75, 'duis ac', 'odio porttitor id consequat in consequat ut nulla sed accumsan felis', 'http://dummyimage.com/205x100.png/cc0000/ffffff', '1'),
(71, 'Golf', 'exterieur', 'barbecu', 'fournisseurHUIT', 'FO008', 19, 53, 'sapien sapien', 'neque vestibulum eget vulputate ut ultrices vel augue', 'http://dummyimage.com/151x100.png/cc0000/ffffff', '1'),
(72, 'Caprice', 'exterieur', 'barbecu', 'fournisseurHUIT', 'FO008', 4, 34, 'erat vestibulum', 'pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus cum sociis natoque penatibus et magnis', 'http://dummyimage.com/136x100.png/5fa2dd/ffffff', '0'),
(73, 'Miata MX-5', 'exterieur', 'jeuxexterieur', 'fournisseurHUIT', 'FO008', 20, 30, 'varius integer', 'sem duis aliquam convallis nunc proin at turpis a pede posuere', 'http://dummyimage.com/196x100.png/cc0000/ffffff', '1'),
(74, 'Corvette', 'exterieur', 'jeuxexterieur', 'fournisseurHUIT', 'FO008', 100, 58, 'metus vitae', 'faucibus orci luctus et ultrices posuere cubilia curae duis faucibus accumsan odio curabitur convallis duis consequat dui nec nisi volutpat', 'http://dummyimage.com/216x100.png/cc0000/ffffff', '1'),
(75, 'Mountaineer', 'exterieur', 'storesbannes', 'fournisseurHUIT', 'FO008', 85, 73, 'sapien', 'faucibus cursus urna ut tellus nulla ut', 'http://dummyimage.com/148x100.png/5fa2dd/ffffff', '0'),
(76, 'Highlander', 'exterieur', 'storesbannes', 'fournisseurHUIT', 'FO008', 23, 32, 'quam', 'dui vel nisl duis ac nibh fusce lacus purus aliquet at feugiat non pretium quis lectus', 'http://dummyimage.com/243x100.png/5fa2dd/ffffff', '1'),
(77, 'Esprit', 'exterieur', 'sols', 'fournisseurHUIT', 'FO008', 30, 75, 'luctus et', 'non pretium quis lectus suspendisse potenti in', 'http://dummyimage.com/164x100.png/cc0000/ffffff', '1'),
(78, 'RX Hybrid', 'exterieur', 'sols', 'fournisseurHUIT', 'FO008', 13, 44, 'ipsum', 'eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna at nunc', 'http://dummyimage.com/147x100.png/dddddd/000000', '1'),
(79, 'Cooper', 'exterieur', 'parasols', 'fournisseurHUIT', 'FO008', 17, 39, 'semper porta', 'odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique', 'http://dummyimage.com/161x100.png/5fa2dd/ffffff', '0'),
(80, 'M5', 'exterieur', 'parasols', 'fournisseurHUIT', 'FO008', 5, 55, 'eu', 'massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar lobortis', 'http://dummyimage.com/202x100.png/cc0000/ffffff', '0'),
(81, 'Elantra', 'outils', 'robot_tonte', 'fournisseurNEUF', 'FO009', 85, 53, 'condimentum neque', 'sit amet eros suspendisse accumsan tortor quis turpis sed', 'http://dummyimage.com/183x100.png/dddddd/000000', '0'),
(82, 'Fleetwood', 'outils', 'robot_tonte', 'fournisseurNEUF', 'FO009', 13, 31, 'pede', 'nunc proin at turpis a pede posuere nonummy integer non velit donec diam neque vestibulum eget', 'http://dummyimage.com/248x100.png/dddddd/000000', '1'),
(83, '9000', 'outils', 'robot_tonte', 'fournisseurNEUF', 'FO009', 51, 78, 'aliquet', 'id justo sit amet sapien dignissim vestibulum vestibulum', 'http://dummyimage.com/188x100.png/5fa2dd/ffffff', '1'),
(84, 'Rodeo', 'outils', 'tondeuse_poussee', 'fournisseurNEUF', 'FO009', 87, 20, 'condimentum', 'est quam pharetra magna ac', 'http://dummyimage.com/167x100.png/5fa2dd/ffffff', '1'),
(85, 'LHS', 'outils', 'tondeuse_poussee', 'fournisseurNEUF', 'FO009', 76, 26, 'aenean fermentum', 'eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit', 'http://dummyimage.com/241x100.png/cc0000/ffffff', '1'),
(86, '4000s', 'outils', 'tondeuse_poussee', 'fournisseurNEUF', 'FO009', 98, 27, 'blandit', 'orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio odio elementum', 'http://dummyimage.com/194x100.png/dddddd/000000', '0'),
(87, '164', 'outils', 'autoportee', 'fournisseurNEUF', 'FO009', 56, 66, 'tellus semper', 'consectetuer adipiscing elit proin risus praesent lectus vestibulum quam', 'http://dummyimage.com/111x100.png/ff4444/ffffff', '0'),
(88, 'TT', 'outils', 'autoportee', 'fournisseurNEUF', 'FO009', 32, 28, 'integer ac', 'erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc', 'http://dummyimage.com/204x100.png/ff4444/ffffff', '0'),
(89, 'Cabriolet', 'outils', 'autoportee', 'fournisseurNEUF', 'FO009', 40, 70, 'nulla mollis', 'curae mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis', 'http://dummyimage.com/245x100.png/dddddd/000000', '1'),
(90, 'Impreza WRX', 'outils', 'taille_haie', 'fournisseurNEUF', 'FO009', 5, 2, 'nunc vestibulum', 'elementum ligula vehicula consequat morbi a ipsum integer a nibh in', 'http://dummyimage.com/110x100.png/ff4444/ffffff', '0'),
(91, 'Ranger', 'outils', 'taille_haie', 'fournisseurDIX', 'FO010', 100, 46, 'tortor', 'erat id mauris vulputate elementum nullam varius nulla facilisi', 'http://dummyimage.com/197x100.png/cc0000/ffffff', '0'),
(92, 'XLR-V', 'outils', 'taille_haie', 'fournisseurDIX', 'FO010', 15, 60, 'mattis', 'ut volutpat sapien arcu sed augue aliquam erat volutpat in congue', 'http://dummyimage.com/191x100.png/cc0000/ffffff', '0'),
(93, '2500', 'outils', 'coupe_bordure', 'fournisseurDIX', 'FO010', 4, 98, 'est et', 'ac enim in tempor turpis nec', 'http://dummyimage.com/181x100.png/5fa2dd/ffffff', '1'),
(94, 'ES', 'outils', 'coupe_bordure', 'fournisseurDIX', 'FO010', 59, 2, 'in', 'curabitur convallis duis consequat dui nec nisi volutpat eleifend donec ut dolor morbi vel lectus in quam', 'http://dummyimage.com/172x100.png/cc0000/ffffff', '1'),
(95, 'Challenger', 'outils', 'outils_main', 'fournisseurDIX', 'FO010', 60, 71, 'est donec', 'aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies', 'http://dummyimage.com/178x100.png/dddddd/000000', '0'),
(96, '57', 'outils', 'outils_main', 'fournisseurDIX', 'FO010', 54, 37, 'nonummy integer', 'gravida nisi at nibh in hac habitasse', 'http://dummyimage.com/155x100.png/5fa2dd/ffffff', '1'),
(97, 'MX-5', 'outils', 'petit_outils', 'fournisseurDIX', 'FO010', 3, 57, 'quam fringilla', 'nibh in quis justo maecenas rhoncus aliquam lacus morbi quis tortor id', 'http://dummyimage.com/116x100.png/5fa2dd/ffffff', '1'),
(98, '80', 'outils', 'petit_outils', 'fournisseurDIX', 'FO010', 75, 66, 'odio curabitur', 'augue quam sollicitudin vitae consectetuer eget rutrum at', 'http://dummyimage.com/110x100.png/ff4444/ffffff', '0'),
(99, 'Quest', 'outils', 'sacs', 'fournisseurDIX', 'FO010', 49, 42, 'non mi', 'faucibus orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec odio justo sollicitudin ut suscipit', 'http://dummyimage.com/147x100.png/dddddd/000000', '0'),
(100, 'Pajero', 'outils', 'sacs', 'fournisseurDIX', 'FO010', 40, 10, 'ante ipsum', 'maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum proin eu mi', 'http://dummyimage.com/171x100.png/cc0000/ffffff', '0'),
(101, '944', 'serres', 'serres1', 'fournisseurONZE', 'FO011', 52, 92, 'eu massa', 'quis orci eget orci vehicula condimentum curabitur in libero ut massa volutpat convallis morbi odio', 'http://dummyimage.com/216x100.png/5fa2dd/ffffff', '1'),
(102, 'SSR', 'serres', 'serres1', 'fournisseurONZE', 'FO011', 74, 24, 'posuere cubilia', 'neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim', 'http://dummyimage.com/225x100.png/dddddd/000000', '0'),
(103, 'Ram', 'serres', 'serres1', 'fournisseurONZE', 'FO011', 14, 20, 'curae donec', 'eget eros elementum pellentesque quisque porta volutpat erat quisque erat eros viverra eget congue eget semper rutrum nulla nunc', 'http://dummyimage.com/141x100.png/5fa2dd/ffffff', '0'),
(104, '626', 'serres', 'serres2', 'fournisseurONZE', 'FO011', 48, 98, 'et ultrices', 'morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui', 'http://dummyimage.com/140x100.png/ff4444/ffffff', '0'),
(105, 'Equator', 'serres', 'serres2', 'fournisseurONZE', 'FO011', 51, 6, 'nisi nam', 'eros vestibulum ac est lacinia nisi venenatis tristique fusce congue diam id', 'http://dummyimage.com/208x100.png/dddddd/000000', '0'),
(106, 'Savana', 'serres', 'serres2', 'fournisseurONZE', 'FO011', 35, 76, 'interdum in', 'fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend', 'http://dummyimage.com/105x100.png/cc0000/ffffff', '1'),
(107, 'Continental Mark VII', 'serres', 'serres3', 'fournisseurONZE', 'FO011', 50, 13, 'in est', 'orci nullam molestie nibh in lectus pellentesque at nulla', 'http://dummyimage.com/118x100.png/dddddd/000000', '0'),
(108, 'SL-Class', 'serres', 'serres3', 'fournisseurONZE', 'FO011', 58, 56, 'sociis', 'in lectus pellentesque at nulla suspendisse', 'http://dummyimage.com/109x100.png/dddddd/000000', '0'),
(109, 'Prizm', 'serres', 'serres3', 'fournisseurONZE', 'FO011', 17, 98, 'pulvinar', 'pellentesque quisque porta volutpat erat quisque erat eros viverra eget', 'http://dummyimage.com/231x100.png/cc0000/ffffff', '1'),
(110, 'Exige', 'serres', 'serres4', 'fournisseurONZE', 'FO011', 16, 51, 'vestibulum ante', 'id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique', 'http://dummyimage.com/112x100.png/cc0000/ffffff', '0'),
(111, 'MPV', 'serres', 'serres4', 'fournisseurDOUZE', 'FO012', 89, 64, 'tincidunt', 'nisl aenean lectus pellentesque eget nunc donec quis orci eget orci', 'http://dummyimage.com/130x100.png/cc0000/ffffff', '1'),
(112, 'Carens', 'serres', 'serres4', 'fournisseurDOUZE', 'FO012', 68, 2, 'habitasse', 'amet cursus id turpis integer aliquet massa id lobortis convallis tortor risus dapibus', 'http://dummyimage.com/160x100.png/ff4444/ffffff', '1'),
(113, 'Millenia', 'serres', 'serres5', 'fournisseurDOUZE', 'FO012', 56, 62, 'accumsan', 'aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero convallis eget eleifend luctus ultricies eu nibh', 'http://dummyimage.com/188x100.png/5fa2dd/ffffff', '1'),
(114, '370Z', 'serres', 'serres5', 'fournisseurDOUZE', 'FO012', 48, 94, 'ipsum', 'nulla pede ullamcorper augue a suscipit nulla elit ac nulla sed vel enim sit amet nunc viverra dapibus', 'http://dummyimage.com/224x100.png/5fa2dd/ffffff', '0'),
(115, 'Avalon', 'serres', 'serres6', 'fournisseurDOUZE', 'FO012', 51, 37, 'aliquet', 'suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus', 'http://dummyimage.com/103x100.png/5fa2dd/ffffff', '0'),
(116, 'Sentra', 'serres', 'serres6', 'fournisseurDOUZE', 'FO012', 44, 70, 'nec', 'donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis', 'http://dummyimage.com/132x100.png/ff4444/ffffff', '0'),
(117, 'Capri', 'serres', 'serres7', 'fournisseurDOUZE', 'FO012', 13, 71, 'ante ipsum', 'turpis donec posuere metus vitae ipsum aliquam non mauris morbi', 'http://dummyimage.com/140x100.png/ff4444/ffffff', '0'),
(118, 'Leone', 'serres', 'serres7', 'fournisseurDOUZE', 'FO012', 82, 4, 'in lacus', 'quis orci nullam molestie nibh in lectus pellentesque at nulla', 'http://dummyimage.com/141x100.png/cc0000/ffffff', '1'),
(119, 'LeMans', 'serres', 'serres8', 'fournisseurDOUZE', 'FO012', 16, 24, 'ipsum integer', 'odio elementum eu interdum eu', 'http://dummyimage.com/155x100.png/dddddd/000000', '0'),
(120, 'Prelude', 'serres', 'serres8', 'fournisseurDOUZE', 'FO012', 22, 81, 'sollicitudin mi', 'eget tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus', 'http://dummyimage.com/105x100.png/dddddd/000000', '1');

-- --------------------------------------------------------

--
-- Table structure for table `selectionne`
--

DROP TABLE IF EXISTS `selectionne`;
CREATE TABLE IF NOT EXISTS `selectionne` (
  `client_code_client` int(11) NOT NULL,
  `produit_reference_gg` int(11) NOT NULL,
  PRIMARY KEY (`client_code_client`,`produit_reference_gg`),
  KEY `produit_reference_gg` (`produit_reference_gg`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `commande_ibfk_1` FOREIGN KEY (`client_code_client`) REFERENCES `client` (`client_code_client`);

--
-- Constraints for table `contient`
--
ALTER TABLE `contient`
  ADD CONSTRAINT `contient_ibfk_1` FOREIGN KEY (`produit_reference_gg`) REFERENCES `produit_fiche` (`produit_reference_gg`),
  ADD CONSTRAINT `contient_ibfk_2` FOREIGN KEY (`commande_code_client`) REFERENCES `commande` (`commande_code_client`);

--
-- Constraints for table `customer_fiche`
--
ALTER TABLE `customer_fiche`
  ADD CONSTRAINT `customer_fiche_ibfk_1` FOREIGN KEY (`commercial_code_client`) REFERENCES `commercial` (`commercial_code_client`);

--
-- Constraints for table `expedition`
--
ALTER TABLE `expedition`
  ADD CONSTRAINT `expedition_ibfk_1` FOREIGN KEY (`bdl_code_client`) REFERENCES `bdl` (`bdl_code_client`),
  ADD CONSTRAINT `expedition_ibfk_2` FOREIGN KEY (`fact_code_client`) REFERENCES `facturation` (`fact_code_client`);

--
-- Constraints for table `fourni`
--
ALTER TABLE `fourni`
  ADD CONSTRAINT `fourni_ibfk_1` FOREIGN KEY (`produit_reference_gg`) REFERENCES `produit_fiche` (`produit_reference_gg`),
  ADD CONSTRAINT `fourni_ibfk_2` FOREIGN KEY (`fournisseur_num`) REFERENCES `fournisseur` (`fournisseur_num`);

--
-- Constraints for table `paiement`
--
ALTER TABLE `paiement`
  ADD CONSTRAINT `paiement_ibfk_1` FOREIGN KEY (`client_code_client`) REFERENCES `client` (`client_code_client`),
  ADD CONSTRAINT `paiement_ibfk_2` FOREIGN KEY (`fact_code_client`) REFERENCES `facturation` (`fact_code_client`);

--
-- Constraints for table `preparation`
--
ALTER TABLE `preparation`
  ADD CONSTRAINT `preparation_ibfk_1` FOREIGN KEY (`commande_code_client`) REFERENCES `commande` (`commande_code_client`),
  ADD CONSTRAINT `preparation_ibfk_2` FOREIGN KEY (`bdl_code_client`) REFERENCES `bdl` (`bdl_code_client`);

--
-- Constraints for table `selectionne`
--
ALTER TABLE `selectionne`
  ADD CONSTRAINT `selectionne_ibfk_1` FOREIGN KEY (`client_code_client`) REFERENCES `client` (`client_code_client`),
  ADD CONSTRAINT `selectionne_ibfk_2` FOREIGN KEY (`produit_reference_gg`) REFERENCES `produit_fiche` (`produit_reference_gg`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
