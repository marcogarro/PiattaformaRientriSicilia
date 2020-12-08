-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Creato il: Dic 08, 2020 alle 14:45
-- Versione del server: 8.0.19
-- Versione PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rientri`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `comuni`
--

CREATE TABLE `comuni` (
  `id` int NOT NULL,
  `denominazione` varchar(100) NOT NULL,
  `nomefile` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `comuni`
--

INSERT INTO `comuni` (`id`, `denominazione`, `nomefile`) VALUES
(1, 'Augusta', 'Augusta'),
(2, 'Avola', 'Avola'),
(3, 'Buccheri', 'Buccheri'),
(4, 'Buscemi', 'Buscemi'),
(5, 'Canicattini Bagni', 'Canicattini'),
(6, 'Carlentini', 'Carlentini'),
(7, 'Cassaro', 'Cassaro'),
(8, 'Ferla', 'Ferla'),
(9, 'Floridia', 'Floridia'),
(10, 'Francofonte', 'Francofonte'),
(11, 'Lentini', 'Lentini'),
(12, 'Melilli', 'Melilli'),
(13, 'Noto', 'Noto'),
(14, 'Pachino', 'Pachino'),
(15, 'Palazzolo Acreide', 'Palazzolo'),
(16, 'Portopalo di Capo Passero', 'Portopalo'),
(17, 'Priolo Gargallo', 'Priolo'),
(18, 'Rosolini', 'Rosolini'),
(19, 'Siracusa', 'Siracusa'),
(20, 'Solarino', 'Solarino'),
(21, 'Sortino', 'Sortino');

-- --------------------------------------------------------

--
-- Struttura della tabella `isolamenti_extra_ue`
--

CREATE TABLE `isolamenti_extra_ue` (
  `ID` int NOT NULL,
  `Cognome` varchar(200) DEFAULT NULL,
  `Nome` varchar(200) DEFAULT NULL,
  `Data_di_nascita` date DEFAULT NULL,
  `Sesso` varchar(7) DEFAULT NULL,
  `Luogo_di_nascita` varchar(200) DEFAULT NULL,
  `Codice_Fiscale` varchar(16) DEFAULT NULL,
  `Indirizzo_di_residenza` varchar(200) DEFAULT NULL,
  `Luogo_di_residenza` varchar(200) DEFAULT NULL,
  `Cellulare` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `Paese_di_provenienza` varchar(200) DEFAULT NULL,
  `Comune_di_destinazione` varchar(200) DEFAULT NULL,
  `Prov._dest.` varchar(2) DEFAULT NULL,
  `Indirizzo_di_destinazione` varchar(200) DEFAULT NULL,
  `Data_di_partenza` date DEFAULT NULL,
  `Data_di_arrivo` date DEFAULT NULL,
  `Tipo_di_trasporto` varchar(200) DEFAULT NULL,
  `Stato_di_salute` varchar(200) DEFAULT NULL,
  `Scheda` varchar(200) DEFAULT NULL,
  `Data_comp` date DEFAULT NULL,
  `Lavorata` varchar(1) DEFAULT NULL,
  `Rimozione_richiesta_utente` varchar(200) DEFAULT NULL,
  `inizio_isolamento` tinyint(1) DEFAULT NULL,
  `fine_isolamento` tinyint(1) DEFAULT NULL,
  `bloccato` tinyint(1) DEFAULT NULL,
  `istante` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `username` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `archiviato` tinyint(1) DEFAULT NULL,
  `inizio_inviato` tinyint(1) DEFAULT NULL,
  `fine_inviato` tinyint(1) DEFAULT NULL,
  `note` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `PSA` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struttura della tabella `nazioni`
--

CREATE TABLE `nazioni` (
  `ID` int NOT NULL,
  `stato` varchar(40) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `nazioni`
--

INSERT INTO `nazioni` (`ID`, `stato`) VALUES
(1, 'Afghanistan'),
(2, 'Albania'),
(3, 'Algeria'),
(4, 'Andorra'),
(5, 'Angola'),
(6, 'Anguilla'),
(7, 'Antartide'),
(8, 'Antigua e Barbuda'),
(9, 'Antille Olandesi'),
(10, 'Arabia Saudita'),
(11, 'Argentina'),
(12, 'Armenia'),
(13, 'Aruba'),
(14, 'Australia'),
(15, 'Austria'),
(16, 'Azerbaijan'),
(17, 'Bahamas'),
(18, 'Bahrain'),
(19, 'Bangladesh'),
(20, 'Barbados'),
(21, 'Belgio'),
(22, 'Belize'),
(23, 'Benin'),
(24, 'Bermuda'),
(25, 'Bielorussia'),
(26, 'Bhutan'),
(27, 'Bolivia'),
(28, 'Bosnia Erzegovina'),
(29, 'Botswana'),
(30, 'Brasile'),
(31, 'Brunei Darussalam'),
(32, 'Bulgaria'),
(33, 'Burkina Faso'),
(34, 'Burundi'),
(35, 'Cambogia'),
(36, 'Camerun'),
(37, 'Canada'),
(38, 'Capo Verde'),
(39, 'Ciad'),
(40, 'Cile'),
(41, 'Cina'),
(42, 'Cipro'),
(43, 'Citta del Vaticano'),
(44, 'Colombia'),
(45, 'Comore'),
(46, 'Corea del Nord'),
(47, 'Corea del Sud'),
(48, 'Costa Rica'),
(49, 'Costa d\'Avorio'),
(50, 'Croazia'),
(51, 'Cuba'),
(52, 'Danimarca'),
(53, 'Dominica'),
(54, 'Ecuador'),
(55, 'Egitto'),
(56, 'Eire'),
(57, 'El Salvador'),
(58, 'Emirati Arabi Uniti'),
(59, 'Eritrea'),
(60, 'Estonia'),
(61, 'Etiopia'),
(62, 'Federazione Russa'),
(63, 'Fiji'),
(64, 'Filippine'),
(65, 'Finlandia'),
(66, 'Francia'),
(67, 'Gabon'),
(68, 'Gambia'),
(69, 'Georgia'),
(70, 'Germania'),
(71, 'Ghana'),
(72, 'Giamaica'),
(73, 'Giappone'),
(74, 'Gibilterra'),
(75, 'Gibuti'),
(76, 'Giordania'),
(77, 'Grecia'),
(78, 'Grenada'),
(79, 'Groenlandia'),
(80, 'Guadalupa'),
(81, 'Guam'),
(82, 'Guatemala'),
(83, 'Guinea'),
(84, 'Guinea-Bissau'),
(85, 'Guinea Equatoriale'),
(86, 'Guyana'),
(87, 'Guyana Francese'),
(88, 'Haiti'),
(89, 'Honduras'),
(90, 'Hong Kong'),
(91, 'India'),
(92, 'Indonesia'),
(93, 'Iran'),
(94, 'Iraq'),
(95, 'Isola di Bouvet'),
(96, 'Isola di Natale'),
(97, 'Isola Heard e Isole McDonald'),
(98, 'Isole Cayman'),
(99, 'Isole Cocos'),
(100, 'Isole Cook'),
(101, 'Isole Falkland'),
(102, 'Isole Faroe'),
(103, 'Isole Marshall'),
(104, 'Isole Marianne Settentrionali'),
(105, 'Isole Minori degli Stati Uniti d\'America'),
(106, 'Isola Norfolk'),
(107, 'Isole Solomon'),
(108, 'Isole Turks e Caicos'),
(109, 'Isole Vergini Americane'),
(110, 'Isole Vergini Britanniche'),
(111, 'Israele'),
(112, 'Islanda'),
(113, 'Italia'),
(114, 'Kazakhistan'),
(115, 'Kenya'),
(116, 'Kirghizistan'),
(117, 'Kiribati'),
(118, 'Kuwait'),
(119, 'Laos'),
(120, 'Lettonia'),
(121, 'Lesotho'),
(122, 'Libano'),
(123, 'Liberia'),
(124, 'Libia'),
(125, 'Liechtenstein'),
(126, 'Lituania'),
(127, 'Lussemburgo'),
(128, 'Macao'),
(129, 'Macedonia'),
(130, 'Madagascar'),
(131, 'Malawi'),
(132, 'Maldive'),
(133, 'Malesia'),
(134, 'Mali'),
(135, 'Malta'),
(136, 'Marocco'),
(137, 'Martinica'),
(138, 'Mauritania'),
(139, 'Maurizius'),
(140, 'Mayotte'),
(141, 'Messico'),
(142, 'Moldavia'),
(143, 'Monaco'),
(144, 'Mongolia'),
(145, 'Montserrat'),
(146, 'Mozambico'),
(147, 'Myanmar'),
(148, 'Namibia'),
(149, 'Nauru'),
(150, 'Nepal'),
(151, 'Nicaragua'),
(152, 'Niger'),
(153, 'Nigeria'),
(154, 'Niue'),
(155, 'Norvegia'),
(156, 'Nuova Caledonia'),
(157, 'Nuova Zelanda'),
(158, 'Oman'),
(159, 'Paesi Bassi'),
(160, 'Pakistan'),
(161, 'Palau'),
(162, 'Panama'),
(163, 'Papua Nuova Guinea'),
(164, 'Paraguay'),
(165, 'Peru'),
(166, 'Pitcairn'),
(167, 'Polinesia Francese'),
(168, 'Polonia'),
(169, 'Portogallo'),
(170, 'Porto Rico'),
(171, 'Qatar'),
(172, 'Regno Unito'),
(173, 'Repubblica Ceca'),
(174, 'Repubblica Centroafricana'),
(175, 'Repubblica del Congo'),
(176, 'Repubblica Democratica del Congo'),
(177, 'Repubblica Dominicana'),
(178, 'Reunion'),
(179, 'Romania'),
(180, 'Ruanda'),
(181, 'Sahara Occidentale'),
(182, 'Saint Kitts e Nevis'),
(183, 'Saint Pierre e Miquelon'),
(184, 'Saint Vincent e Grenadine'),
(185, 'Samoa'),
(186, 'Samoa Americane'),
(187, 'San Marino'),
(188, 'Sant\'Elena'),
(189, 'Santa Lucia'),
(190, 'Sao Tome e Principe'),
(191, 'Senegal'),
(192, 'Kosovo'),
(193, 'Seychelles'),
(194, 'Sierra Leone'),
(195, 'Singapore'),
(196, 'Siria'),
(197, 'Slovacchia'),
(198, 'Slovenia'),
(199, 'Somalia'),
(200, 'Spagna'),
(201, 'Sri Lanka'),
(202, 'Stati Federati della Micronesia'),
(203, 'Stati Uniti d\'America'),
(204, 'Sud Africa'),
(205, 'Sud Georgia e Isole Sandwich'),
(206, 'Sudan'),
(207, 'Suriname'),
(208, 'Svalbard e Jan Mayen'),
(209, 'Svezia'),
(210, 'Svizzera'),
(211, 'Swaziland'),
(212, 'Tagikistan'),
(213, 'Tailandia'),
(214, 'Taiwan'),
(215, 'Tanzania'),
(216, 'Territori Britannici dell\'Oceano Indiano'),
(217, 'Territori Francesi del Sud'),
(218, 'Territori Palestinesi Occupati'),
(219, 'Timor Est'),
(220, 'Togo'),
(221, 'Tokelau'),
(222, 'Tonga'),
(223, 'Trinidad e Tobago'),
(224, 'Tunisia'),
(225, 'Turchia'),
(226, 'Turkmenistan'),
(227, 'Tuvalu'),
(228, 'Ucraina'),
(229, 'Uganda'),
(230, 'Ungheria'),
(231, 'Uruguay'),
(232, 'Uzbekistan'),
(233, 'Vanuatu'),
(234, 'Venezuela'),
(235, 'Vietnam'),
(236, 'Wallis e Futuna'),
(237, 'Yemen'),
(238, 'Zambia'),
(239, 'Zimbabwe'),
(240, 'Serbia'),
(241, 'Montenegro'),
(242, 'Timor Est'),
(243, 'Guernsey');

-- --------------------------------------------------------

--
-- Struttura della tabella `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id_user` int NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struttura della tabella `zone_rischio`
--

CREATE TABLE `zone_rischio` (
  `id` int NOT NULL,
  `denominazione` varchar(100) NOT NULL,
  `nomefile` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pronti` varchar(256) NOT NULL,
  `reinvio` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dump dei dati per la tabella `zone_rischio`
