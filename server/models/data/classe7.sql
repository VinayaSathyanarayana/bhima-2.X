INTO `account` (`id`, `type_id`, `enterprise_id`, `number`, `label`, `parent`, `locked`, `cc_id`, `pc_id`, `created`, `classe`, `is_asset`, `reference_id`, `is_brut_link`, `is_title`, `is_charge`) VALUES
(240, 3, 1, 701, 'VENTES DE MARCHANDISES', 57, 0, NULL, NULL, '2016-10-23 17:05:34', 7, 0, NULL, NULL, 0, 0),
(241, 3, 1, 7011, 'Vente des medicaments dans la Region Ohada', 240, 0, NULL, NULL, '2016-10-23 17:05:34', 7, 0, NULL, NULL, 0, 0),
(242, 1, 1, 70111010, 'Vente Medicaments en comprimes', 241, 0, NULL, NULL, '2016-10-23 17:05:34', 7, 0, 73, 0, 0, 0),
(243, 1, 1, 70111011, 'Vente Medicaments en Sirop', 241, 0, NULL, NULL, '2016-10-23 17:05:34', 7, 0, 73, 0, 0, 0),
(244, 3, 1, 706, 'SERVICES VENDUS', 57, 0, NULL, NULL, '2016-10-23 17:05:34', 7, 0, NULL, NULL, 0, 0),
(245, 3, 1, 7061, 'Services vendus dans la Region ohada', 244, 0, NULL, NULL, '2016-10-23 17:05:34', 7, 0, NULL, NULL, 0, 0),
(246, 1, 1, 70611010, 'Consultations', 245, 0, NULL, NULL, '2016-10-23 17:05:34', 7, 0, 76, 0, 0, 0),
(247, 1, 1, 70611011, 'Optique', 245, 0, NULL, NULL, '2016-10-23 17:05:34', 7, 0, 76, 0, 0, 0),
(248, 1, 1, 70611012, 'Hospitalisation', 245, 0, NULL, NULL, '2016-10-23 17:05:34', 7, 0, 76, 0, 0, 0),
(249, 1, 1, 70611017, 'Administration', 245, 0, NULL, 1, '2016-10-23 17:05:34', 7, 0, 76, 0, 0, 0),
(250, 1, 1, 70611036, 'URGENCES', 245, 0, NULL, NULL, '2016-10-23 17:05:34', 7, 0, 76, 0, 0, 0),
(251, 3, 1, 754, 'PRODUITS DES CESSIONS D IMMOBILISATIONS', 61, 0, NULL, NULL, '2016-10-23 17:05:34', 7, 0, NULL, NULL, 0, 0),
(252, 1, 1, 75411010, 'Produits des Cessions d Immobilisations', 251, 0, NULL, NULL, '2016-10-23 17:05:34', 7, 0, 83, 0, 0, 0),
(253, 3, 1, 758, 'PRODUITS DIVERS', 61, 0, NULL, NULL, '2016-10-23 17:05:34', 7, 0, NULL, NULL, 0, 0),
(254, 3, 1, 7581, 'Jetons de presence et autres remunerations d administrateurs', 253, 0, NULL, NULL, '2016-10-23 17:05:34', 7, 0, NULL, NULL, 0, 0),
(255, 1, 1, 75811010, 'Jeton de presence', 254, 0, NULL, NULL, '2016-10-23 17:05:34', 7, 0, 83, 0, 0, 0),
(256, 1, 1, 75811011, 'Autres remunerations d administrateurs', 254, 0, NULL, 1, '2016-10-23 17:05:34', 7, 0, 83, 0, 0, 0),
(257, 3, 1, 7582, 'Indemnites d?assurances recues', 253, 0, NULL, NULL, '2016-10-23 17:05:34', 7, 0, NULL, NULL, 0, 0),
(258, 1, 1, 75821010, 'Indemnites d\'assurances recues', 257, 0, NULL, NULL, '2016-10-23 17:05:34', 7, 0, 83, 0, 0, 0),
(259, 3, 1, 7588, 'Autres Produits divers', 253, 0, NULL, NULL, '2016-10-23 17:05:34', 7, 0, NULL, NULL, 0, 0),
(260, 1, 1, 75881010, 'Autres revenus', 259, 0, NULL, 1, '2016-10-23 17:05:34', 7, 1, 83, 0, 0, 0),
(261, 3, 1, 771, 'INTERETS DE PRETS', 62, 0, NULL, NULL, '2016-10-23 17:05:34', 7, 0, NULL, NULL, 0, 0),
(262, 1, 1, 77111010, 'Interets de Prets', 261, 0, NULL, 1, '2016-10-23 17:05:34', 7, 0, 88, 0, 0, 0),
(264, 3, 1, 773, 'ESCOMPTES OBTENUS', 62, 0, NULL, NULL, '2016-10-23 17:05:34', 7, 0, NULL, NULL, 0, 0),
(265, 1, 1, 77311010, 'Escomptes obtenus', 264, 0, NULL, NULL, '2016-10-23 17:05:34', 7, 0, 88, 0, 0, 0),
(266, 3, 1, 776, 'GAINS DE CHANGE', 62, 0, NULL, NULL, '2016-10-23 17:05:34', 7, 0, NULL, NULL, 0, 0),
(267, 1, 1, 77611010, 'Gain de change', 266, 0, NULL, 1, '2016-10-23 17:05:34', 7, 0, 89, 0, 0, 0);
