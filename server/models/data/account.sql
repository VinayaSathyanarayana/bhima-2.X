-- Accounts Dataset

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

INSERT INTO `account` (`id`, `type_id`, `enterprise_id`, `number`, `label`, `parent`, `locked`, `cc_id`, `pc_id`, `created`, `classe`, `is_asset`, `reference_id`, `is_brut_link`, `is_title`, `is_charge`) VALUES
(1, 4, 1, 1, 'CLASSE 1 : COMPTES DE RESSOURCES DURABLES', 0, 0, NULL, NULL, '2016-10-22 15:37:09', NULL, NULL, NULL, NULL, 0, NULL),
(2, 4, 1, 2, 'CLASSE 2 : COMPTES D\'ACTIFS IMMOBILISES', 0, 0, NULL, NULL, '2016-10-22 15:39:01', NULL, NULL, NULL, NULL, 0, NULL),
(3, 4, 1, 3, 'CLASSE 3: COMPTES DE STOCKS', 0, 0, NULL, NULL, '2016-10-22 15:39:36', NULL, NULL, NULL, NULL, 0, NULL),
(4, 4, 1, 4, 'CLASSE 4: COMPTES DE TIERS', 0, 0, NULL, NULL, '2016-10-22 15:40:00', NULL, NULL, NULL, NULL, 0, NULL),
(5, 4, 1, 5, 'CLASSE 5: COMPTES DE TRESORERIE', 0, 0, NULL, NULL, '2016-10-22 15:40:26', NULL, NULL, NULL, NULL, 0, NULL),
(6, 4, 1, 6, 'CLASSE 6: COMPTES DES CHARGES DES ACTIVITES ORDINAIRES', 0, 0, NULL, NULL, '2016-10-22 15:40:45', NULL, NULL, NULL, NULL, 0, NULL),
(7, 4, 1, 7, 'CLASSE 7: COMPTES DES PRODUITS DES ACTIVITES ORDINAIRES', 0, 0, NULL, NULL, '2016-10-22 15:41:12', NULL, NULL, NULL, NULL, 0, NULL),
(8, 4, 1, 8, 'CLASSE 8: COMPTES DES AUTRES CHARGES ET DES AUTRES PRODUITS', 0, 0, NULL, NULL, '2016-10-22 15:41:34', NULL, NULL, NULL, NULL, 0, NULL),
(9, 4, 1, 10, 'CAPITAL', 1, 0, NULL, NULL, '2016-10-22 17:27:40', NULL, NULL, NULL, NULL, 0, NULL),
(10, 4, 1, 11, 'RESERVES', 1, 0, NULL, NULL, '2016-10-22 17:28:02', NULL, NULL, NULL, NULL, 0, NULL),
(11, 4, 1, 12, 'REPORT A NOUVEAU', 1, 0, NULL, NULL, '2016-10-22 17:28:24', NULL, NULL, NULL, NULL, 0, NULL),
(12, 4, 1, 13, 'RESULTAT NET DE L\'EXERCICE', 1, 0, NULL, NULL, '2016-10-22 17:28:45', NULL, NULL, NULL, NULL, 0, NULL),
(13, 4, 1, 14, 'SUBVENTIONS D\'INVESTISSEMENT', 1, 0, NULL, NULL, '2016-10-22 17:29:16', NULL, NULL, NULL, NULL, 0, NULL),
(14, 4, 1, 16, 'EMPRUNTS ET DETTES ASSIMILEES', 1, 0, NULL, NULL, '2016-10-22 17:29:41', NULL, NULL, NULL, NULL, 0, NULL),
(15, 4, 1, 17, 'DETTES DE CREDIT-BAIL ET CONTRATS ASSIMILES', 1, 0, NULL, NULL, '2016-10-22 17:30:08', NULL, NULL, NULL, NULL, 0, NULL),
(16, 4, 1, 18, 'DETTES LIEES A DES PARTICIPATIONS ET COMPTES DE LIAISON DES ETABLISSEMENTS ET SOCIETES EN PARTICIPATION', 1, 0, NULL, NULL, '2016-10-22 17:30:32', NULL, NULL, NULL, NULL, 0, NULL),
(17, 4, 1, 19, 'PROVISIONS FINANCIERES POUR RISQUES ET CHARGES', 1, 0, NULL, NULL, '2016-10-22 17:30:49', NULL, NULL, NULL, NULL, 0, NULL),
(18, 4, 1, 20, 'CHARGES IMMOBILISEES', 2, 0, NULL, NULL, '2016-10-22 17:31:19', NULL, NULL, NULL, NULL, 0, NULL),
(19, 4, 1, 21, 'IMMOBILISATIONS INCORPORELLES', 2, 0, NULL, NULL, '2016-10-22 17:32:58', NULL, NULL, NULL, NULL, 0, NULL),
(20, 4, 1, 22, 'TERRAINS', 2, 0, NULL, NULL, '2016-10-22 17:33:24', NULL, NULL, NULL, NULL, 0, NULL),
(21, 4, 1, 23, 'BATIMENTS, INSTALLATIONS TECHNIQUES ET AGENCEMENTS', 2, 0, NULL, NULL, '2016-10-22 17:33:44', NULL, NULL, NULL, NULL, 0, NULL),
(22, 4, 1, 24, 'MATERIELS', 2, 0, NULL, NULL, '2016-10-22 17:34:05', NULL, NULL, NULL, NULL, 0, NULL),
(23, 4, 1, 27, 'AUTRES IMMOBILISATIONS FINANCIERES', 2, 0, NULL, NULL, '2016-10-22 17:34:41', NULL, NULL, NULL, NULL, 0, NULL),
(24, 4, 1, 28, 'AMORTISSEMENTS', 2, 0, NULL, NULL, '2016-10-22 17:34:59', NULL, NULL, NULL, NULL, 0, NULL),
(25, 4, 1, 29, 'PROVISIONS POUR DEPRECIATIONS', 2, 0, NULL, NULL, '2016-10-22 17:35:16', NULL, NULL, NULL, NULL, 0, NULL),
(26, 4, 1, 31, 'MARCHANDISES', 3, 0, NULL, NULL, '2016-10-22 17:35:40', NULL, NULL, NULL, NULL, 0, NULL),
(27, 4, 1, 32, 'MATIERES PREMIERES ET FOURNITURES LIEES', 3, 0, NULL, NULL, '2016-10-22 17:36:00', NULL, NULL, NULL, NULL, 0, NULL),
(28, 4, 1, 33, 'AUTRES APPROVISIONNEMENTS', 3, 0, NULL, NULL, '2016-10-22 17:36:19', NULL, NULL, NULL, NULL, 0, NULL),
(29, 4, 1, 36, 'PRODUITS FINIS', 3, 0, NULL, NULL, '2016-10-22 17:36:39', NULL, NULL, NULL, NULL, 0, NULL),
(30, 4, 1, 38, 'STOCKS EN COURS DE ROUTE, EN CONSIGNATION OU EN DÉPÔT', 3, 0, NULL, NULL, '2016-10-22 17:37:19', NULL, NULL, NULL, NULL, 0, NULL),
(31, 4, 1, 39, 'DÉPRÉCIATIONS DES STOCKS', 3, 0, NULL, NULL, '2016-10-22 17:37:39', NULL, NULL, NULL, NULL, 0, NULL),
(32, 4, 1, 40, 'FOURNISSEURS ET COMPTE  RATTACHES', 4, 0, NULL, NULL, '2016-10-22 17:38:02', NULL, NULL, NULL, NULL, 0, NULL),
(33, 4, 1, 41, 'CLIENTS ET COMPTE RATTACHES', 4, 0, NULL, NULL, '2016-10-22 17:38:22', NULL, NULL, NULL, NULL, 0, NULL),
(34, 4, 1, 42, 'PERSONNEL', 4, 0, NULL, NULL, '2016-10-22 17:38:43', NULL, NULL, NULL, NULL, 0, NULL),
(35, 4, 1, 43, 'ORGANISMES  SOCIAUX', 4, 0, NULL, NULL, '2016-10-22 17:38:59', NULL, NULL, NULL, NULL, 0, NULL),
(36, 4, 1, 44, 'ETAT ET COLLECTIVITES PUBLIQUES', 4, 0, NULL, NULL, '2016-10-22 17:39:20', NULL, NULL, NULL, NULL, 0, NULL),
(37, 4, 1, 47, 'DEBITEURS  ET CREDITEURS  DIVERS', 4, 0, NULL, NULL, '2016-10-22 17:39:45', NULL, NULL, NULL, NULL, 0, NULL),
(38, 4, 1, 48, 'CREANCES ET DETTES  HORS ACTIVITE ORDINAIRE', 4, 0, NULL, NULL, '2016-10-22 17:39:59', NULL, NULL, NULL, NULL, 0, NULL),
(39, 4, 1, 49, 'DEPRECIATION ET RISQUES PROVISIONNES (Tiers)', 4, 0, NULL, NULL, '2016-10-22 17:40:23', NULL, NULL, NULL, NULL, 0, NULL),
(40, 4, 1, 51, 'VALEURS A ENCAISSER', 5, 0, NULL, NULL, '2016-10-22 17:40:48', NULL, NULL, NULL, NULL, 0, NULL),
(41, 4, 1, 52, 'BANQUES', 5, 0, NULL, NULL, '2016-10-22 17:41:05', NULL, NULL, NULL, NULL, 0, NULL),
(42, 4, 1, 53, 'ETABLISSEMENTS FINANCIERS ET ASSIMILES', 5, 0, NULL, NULL, '2016-10-22 17:41:19', NULL, NULL, NULL, NULL, 0, NULL),
(43, 4, 1, 56, 'BANQUES, CREDIT DE TRESORERIE ET D\'ESCOMPTE', 5, 0, NULL, NULL, '2016-10-22 17:41:40', NULL, NULL, NULL, NULL, 0, NULL),
(44, 4, 1, 57, 'CAISSE', 5, 0, NULL, NULL, '2016-10-22 17:42:13', NULL, NULL, NULL, NULL, 0, NULL),
(45, 4, 1, 58, 'REGIES D\'AVANCES, ACCREDITIFS ET VIREMENTS INTERNE', 5, 0, NULL, NULL, '2016-10-22 17:42:34', NULL, NULL, NULL, NULL, 0, NULL),
(46, 4, 1, 59, 'DEPRECIATIONS ET RISQUES PROVISIONNES', 5, 0, NULL, NULL, '2016-10-22 17:43:12', NULL, NULL, NULL, NULL, 0, NULL),
(47, 4, 1, 60, 'ACHATS ET VARIATIONS DE STOCKS', 6, 0, NULL, NULL, '2016-10-22 17:43:34', NULL, NULL, NULL, NULL, 0, NULL),
(48, 4, 1, 61, 'TRANSPORTS', 6, 0, NULL, NULL, '2016-10-22 17:43:57', NULL, NULL, NULL, NULL, 0, NULL),
(49, 4, 1, 62, 'SERVICES EXTÉRIEURS A', 6, 0, NULL, NULL, '2016-10-22 17:44:10', NULL, NULL, NULL, NULL, 0, NULL),
(50, 4, 1, 63, 'SERVICES EXTÉRIEURS B', 6, 0, NULL, NULL, '2016-10-22 17:44:30', NULL, NULL, NULL, NULL, 0, NULL),
(51, 4, 1, 64, 'IMPÔTS ET TAXES', 6, 0, NULL, NULL, '2016-10-22 17:44:49', NULL, NULL, NULL, NULL, 0, NULL),
(52, 4, 1, 65, 'AUTRES CHARGES', 6, 0, NULL, NULL, '2016-10-22 17:45:02', NULL, NULL, NULL, NULL, 0, NULL),
(53, 4, 1, 66, 'CHARGES DE PERSONNEL', 6, 0, NULL, NULL, '2016-10-22 17:45:18', NULL, NULL, NULL, NULL, 0, NULL),
(54, 4, 1, 67, 'FRAIS FINANCIERS ET CHARGES ASSIMILÉES', 6, 0, NULL, NULL, '2016-10-22 17:45:36', NULL, NULL, NULL, NULL, 0, NULL),
(55, 4, 1, 68, 'DOTATIONS AUX AMORTISSEMENTS', 6, 0, NULL, NULL, '2016-10-22 17:45:52', NULL, NULL, NULL, NULL, 0, NULL),
(56, 4, 1, 69, 'DOTATIONS AUX PROVISIONS', 6, 0, NULL, NULL, '2016-10-22 17:46:07', NULL, NULL, NULL, NULL, 0, NULL),
(57, 4, 1, 70, 'VENTES', 7, 0, NULL, NULL, '2016-10-22 17:47:00', NULL, NULL, NULL, NULL, 0, NULL),
(58, 4, 1, 71, '71 SUBVENTIONS D\'EXPLOITATION', 7, 0, NULL, NULL, '2016-10-22 17:47:15', NULL, NULL, NULL, NULL, 0, NULL),
(59, 4, 1, 72, 'PRODUCTION IMMOBILISÉE', 7, 0, NULL, NULL, '2016-10-22 17:47:29', NULL, NULL, NULL, NULL, 0, NULL),
(60, 4, 1, 73, 'VARIATIONS DES STOCKS DE BIENS ET DE SERVICES PRODUITS', 7, 0, NULL, NULL, '2016-10-22 17:47:48', NULL, NULL, NULL, NULL, 0, NULL),
(61, 4, 1, 75, 'AUTRES PRODUITS', 7, 0, NULL, NULL, '2016-10-22 17:48:15', NULL, NULL, NULL, NULL, 0, NULL),
(62, 4, 1, 77, 'REVENUS FINANCIERS ET PRODUITS ASSIMILÉS', 7, 0, NULL, NULL, '2016-10-22 17:48:31', NULL, NULL, NULL, NULL, 0, NULL),
(63, 4, 1, 78, 'TRANSFERTS DE CHARGES', 7, 0, NULL, NULL, '2016-10-22 17:48:49', NULL, NULL, NULL, NULL, 0, NULL),
(64, 4, 1, 79, 'REPRISES DE PROVISIONS', 7, 0, NULL, NULL, '2016-10-22 17:49:07', NULL, NULL, NULL, NULL, 0, NULL),
(65, 4, 1, 81, 'VALEURS COMPTABLE DES CESSIONS D\'IMMOBILISATIONS', 8, 0, NULL, NULL, '2016-10-22 17:49:36', NULL, NULL, NULL, NULL, 0, NULL),
(66, 4, 1, 82, 'PRODUITS DES CESSIONS D\'IMMOBILISATIONS', 8, 0, NULL, NULL, '2016-10-22 17:49:50', NULL, NULL, NULL, NULL, 0, NULL),
(67, 4, 1, 83, 'CHARGES HORS ACTIVITES ORDINAIRES', 8, 0, NULL, NULL, '2016-10-22 17:50:03', NULL, NULL, NULL, NULL, 0, NULL),
(68, 4, 1, 84, 'PRODUITS HORS ACTIVITES ORDINAIRES', 8, 0, NULL, NULL, '2016-10-22 17:50:22', NULL, NULL, NULL, NULL, 0, NULL),
(69, 4, 1, 85, 'DOTATIONS HORS ACTIVITES ORDINAIRES', 8, 0, NULL, NULL, '2016-10-22 17:50:43', NULL, NULL, NULL, NULL, 0, NULL),
(70, 4, 1, 86, 'REPRISES HORS ACTIVITES ORDINAIRES', 8, 0, NULL, NULL, '2016-10-22 17:50:57', NULL, NULL, NULL, NULL, 0, NULL),
(71, 4, 1, 88, 'SUBVENTIONS D\'EQUILIBRE', 8, 0, NULL, NULL, '2016-10-22 17:51:15', NULL, NULL, NULL, NULL, 0, NULL),
(72, 4, 1, 89, 'IMPOTS SUR LE RESULTAT', 8, 0, NULL, NULL, '2016-10-22 17:51:30', NULL, NULL, NULL, NULL, 0, NULL),
(73, 4, 1, 101, 'Capital Social', 9, 0, NULL, NULL, '2016-10-22 17:56:20', NULL, NULL, NULL, NULL, 0, NULL),
(74, 4, 1, 105, 'Primes liées aux capitaux propres', 9, 0, NULL, NULL, '2016-10-22 17:56:46', NULL, NULL, NULL, NULL, 0, NULL),
(75, 4, 1, 106, 'Ecart de réévaluation', 9, 0, NULL, NULL, '2016-10-22 17:57:30', NULL, NULL, NULL, NULL, 0, NULL),
(76, 4, 1, 109, 'Actionnaire, Capital souscrit, non appelé', 9, 0, NULL, NULL, '2016-10-22 17:58:03', NULL, NULL, NULL, NULL, 0, NULL),
(77, 4, 1, 1013, 'Capital souscrit, appelé,  versé, non amorti', 73, 0, NULL, NULL, '2016-10-22 17:59:19', NULL, NULL, NULL, NULL, 0, NULL),
(81, 3, 1, 10133000, 'Compte - Capital souscrit, appelé,  versé, non amorti', 77, 0, NULL, NULL, '2016-10-22 18:25:29', NULL, NULL, NULL, NULL, 0, NULL),
(82, 4, 1, 1052, 'Primes d\'apport', 74, 0, NULL, NULL, '2016-10-22 21:55:08', NULL, NULL, NULL, NULL, 0, NULL),
(83, 3, 1, 10521010, 'Compte Primes d\'apport', 82, 0, NULL, NULL, '2016-10-22 21:56:08', NULL, NULL, NULL, NULL, 0, NULL),
(84, 4, 1, 1053, 'Primes de fusion', 74, 0, NULL, NULL, '2016-10-22 21:57:27', NULL, NULL, NULL, NULL, 0, NULL),
(85, 3, 1, 10531010, 'Compte Primes de fusion', 84, 0, NULL, NULL, '2016-10-22 21:58:15', NULL, NULL, NULL, NULL, 0, NULL),
(86, 4, 1, 1054, 'Primes de conversion', 74, 0, NULL, NULL, '2016-10-22 21:59:49', NULL, NULL, NULL, NULL, 0, NULL),
(87, 3, 1, 10541010, 'Compte Primes de conversion', 86, 0, NULL, NULL, '2016-10-22 22:00:28', NULL, NULL, NULL, NULL, 0, NULL),
(88, 4, 1, 1061, 'Ecart de réévaluation *', 75, 0, NULL, NULL, '2016-10-22 22:02:53', NULL, NULL, NULL, NULL, 0, NULL),
(89, 3, 1, 10610000, 'Ecart de réévaluation légal', 88, 0, NULL, NULL, '2016-10-22 22:03:47', NULL, NULL, NULL, NULL, 0, NULL),
(90, 4, 1, 1091, 'Actionnaire, Capital souscrit, non appelé *', 76, 0, NULL, NULL, '2016-10-22 22:06:36', NULL, NULL, NULL, NULL, 0, NULL),
(91, 3, 1, 10911010, 'Compte Actionnaire, Capital souscrit, non appelé', 90, 0, NULL, NULL, '2016-10-22 22:07:10', NULL, NULL, NULL, NULL, 0, NULL),
(92, 4, 1, 111, 'Reserve légale', 10, 0, NULL, NULL, '2016-10-23 00:39:20', NULL, NULL, NULL, NULL, 0, NULL),
(93, 4, 1, 1111, 'Reserve légale *', 92, 0, NULL, NULL, '2016-10-23 00:40:17', NULL, NULL, NULL, NULL, 0, NULL),
(94, 3, 1, 11110000, 'Compte Reserve légale', 93, 0, NULL, NULL, '2016-10-23 00:41:23', NULL, NULL, NULL, NULL, 0, NULL),
(95, 4, 1, 112, 'Reserve statutaires ou contractuelles', 10, 0, NULL, NULL, '2016-10-22 22:37:09', NULL, NULL, NULL, NULL, 0, NULL),
(96, 4, 1, 118, 'Autres reserves', 10, 0, NULL, NULL, '2016-10-22 22:37:09', NULL, NULL, NULL, NULL, 0, NULL),
(97, 4, 1, 1121, 'Reserve statutaires ou contractuelles *', 95, 0, NULL, NULL, '2016-10-22 22:37:09', NULL, NULL, NULL, NULL, 0, NULL),
(98, 4, 1, 1181, 'Autres reserves *', 96, 0, NULL, NULL, '2016-10-22 22:37:09', NULL, NULL, NULL, NULL, 0, NULL),
(99, 4, 1, 1188, 'Reserves diverses', 96, 0, NULL, NULL, '2016-10-22 22:37:09', NULL, NULL, NULL, NULL, 0, NULL),
(100, 4, 1, 121, 'Report à nouveau créditeur', 11, 0, NULL, NULL, '2016-10-22 22:37:09', NULL, NULL, NULL, NULL, 0, NULL),
(101, 4, 1, 129, 'Report à nouveau debiteur', 11, 0, NULL, NULL, '2016-10-22 22:37:09', NULL, NULL, NULL, NULL, 0, NULL),
(102, 4, 1, 1211, 'Report à nouveau créditeur *', 100, 0, NULL, NULL, '2016-10-22 22:37:09', NULL, NULL, NULL, NULL, 0, NULL),
(103, 4, 1, 1291, 'Perte nette à reporter', 101, 0, NULL, NULL, '2016-10-22 22:37:09', NULL, NULL, NULL, NULL, 0, NULL),
(104, 4, 1, 1292, 'Perte-Amortissements réputés différés', 101, 0, NULL, NULL, '2016-10-22 22:37:09', NULL, NULL, NULL, NULL, 0, NULL),
(105, 4, 1, 130, 'Résultat en instance d\'affectation', 12, 0, NULL, NULL, '2016-10-22 22:37:09', NULL, NULL, NULL, NULL, 0, NULL),
(106, 4, 1, 131, 'Résusltat net : Bénéfice', 12, 0, NULL, NULL, '2016-10-22 22:37:09', NULL, NULL, NULL, NULL, 0, NULL),
(107, 4, 1, 139, 'Résultat net: perte', 12, 0, NULL, NULL, '2016-10-22 22:37:09', NULL, NULL, NULL, NULL, 0, NULL),
(108, 4, 1, 1301, 'Résultat en instance d\'affectation: Benefice', 105, 0, NULL, NULL, '2016-10-22 22:37:09', NULL, NULL, NULL, NULL, 0, NULL),
(109, 4, 1, 1309, 'Résultat en instance d\'affectation: Perte', 105, 0, NULL, NULL, '2016-10-22 22:37:09', NULL, NULL, NULL, NULL, 0, NULL),
(111, 4, 1, 1311, 'Résusltat net : Bénéfice *', 106, 0, NULL, NULL, '2016-10-22 22:37:09', NULL, NULL, NULL, NULL, 0, NULL),
(112, 4, 1, 1391, 'Résultat net: perte *', 107, 0, NULL, NULL, '2016-10-22 22:37:09', NULL, NULL, NULL, NULL, 0, NULL),
(113, 4, 1, 141, 'Subventions d\'équipement', 13, 0, NULL, NULL, '2016-10-22 22:37:09', NULL, NULL, NULL, NULL, 0, NULL),
(114, 4, 1, 1411, 'Etat', 113, 0, NULL, NULL, '2016-10-22 22:37:09', NULL, NULL, NULL, NULL, 0, NULL),
(115, 4, 1, 1417, 'Entreprises et organismes privés', 113, 0, NULL, NULL, '2016-10-22 22:37:09', NULL, NULL, NULL, NULL, 0, NULL),
(116, 4, 1, 1418, 'Autres', 113, 0, NULL, NULL, '2016-10-22 22:37:09', NULL, NULL, NULL, NULL, 0, NULL),
(117, 4, 1, 165, 'Depots et Cautionnement recus *', 14, 0, NULL, NULL, '2016-10-22 22:37:09', NULL, NULL, NULL, NULL, 0, NULL),
(118, 4, 1, 168, 'Autres emprunts et dettes', 14, 0, NULL, NULL, '2016-10-22 22:37:09', NULL, NULL, NULL, NULL, 0, NULL),
(119, 4, 1, 1651, 'Depots', 117, 0, NULL, NULL, '2016-10-22 22:37:09', NULL, NULL, NULL, NULL, 0, NULL),
(120, 4, 1, 1652, 'Cautionnement', 117, 0, NULL, NULL, '2016-10-22 22:37:09', NULL, NULL, NULL, NULL, 0, NULL),
(121, 4, 1, 1688, 'Autres emprunts et dettes *', 118, 0, NULL, NULL, '2016-10-22 22:37:09', NULL, NULL, NULL, NULL, 0, NULL),
(122, 4, 1, 172, 'Emprunts équivalents de crédit-bail immobilier', 15, 0, NULL, NULL, '2016-10-22 22:37:09', NULL, NULL, NULL, NULL, 0, NULL),
(123, 4, 1, 186, 'Comptes de liaison charges', 16, 0, NULL, NULL, '2016-10-22 22:37:09', NULL, NULL, NULL, NULL, 0, NULL),
(124, 4, 1, 187, 'Comptes de liaison produits', 16, 0, NULL, NULL, '2016-10-22 22:37:09', NULL, NULL, NULL, NULL, 0, NULL),
(125, 4, 1, 1861, 'Comptes de liaison charges *', 123, 0, NULL, NULL, '2016-10-22 22:37:09', NULL, NULL, NULL, NULL, 0, NULL),
(126, 4, 1, 1871, 'Comptes de liaison produits *', 124, 0, NULL, NULL, '2016-10-22 22:37:09', NULL, NULL, NULL, NULL, 0, NULL),
(127, 4, 1, 191, 'Provisions pour litiges', 17, 0, NULL, NULL, '2016-10-22 22:37:09', NULL, NULL, NULL, NULL, 0, NULL),
(128, 4, 1, 194, 'Provisions pour pertes de change', 17, 0, NULL, NULL, '2016-10-22 22:37:09', NULL, NULL, NULL, NULL, 0, NULL),
(129, 4, 1, 195, 'Provisions pour impôts', 17, 0, NULL, NULL, '2016-10-22 22:37:09', NULL, NULL, NULL, NULL, 0, NULL),
(130, 4, 1, 196, 'Provisions pour pensions et obligations similaires', 17, 0, NULL, NULL, '2016-10-22 22:37:09', NULL, NULL, NULL, NULL, 0, NULL),
(131, 4, 1, 197, 'Provisions pour charges à repartir sur plusieurs exercices', 17, 0, NULL, NULL, '2016-10-22 22:37:09', NULL, NULL, NULL, NULL, 0, NULL),
(132, 4, 1, 198, 'Autres provisions financières pour risques et charges', 17, 0, NULL, NULL, '2016-10-22 22:37:09', NULL, NULL, NULL, NULL, 0, NULL),
(133, 4, 1, 1911, 'Provisions pour litiges *', 127, 0, NULL, NULL, '2016-10-22 22:37:09', NULL, NULL, NULL, NULL, 0, NULL),
(134, 4, 1, 1941, 'Provisions pour pertes de change *', 128, 0, NULL, NULL, '2016-10-22 22:37:09', NULL, NULL, NULL, NULL, 0, NULL),
(135, 4, 1, 1951, 'Provisions pour impôts *', 129, 0, NULL, NULL, '2016-10-22 22:37:09', NULL, NULL, NULL, NULL, 0, NULL),
(136, 4, 1, 1961, 'Provisions pour pensions et obligations similaires *', 130, 0, NULL, NULL, '2016-10-22 22:37:09', NULL, NULL, NULL, NULL, 0, NULL),
(137, 4, 1, 1971, 'Provisions pour charges à repartir sur plusieurs exercices *', 131, 0, NULL, NULL, '2016-10-22 22:37:09', NULL, NULL, NULL, NULL, 0, NULL),
(138, 4, 1, 1981, 'Autres provisions financières pour risques et charges *', 132, 0, NULL, NULL, '2016-10-22 22:37:09', NULL, NULL, NULL, NULL, 0, NULL)
;