--

INSERT INTO `zone_rischio` (`id`, `denominazione`, `nomefile`, `email`, `pronti`, `reinvio`) VALUES
(1, 'Malta', 'Malta', '', '', ''),
(2, 'Grecia', 'Grecia', '', '', ''),
(3, 'Spagna', 'Spagna', '', '', ''),
(4, 'Croazia', 'Croazia', '', '', '');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `comuni`
--
ALTER TABLE `comuni`
  ADD PRIMARY KEY (`id`);

--
-- Indici per le tabelle `isolamenti_extra_ue`
--
ALTER TABLE `isolamenti_extra_ue`
  ADD PRIMARY KEY (`ID`);

--
-- Indici per le tabelle `nazioni`
--
ALTER TABLE `nazioni`
  ADD PRIMARY KEY (`ID`);

--
-- Indici per le tabelle `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id_user`);

--
-- Indici per le tabelle `zone_rischio`
--
ALTER TABLE `zone_rischio`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `comuni`
--
ALTER TABLE `comuni`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT per la tabella `isolamenti_extra_ue`
--
ALTER TABLE `isolamenti_extra_ue`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `nazioni`
--
ALTER TABLE `nazioni`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=244;

--
-- AUTO_INCREMENT per la tabella `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id_user` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT per la tabella `zone_rischio`
--
ALTER TABLE `zone_rischio`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
