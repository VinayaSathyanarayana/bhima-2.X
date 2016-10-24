INTO `cash_box` (`id`, `label`, `project_id`, `is_auxiliary`) VALUES
(1, 'Caisse Aux Hopital', 1, 1),
(2, 'Caisse Princ Hopital CDF', 1, 0);

INTO `cash_box_account_currency` (`id`, `currency_id`, `cash_box_id`, `account_id`, `transfer_account_id`) VALUES
(1, 1, 1, 188, 194),
(2, 2, 1, 191, 194),
(3, 1, 2, 187, 195),
(3, 2, 2, 190, 195);
