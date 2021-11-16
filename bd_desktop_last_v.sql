CREATE TABLE `tr_agent` (
  `ID_AGENT` int(11) NOT NULL,
  `NUM_MAT_AGENT` varchar(50) NOT NULL,
  `NOM_AGENT` varchar(50) NOT NULL,
  `PRENOM_AGENT` varchar(50) DEFAULT NULL,
  `DATE_NAISSANCE` date DEFAULT NULL,
  `LIEU_NAISSANCE` varchar(32) DEFAULT NULL,
  `SEXE` varchar(8) NOT NULL,
  `ID_TYPE_AGENT` int(11) NOT NULL,
  `CONTACT1` varchar(14) DEFAULT NULL,
  `CONTACT2` varchar(14) DEFAULT NULL,
  `ADRESSE` varchar(250) DEFAULT NULL,
  `SUPPRIMER` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `tr_agent`
--

INSERT INTO `tr_agent` (`ID_AGENT`, `NUM_MAT_AGENT`, `NOM_AGENT`, `PRENOM_AGENT`, `DATE_NAISSANCE`, `LIEU_NAISSANCE`, `SEXE`, `ID_TYPE_AGENT`, `CONTACT1`, `CONTACT2`, `ADRESSE`, `SUPPRIMER`) VALUES
(1, 'AGT-BZV-0001', 'AGENT1', 'PRENOM1', '1988-06-11', 'BRAZZAVILLE', 'MASCULIN', 1, '068383741', '055008981', '91, RUE LIKOUALA POTO-POTO', 0),
(2, 'AGT-BZV-0002', 'AGENT2', 'PRENOM2', '1988-06-11', 'BRAZZAVILLE', 'MASCULIN', 2, '068383742', '055008982', '92, RUE LIKOUALA POTO-POTO', 0),
(3, 'AGT-PNR-0003', 'AGENT3', 'PRENOM3', '1988-06-11', 'POINTE-NOIRE', 'FEMININ', 3, '068383743', '055008983', '93, RUE LIKOUALA POTO-POTO', 0),
(4, 'AGT-BZV-0003', 'AGENT4', 'PRENOM4', '1988-06-11', 'BRAZZAVILLE', 'MASCULIN', 4, '068383744', '055008984', '94, RUE LIKOUALA POTO-POTO', 0);

-- --------------------------------------------------------

--
-- Structure de la table `tr_arrondissement`
--

CREATE TABLE `tr_arrondissement` (
  `ID_ARRONDISSEMENT` int(11) NOT NULL,
  `CODE_ARRONDISSEMENT` varchar(50) NOT NULL,
  `LIB_ARRONDISSEMENT` varchar(250) NOT NULL,
  `POPULATION_ARRONDISSEMENT` int(11) DEFAULT NULL,
  `SUPERFICIE_ARRONDISSEMENT` int(11) DEFAULT NULL,
  `ID_COMMUNE` int(11) NOT NULL,
  `ID_DISTRICT_SANITAIRE` int(11) NOT NULL,
  `SUPPRIMER` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `tr_arrondissement`
--

INSERT INTO `tr_arrondissement` (`ID_ARRONDISSEMENT`, `CODE_ARRONDISSEMENT`, `LIB_ARRONDISSEMENT`, `POPULATION_ARRONDISSEMENT`, `SUPERFICIE_ARRONDISSEMENT`, `ID_COMMUNE`, `ID_DISTRICT_SANITAIRE`, `SUPPRIMER`) VALUES
(1, 'ARR0N01', 'FOUNDOU-FOUNDOU', NULL, NULL, 1, 2, NULL),
(2, 'ARR0N02', 'YOULOU-POUNGUI', NULL, NULL, 1, 2, NULL),
(3, 'ARR0N03', 'BOUALI', NULL, NULL, 2, 14, NULL),
(4, 'ARR0N04', 'ITSIBOU', NULL, NULL, 2, 14, NULL),
(5, 'ARR0N05', 'SIBITI', 70535, NULL, 3, 15, NULL),
(6, 'ARR0N06', 'LUMUMBA', 166883, NULL, 4, 43, NULL),
(7, 'ARR0N07', 'MVOUMVOU', 131671, NULL, 4, 43, NULL),
(8, 'ARR0N08', 'TIE-TIE', 261339, NULL, 4, 45, NULL),
(9, 'ARR0N09', 'LOANDJILI', 294079, NULL, 4, 46, NULL),
(10, 'ARR0N10', 'MONGO-POUKOU', 204295, NULL, 4, 47, NULL),
(11, 'ARR0N11', 'NGOYO', 181222, NULL, 4, 48, NULL),
(12, 'ARR0N12', 'DJAMBALA', 26124, NULL, 5, 22, NULL),
(13, 'ARR0N13', 'KINKALA', 52352, NULL, 6, 17, NULL),
(14, 'ARR0N14', 'KINTELE', 28605, NULL, 7, 55, NULL),
(15, 'ARR0N15', 'IMPFONDO', 72563, NULL, 8, 32, NULL),
(16, 'ARR0N16', 'OWANDO', 60817, NULL, 9, 25, NULL),
(17, 'ARR0N17', 'OYO', 27163, NULL, 10, 26, NULL),
(18, 'ARR0N18', 'EWO', 30551, NULL, 11, 28, NULL),
(19, 'ARR0N19', 'OUESSO', 30551, NULL, 12, 30, NULL),
(20, 'ARR0N20', 'LOANGO', 19304, NULL, 13, 6, NULL),
(21, 'ARR0N21', 'MAKELEKELE', 262037, NULL, 14, 34, NULL),
(22, 'ARR0N22', 'BACONGO', 149592, NULL, 14, 35, NULL),
(23, 'ARR0N23', 'POTO-POTO', 140872, NULL, 14, 36, NULL),
(24, 'ARR0N24', 'MOUNGALI', 252625, NULL, 14, 37, NULL),
(25, 'ARR0N25', 'OUENZE', 275556, NULL, 14, 38, NULL),
(26, 'ARR0N26', 'TALANGAI', 342097, NULL, 14, 39, NULL),
(27, 'ARR0N27', 'MFILOU', 233744, NULL, 14, 40, NULL),
(28, 'ARR0N28', 'MADIBOU', 189753, NULL, 14, 41, NULL),
(29, 'ARR0N29', 'DJIRI', 192559, NULL, 14, 42, NULL),
(30, 'ARR0N30', 'MADINGOU', 95025, NULL, 15, 1, NULL),
(31, 'ARR0N31', 'MWANA-NTO', NULL, NULL, 16, 3, NULL),
(32, 'ARR0N32', 'SOULOUKA', NULL, NULL, 16, 3, NULL),
(33, 'ARR0N33', 'DOLISIE', 126758, NULL, 1, 12, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `tr_categorie_profession`
--

CREATE TABLE `tr_categorie_profession` (
  `ID_CAT_PROFESSION` int(11) NOT NULL,
  `CODE_CAT_PROFESSION` varchar(50) NOT NULL,
  `LIB_CAT_PROFESSION` varchar(250) NOT NULL,
  `ID_PRIORITE` int(11) NOT NULL,
  `SUPPRIMER` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `tr_categorie_profession`
--

INSERT INTO `tr_categorie_profession` (`ID_CAT_PROFESSION`, `CODE_CAT_PROFESSION`, `LIB_CAT_PROFESSION`, `ID_PRIORITE`, `SUPPRIMER`) VALUES
(1, 'CATPROF01', 'Professionnels de santé', 1, NULL),
(2, 'CATPROF02', 'Agents des affaires sociales', 1, NULL),
(3, 'CATPROF03', 'Professionnels de la communication (agents de reportage)', 1, NULL),
(4, 'CATPROF04', 'Force publique et familles (aux points d’entrée et aux frontières)', 1, NULL),
(5, 'CATPROF05', 'Personnel des Nations Unies', 1, NULL),
(6, 'CATPROF06', 'Diplomates', 1, NULL),
(7, 'CATPROF07', 'Personnes âgées (≥ 60 ans)', 1, NULL),
(8, 'CATPROF08', 'Personnes porteuses d’une comorbidité', 1, NULL),
(9, 'CATPROF09', 'Personnel des agences de voyage', 1, NULL),
(10, 'CATPROF10', 'Personnel des banques', 1, NULL),
(11, 'CATPROF11', 'Enseignants', 1, NULL),
(12, 'CATPROF12', 'Etudiants', 2, NULL),
(13, 'CATPROF13', 'Elèves de plus de 15 ans', 2, NULL),
(14, 'CATPROF14', 'Commerçants nationaux', 2, NULL),
(15, 'CATPROF15', 'Commerçants expatriés', 2, NULL),
(16, 'CATPROF16', 'Prisonniers et agents en milieu carcéral', 2, NULL),
(17, 'CATPROF17', 'Personnels des firmes multinationales', 2, NULL),
(18, 'CATPROF18', 'Les populations spéciales (réfugiés et déplacés internes)', 2, NULL),
(19, 'CATPROF19', 'Professionnels de sexe', 2, NULL),
(20, 'CATPROF20', 'Personnels bars-dancing, Hôtel, restaurants, salons de coiffure…', 2, NULL),
(21, 'CATPROF21', 'Pratiquants de sports collectifs', 2, NULL),
(22, 'CATPROF22', 'Autres personnes de plus de 15 ans', 3, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `tr_commune`
--

CREATE TABLE `tr_commune` (
  `ID_COMMUNE` int(11) NOT NULL,
  `CODE_COMMUNE` varchar(50) NOT NULL,
  `LIB_COMMUNE` varchar(250) NOT NULL,
  `POPULATION_COMMUNE` int(11) DEFAULT NULL,
  `SUPERFICIE_COMMUNE` int(11) DEFAULT NULL,
  `ID_DEPARTEMENT` int(11) NOT NULL,
  `SUPPRIMER` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `tr_commune`
--

INSERT INTO `tr_commune` (`ID_COMMUNE`, `CODE_COMMUNE`, `LIB_COMMUNE`, `POPULATION_COMMUNE`, `SUPERFICIE_COMMUNE`, `ID_DEPARTEMENT`, `SUPPRIMER`) VALUES
(1, 'COM01', 'DOLISIE', 126758, NULL, 3, NULL),
(2, 'COM02', 'MOSSENDJO', 20025, NULL, 3, NULL),
(3, 'COM03', 'SIBITI', 70535, NULL, 4, NULL),
(4, 'COM04', 'POINTE-NOIRE', 1264637, NULL, 2, NULL),
(5, 'COM05', 'DJAMBALA', 26124, NULL, 5, NULL),
(6, 'COM06', 'KINKALA', 52352, NULL, 6, NULL),
(7, 'COM07', 'KINTELE', 28605, NULL, 6, NULL),
(8, 'COM08', 'IMPFONDO', 72563, NULL, 7, NULL),
(9, 'COM09', 'OWANDO', 60817, NULL, 8, NULL),
(10, 'COM10', 'OYO', 27163, NULL, 8, NULL),
(11, 'COM11', 'EWO', 30551, NULL, 9, NULL),
(12, 'COM12', 'OUESSO', 42658, NULL, 10, NULL),
(13, 'COM13', 'LOANGO', 19304, NULL, 11, NULL),
(14, 'COM14', 'BRAZZAVILLE', 2051565, NULL, 1, NULL),
(15, 'COM15', 'MADINGOU', 95025, NULL, 12, NULL),
(16, 'COM16', 'NKAYI', 108336, NULL, 12, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `tr_departement`
--

CREATE TABLE `tr_departement` (
  `ID_DEPARTEMENT` int(11) NOT NULL,
  `CODE_DEPARTEMENT` varchar(50) NOT NULL,
  `LIB_DEPARTEMENT` varchar(250) NOT NULL,
  `POPULATION_DEPARTEMENT` int(11) DEFAULT NULL,
  `SUPERFICIE_DEPARTEMENT` int(11) DEFAULT NULL,
  `SUPPRIMER` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `tr_departement`
--

INSERT INTO `tr_departement` (`ID_DEPARTEMENT`, `CODE_DEPARTEMENT`, `LIB_DEPARTEMENT`, `POPULATION_DEPARTEMENT`, `SUPERFICIE_DEPARTEMENT`, `SUPPRIMER`) VALUES
(1, 'DEP01', 'BRAZZAVILLE', 2051565, NULL, NULL),
(2, 'DEP02', 'POINTE-NOIRE', 1264637, NULL, NULL),
(3, 'DEP03', 'NIARI', 349856, NULL, NULL),
(4, 'DEP04', 'LEKOUMOU', 145850, NULL, NULL),
(5, 'DEP05', 'PLATEAUX', 264124, NULL, NULL),
(6, 'DEP06', 'POOL', 386508, NULL, NULL),
(7, 'DEP07', 'LIKOUALA', 233172, NULL, NULL),
(8, 'DEP08', 'CUVETTE', 236170, NULL, NULL),
(9, 'DEP09', 'CUVETTE-OUEST', 110436, NULL, NULL),
(10, 'DEP10', 'SANGHA', 129832, NULL, NULL),
(11, 'DEP11', 'KOUILOU', 114019, NULL, NULL),
(12, 'DEP12', 'BOUENZA', 467570, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `tr_district`
--

CREATE TABLE `tr_district` (
  `ID_DISTRICT` int(11) NOT NULL,
  `CODE_DISTRICT` varchar(50) NOT NULL,
  `LIB_DISTRICT` varchar(250) NOT NULL,
  `POPULATION_DISTRICT` int(11) DEFAULT NULL,
  `SUPERFICIE_DISTRICT` int(11) DEFAULT NULL,
  `ID_DEPARTEMENT` int(11) NOT NULL,
  `ID_DISTRICT_SANITAIRE` int(11) NOT NULL,
  `SUPPRIMER` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `tr_district`
--

INSERT INTO `tr_district` (`ID_DISTRICT`, `CODE_DISTRICT`, `LIB_DISTRICT`, `POPULATION_DISTRICT`, `SUPERFICIE_DISTRICT`, `ID_DEPARTEMENT`, `ID_DISTRICT_SANITAIRE`, `SUPPRIMER`) VALUES
(1, 'DIST01', 'BANDA', NULL, NULL, 3, 13, NULL),
(2, 'DIST02', 'DIVENIE', NULL, NULL, 3, 13, NULL),
(3, 'DIST03', 'KIBANGOU', NULL, NULL, 3, 13, NULL),
(4, 'DIST04', 'KIMONGO', NULL, NULL, 3, 52, NULL),
(5, 'DIST05', 'LONDELA -KAYES', NULL, NULL, 3, 52, NULL),
(6, 'DIST06', 'LOUVAKOU', NULL, NULL, 3, 12, NULL),
(7, 'DIST07', 'MAKABANA', NULL, NULL, 3, 12, NULL),
(8, 'DIST08', 'MAYOKO', NULL, NULL, 3, 53, NULL),
(9, 'DIST09', 'MBINDA', NULL, NULL, 3, 53, NULL),
(10, 'DIST10', 'MOUNGOUNDOU-NORD', NULL, NULL, 3, 53, NULL),
(11, 'DIST11', 'MOUNGOUNDOU-SUD', NULL, NULL, 3, 14, NULL),
(12, 'DIST12', 'MOUTAMBA', NULL, NULL, 3, 14, NULL),
(13, 'DIST13', 'NYANGA', NULL, NULL, 3, 13, NULL),
(14, 'DIST14', 'YAYA', NULL, NULL, 3, 14, NULL),
(15, 'DIST15', 'SIBITI', NULL, NULL, 4, 15, NULL),
(16, 'DIST16', 'KOMONO', NULL, NULL, 4, 15, NULL),
(17, 'DIST17', 'ZANAGA', NULL, NULL, 4, 16, NULL),
(18, 'DIST18', 'BAMBAMA', NULL, NULL, 4, 16, NULL),
(19, 'DIST19', 'MAYEYE', NULL, NULL, 4, 15, NULL),
(20, 'DIST20', 'TCHAMBA NZASSI', NULL, NULL, 2, 49, NULL),
(21, 'DIST21', 'ABALA', NULL, NULL, 5, 24, NULL),
(22, 'DIST22', 'ALLEMBE', NULL, NULL, 5, 24, NULL),
(23, 'DIST23', 'DJAMBALA', NULL, NULL, 5, 22, NULL),
(24, 'DIST24', 'GAMBOMA', NULL, NULL, 5, 23, NULL),
(25, 'DIST25', 'NGO', NULL, NULL, 5, 56, NULL),
(26, 'DIST26', 'LEKANA', NULL, NULL, 5, 22, NULL),
(27, 'DIST27', 'OLLOMBO', NULL, NULL, 5, 24, NULL),
(28, 'DIST28', 'MAKOTIMPOKO', NULL, NULL, 5, 23, NULL),
(29, 'DIST29', 'ONGOGNI', NULL, NULL, 5, 23, NULL),
(30, 'DIST30', 'MBON', NULL, NULL, 5, 22, NULL),
(31, 'DIST31', 'MPOUYA', NULL, NULL, 5, 56, NULL),
(32, 'DIST32', 'LOUINGUI', NULL, NULL, 6, 54, NULL),
(33, 'DIST33', 'LOUMO', NULL, NULL, 6, 54, NULL),
(34, 'DIST34', 'IGNE', NULL, NULL, 6, 21, NULL),
(35, 'DIST35', 'MAYAMA', NULL, NULL, 6, 21, NULL),
(36, 'DIST36', 'VINDZA', NULL, NULL, 6, 20, NULL),
(37, 'DIST37', 'MBANZA-NDOUNGA', NULL, NULL, 6, 18, NULL),
(38, 'DIST38', 'KIMBA', NULL, NULL, 6, 20, NULL),
(39, 'DIST39', 'NGABE', NULL, NULL, 6, 21, NULL),
(40, 'DIST40', 'MINDOULI', NULL, NULL, 6, 19, NULL),
(41, 'DIST41', 'BOKO', NULL, NULL, 6, 54, NULL),
(42, 'DIST42', 'KINKALA', NULL, NULL, 6, 17, NULL),
(43, 'DIST43', 'KINDAMBA', NULL, NULL, 6, 20, NULL),
(44, 'DIST44', 'GOMA TSE-TSE', NULL, NULL, 6, 18, NULL),
(45, 'DIST45', 'BETOU', NULL, NULL, 7, 33, NULL),
(46, 'DIST46', 'BOUANELA', NULL, NULL, 7, 32, NULL),
(47, 'DIST47', 'DONGOU', NULL, NULL, 7, 7, NULL),
(48, 'DIST48', 'ENYELLE', NULL, NULL, 7, 33, NULL),
(49, 'DIST49', 'EPENA', NULL, NULL, 7, 32, NULL),
(50, 'DIST50', 'IMPFONDO', NULL, NULL, 7, 32, NULL),
(51, 'DIST51', 'LIRANGA', NULL, NULL, 7, 32, NULL),
(52, 'DIST52', 'OWANDO', NULL, NULL, 8, 25, NULL),
(53, 'DIST53', 'OYO', NULL, NULL, 8, 26, NULL),
(54, 'DIST54', 'MAKOUA', NULL, NULL, 8, 25, NULL),
(55, 'DIST55', 'TCHICAPIKA', NULL, NULL, 8, 26, NULL),
(56, 'DIST56', 'NGOKO', NULL, NULL, 8, 25, NULL),
(57, 'DIST57', 'NTOKOU', NULL, NULL, 8, 25, NULL),
(58, 'DIST58', 'MOSSAKA', NULL, NULL, 8, 27, NULL),
(59, 'DIST59', 'LOUKOLELA', NULL, NULL, 8, 27, NULL),
(60, 'DIST60', 'BOUNDJI', NULL, NULL, 8, 26, NULL),
(61, 'DIST61', 'BOKOMA', NULL, NULL, 8, 27, NULL),
(62, 'DIST62', 'ETOUMBI', NULL, NULL, 9, 29, NULL),
(63, 'DIST63', 'EWO', NULL, NULL, 9, 28, NULL),
(64, 'DIST64', 'KELLE', NULL, NULL, 9, 29, NULL),
(65, 'DIST65', 'MBAMA', NULL, NULL, 9, 28, NULL),
(66, 'DIST66', 'MBOMO', NULL, NULL, 9, 29, NULL),
(67, 'DIST67', 'OKOYO', NULL, NULL, 9, 28, NULL),
(68, 'DIST68', 'KABO', NULL, NULL, 10, 30, NULL),
(69, 'DIST69', 'MOKEKO', NULL, NULL, 10, 30, NULL),
(70, 'DIST70', 'NGBALA', NULL, NULL, 10, 31, NULL),
(71, 'DIST71', 'PIKOUNDA', NULL, NULL, 10, 30, NULL),
(72, 'DIST72', 'SEMBE', NULL, NULL, 10, 31, NULL),
(73, 'DIST73', 'SOUANKE', NULL, NULL, 10, 31, NULL),
(74, 'DIST74', 'HINDA', NULL, NULL, 11, 6, NULL),
(75, 'DIST75', 'KAKAMOEKA', NULL, NULL, 11, 51, NULL),
(76, 'DIST76', 'MVOUTI', NULL, NULL, 11, 51, NULL),
(77, 'DIST77', 'MADINGO-KAYES', NULL, NULL, 11, 7, NULL),
(78, 'DIST78', 'NZAMBI', NULL, NULL, 11, 7, NULL),
(79, 'DIST79', 'LOANGO', NULL, NULL, 11, 6, NULL),
(80, 'DIST80', 'ILE MBAMOU', NULL, NULL, 1, 57, NULL),
(81, 'DIST81', 'BOKO-SONGHO', NULL, NULL, 12, 1, NULL),
(82, 'DIST82', 'KAYES', NULL, NULL, 12, 3, NULL),
(83, 'DIST83', 'KINGOUE', NULL, NULL, 12, 2, NULL),
(84, 'DIST84', 'LOUDIMA', NULL, NULL, 12, 4, NULL),
(85, 'DIST85', 'MABOMBO', NULL, NULL, 12, 1, NULL),
(86, 'DIST86', 'MADINGOU', NULL, NULL, 12, 1, NULL),
(87, 'DIST87', 'MFOUATI', NULL, NULL, 12, 5, NULL),
(88, 'DIST88', 'MOUYONDZI', NULL, NULL, 12, 2, NULL),
(89, 'DIST89', 'TSIAKI', NULL, NULL, 12, 2, NULL),
(90, 'DIST90', 'YAMBA', NULL, NULL, 12, 5, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `tr_district_sanitaire`
--

CREATE TABLE `tr_district_sanitaire` (
  `ID_DISTRICT_SANITAIRE` int(11) NOT NULL,
  `CODE_DISTRICT_SANITAIRE` varchar(50) NOT NULL,
  `LIB_DISTRICT_SANITAIRE` varchar(250) NOT NULL,
  `ID_DEPARTEMENT` int(11) NOT NULL,
  `SUPPRIMER` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `tr_district_sanitaire`
--

INSERT INTO `tr_district_sanitaire` (`ID_DISTRICT_SANITAIRE`, `CODE_DISTRICT_SANITAIRE`, `LIB_DISTRICT_SANITAIRE`, `ID_DEPARTEMENT`, `SUPPRIMER`) VALUES
(1, 'DISTSAN01', 'Madingou', 12, NULL),
(2, 'DISTSAN02', 'Mouyondzi', 12, NULL),
(3, 'DISTSAN03', 'Nkayi', 12, NULL),
(4, 'DISTSAN04', 'Loudima', 12, NULL),
(5, 'DISTSAN05', 'Loutete', 12, NULL),
(6, 'DISTSAN06', 'Hinda-Loango', 11, NULL),
(7, 'DISTSAN07', 'Madingo-Kayes-Nzambi', 11, NULL),
(8, 'DISTSAN08', 'Mvouti-Kakamoeka', 11, NULL),
(12, 'DISTSAN12', 'Dolisie', 3, NULL),
(13, 'DISTSAN13', 'Kibangou', 3, NULL),
(14, 'DISTSAN14', 'Mossendjo', 3, NULL),
(15, 'DISTSAN15', 'Sibiti', 4, NULL),
(16, 'DISTSAN16', 'Zanaga', 4, NULL),
(17, 'DISTSAN17', 'Kinkala', 6, NULL),
(18, 'DISTSAN18', 'Goma Tse Tse', 6, NULL),
(19, 'DISTSAN19', 'Mindouli', 6, NULL),
(20, 'DISTSAN20', 'Kindamba', 6, NULL),
(21, 'DISTSAN21', 'Ignie-Ngabe-Mayama', 6, NULL),
(22, 'DISTSAN22', 'Djambala-Lekana', 5, NULL),
(23, 'DISTSAN23', 'Gamboma', 5, NULL),
(24, 'DISTSAN24', 'Abala', 5, NULL),
(25, 'DISTSAN25', 'Owando', 8, NULL),
(26, 'DISTSAN26', 'Alima', 8, NULL),
(27, 'DISTSAN27', 'Mossaka_Loukolela', 8, NULL),
(28, 'DISTSAN28', 'Ewo', 9, NULL),
(29, 'DISTSAN29', 'Etoumbi', 9, NULL),
(30, 'DISTSAN30', 'Ouesso', 10, NULL),
(31, 'DISTSAN31', 'Sembe', 10, NULL),
(32, 'DISTSAN32', 'Impfondo', 7, NULL),
(33, 'DISTSAN33', 'Enyelle-Betou', 7, NULL),
(34, 'DISTSAN34', 'Makelekele', 1, NULL),
(35, 'DISTSAN35', 'Bacongo', 1, NULL),
(36, 'DISTSAN36', 'PotoPoto', 1, NULL),
(37, 'DISTSAN37', 'Moungali', 1, NULL),
(38, 'DISTSAN38', 'Ouenze', 1, NULL),
(39, 'DISTSAN39', 'Talangai', 1, NULL),
(40, 'DISTSAN40', 'Mfilou', 1, NULL),
(41, 'DISTSAN41', 'Madibou', 1, NULL),
(42, 'DISTSAN42', 'Djiri', 1, NULL),
(43, 'DISTSAN43', 'Lumumba', 2, NULL),
(44, 'DISTSAN44', 'Mvoumvou', 2, NULL),
(45, 'DISTSAN45', 'TieTie', 2, NULL),
(46, 'DISTSAN46', 'Loandjili', 2, NULL),
(47, 'DISTSAN47', 'Mongo Mpoukou', 2, NULL),
(48, 'DISTSAN48', 'Ngoyo', 2, NULL),
(49, 'DISTSAN49', 'TchiambaNzassi', 2, NULL),
(50, 'DISTSAN50', 'Mvoumvou', 2, NULL),
(51, 'DISTSAN51', 'Mvouti_Kakamoeka', 11, NULL),
(52, 'DISTSAN52', 'Kimongo', 3, NULL),
(53, 'DISTSAN53', 'Mayoko', 3, NULL),
(54, 'DISTSAN54', 'Boko', 6, NULL),
(55, 'DISTSAN55', 'Kintele', 6, NULL),
(56, 'DISTSAN56', 'Ngo_Mpouya', 5, NULL),
(57, 'DISTSAN57', 'Ile Mbamou', 1, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `tr_dose`
--

CREATE TABLE `tr_dose` (
  `ID_DOSE` int(11) NOT NULL,
  `CODE_DOSE` varchar(50) NOT NULL,
  `LIB_DOSE` varchar(250) NOT NULL,
  `JOUR_PROCH_DOSE` int(11) DEFAULT NULL,
  `ID_TYPE_VACCIN` int(11) NOT NULL,
  `SUPPRIMER` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `tr_dose`
--

INSERT INTO `tr_dose` (`ID_DOSE`, `CODE_DOSE`, `LIB_DOSE`, `JOUR_PROCH_DOSE`, `ID_TYPE_VACCIN`, `SUPPRIMER`) VALUES
(1, 'DOSE-0001', 'SINOPHARM', 15, 1, 0),
(2, 'DOSE-0001', 'SPUTNIK-LIGHT', 0, 2, 0),
(3, 'DOSE-0001', 'SPUTNIK-V', 30, 3, 0),
(4, 'DOSE-0001', 'JANSSEN', 0, 4, 0),
(5, 'DOSE-0001', 'PFIZER', 0, 5, 0);

-- --------------------------------------------------------

--
-- Structure de la table `tr_pays`
--

CREATE TABLE `tr_pays` (
  `ID_PAYS` int(11) NOT NULL,
  `CODE_PAYS` varchar(50) NOT NULL,
  `LIB_PAYS_FR` varchar(50) NOT NULL,
  `LIB_PAYS_ENG` varchar(50) NOT NULL,
  `NUMERO_PAYS` varchar(30) NOT NULL,
  `CODE_ALPHA2` varchar(30) NOT NULL,
  `CODE_ALPHA3` varchar(30) NOT NULL,
  `SUPPRIMER` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `tr_pays`
--

INSERT INTO `tr_pays` (`ID_PAYS`, `CODE_PAYS`, `LIB_PAYS_FR`, `LIB_PAYS_ENG`, `NUMERO_PAYS`, `CODE_ALPHA2`, `CODE_ALPHA3`, `SUPPRIMER`) VALUES
(1, 'PAYS01', 'Afghanistan', 'Afghanistan', '4', 'AF', 'AFG', NULL),
(2, 'PAYS02', 'Îles Åland', 'Åland Islands', '248', 'AX', 'ALA', NULL),
(3, 'PAYS03', 'Albanie', 'Albania', '8', 'AL', 'ALB', NULL),
(4, 'PAYS04', 'Algérie', 'Algeria', '12', 'DZ', 'DZA', NULL),
(5, 'PAYS05', 'Samoa américaines', 'American Samoa', '16', 'AS', 'ASM', NULL),
(6, 'PAYS06', 'Andorre', 'Andorra', '20', 'AD', 'AND', NULL),
(7, 'PAYS07', 'Angola', 'Angola', '24', 'AO', 'AGO', NULL),
(8, 'PAYS08', 'Anguilla', 'Anguilla', '660', 'AI', 'AIA', NULL),
(9, 'PAYS09', 'Antarctique', 'Antarctica', '10', 'AQ', 'ATA', NULL),
(10, 'PAYS10', 'Antigua-et-Barbuda', 'Antigua and Barbuda', '28', 'AG', 'ATG', NULL),
(11, 'PAYS11', 'Argentine', 'Argentina', '32', 'AR', 'ARG', NULL),
(12, 'PAYS12', 'Arménie', 'Armenia', '51', 'AM', 'ARM', NULL),
(13, 'PAYS13', 'Aruba', 'Aruba', '533', 'AW', 'ABW', NULL),
(14, 'PAYS14', 'Australie', 'Australia', '36', 'AU', 'AUS', NULL),
(15, 'PAYS15', 'Autriche', 'Austria', '40', 'AT', 'AUT', NULL),
(16, 'PAYS16', 'Azerbaïdjan', 'Azerbaijan', '31', 'AZ', 'AZE', NULL),
(17, 'PAYS17', 'Bahamas', 'Bahamas (the)', '44', 'BS', 'BHS', NULL),
(18, 'PAYS18', 'Bahreïn', 'Bahrain', '48', 'BH', 'BHR', NULL),
(19, 'PAYS19', 'Bangladesh', 'Bangladesh', '50', 'BD', 'BGD', NULL),
(20, 'PAYS20', 'Barbade', 'Barbados', '52', 'BB', 'BRB', NULL),
(21, 'PAYS21', 'Bélarus', 'Belarus', '112', 'BY', 'BLR', NULL),
(22, 'PAYS22', 'Belgique', 'Belgium', '56', 'BE', 'BEL', NULL),
(23, 'PAYS23', 'Belize', 'Belize', '84', 'BZ', 'BLZ', NULL),
(24, 'PAYS24', 'Bénin', 'Benin', '204', 'BJ', 'BEN', NULL),
(25, 'PAYS25', 'Bermudes', 'Bermuda', '60', 'BM', 'BMU', NULL),
(26, 'PAYS26', 'Bhoutan', 'Bhutan', '64', 'BT', 'BTN', NULL),
(27, 'PAYS27', 'Bolivie (État plurinational de)', 'Bolivia (Plurinational State of)', '68', 'BO', 'BOL', NULL),
(28, 'PAYS28', 'Bonaire, Saint-Eustache et Saba', 'Bonaire, Sint Eustatius and Saba', '535', 'BQ', 'BES', NULL),
(29, 'PAYS29', 'Bosnie-Herzégovine', 'Bosnia and Herzegovina', '70', 'BA', 'BIH', NULL),
(30, 'PAYS30', 'Botswana', 'Botswana', '72', 'BW', 'BWA', NULL),
(31, 'PAYS31', 'Bouvet (l''Île)', 'Bouvet Island', '74', 'BV', 'BVT', NULL),
(32, 'PAYS32', 'Brésil', 'Brazil', '76', 'BR', 'BRA', NULL),
(33, 'PAYS33', 'Indien (le Territoire britannique de l''océan)', 'British Indian Ocean Territory (the)', '86', 'IO', 'IOT', NULL),
(34, 'PAYS34', 'Brunéi Darussalam', 'Brunei Darussalam', '96', 'BN', 'BRN', NULL),
(35, 'PAYS35', 'Bulgarie', 'Bulgaria', '100', 'BG', 'BGR', NULL),
(36, 'PAYS36', 'Burkina Faso', 'Burkina Faso', '854', 'BF', 'BFA', NULL),
(37, 'PAYS37', 'Burundi', 'Burundi', '108', 'BI', 'BDI', NULL),
(38, 'PAYS38', 'Cabo Verde', 'Cabo Verde', '132', 'CV', 'CPV', NULL),
(39, 'PAYS39', 'Cambodge', 'Cambodia', '116', 'KH', 'KHM', NULL),
(40, 'PAYS40', 'Cameroun', 'Cameroon', '120', 'CM', 'CMR', NULL),
(41, 'PAYS41', 'Canada', 'Canada', '124', 'CA', 'CAN', NULL),
(42, 'PAYS42', 'Îles Caïmans', 'Cayman Islands (the)', '136', 'KY', 'CYM', NULL),
(43, 'PAYS43', 'République centrafricaine', 'Central African Republic (the)', '140', 'CF', 'CAF', NULL),
(44, 'PAYS44', 'Tchad', 'Chad', '148', 'TD', 'TCD', NULL),
(45, 'PAYS45', 'Chili', 'Chile', '152', 'CL', 'CHL', NULL),
(46, 'PAYS46', 'Chine', 'China', '156', 'CN', 'CHN', NULL),
(47, 'PAYS47', 'Île Christmas', 'Christmas Island', '162', 'CX', 'CXR', NULL),
(48, 'PAYS48', 'Îles Cocos / Îles Keeling', 'Cocos (Keeling) Islands (the)', '166', 'CC', 'CCK', NULL),
(49, 'PAYS49', 'Colombie', 'Colombia', '170', 'CO', 'COL', NULL),
(50, 'PAYS50', 'Comores', 'Comoros (the)', '174', 'KM', 'COM', NULL),
(51, 'PAYS51', 'République démocratique du Congo', 'Congo (the Democratic Republic of the)', '180', 'CD', 'COD', NULL),
(52, 'PAYS52', 'Congo', 'Congo (the)', '178', 'CG', 'COG', NULL),
(53, 'PAYS53', 'Îles Cook', 'Cook Islands (the)', '184', 'CK', 'COK', NULL),
(54, 'PAYS54', 'Costa Rica', 'Costa Rica', '188', 'CR', 'CRI', NULL),
(55, 'PAYS55', 'Côte d''Ivoire', 'Côte d''Ivoire', '384', 'CI', 'CIV', NULL),
(56, 'PAYS56', 'Croatie', 'Croatia', '191', 'HR', 'HRV', NULL),
(57, 'PAYS57', 'Cuba', 'Cuba', '192', 'CU', 'CUB', NULL),
(58, 'PAYS58', 'Curaçao', 'Curaçao', '531', 'CW', 'CUW', NULL),
(59, 'PAYS59', 'Chypre', 'Cyprus', '196', 'CY', 'CYP', NULL),
(60, 'PAYS60', 'Tchéquie', 'Czechia', '203', 'CZ', 'CZE', NULL),
(61, 'PAYS61', 'Danemark', 'Denmark', '208', 'DK', 'DNK', NULL),
(62, 'PAYS62', 'Djibouti', 'Djibouti', '262', 'DJ', 'DJI', NULL),
(63, 'PAYS63', 'Dominique', 'Dominica', '212', 'DM', 'DMA', NULL),
(64, 'PAYS64', 'République dominicaine', 'Dominican Republic (the)', '214', 'DO', 'DOM', NULL),
(65, 'PAYS65', 'Équateur', 'Ecuador', '218', 'EC', 'ECU', NULL),
(66, 'PAYS66', 'Égypte', 'Egypt', '818', 'EG', 'EGY', NULL),
(67, 'PAYS67', 'El Salvador', 'El Salvador', '222', 'SV', 'SLV', NULL),
(68, 'PAYS68', 'Guinée équatoriale', 'Equatorial Guinea', '226', 'GQ', 'GNQ', NULL),
(69, 'PAYS69', 'Érythrée', 'Eritrea', '232', 'ER', 'ERI', NULL),
(70, 'PAYS70', 'Estonie', 'Estonia', '233', 'EE', 'EST', NULL),
(71, 'PAYS71', 'Eswatini', 'Eswatini', '748', 'SZ', 'SWZ', NULL),
(72, 'PAYS72', 'Éthiopie', 'Ethiopia', '231', 'ET', 'ETH', NULL),
(73, 'PAYS73', 'Îles Falkland/ Îles Malouines', 'Falkland Islands (the) [Malvinas]', '238', 'FK', 'FLK', NULL),
(74, 'PAYS74', 'Îles Féroé', 'Faroe Islands (the)', '234', 'FO', 'FRO', NULL),
(75, 'PAYS75', 'Fidji', 'Fiji', '242', 'FJ', 'FJI', NULL),
(76, 'PAYS76', 'Finlande', 'Finland', '246', 'FI', 'FIN', NULL),
(77, 'PAYS77', 'France', 'France', '250', 'FR', 'FRA', NULL),
(78, 'PAYS78', 'Guyane française', 'French Guiana', '254', 'GF', 'GUF', NULL),
(79, 'PAYS79', 'Polynésie française', 'French Polynesia', '258', 'PF', 'PYF', NULL),
(80, 'PAYS80', 'Terres australes françaises', 'French Southern Territories (the)', '260', 'TF', 'ATF', NULL),
(81, 'PAYS81', 'Gabon', 'Gabon', '266', 'GA', 'GAB', NULL),
(82, 'PAYS82', 'Gambie', 'Gambia (the)', '270', 'GM', 'GMB', NULL),
(83, 'PAYS83', 'Géorgie', 'Georgia', '268', 'GE', 'GEO', NULL),
(84, 'PAYS84', 'Allemagne', 'Germany', '276', 'DE', 'DEU', NULL),
(85, 'PAYS85', 'Ghana', 'Ghana', '288', 'GH', 'GHA', NULL),
(86, 'PAYS86', 'Gibraltar', 'Gibraltar', '292', 'GI', 'GIB', NULL),
(87, 'PAYS87', 'Grèce', 'Greece', '300', 'GR', 'GRC', NULL),
(88, 'PAYS88', 'Groenland', 'Greenland', '304', 'GL', 'GRL', NULL),
(89, 'PAYS89', 'Grenade', 'Grenada', '308', 'GD', 'GRD', NULL),
(90, 'PAYS90', 'Guadeloupe', 'Guadeloupe', '312', 'GP', 'GLP', NULL),
(91, 'PAYS91', 'Guam', 'Guam', '316', 'GU', 'GUM', NULL),
(92, 'PAYS92', 'Guatemala', 'Guatemala', '320', 'GT', 'GTM', NULL),
(93, 'PAYS93', 'Guernesey', 'Guernsey', '831', 'GG', 'GGY', NULL),
(94, 'PAYS94', 'Guinée', 'Guinea', '324', 'GN', 'GIN', NULL),
(95, 'PAYS95', 'Guinée-Bissau', 'Guinea-Bissau', '624', 'GW', 'GNB', NULL),
(96, 'PAYS96', 'Guyana', 'Guyana', '328', 'GY', 'GUY', NULL),
(97, 'PAYS97', 'Haïti', 'Haiti', '332', 'HT', 'HTI', NULL),
(98, 'PAYS98', 'Heard-et-Îles MacDonald', 'Heard Island and McDonald Islands', '334', 'HM', 'HMD', NULL),
(99, 'PAYS99', 'Saint-Siège', 'Holy See (the)', '336', 'VA', 'VAT', NULL),
(100, 'PAYS100', 'Honduras', 'Honduras', '340', 'HN', 'HND', NULL),
(101, 'PAYS101', 'Hong Kong', 'Hong Kong', '344', 'HK', 'HKG', NULL),
(102, 'PAYS102', 'Hongrie', 'Hungary', '348', 'HU', 'HUN', NULL),
(103, 'PAYS103', 'Islande', 'Iceland', '352', 'IS', 'ISL', NULL),
(104, 'PAYS104', 'Inde', 'India', '356', 'IN', 'IND', NULL),
(105, 'PAYS105', 'Indonésie', 'Indonesia', '360', 'ID', 'IDN', NULL),
(106, 'PAYS106', 'République Islamique d''Iran', 'Iran (Islamic Republic of)', '364', 'IR', 'IRN', NULL),
(107, 'PAYS107', 'Iraq', 'Iraq', '368', 'IQ', 'IRQ', NULL),
(108, 'PAYS108', 'Irlande', 'Ireland', '372', 'IE', 'IRL', NULL),
(109, 'PAYS109', 'Île de Man', 'Isle of Man', '833', 'IM', 'IMN', NULL),
(110, 'PAYS110', 'Israël', 'Israel', '376', 'IL', 'ISR', NULL),
(111, 'PAYS111', 'Italie', 'Italy', '380', 'IT', 'ITA', NULL),
(112, 'PAYS112', 'Jamaïque', 'Jamaica', '388', 'JM', 'JAM', NULL),
(113, 'PAYS113', 'Japon', 'Japan', '392', 'JP', 'JPN', NULL),
(114, 'PAYS114', 'Jersey', 'Jersey', '832', 'JE', 'JEY', NULL),
(115, 'PAYS115', 'Jordanie', 'Jordan', '400', 'JO', 'JOR', NULL),
(116, 'PAYS116', 'Kazakhstan', 'Kazakhstan', '398', 'KZ', 'KAZ', NULL),
(117, 'PAYS117', 'Kenya', 'Kenya', '404', 'KE', 'KEN', NULL),
(118, 'PAYS118', 'Kiribati', 'Kiribati', '296', 'KI', 'KIR', NULL),
(119, 'PAYS119', 'République populaire démocratique de Corée', 'Korea (the Democratic People''s Republic of)', '408', 'KP', 'PRK', NULL),
(120, 'PAYS120', 'République de Corée', 'Korea (the Republic of)', '410', 'KR', 'KOR', NULL),
(121, 'PAYS121', 'Koweït', 'Kuwait', '414', 'KW', 'KWT', NULL),
(122, 'PAYS122', 'Kirghizistan', 'Kyrgyzstan', '417', 'KG', 'KGZ', NULL),
(123, 'PAYS123', 'Lao, République démocratique populaire', 'Lao People''s Democratic Republic (the)', '418', 'LA', 'LAO', NULL),
(124, 'PAYS124', 'Lettonie', 'Latvia', '428', 'LV', 'LVA', NULL),
(125, 'PAYS125', 'Liban', 'Lebanon', '422', 'LB', 'LBN', NULL),
(126, 'PAYS126', 'Lesotho', 'Lesotho', '426', 'LS', 'LSO', NULL),
(127, 'PAYS127', 'Libéria', 'Liberia', '430', 'LR', 'LBR', NULL),
(128, 'PAYS128', 'Libye', 'Libya', '434', 'LY', 'LBY', NULL),
(129, 'PAYS129', 'Liechtenstein', 'Liechtenstein', '438', 'LI', 'LIE', NULL),
(130, 'PAYS130', 'Lituanie', 'Lithuania', '440', 'LT', 'LTU', NULL),
(131, 'PAYS131', 'Luxembourg', 'Luxembourg', '442', 'LU', 'LUX', NULL),
(132, 'PAYS132', 'Macao', 'Macao', '446', 'MO', 'MAC', NULL),
(133, 'PAYS133', 'Macédoine', 'Macedonia (the former Yugoslav Republic of)', '807', 'MK', 'MKD', NULL),
(134, 'PAYS134', 'Madagascar', 'Madagascar', '450', 'MG', 'MDG', NULL),
(135, 'PAYS135', 'Malawi', 'Malawi', '454', 'MW', 'MWI', NULL),
(136, 'PAYS136', 'Malaisie', 'Malaysia', '458', 'MY', 'MYS', NULL),
(137, 'PAYS137', 'Maldives', 'Maldives', '462', 'MV', 'MDV', NULL),
(138, 'PAYS138', 'Mali', 'Mali', '466', 'ML', 'MLI', NULL),
(139, 'PAYS139', 'Malte', 'Malta', '470', 'MT', 'MLT', NULL),
(140, 'PAYS140', 'Îles Marshall', 'Marshall Islands (the)', '584', 'MH', 'MHL', NULL),
(141, 'PAYS141', 'Martinique', 'Martinique', '474', 'MQ', 'MTQ', NULL),
(142, 'PAYS142', 'Mauritanie', 'Mauritania', '478', 'MR', 'MRT', NULL),
(143, 'PAYS143', 'Maurice', 'Mauritius', '480', 'MU', 'MUS', NULL),
(144, 'PAYS144', 'Mayotte', 'Mayotte', '175', 'YT', 'MYT', NULL),
(145, 'PAYS145', 'Mexique', 'Mexico', '484', 'MX', 'MEX', NULL),
(146, 'PAYS146', 'États fédérés de Micronésie', 'Micronesia (Federated States of)', '583', 'FM', 'FSM', NULL),
(147, 'PAYS147', 'Moldova, République de', 'Moldova (the Republic of)', '498', 'MD', 'MDA', NULL),
(148, 'PAYS148', 'Monaco', 'Monaco', '492', 'MC', 'MCO', NULL),
(149, 'PAYS149', 'Mongolie', 'Mongolia', '496', 'MN', 'MNG', NULL),
(150, 'PAYS150', 'Monténégro', 'Montenegro', '499', 'ME', 'MNE', NULL),
(151, 'PAYS151', 'Montserrat', 'Montserrat', '500', 'MS', 'MSR', NULL),
(152, 'PAYS152', 'Maroc', 'Morocco', '504', 'MA', 'MAR', NULL),
(153, 'PAYS153', 'Mozambique', 'Mozambique', '508', 'MZ', 'MOZ', NULL),
(154, 'PAYS154', 'Myanmar', 'Myanmar', '104', 'MM', 'MMR', NULL),
(155, 'PAYS155', 'Namibie', 'Namibia', '516', 'NA', 'NAM', NULL),
(156, 'PAYS156', 'Nauru', 'Nauru', '520', 'NR', 'NRU', NULL),
(157, 'PAYS157', 'Népal', 'Nepal', '524', 'NP', 'NPL', NULL),
(158, 'PAYS158', 'Pays-Bas', 'Netherlands (the)', '528', 'NL', 'NLD', NULL),
(159, 'PAYS159', 'Nouvelle-Calédonie', 'New Caledonia', '540', 'NC', 'NCL', NULL),
(160, 'PAYS160', 'Nouvelle-Zélande', 'New Zealand', '554', 'NZ', 'NZL', NULL),
(161, 'PAYS161', 'Nicaragua', 'Nicaragua', '558', 'NI', 'NIC', NULL),
(162, 'PAYS162', 'Niger', 'Niger (the)', '562', 'NE', 'NER', NULL),
(163, 'PAYS163', 'Nigéria', 'Nigeria', '566', 'NG', 'NGA', NULL),
(164, 'PAYS164', 'Niue', 'Niue', '570', 'NU', 'NIU', NULL),
(165, 'PAYS165', 'Île Norfolk', 'Norfolk Island', '574', 'NF', 'NFK', NULL),
(166, 'PAYS166', 'Îles Mariannes du Nord', 'Northern Mariana Islands (the)', '580', 'MP', 'MNP', NULL),
(167, 'PAYS167', 'Norvège', 'Norway', '578', 'NO', 'NOR', NULL),
(168, 'PAYS168', 'Oman', 'Oman', '512', 'OM', 'OMN', NULL),
(169, 'PAYS169', 'Pakistan', 'Pakistan', '586', 'PK', 'PAK', NULL),
(170, 'PAYS170', 'Palaos', 'Palau', '585', 'PW', 'PLW', NULL),
(171, 'PAYS171', 'État de Palestine', 'Palestine, State of', '275', 'PS', 'PSE', NULL),
(172, 'PAYS172', 'Panama', 'Panama', '591', 'PA', 'PAN', NULL),
(173, 'PAYS173', 'Papouasie-Nouvelle-Guinée', 'Papua New Guinea', '598', 'PG', 'PNG', NULL),
(174, 'PAYS174', 'Paraguay', 'Paraguay', '600', 'PY', 'PRY', NULL),
(175, 'PAYS175', 'Pérou', 'Peru', '604', 'PE', 'PER', NULL),
(176, 'PAYS176', 'Philippines', 'Philippines (the)', '608', 'PH', 'PHL', NULL),
(177, 'PAYS177', 'Pitcairn', 'Pitcairn', '612', 'PN', 'PCN', NULL),
(178, 'PAYS178', 'Pologne', 'Poland', '616', 'PL', 'POL', NULL),
(179, 'PAYS179', 'Portugal', 'Portugal', '620', 'PT', 'PRT', NULL),
(180, 'PAYS180', 'Porto Rico', 'Puerto Rico', '630', 'PR', 'PRI', NULL),
(181, 'PAYS181', 'Qatar', 'Qatar', '634', 'QA', 'QAT', NULL),
(182, 'PAYS182', 'Réunion', 'Réunion', '638', 'RE', 'REU', NULL),
(183, 'PAYS183', 'Roumanie', 'Romania', '642', 'RO', 'ROU', NULL),
(184, 'PAYS184', 'Fédération de Russie', 'Russian Federation (the)', '643', 'RU', 'RUS', NULL),
(185, 'PAYS185', 'Rwanda', 'Rwanda', '646', 'RW', 'RWA', NULL),
(186, 'PAYS186', 'Saint-Barthélemy', 'Saint Barthélemy', '652', 'BL', 'BLM', NULL),
(187, 'PAYS187', 'Sainte-Hélène, Ascension et Tristan da Cunha', 'Saint Helena, Ascension and Tristan da Cunha', '654', 'SH', 'SHN', NULL),
(188, 'PAYS188', 'Saint-Kitts-et-Nevis', 'Saint Kitts and Nevis', '659', 'KN', 'KNA', NULL),
(189, 'PAYS189', 'Sainte-Lucie', 'Saint Lucia', '662', 'LC', 'LCA', NULL),
(190, 'PAYS190', 'Saint-Martin (partie française)', 'Saint Martin (French part)', '663', 'MF', 'MAF', NULL),
(191, 'PAYS191', 'Saint-Pierre-et-Miquelon', 'Saint Pierre and Miquelon', '666', 'PM', 'SPM', NULL),
(192, 'PAYS192', 'Saint-Vincent-et-les Grenadines', 'Saint Vincent and the Grenadines', '670', 'VC', 'VCT', NULL),
(193, 'PAYS193', 'Samoa', 'Samoa', '882', 'WS', 'WSM', NULL),
(194, 'PAYS194', 'Saint-Marin', 'San Marino', '674', 'SM', 'SMR', NULL),
(195, 'PAYS195', 'Sao Tomé-et-Principe', 'Sao Tome and Principe', '678', 'ST', 'STP', NULL),
(196, 'PAYS196', 'Arabie saoudite', 'Saudi Arabia', '682', 'SA', 'SAU', NULL),
(197, 'PAYS197', 'Sénégal', 'Senegal', '686', 'SN', 'SEN', NULL),
(198, 'PAYS198', 'Serbie', 'Serbia', '688', 'RS', 'SRB', NULL),
(199, 'PAYS199', 'Seychelles', 'Seychelles', '690', 'SC', 'SYC', NULL),
(200, 'PAYS200', 'Sierra Leone', 'Sierra Leone', '694', 'SL', 'SLE', NULL),
(201, 'PAYS201', 'Singapour', 'Singapore', '702', 'SG', 'SGP', NULL),
(202, 'PAYS202', 'Saint-Martin (partie néerlandaise)', 'Sint Maarten (Dutch part)', '534', 'SX', 'SXM', NULL),
(203, 'PAYS203', 'Slovaquie', 'Slovakia', '703', 'SK', 'SVK', NULL),
(204, 'PAYS204', 'Slovénie', 'Slovenia', '705', 'SI', 'SVN', NULL),
(205, 'PAYS205', 'Îles Salomon', 'Solomon Islands', '90', 'SB', 'SLB', NULL),
(206, 'PAYS206', 'Somalie', 'Somalia', '706', 'SO', 'SOM', NULL),
(207, 'PAYS207', 'Afrique du Sud', 'South Africa', '710', 'ZA', 'ZAF', NULL),
(208, 'PAYS208', 'Géorgie du Sud-et-les Îles Sandwich du Sud', 'South Georgia and the South Sandwich Islands', '239', 'GS', 'SGS', NULL),
(209, 'PAYS209', 'Soudan du Sud', 'South Sudan', '728', 'SS', 'SSD', NULL),
(210, 'PAYS210', 'Espagne', 'Spain', '724', 'ES', 'ESP', NULL),
(211, 'PAYS211', 'Sri Lanka', 'Sri Lanka', '144', 'LK', 'LKA', NULL),
(212, 'PAYS212', 'Soudan', 'Sudan (the)', '729', 'SD', 'SDN', NULL),
(213, 'PAYS213', 'Suriname', 'Suriname', '740', 'SR', 'SUR', NULL),
(214, 'PAYS214', 'Svalbard et l''Île Jan Mayen', 'Svalbard and Jan Mayen', '744', 'SJ', 'SJM', NULL),
(215, 'PAYS215', 'Suède', 'Sweden', '752', 'SE', 'SWE', NULL),
(216, 'PAYS216', 'Suisse', 'Switzerland', '756', 'CH', 'CHE', NULL),
(217, 'PAYS217', 'République arabe syrienne', 'Syrian Arab Republic', '760', 'SY', 'SYR', NULL),
(218, 'PAYS218', 'Taïwan (Province de Chine)', 'Taiwan (Province of China)', '158', 'TW', 'TWN', NULL),
(219, 'PAYS219', 'Tadjikistan', 'Tajikistan', '762', 'TJ', 'TJK', NULL),
(220, 'PAYS220', 'Tanzanie, République-Unie de', 'Tanzania, United Republic of', '834', 'TZ', 'TZA', NULL),
(221, 'PAYS221', 'Thaïlande', 'Thailand', '764', 'TH', 'THA', NULL),
(222, 'PAYS222', 'Timor-Leste', 'Timor-Leste', '626', 'TL', 'TLS', NULL),
(223, 'PAYS223', 'Togo', 'Togo', '768', 'TG', 'TGO', NULL),
(224, 'PAYS224', 'Tokelau', 'Tokelau', '772', 'TK', 'TKL', NULL),
(225, 'PAYS225', 'Tonga', 'Tonga', '776', 'TO', 'TON', NULL),
(226, 'PAYS226', 'Trinité-et-Tobago', 'Trinidad and Tobago', '780', 'TT', 'TTO', NULL),
(227, 'PAYS227', 'Tunisie', 'Tunisia', '788', 'TN', 'TUN', NULL),
(228, 'PAYS228', 'Turquie', 'Turkey', '792', 'TR', 'TUR', NULL),
(229, 'PAYS229', 'Turkménistan', 'Turkmenistan', '795', 'TM', 'TKM', NULL),
(230, 'PAYS230', 'Îles Turks-et-Caïcos', 'Turks and Caicos Islands (the)', '796', 'TC', 'TCA', NULL),
(231, 'PAYS231', 'Tuvalu', 'Tuvalu', '798', 'TV', 'TUV', NULL),
(232, 'PAYS232', 'Ouganda', 'Uganda', '800', 'UG', 'UGA', NULL),
(233, 'PAYS233', 'Ukraine', 'Ukraine', '804', 'UA', 'UKR', NULL),
(234, 'PAYS234', 'Émirats arabes unis', 'United Arab Emirates (the)', '784', 'AE', 'ARE', NULL),
(235, 'PAYS235', 'Royaume-Uni de Grande-Bretagne et d''Irlande du Nor', 'United Kingdom of Great Britain and Northern Irela', '826', 'GB', 'GBR', NULL),
(236, 'PAYS236', 'Îles mineures éloignées des États-Unis', 'United States Minor Outlying Islands (the)', '581', 'UM', 'UMI', NULL),
(237, 'PAYS237', 'États-Unis d''Amérique', 'United States of America (the)', '840', 'US', 'USA', NULL),
(238, 'PAYS238', 'Uruguay', 'Uruguay', '858', 'UY', 'URY', NULL),
(239, 'PAYS239', 'Ouzbékistan', 'Uzbekistan', '860', 'UZ', 'UZB', NULL),
(240, 'PAYS240', 'Vanuatu', 'Vanuatu', '548', 'VU', 'VUT', NULL),
(241, 'PAYS241', 'République bolivarienne du Venezuela', 'Venezuela (Bolivarian Republic of)', '862', 'VE', 'VEN', NULL),
(242, 'PAYS242', 'Viet Nam', 'Viet Nam', '704', 'VN', 'VNM', NULL),
(243, 'PAYS243', 'Îles Vierges britanniques', 'Virgin Islands (British)', '92', 'VG', 'VGB', NULL),
(244, 'PAYS244', 'Îles Vierges des États-Unis', 'Virgin Islands (U.S.)', '850', 'VI', 'VIR', NULL),
(245, 'PAYS245', 'Wallis-et-Futuna', 'Wallis and Futuna', '876', 'WF', 'WLF', NULL),
(246, 'PAYS246', 'Sahara occidental*', 'Western Sahara*', '732', 'EH', 'ESH', NULL),
(247, 'PAYS247', 'Yémen', 'Yemen', '887', 'YE', 'YEM', NULL),
(248, 'PAYS248', 'Zambie', 'Zambia', '894', 'ZM', 'ZMB', NULL),
(249, 'PAYS249', 'Zimbabwe', 'Zimbabwe', '716', 'ZW', 'ZWE', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `tr_priorite`
--

CREATE TABLE `tr_priorite` (
  `ID_PRIORITE` int(11) NOT NULL,
  `CODE_PRIORITE` varchar(50) NOT NULL,
  `LIB_PRIORITE` varchar(250) NOT NULL,
  `SUPPRIMER` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `tr_priorite`
--

INSERT INTO `tr_priorite` (`ID_PRIORITE`, `CODE_PRIORITE`, `LIB_PRIORITE`, `SUPPRIMER`) VALUES
(1, 'PRIOR01', 'P1', 0),
(2, 'PRIOR02', 'P2', 0),
(3, 'PRIOR03', 'P3', 0);

-- --------------------------------------------------------

--
-- Structure de la table `tr_site_vaccination`
--

CREATE TABLE `tr_site_vaccination` (
  `ID_SITE_VACCINATION` int(11) NOT NULL,
  `CODE_SITE_VACCINATION` varchar(50) NOT NULL,
  `LIB_SITE_VACCINATION` varchar(250) NOT NULL,
  `ADRESSE_SITE_VACCINATION` varchar(500) NOT NULL,
  `CONTACT_SITE_VACCINATION` varchar(250) NOT NULL,
  `CATEG_SITE_VACCINATION` varchar(250) NOT NULL,
  `ID_DISTRICT_SANITAIRE` int(11) NOT NULL,
  `SUPPRIMER` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `tr_site_vaccination`
--

INSERT INTO `tr_site_vaccination` (`ID_SITE_VACCINATION`, `CODE_SITE_VACCINATION`, `LIB_SITE_VACCINATION`, `ADRESSE_SITE_VACCINATION`, `CONTACT_SITE_VACCINATION`, `CATEG_SITE_VACCINATION`, `ID_DISTRICT_SANITAIRE`, `SUPPRIMER`) VALUES
(1, 'SITVAC01', 'Hopital Makelekele', '', '', 'FIXE', 34, NULL),
(2, 'SITVAC02', 'Hopital Talangai', '', '', 'AMBULATOIRE', 39, NULL),
(3, 'SITVAC03', 'Blanche Gomes', '', '', 'FIXE', 36, NULL),
(4, 'SITVAC04', 'CHU-Brazzaville', '', '', 'FIXE', 36, NULL),
(5, 'SITVAC05', 'Mfilou (hopital)', '', '', 'FIXE', 40, NULL),
(6, 'SITVAC06', 'Hopital Militaire', '', '', 'FIXE', 36, NULL),
(7, 'SITVAC07', 'Siège de la banque BSCA', '', '', 'AMBULATOIRE', 36, NULL),
(8, 'SITVAC08', 'Ministère des affaires etrangeres', '', '', 'AMBULATOIRE', 37, NULL),
(9, 'SITVAC09', 'CSI de Moukondo', '', '', 'FIXE', 37, NULL),
(10, 'SITVAC10', 'CSI Marien Ngouabi', '', '', 'FIXE', 39, NULL),
(11, 'SITVAC11', 'CSI Nkombo', '', '', 'FIXE', 42, NULL),
(12, 'SITVAC12', 'OMS AFRO', '', '', 'FIXE', 1, NULL),
(13, 'SITVAC13', 'Clinique de la GR', '', '', 'FIXE', 38, NULL),
(14, 'SITVAC14', 'Clinique de la DGSSPR', '', '', 'FIXE', 35, NULL),
(15, 'SITVAC15', 'Le CNRD (CHU)', '', '', 'FIXE', 36, NULL),
(16, 'SITVAC16', 'Sapeurs pompiers', '', '', 'FIXE', 36, NULL),
(17, 'SITVAC17', 'Jeane vialle', '', '', 'FIXE', 38, NULL),
(18, 'SITVAC18', 'INSTITUT FRANCAIS (Ex.CCF)', '', '', 'AMBULATOIRE', 35, NULL),
(19, 'SITVAC19', 'CFV DE L''HYGIENE', '', '', 'FIXE', 36, NULL),
(20, 'SITVAC20', 'CMS- de France', '', '', 'AMBULATOIRE', 36, NULL),
(22, 'SITVAC22', 'CSI DE MBOTA', '', '', 'FIXE', 46, NULL),
(23, 'SITVAC23', 'Hopital Tie-tie', '', '', 'FIXE', 45, NULL),
(24, 'SITVAC24', 'Hopital Militaire', '', '', 'FIXE', 43, NULL),
(25, 'SITVAC25', 'CSI Ngoyo', '', '', 'FIXE', 48, NULL),
(26, 'SITVAC26', 'CSI de Mongo-poukou', '', '', 'FIXE', 47, NULL),
(27, 'SITVAC27', 'CSI MVOUMVOU', '', '', 'FIXE', 44, NULL),
(28, 'SITVAC28', 'Mairie de Pointe-Noire', '', '', 'FIXE', 43, NULL),
(29, 'SITVAC29', 'HG de Patra', '', '', 'FIXE', 48, NULL),
(31, 'SITVAC31', 'HG Loandjili', '', '', 'FIXE', 46, NULL),
(32, 'SITVAC32', 'DS Loutete', '', '', 'FIXE', 5, NULL),
(33, 'SITVAC33', 'DS Madingou', '', '', 'FIXE', 1, NULL),
(34, 'SITVAC34', 'DS Nkayi', '', '', 'FIXE', 3, NULL),
(35, 'SITVAC35', 'Nkayi CENTRE', '', '', 'FIXE', 3, NULL),
(36, 'SITVAC36', 'DS Loudima', '', '', 'FIXE', 4, NULL),
(37, 'SITVAC37', 'Loutete CENTRE', '', '', 'FIXE', 5, NULL),
(38, 'SITVAC38', 'DS Mouyoundzi', '', '', 'FIXE', 2, NULL),
(39, 'SITVAC39', 'Madingou CENTRE', '', '', 'FIXE', 1, NULL),
(40, 'SITVAC40', 'HG 31 juillet Owando', '', '', 'FIXE', 25, NULL),
(41, 'SITVAC41', 'HG HELBO Oyo', '', '', 'FIXE', 26, NULL),
(42, 'SITVAC42', 'Owando CENTRE', '', '', 'FIXE', 25, NULL),
(43, 'SITVAC43', 'HGELBO Oyo', '', '', 'FIXE', 26, NULL),
(44, 'SITVAC44', 'DS Owando', '', '', 'FIXE', 25, NULL),
(45, 'SITVAC45', 'DS Oyo-Alima', '', '', 'FIXE', 26, NULL),
(46, 'SITVAC46', 'DS Mossaka', '', '', 'FIXE', 27, NULL),
(47, 'SITVAC47', 'Ewo Centre', '', '', 'FIXE', 28, NULL),
(48, 'SITVAC48', 'DS Etoumbi', '', '', 'FIXE', 29, NULL),
(49, 'SITVAC49', 'Etoumbi centre', '', '', 'FIXE', 29, NULL),
(50, 'SITVAC50', 'DS Ewo', '', '', 'FIXE', 28, NULL),
(51, 'SITVAC51', 'DS Madingo kayes', '', '', 'FIXE', 7, NULL),
(52, 'SITVAC52', 'Site Loango CENTRE', '', '', 'FIXE', 6, NULL),
(53, 'SITVAC53', 'DS Mvouti-Kakamoeka', '', '', 'FIXE', 8, NULL),
(54, 'SITVAC54', 'Sibiti CENTRE', '', '', 'FIXE', 15, NULL),
(55, 'SITVAC55', 'Zanaga CENTRE', '', '', 'FIXE', 16, NULL),
(56, 'SITVAC56', 'DS Sibiti', '', '', 'FIXE', 15, NULL),
(57, 'SITVAC57', 'DS Zanaga', '', '', 'FIXE', 16, NULL),
(58, 'SITVAC58', 'Impfondo centre', '', '', 'FIXE', 32, NULL),
(59, 'SITVAC59', 'DS Impfondo', '', '', 'FIXE', 32, NULL),
(60, 'SITVAC60', 'DS Enyelle-Betou', '', '', 'FIXE', 33, NULL),
(61, 'SITVAC61', 'Enyelle centre', '', '', 'FIXE', 33, NULL),
(62, 'SITVAC62', 'Betou centre', '', '', 'FIXE', 33, NULL),
(63, 'SITVAC63', 'Dolisie CENTRE', '', '', 'FIXE', 12, NULL),
(64, 'SITVAC64', 'DS Dolisie', '', '', 'FIXE', 12, NULL),
(65, 'SITVAC65', 'DS Mossendjo', '', '', 'FIXE', 14, NULL),
(66, 'SITVAC66', 'DS Mayoko', '', '', 'FIXE', 53, NULL),
(67, 'SITVAC67', 'Mossendjo CENTRE', '', '', 'FIXE', 14, NULL),
(68, 'SITVAC68', 'DS Kimongo', '', '', 'FIXE', 52, NULL),
(69, 'SITVAC69', 'Mayoko CENTRE', '', '', 'FIXE', 53, NULL),
(70, 'SITVAC70', 'DS Kibangou', '', '', 'FIXE', 13, NULL),
(71, 'SITVAC71', 'Kibangou CENTRE', '', '', 'FIXE', 13, NULL),
(72, 'SITVAC72', 'Djambala CENTRE', '', '', 'FIXE', 22, NULL),
(73, 'SITVAC73', 'DS Djambala-Lekana', '', '', 'FIXE', 22, NULL),
(74, 'SITVAC74', 'Gamboma CENTRE', '', '', 'FIXE', 23, NULL),
(75, 'SITVAC75', 'DS Abala', '', '', 'FIXE', 24, NULL),
(76, 'SITVAC76', 'DS Gamboma', '', '', 'FIXE', 23, NULL),
(77, 'SITVAC77', 'DS Ngo-Mpouya', '', '', 'FIXE', 56, NULL),
(78, 'SITVAC78', 'Abala CENTRE', '', '', 'FIXE', 23, NULL),
(79, 'SITVAC79', 'DS Mindouli', '', '', 'FIXE', 19, NULL),
(80, 'SITVAC80', 'Kinkala Centre', '', '', 'FIXE', 17, NULL),
(81, 'SITVAC81', 'DS Kindamba', '', '', 'FIXE', 20, NULL),
(82, 'SITVAC82', 'DS de Kinkala', '', '', 'FIXE', 17, NULL),
(83, 'SITVAC83', 'DS Boko', '', '', 'FIXE', 54, NULL),
(84, 'SITVAC84', 'DS Ignie-Ngabe-Mayama', '', '', 'FIXE', 21, NULL),
(86, 'SITVAC86', 'Site de CIB-Pokola', '', '', 'FIXE', 30, NULL),
(87, 'SITVAC87', 'DS OUESSO', '', '', 'FIXE', 30, NULL),
(88, 'SITVAC88', 'DS SEMBE', '', '', 'FIXE', 31, NULL),
(89, 'SITVAC89', 'Commune de OUESSO', '', '', 'FIXE', 30, NULL),
(90, 'SITVAC90', 'SEMBE centre', '', '', 'FIXE', 31, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `tr_type_agent`
--

CREATE TABLE `tr_type_agent` (
  `ID_TYPE_AGENT` int(11) NOT NULL,
  `CODE_TYPE_AGENT` varchar(50) NOT NULL,
  `LIB_TYPE_AGENT` varchar(250) NOT NULL,
  `SUPPRIMER` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `tr_type_agent`
--

INSERT INTO `tr_type_agent` (`ID_TYPE_AGENT`, `CODE_TYPE_AGENT`, `LIB_TYPE_AGENT`, `SUPPRIMER`) VALUES
(1, 'TYPAG01', 'OPERATEUR SAISIE', NULL),
(2, 'TYPAG02', 'VACCINATEUR', NULL),
(3, 'TYPAG03', 'SECRETAIRE', NULL),
(4, 'TYPAG04', 'RESPONSABLE DU SITE', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `tr_type_antecedent`
--

CREATE TABLE `tr_type_antecedent` (
  `ID_TYPE_ANTECEDENT` int(11) NOT NULL,
  `CODE_TYPE_ANTECEDENT` varchar(50) NOT NULL,
  `LIB_TYPE_ANTECEDENT` varchar(250) NOT NULL,
  `SUPPRIMER` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `tr_type_antecedent`
--

INSERT INTO `tr_type_antecedent` (`ID_TYPE_ANTECEDENT`, `CODE_TYPE_ANTECEDENT`, `LIB_TYPE_ANTECEDENT`, `SUPPRIMER`) VALUES
(1, 'TYPANT01', 'HYPERTENSION ARTERIELLE', NULL),
(2, 'TYPANT02', 'AVC', NULL),
(3, 'TYPANT03', 'DIABETE', NULL),
(4, 'TYPANT04', 'OBESITE', NULL),
(5, 'TYPANT05', 'CANCER', NULL),
(6, 'TYPANT06', 'BPCO', NULL),
(7, 'TYPANT07', 'INSUFFISANCE CARDIAQUE', NULL),
(8, 'TYPANT08', 'HEPATIQUES CHRONIQUES', NULL),
(9, 'TYPANT09', 'ASTHME SEVERE', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `tr_type_mapi`
--

CREATE TABLE `tr_type_mapi` (
  `ID_TYPE_MAPI` int(11) NOT NULL,
  `CODE_TYPE_MAPI` varchar(50) NOT NULL,
  `LIB_TYPE_MAPI` varchar(250) NOT NULL,
  `SUPPRIMER` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `tr_type_mapi`
--

INSERT INTO `tr_type_mapi` (`ID_TYPE_MAPI`, `CODE_TYPE_MAPI`, `LIB_TYPE_MAPI`, `SUPPRIMER`) VALUES
(1, 'TYPMAPI01', 'MAPI Mineur\r\n', NULL),
(2, 'TYPMAPI02', 'MAPI Grave\r\n', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `tr_type_piece_identite`
--

CREATE TABLE `tr_type_piece_identite` (
  `ID_TYPE_PIECE_IDENTITE` int(11) NOT NULL,
  `CODE_TYPE_PIECE_IDENTITE` varchar(50) NOT NULL,
  `LIB_TYPE_PIECE_IDENTITE` varchar(250) NOT NULL,
  `LIB_COURT_TYPE_PIECE_IDENTITE` varchar(250) NOT NULL,
  `SUPPRIMER` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `tr_type_piece_identite`
--

INSERT INTO `tr_type_piece_identite` (`ID_TYPE_PIECE_IDENTITE`, `CODE_TYPE_PIECE_IDENTITE`, `LIB_TYPE_PIECE_IDENTITE`, `LIB_COURT_TYPE_PIECE_IDENTITE`, `SUPPRIMER`) VALUES
(1, 'TYPIECE01', 'Passeport', 'PSPRT', NULL),
(2, 'TYPIECE02', 'Carte nationale d''identité', 'CNI', NULL),
(3, 'TYPIECE03', 'Carte consulaire', 'CC', NULL),
(4, 'TYPIECE04', 'Carte de séjour', 'CS', NULL),
(5, 'TYPIECE05', 'Carte scolaire', 'CSC', NULL),
(6, 'TYPIECE06', 'Carte d''étudiant', 'CEL', NULL),
(7, 'TYPIECE07', 'Permis de conduire', 'PDC', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `tr_type_symptome`
--

CREATE TABLE `tr_type_symptome` (
  `ID_TYPE_SYMPTOME` int(11) NOT NULL,
  `CODE_TYPE_SYMPTOME` varchar(50) NOT NULL,
  `LIB_TYPE_SYMPTOME` varchar(250) NOT NULL,
  `SUPPRIMER` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `tr_type_symptome`
--

INSERT INTO `tr_type_symptome` (`ID_TYPE_SYMPTOME`, `CODE_TYPE_SYMPTOME`, `LIB_TYPE_SYMPTOME`, `SUPPRIMER`) VALUES
(1, 'SYMP01', 'FIEVRE', 0),
(2, 'SYMP02', 'TOUX SECHE', 0),
(3, 'SYMP03', 'ESSOUFFLEMENT', 0),
(4, 'SYMP04', 'FATIGUE', 0),
(5, 'SYMP05', 'PERTE DU GOUT ET DE L’ODORAT', 0);

-- --------------------------------------------------------

--
-- Structure de la table `tr_type_vaccin`
--

CREATE TABLE `tr_type_vaccin` (
  `ID_TYPE_VACCIN` int(11) NOT NULL,
  `CODE_TYPE_VACCIN` varchar(50) NOT NULL,
  `LIB_TYPE_VACCIN` varchar(250) NOT NULL,
  `TYPE_FABRICATION` varchar(250) DEFAULT NULL,
  `TEMPERATURE_STOCK` varchar(250) DEFAULT NULL,
  `NBRE_DOSE` int(11) DEFAULT NULL,
  `ID_PAYS_ORIGINE` int(11) DEFAULT NULL,
  `SUPPRIMER` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `tr_type_vaccin`
--

INSERT INTO `tr_type_vaccin` (`ID_TYPE_VACCIN`, `CODE_TYPE_VACCIN`, `LIB_TYPE_VACCIN`, `TYPE_FABRICATION`, `TEMPERATURE_STOCK`, `NBRE_DOSE`, `ID_PAYS_ORIGINE`, `SUPPRIMER`) VALUES
(1, 'VACCIN01', 'SINOPHARM', 'VIRUS INACTIVE', NULL, 2, 46, NULL),
(2, 'VACCIN02', 'SPUTNIK-LIGHT', 'VECTEUR VIRAL', NULL, 1, 184, NULL),
(3, 'VACCIN03', 'SPUTNIK-V', 'VECTEUR VIRAL', NULL, 2, 184, NULL),
(4, 'VACCIN04', 'JANSSEN', 'VECTEUR VIRAL', NULL, 1, 237, NULL),
(5, 'VACCIN05', 'PFIZER', 'ARN', NULL, 1, 237, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `t_antecedent_personne`
--

CREATE TABLE `t_antecedent_personne` (
  `ID_ANTECEDENT_PERSONNE` int(11) NOT NULL,
  `DESCRIPTION` varchar(500) NOT NULL,
  `DATE_DECLARATION` date DEFAULT NULL,
  `ID_TYPE_ANTECEDENT` int(11) NOT NULL,
  `ID_PERSONNE` int(11) NOT NULL,
  `SUPPRIMER` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `t_appareil`
--

CREATE TABLE `t_appareil` (
  `ADRESSE_MAC` varchar(100) NOT NULL,
  `ID_APPAREIL` int(11) NOT NULL,
  `SEQ` varchar(30) NOT NULL,
  `LIBELLE` varchar(50) NOT NULL,
  `CODE` varchar(50) NOT NULL,
  `SUPPRIMER` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `t_cnx`
--

CREATE TABLE `t_cnx` (
  `IDt_cnx` bigint(20) NOT NULL,
  --`IDt_menu` bigint(20) DEFAULT NULL,--
  `IDtr_droit` bigint(20) DEFAULT NULL,
  `IDt_groupe` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `t_dose_vaccination`
--

CREATE TABLE `t_dose_vaccination` (
  `ID_DOSE_VACCINATION` int(11) NOT NULL,
  `CODE_DOSE_VACCINATION` varchar(50) NOT NULL,
  `DATE_DOSE_PRISEE_VACCIN` date NOT NULL,
  `NUMERO_DOSE_PRISEE_VACCIN` int(11) DEFAULT NULL,
  `ID_LOT_DOSE_LIVRE` int(11) NOT NULL,
  `ID_VACCINATION` int(11) NOT NULL,
  `SUPPRIMER` int(11) DEFAULT '0',
  `NUMERO_REGISTRE_VACCINATION` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `t_droit`
--

CREATE TABLE `t_droit` (
  `IDtr_droit` bigint(20) NOT NULL,
  `LIB_DROIT` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `t_groupe`
--

CREATE TABLE `t_groupe` (
  `IDt_groupe` bigint(20) NOT NULL,
  `liB_GROUPE` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `t_lot_dose_livre`
--

CREATE TABLE `t_lot_dose_livre` (
  `ID_LOT_DOSE_LIVRE` int(11) NOT NULL,
  `NUMERO_LOT_FABRIQUANT` varchar(250) NOT NULL,
  `LIB_LOT_DOSE_LIVRE` varchar(250) NOT NULL,
  `QTE_STOCK_LIVRE` int(11) NOT NULL,
  `QTE_STOCK_CONSOMME` int(11) DEFAULT NULL,
  `QTE_STOCK_PERDU` int(11) DEFAULT NULL,
  `QTE_STOCK_DISPONIBLE` int(11) DEFAULT NULL,
  `DATE_RECEPTION` datetime NOT NULL,
  `DATE_FABRICATION_LOT` datetime DEFAULT NULL,
  `DATE_PEREMPTION_LOT` date NOT NULL,
  `ID_DOSE` int(11) NOT NULL,
  `SUPPRIMER` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `t_mapi`
--

CREATE TABLE `t_mapi` (
  `ID_MAPI` int(11) NOT NULL,
  `LIB_MAPI` varchar(250) NOT NULL,
  `DESCRIPTION_MAPI` varchar(500) DEFAULT NULL,
  `DATE_APPARITION_MAPI` date DEFAULT NULL,
  `DATE_DECLARATION_MAPI` date DEFAULT NULL,
  `ID_DOSE_VACCINATION` int(11) NOT NULL,
  `ID_TYPE_MAPI` int(11) NOT NULL,
  `SUPPRIMER` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `t_objet`
--

CREATE TABLE `t_objet` (
  `IDt_role` bigint(20) NOT NULL,
  `LIB_ROLE` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `t_personne`
--

CREATE TABLE `t_personne` (
  `ID_PERSONNE` int(11) NOT NULL,
  `NUMERO_PERSONNE` varchar(50) NOT NULL,
  `NOM_PERSONNE` varchar(100) NOT NULL,
  `NOM_JEUNE_FILLE` varchar(100) DEFAULT NULL,
  `PRENOM_PERSONNE` varchar(100) DEFAULT NULL,
  `DATE_NAISSANCE` date DEFAULT NULL,
  `LIEU_NAISSANCE` varchar(50) DEFAULT NULL,
  `SEXE` varchar(50) NOT NULL,
  `ID_PAYS` int(11) NOT NULL,
  `SUPPRIMER` int(11) DEFAULT '0',
  `NOM_PRENOM_PERSONNE_CONTACT` varchar(100) DEFAULT NULL,
  `TELEPHONE_PERSONNE_CONTACT` varchar(20) DEFAULT NULL,
  `EMAIL_PERSONNE_CONTACT` varchar(50) DEFAULT NULL,
  `NUM_PIECE_IDENTITE_PERSONNE_CONTACT` varchar(50) DEFAULT NULL,
  `ANNEE_NAISSANCE_PERSONNE` int(11) DEFAULT NULL,
  `NOM_PERE` varchar(50) NOT NULL,
  `NOM_MERE` varchar(50) NOT NULL,
  `ANCIEN_ID_VACCINATION` varchar(50) DEFAULT NULL,
  `ANCIEN_ID_LABORATOIRE` varchar(50) DEFAULT NULL,
  `ANCIEN_ID_PRISE_EN_CHARGE` varchar(50) DEFAULT NULL,
  `PHOTO` varchar(50) DEFAULT NULL,
  `RANG_NAISSANCE` varchar(3) DEFAULT NULL,
  `NUMERO_REGISTRE` varchar(50) DEFAULT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_used_at` varchar(50) DEFAULT NULL,
  `ID_SESSION_LOG` int(11) NOT NULL,
  `TRANSFERER` tinyint(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `t_session_log`
--

CREATE TABLE `t_session_log` (
  `ID` bigint(20) NOT NULL,
  `CODE` varchar(50) NOT NULL,
  `ID_APPAREIL` int(11) NOT NULL,
  `ID_USER` int(11) NOT NULL,
  `DATEHEURE_CONNEXION` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `CANAL` varchar(50) DEFAULT NULL,
  `ADRESSE_IP` varchar(50) DEFAULT NULL,
  `SUPPRIMER` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `t_symptome_dose_vaccination`
--

CREATE TABLE `t_symptome_dose_vaccination` (
  `ID_SYMPTOME_DOSE_VACCINATION` int(11) NOT NULL,
  `DESCRIPTION` varchar(500) DEFAULT NULL,
  `DATE_APPARITION_SYMPTOME` date DEFAULT NULL,
  `ID_TYPE_SYMPTOME` int(11) NOT NULL,
  `ID_DOSE_VACCINATION` int(11) NOT NULL,
  `SUPPRIMER` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `t_user`
--

CREATE TABLE `t_user` (
  `ID_USER` int(11) NOT NULL,
  `LOGIN` varchar(50) NOT NULL,
  `MOT_DE_PASSE` varchar(20) NOT NULL,
  `QUETION_RECUP_1` varchar(500) NOT NULL,
  `REPONSE_RECUP_1` varchar(500) NOT NULL,
  `ID_AGENT` int(11) NOT NULL,
  `SUPPRIMER` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `t_user_t_groupe`
--

CREATE TABLE `t_user_t_groupe` (
  `IDt_groupe` bigint(20) NOT NULL,
  `ID_USER` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `t_vaccination`
--

CREATE TABLE `t_vaccination` (
  `ID_VACCINATION` int(11) NOT NULL,
  `TEST_DESPISTAGE_EFFECTUE` tinyint(1) DEFAULT NULL,
  `DEJA_POSITIF` tinyint(1) DEFAULT NULL,
  `RESULTAT_DERNIER_TEST` varchar(50) DEFAULT NULL,
  `DATE_DERNIER_TEST` date DEFAULT NULL,
  `DERNIERE_DOSE_VACCIN` int(11) DEFAULT NULL,
  `NUM_PIECE_IDENT_PERSONNE` varchar(50) DEFAULT NULL,
  `PROFESSION` varchar(50) DEFAULT NULL,
  `E_MAIL` varchar(100) DEFAULT NULL,
  `NUM_TELEPHONE1` varchar(50) DEFAULT NULL,
  `NUM_TELEPHONE2` varchar(50) DEFAULT NULL,
  `ADRESSE1` varchar(250) NOT NULL,
  `ADRESSE2` varchar(250) DEFAULT NULL,
  `ID_TYPE_PIECE_IDENTITE` int(11) NOT NULL,
  `ID_PERSONNE` int(11) NOT NULL,
  `ID_SITE_VACCINATION` int(11) NOT NULL,
  `ID_ARRONDISSEMENT_RESIDENCE` int(11) NOT NULL,
  `ID_DISTRICT_RESIDENCE` int(11) NOT NULL,
  `ID_CAT_PROFESSION` int(11) NOT NULL,
  `SUPPRIMER` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `tr_agent`
--
ALTER TABLE `tr_agent`
  ADD PRIMARY KEY (`ID_AGENT`),
  ADD KEY `FK_AGENT_TYPE_AGENT` (`ID_TYPE_AGENT`);

--
-- Index pour la table `tr_arrondissement`
--
ALTER TABLE `tr_arrondissement`
  ADD PRIMARY KEY (`ID_ARRONDISSEMENT`),
  ADD KEY `FK_ARRONDISSEMENT_COMMUNE` (`ID_COMMUNE`),
  ADD KEY `FK_ARRONDISSEMENT_DISTRICT_SANITAIRE` (`ID_DISTRICT_SANITAIRE`);

--
-- Index pour la table `tr_categorie_profession`
--
ALTER TABLE `tr_categorie_profession`
  ADD PRIMARY KEY (`ID_CAT_PROFESSION`),
  ADD KEY `FK_PRIORITE_CATEGORIE_PROFESSION` (`ID_PRIORITE`);

--
-- Index pour la table `tr_commune`
--
ALTER TABLE `tr_commune`
  ADD PRIMARY KEY (`ID_COMMUNE`),
  ADD KEY `FK_DEPARTEMENT_COMMUNE` (`ID_DEPARTEMENT`);

--
-- Index pour la table `tr_departement`
--
ALTER TABLE `tr_departement`
  ADD PRIMARY KEY (`ID_DEPARTEMENT`);

--
-- Index pour la table `tr_district`
--
ALTER TABLE `tr_district`
  ADD PRIMARY KEY (`ID_DISTRICT`),
  ADD KEY `FK_DEPARTEMENT_DISTRICT` (`ID_DEPARTEMENT`),
  ADD KEY `FK_DISTRICT_SANITAIRE_DISTRICT` (`ID_DISTRICT_SANITAIRE`);

--
-- Index pour la table `tr_district_sanitaire`
--
ALTER TABLE `tr_district_sanitaire`
  ADD PRIMARY KEY (`ID_DISTRICT_SANITAIRE`),
  ADD KEY `FK_DEPARTEMENT_DISTRICT_SANITAIRE` (`ID_DEPARTEMENT`);

--
-- Index pour la table `tr_dose`
--
ALTER TABLE `tr_dose`
  ADD PRIMARY KEY (`ID_DOSE`),
  ADD KEY `FK_DOSE_TYPE_VACCIN` (`ID_TYPE_VACCIN`);

--
-- Index pour la table `tr_pays`
--
ALTER TABLE `tr_pays`
  ADD PRIMARY KEY (`ID_PAYS`);

--
-- Index pour la table `tr_priorite`
--
ALTER TABLE `tr_priorite`
  ADD PRIMARY KEY (`ID_PRIORITE`);

--
-- Index pour la table `tr_site_vaccination`
--
ALTER TABLE `tr_site_vaccination`
  ADD PRIMARY KEY (`ID_SITE_VACCINATION`),
  ADD KEY `FK_DISTRICT_SANITAIRE_SITE` (`ID_DISTRICT_SANITAIRE`);

--
-- Index pour la table `tr_type_agent`
--
ALTER TABLE `tr_type_agent`
  ADD PRIMARY KEY (`ID_TYPE_AGENT`);

--
-- Index pour la table `tr_type_antecedent`
--
ALTER TABLE `tr_type_antecedent`
  ADD PRIMARY KEY (`ID_TYPE_ANTECEDENT`);

--
-- Index pour la table `tr_type_mapi`
--
ALTER TABLE `tr_type_mapi`
  ADD PRIMARY KEY (`ID_TYPE_MAPI`);

--
-- Index pour la table `tr_type_piece_identite`
--
ALTER TABLE `tr_type_piece_identite`
  ADD PRIMARY KEY (`ID_TYPE_PIECE_IDENTITE`);

--
-- Index pour la table `tr_type_symptome`
--
ALTER TABLE `tr_type_symptome`
  ADD PRIMARY KEY (`ID_TYPE_SYMPTOME`);

--
-- Index pour la table `tr_type_vaccin`
--
ALTER TABLE `tr_type_vaccin`
  ADD PRIMARY KEY (`ID_TYPE_VACCIN`),
  ADD KEY `FK_PAYS_TYPE_VACCIN` (`ID_PAYS_ORIGINE`);

--
-- Index pour la table `t_antecedent_personne`
--
ALTER TABLE `t_antecedent_personne`
  ADD PRIMARY KEY (`ID_ANTECEDENT_PERSONNE`),
  ADD KEY `FK_ANTECEDENT_TYPE_ANTECEDENT` (`ID_TYPE_ANTECEDENT`),
  ADD KEY `FK_ANTECEDENT_PERSONNE` (`ID_PERSONNE`);

--
-- Index pour la table `t_appareil`
--
ALTER TABLE `t_appareil`
  ADD PRIMARY KEY (`ID_APPAREIL`),
  ADD UNIQUE KEY `ADRESSE_MAC` (`ADRESSE_MAC`),
  ADD UNIQUE KEY `SEQ` (`SEQ`),
  ADD UNIQUE KEY `CODE` (`CODE`);

--
-- Index pour la table `t_cnx`
--
ALTER TABLE `t_cnx`
  ADD PRIMARY KEY (`IDt_cnx`),
  ADD KEY `WDIDX_t_cnx_IDt_menu` (`IDt_menu`),
  ADD KEY `WDIDX_t_cnx_IDtr_droit` (`IDtr_droit`),
  ADD KEY `WDIDX_t_cnx_IDt_groupe` (`IDt_groupe`);

--
-- Index pour la table `t_dose_vaccination`
--
ALTER TABLE `t_dose_vaccination`
  ADD PRIMARY KEY (`ID_DOSE_VACCINATION`),
  ADD KEY `FK_DOSE_VACCINATION_LOT_DOSE_LIVRE` (`ID_LOT_DOSE_LIVRE`),
  ADD KEY `FK_DOSE_VACCINATION_VACCINATION` (`ID_VACCINATION`);

--
-- Index pour la table `t_droit`
--
ALTER TABLE `t_droit`
  ADD PRIMARY KEY (`IDtr_droit`);

--
-- Index pour la table `t_groupe`
--
ALTER TABLE `t_groupe`
  ADD PRIMARY KEY (`IDt_groupe`);

--
-- Index pour la table `t_lot_dose_livre`
--
ALTER TABLE `t_lot_dose_livre`
  ADD PRIMARY KEY (`ID_LOT_DOSE_LIVRE`),
  ADD KEY `FK_DOSE_LOT_DOSE_LIVRE` (`ID_DOSE`);

--
-- Index pour la table `t_mapi`
--
ALTER TABLE `t_mapi`
  ADD PRIMARY KEY (`ID_MAPI`),
  ADD UNIQUE KEY `ID_MAPI` (`ID_MAPI`),
  ADD KEY `FK_MAPI_DOSE_VACCINATION` (`ID_TYPE_MAPI`),
  ADD KEY `FK_DOSE_VACCINATION_MAPI` (`ID_DOSE_VACCINATION`);

--
-- Index pour la table `t_objet`
--
ALTER TABLE `t_objet`
  ADD PRIMARY KEY (`IDt_role`);

--
-- Index pour la table `t_personne`
--
ALTER TABLE `t_personne`
  ADD PRIMARY KEY (`ID_PERSONNE`),
  ADD KEY `FK_NATIONALITE` (`ID_PAYS`);

--
-- Index pour la table `t_session_log`
--
ALTER TABLE `t_session_log`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `CODE` (`CODE`),
  ADD KEY `FK_USER_SESSION_LOG` (`ID_USER`),
  ADD KEY `FK_APPAREIL_SESSION_LOG` (`ID_APPAREIL`);

--
-- Index pour la table `t_symptome_dose_vaccination`
--
ALTER TABLE `t_symptome_dose_vaccination`
  ADD PRIMARY KEY (`ID_SYMPTOME_DOSE_VACCINATION`),
  ADD UNIQUE KEY `ID_SYMPTOME_DOSE_VACCINATION` (`ID_SYMPTOME_DOSE_VACCINATION`),
  ADD KEY `FK_SYMPTOME_DOSE_VACCINATION` (`ID_TYPE_SYMPTOME`),
  ADD KEY `FK_DOSE_VACCINATION_SYMPTOME` (`ID_DOSE_VACCINATION`);

--
-- Index pour la table `t_user`
--
ALTER TABLE `t_user`
  ADD PRIMARY KEY (`ID_USER`),
  ADD KEY `FK_AGENT_USER` (`ID_AGENT`);

--
-- Index pour la table `t_user_t_groupe`
--
ALTER TABLE `t_user_t_groupe`
  ADD KEY `WDIDX_t_user_t_groupe_IDt_groupe` (`IDt_groupe`),
  ADD KEY `WDIDX_t_user_t_groupe_ID_USER` (`ID_USER`),
  ADD KEY `WDIDX_t_user_t_groupe_ID_USER_IDt_groupe` (`ID_USER`,`IDt_groupe`);

--
-- Index pour la table `t_vaccination`
--
ALTER TABLE `t_vaccination`
  ADD PRIMARY KEY (`ID_VACCINATION`),
  ADD KEY `FK_VACCINATION_TYPE_PIECE` (`ID_TYPE_PIECE_IDENTITE`),
  ADD KEY `FK_VACCINATION_PERSONNE` (`ID_PERSONNE`),
  ADD KEY `FK_VACCINATION_SITE_VACCINATION` (`ID_SITE_VACCINATION`),
  ADD KEY `FK_VACCINATION_ARRONDISSEMENT_RESIDENCE` (`ID_ARRONDISSEMENT_RESIDENCE`),
  ADD KEY `FK_VACCINATION_DISTRICT_RESIDENCE` (`ID_DISTRICT_RESIDENCE`),
  ADD KEY `FK_VACCINATION_CAT_PROFESSION` (`ID_CAT_PROFESSION`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `tr_agent`
--
ALTER TABLE `tr_agent`
  MODIFY `ID_AGENT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `tr_arrondissement`
--
ALTER TABLE `tr_arrondissement`
  MODIFY `ID_ARRONDISSEMENT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT pour la table `tr_categorie_profession`
--
ALTER TABLE `tr_categorie_profession`
  MODIFY `ID_CAT_PROFESSION` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT pour la table `tr_commune`
--
ALTER TABLE `tr_commune`
  MODIFY `ID_COMMUNE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT pour la table `tr_departement`
--
ALTER TABLE `tr_departement`
  MODIFY `ID_DEPARTEMENT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `tr_district`
--
ALTER TABLE `tr_district`
  MODIFY `ID_DISTRICT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
--
-- AUTO_INCREMENT pour la table `tr_district_sanitaire`
--
ALTER TABLE `tr_district_sanitaire`
  MODIFY `ID_DISTRICT_SANITAIRE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT pour la table `tr_dose`
--
ALTER TABLE `tr_dose`
  MODIFY `ID_DOSE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `tr_pays`
--
ALTER TABLE `tr_pays`
  MODIFY `ID_PAYS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;
--
-- AUTO_INCREMENT pour la table `tr_priorite`
--
ALTER TABLE `tr_priorite`
  MODIFY `ID_PRIORITE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `tr_site_vaccination`
--
ALTER TABLE `tr_site_vaccination`
  MODIFY `ID_SITE_VACCINATION` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
--
-- AUTO_INCREMENT pour la table `tr_type_agent`
--
ALTER TABLE `tr_type_agent`
  MODIFY `ID_TYPE_AGENT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `tr_type_antecedent`
--
ALTER TABLE `tr_type_antecedent`
  MODIFY `ID_TYPE_ANTECEDENT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `tr_type_mapi`
--
ALTER TABLE `tr_type_mapi`
  MODIFY `ID_TYPE_MAPI` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `tr_type_piece_identite`
--
ALTER TABLE `tr_type_piece_identite`
  MODIFY `ID_TYPE_PIECE_IDENTITE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `tr_type_symptome`
--
ALTER TABLE `tr_type_symptome`
  MODIFY `ID_TYPE_SYMPTOME` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `tr_type_vaccin`
--
ALTER TABLE `tr_type_vaccin`
  MODIFY `ID_TYPE_VACCIN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `t_antecedent_personne`
--
ALTER TABLE `t_antecedent_personne`
  MODIFY `ID_ANTECEDENT_PERSONNE` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `t_appareil`
--
ALTER TABLE `t_appareil`
  MODIFY `ID_APPAREIL` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `t_dose_vaccination`
--
ALTER TABLE `t_dose_vaccination`
  MODIFY `ID_DOSE_VACCINATION` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `t_lot_dose_livre`
--
ALTER TABLE `t_lot_dose_livre`
  MODIFY `ID_LOT_DOSE_LIVRE` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `t_mapi`
--
ALTER TABLE `t_mapi`
  MODIFY `ID_MAPI` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `t_personne`
--
ALTER TABLE `t_personne`
  MODIFY `ID_PERSONNE` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `t_session_log`
--
ALTER TABLE `t_session_log`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `t_symptome_dose_vaccination`
--
ALTER TABLE `t_symptome_dose_vaccination`
  MODIFY `ID_SYMPTOME_DOSE_VACCINATION` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `t_user`
--
ALTER TABLE `t_user`
  MODIFY `ID_USER` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `t_vaccination`
--
ALTER TABLE `t_vaccination`
  MODIFY `ID_VACCINATION` int(11) NOT NULL AUTO_INCREMENT;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `tr_agent`
--
ALTER TABLE `tr_agent`
  ADD CONSTRAINT `FK_AGENT_TYPE_AGENT` FOREIGN KEY (`ID_TYPE_AGENT`) REFERENCES `tr_type_agent` (`ID_TYPE_AGENT`);

--
-- Contraintes pour la table `tr_arrondissement`
--
ALTER TABLE `tr_arrondissement`
  ADD CONSTRAINT `FK_ARRONDISSEMENT_COMMUNE` FOREIGN KEY (`ID_COMMUNE`) REFERENCES `tr_commune` (`ID_COMMUNE`),
  ADD CONSTRAINT `FK_ARRONDISSEMENT_DISTRICT_SANITAIRE` FOREIGN KEY (`ID_DISTRICT_SANITAIRE`) REFERENCES `tr_district_sanitaire` (`ID_DISTRICT_SANITAIRE`);

--
-- Contraintes pour la table `tr_categorie_profession`
--
ALTER TABLE `tr_categorie_profession`
  ADD CONSTRAINT `FK_PRIORITE_CATEGORIE_PROFESSION` FOREIGN KEY (`ID_PRIORITE`) REFERENCES `tr_priorite` (`ID_PRIORITE`);

--
-- Contraintes pour la table `tr_commune`
--
ALTER TABLE `tr_commune`
  ADD CONSTRAINT `FK_DEPARTEMENT_COMMUNE` FOREIGN KEY (`ID_DEPARTEMENT`) REFERENCES `tr_departement` (`ID_DEPARTEMENT`);

--
-- Contraintes pour la table `tr_district`
--
ALTER TABLE `tr_district`
  ADD CONSTRAINT `FK_DEPARTEMENT_DISTRICT` FOREIGN KEY (`ID_DEPARTEMENT`) REFERENCES `tr_departement` (`ID_DEPARTEMENT`),
  ADD CONSTRAINT `FK_DISTRICT_SANITAIRE_DISTRICT` FOREIGN KEY (`ID_DISTRICT_SANITAIRE`) REFERENCES `tr_district_sanitaire` (`ID_DISTRICT_SANITAIRE`);

--
-- Contraintes pour la table `tr_district_sanitaire`
--
ALTER TABLE `tr_district_sanitaire`
  ADD CONSTRAINT `FK_DEPARTEMENT_DISTRICT_SANITAIRE` FOREIGN KEY (`ID_DEPARTEMENT`) REFERENCES `tr_departement` (`ID_DEPARTEMENT`);

--
-- Contraintes pour la table `tr_dose`
--
ALTER TABLE `tr_dose`
  ADD CONSTRAINT `FK_DOSE_TYPE_VACCIN` FOREIGN KEY (`ID_TYPE_VACCIN`) REFERENCES `tr_type_vaccin` (`ID_TYPE_VACCIN`);

--
-- Contraintes pour la table `tr_site_vaccination`
--
ALTER TABLE `tr_site_vaccination`
  ADD CONSTRAINT `FK_DISTRICT_SANITAIRE_SITE` FOREIGN KEY (`ID_DISTRICT_SANITAIRE`) REFERENCES `tr_district_sanitaire` (`ID_DISTRICT_SANITAIRE`);

--
-- Contraintes pour la table `tr_type_vaccin`
--
ALTER TABLE `tr_type_vaccin`
  ADD CONSTRAINT `FK_PAYS_TYPE_VACCIN` FOREIGN KEY (`ID_PAYS_ORIGINE`) REFERENCES `tr_pays` (`ID_PAYS`);

--
-- Contraintes pour la table `t_antecedent_personne`
--
ALTER TABLE `t_antecedent_personne`
  ADD CONSTRAINT `FK_ANTECEDENT_PERSONNE` FOREIGN KEY (`ID_PERSONNE`) REFERENCES `t_personne` (`ID_PERSONNE`),
  ADD CONSTRAINT `FK_ANTECEDENT_TYPE_ANTECEDENT` FOREIGN KEY (`ID_TYPE_ANTECEDENT`) REFERENCES `tr_type_antecedent` (`ID_TYPE_ANTECEDENT`);

--
-- Contraintes pour la table `t_dose_vaccination`
--
ALTER TABLE `t_dose_vaccination`
  ADD CONSTRAINT `FK_DOSE_VACCINATION_LOT_DOSE_LIVRE` FOREIGN KEY (`ID_LOT_DOSE_LIVRE`) REFERENCES `t_lot_dose_livre` (`ID_LOT_DOSE_LIVRE`),
  ADD CONSTRAINT `FK_DOSE_VACCINATION_VACCINATION` FOREIGN KEY (`ID_VACCINATION`) REFERENCES `t_vaccination` (`ID_VACCINATION`);

--
-- Contraintes pour la table `t_lot_dose_livre`
--
ALTER TABLE `t_lot_dose_livre`
  ADD CONSTRAINT `FK_DOSE_LOT_DOSE_LIVRE` FOREIGN KEY (`ID_DOSE`) REFERENCES `tr_dose` (`ID_DOSE`);

--
-- Contraintes pour la table `t_mapi`
--
ALTER TABLE `t_mapi`
  ADD CONSTRAINT `FK_DOSE_VACCINATION_MAPI` FOREIGN KEY (`ID_DOSE_VACCINATION`) REFERENCES `t_dose_vaccination` (`ID_DOSE_VACCINATION`),
  ADD CONSTRAINT `FK_MAPI_DOSE_VACCINATION` FOREIGN KEY (`ID_TYPE_MAPI`) REFERENCES `tr_type_mapi` (`ID_TYPE_MAPI`);

--
-- Contraintes pour la table `t_personne`
--
ALTER TABLE `t_personne`
  ADD CONSTRAINT `FK_NATIONALITE` FOREIGN KEY (`ID_PAYS`) REFERENCES `tr_pays` (`ID_PAYS`);

--
-- Contraintes pour la table `t_session_log`
--
ALTER TABLE `t_session_log`
  ADD CONSTRAINT `FK_APPAREIL_SESSION_LOG` FOREIGN KEY (`ID_APPAREIL`) REFERENCES `t_appareil` (`ID_APPAREIL`),
  ADD CONSTRAINT `FK_USER_SESSION_LOG` FOREIGN KEY (`ID_USER`) REFERENCES `t_user` (`ID_USER`);

--
-- Contraintes pour la table `t_symptome_dose_vaccination`
--
ALTER TABLE `t_symptome_dose_vaccination`
  ADD CONSTRAINT `FK_DOSE_VACCINATION_SYMPTOME` FOREIGN KEY (`ID_DOSE_VACCINATION`) REFERENCES `t_dose_vaccination` (`ID_DOSE_VACCINATION`),
  ADD CONSTRAINT `FK_SYMPTOME_DOSE_VACCINATION` FOREIGN KEY (`ID_TYPE_SYMPTOME`) REFERENCES `tr_type_symptome` (`ID_TYPE_SYMPTOME`);

--
-- Contraintes pour la table `t_user`
--
ALTER TABLE `t_user`
  ADD CONSTRAINT `FK_AGENT_USER` FOREIGN KEY (`ID_AGENT`) REFERENCES `tr_agent` (`ID_AGENT`);

--
-- Contraintes pour la table `t_vaccination`
--
ALTER TABLE `t_vaccination`
  ADD CONSTRAINT `FK_VACCINATION_ARRONDISSEMENT_RESIDENCE` FOREIGN KEY (`ID_ARRONDISSEMENT_RESIDENCE`) REFERENCES `tr_arrondissement` (`ID_ARRONDISSEMENT`),
  ADD CONSTRAINT `FK_VACCINATION_CAT_PROFESSION` FOREIGN KEY (`ID_CAT_PROFESSION`) REFERENCES `tr_categorie_profession` (`ID_CAT_PROFESSION`),
  ADD CONSTRAINT `FK_VACCINATION_DISTRICT_RESIDENCE` FOREIGN KEY (`ID_DISTRICT_RESIDENCE`) REFERENCES `tr_district` (`ID_DISTRICT`),
  ADD CONSTRAINT `FK_VACCINATION_PERSONNE` FOREIGN KEY (`ID_PERSONNE`) REFERENCES `t_personne` (`ID_PERSONNE`),
  ADD CONSTRAINT `FK_VACCINATION_SITE_VACCINATION` FOREIGN KEY (`ID_SITE_VACCINATION`) REFERENCES `tr_site_vaccination` (`ID_SITE_VACCINATION`),
  ADD CONSTRAINT `FK_VACCINATION_TYPE_PIECE` FOREIGN KEY (`ID_TYPE_PIECE_IDENTITE`) REFERENCES `tr_type_piece_identite` (`ID_TYPE_PIECE_IDENTITE`);

