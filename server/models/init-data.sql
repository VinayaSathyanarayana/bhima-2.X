-- set variables
SET names 'utf8';
SET character_set_database = 'utf8';
SET collation_database = 'utf8_unicode_ci';

-- Fiscal Year 2016
SET @fiscalYear2016 = 0;
CALL CreateFiscalYear(1, NULL, 1, 'Test Fiscal Year 2016', 12, DATE('2016-01-01'), DATE('2016-12-31'), 'Note for 2016', @fiscalYear2016);

-- Fiscal Year 2017
SET @fiscalYear2017 = 0;
CALL CreateFiscalYear(1, @fiscalYear2016, 1, 'Test Fiscal Year 2017', 12, DATE('2017-01-01'), DATE('2017-12-31'), 'Note for 2017', @fiscalYear2017);

-- units
INSERT INTO unit VALUES
  (0,   'Root','TREE.ROOT','The unseen root node',NULL,'/partials/index.html','/root'),
  (1,   'Admin','TREE.ADMIN','The Administration Super-Category',0,'/partials/admin/index.html','/admin'),
  (2,   'Enterprise', 'TREE.ENTERPRISE', 'Manage the registered enterprises from here', 1, '/partials/enterprise/', '/enterprises'),
  (3,   'Invoice Registry','TREE.INVOICE_REGISTRY','Invoice Registry',5,'/partials/invoices/registry/','/invoices'),
  (4,   'Users & Permissions','TREE.USERS','Manage user privileges and permissions',1,'/partials/users/','/users'),
  (5,   'Finance','TREE.FINANCE','The Finance Super-Category',0,'/partials/finance/','/finance'),
  (6,   'Account','TREE.ACCOUNT','Chart of Accounts management',5,'/partials/accounts/','/accounts'),
  (9,   'Posting Journal','TREE.POSTING_JOURNAL','Daily Log',5,'/partials/journal/','/journal'),
  (10,  'General Ledger','TREE.GENERAL_LEDGER','Posted Journal Data', 5,'/partials/general_ledger/','/general_ledger'),
  (12,  'Hospital','TREE.HOSPITAL','The Hospital Super-Category',0,'/partials/hospital/index.html','/hospital'),
  (13,  'Fiscal Year','TREE.FISCAL_YEAR','Fiscal year configuration page',5,'/partials/fiscal/','/fiscal'),
  (14,  'Patient Registration','TREE.PATIENT_REGISTRATION','Register patients',12,'/partials/patient/register/','/patients/register'),
  (15,  'Patient Registry','TREE.PATIENT_REGISTRY','Patient Registry',12,'/partials/patients/registry/','/patients'),
  (16,  'Patient Invoice','TREE.PATIENT_INVOICE','Create an invoice for a patient',5,'/partials/patient_invoice/','/invoices/patient'),
  (18,  'Cash Window','TREE.CASH_WINDOW','Cash payments against past or future invoices',5,'/partials/cash/','/cash'),
  (19,  'Register Supplier','TREE.REGISTER_SUPPLIER','',1,'/partials/suppliers/','/suppliers'),
  (21,  'Price List','TREE.PRICE_LIST','Configure price lists!',1,'/partials/price_list/','/prices'),
  (22,  'Exchange Rate','TREE.EXCHANGE','Set todays exchange rate!',1,'/partials/exchange_rate/','/exchange'),
  (26,  'Location Manager','TREE.LOCATION','',1,'/partials/locations/locations.html','/locations'),
  (29,  'Patient Group','TREE.PATIENT_GRP','',1,'/partials/patients/groups/','/patients/groups'),
  (48,  'Service Management','TREE.SERVICE','',1,'partials/services/','/services'),
  (57,  'Payroll','TREE.PAYROLL','',0,'partials/payroll/','/payroll/'),
  (61,  'Employee','TREE.EMPLOYEE','Employees management',57,'partials/employees/','/employees'),
  (82,  'Subsidies','TREE.SUBSIDY','Handles the subsidy situation',1,'/partials/subsidies/','/subsidies'),
  (105, 'Cashbox Management','TREE.CASHBOX_MANAGEMENT','',1,'/partials/cash/cashbox/','/cashboxes'),
  (106, 'Depot Management', 'TREE.PHARMACY', 'Depot Management module', 1, '/partials/depots/', '/depots'),
  (107, 'Debtor Groups Management', 'TREE.DEBTOR_GROUP', 'Debtor Groups Management module', 1, '/partials/debtors/groups/', '/debtors/groups'),
  (109, 'Section du bilan','TREE.SECTION_BILAN','',5,'/partials/section_bilan/','/section_bilan'),
  (110, 'Section resultat','TREE.SECTION_RESULTAT','',5,'/partials/section_resultat/','/section_resultat'),
  (111, 'reference_group','TREE.REFERENCE_GROUP','Reference Group',5,'/partials/references/groups','/references/groups'),
  (112, 'Reference','TREE.REFERENCE','References',5,'/partials/references','/references'),
  (134, 'Simple Journal Vouchers', 'TREE.SIMPLE_VOUCHER', 'Creates a simple transfer slip between two accounts', 5, '/partials/vouchers/simple', '/vouchers/simple'),
  (135, 'Billing Services', 'TREE.BILLING_SERVICES', 'Configures billing services for bhima', 1, '/partials/billing_services', '/billing_services'),
  (137, 'complex Journal Vouchers', 'TREE.COMPLEX_JOURNAL_VOUCHER', 'Complex Journal vouchers module', 5, '/partials/vouchers/complex', '/vouchers/complex'),
  (138, 'Inventory Module', 'TREE.INVENTORY', 'Inventory management module', 0, '/partials/inventory/index', '/inventory'),
  (139, 'Inventory List', 'TREE.INVENTORY_LIST', 'Inventory list module', 138, '/partials/inventory/list', '/inventory/list'),
  (140, 'Inventory Configurations', 'TREE.INVENTORY_CONFIGURATION', 'Inventory configuration module', 138, '/partials/inventory/configuration', '/inventory/configuration'),
  (141, 'Vouchers Records', 'TREE.VOUCHER_REGISTRY', 'Vouchers registry module', 5, '/partials/vouchers/index', '/vouchers'),
  (142, 'Purchase Orders', 'TREE.PURCHASING', 'This module is responsible for creating purchase orders', 138, '/partials/purchases/create', '/purchases/create'),
  (143, 'Transaction Type Module', 'TREE.TRANSACTION_TYPE', 'This module is responsible for managing transaction type', 1, '/partials/admin/transaction_type', '/admin/transaction_type'),
  (144, 'Reports (Finance)', 'TREE.REPORTS', 'A folder holding all finance reports', 5, '/partials/finance/reports', '/finance/reports'),
  (145, 'Cashflow', 'TREE.CASHFLOW', 'The Cashflow Report', 144, '/partials/finance/cashflow', '/finance/reports/cashflow'),
  (146, 'Creditor Groups Management', 'TREE.CREDITOR_GROUP', 'Creditor Groups Management module', 1, '/partials/admin/creditor_groups/', '/admin/creditor_groups');

-- Reserved system account type
INSERT INTO `account_type` VALUES
  (1, 'income', 'ACCOUNT.TYPES.INCOME'),
  (2, 'expense', 'ACCOUNT.TYPES.EXPENSE'),
  (3, 'balance', 'ACCOUNT.TYPES.BALANCE'),
  (4, 'title', 'ACCOUNT.TYPES.TITLE');

-- Languages
INSERT INTO `language` VALUES
  (1,'Francais','fr', 'fr-be'),
  (2,'English','en', 'en-us'),
  (3,'Lingala','lg', 'fr-cd');

-- Currencies
INSERT INTO `currency` (`id`, `name`, `format_key`, `symbol`, `note`, `min_monentary_unit`) VALUES
  (1,'Congolese Francs','fc','Fc',NULL,50.00),
  (2,'United States Dollars','usd','$',NULL,0.01);

-- locations (enterprise location only)
INSERT INTO `country` VALUES (HUID('dbe330b6-5cde-4830-8c30-dc00eccd1a5f'),'République Démocratique du Congo'),(HUID('dbe330b6-5cde-4830-8c30-dc00eccd1a51'), 'Test Hook Country');
INSERT INTO `province` VALUES (HUID('f6fc7469-7e58-45cb-b87c-f08af93edade'),'Bas Congo', HUID('dbe330b6-5cde-4830-8c30-dc00eccd1a5f')), (HUID('dbe330b6-5cdf-4830-8c30-dc00eccd1a21'), 'Test Hook Province', HUID('dbe330b6-5cde-4830-8c30-dc00eccd1a51'));
INSERT INTO `sector` VALUES (HUID('0404e9ea-ebd6-4f20-b1f8-6dc9f9313450'),'Tshikapa',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')), (HUID('dbe330b6-5cdf-4830-8c30-dc00eccd1a22'), 'Test Hook Sector', HUID('dbe330b6-5cdf-4830-8c30-dc00eccd1a21'));
INSERT INTO `village` VALUES (HUID('1f162a10-9f67-4788-9eff-c1fea42fcc9b'),'KELE2',HUID('0404e9ea-ebd6-4f20-b1f8-6dc9f9313450')), (HUID('dbe330b6-5cdf-4830-8c30-dc00eccd1a22'), 'Test Hook Village',HUID('dbe330b6-5cdf-4830-8c30-dc00eccd1a22'));

-- Enterprise
INSERT INTO `enterprise` VALUES (1,'Enterprise','ESE','243 81 00 00 000','info@enterprise.org',HUID('1f162a10-9f67-4788-9eff-c1fea42fcc9b'),NULL,2,NULL, NULL, NULL);

-- Project
INSERT INTO `project` VALUES (1,'Hospital','HSP',1,NULL,0),(2,'Clinique','CLQ',1,NULL,0), (3,'Guest House','GHO',1,NULL,0);

-- create super user
INSERT INTO `user` VALUES 
  (1, 'admin', PASSWORD('admin'), 'Administrator', NULL, 0, 0, NULL),
  (2, 'receptionist', PASSWORD('receptionist'), 'Receptionist', NULL, 0, 0, NULL),
  (3, 'doctor', PASSWORD('doctor'), 'Doctor', NULL, 0, 0, NULL),
  (4, 'cashier', PASSWORD('cashier'), 'Cashier', NULL, 0, 0, NULL),
  (5, 'accountant', PASSWORD('accountant'), 'Accountant', NULL, 0, 0, NULL);

-- super user permissions to admin user permissions
INSERT INTO `permission` (unit_id, user_id) VALUES (1,1), (4,1), (2,1);

-- super user permissions on projects
INSERT INTO `project_permission` VALUES (1,1,1),(2,1,2);

-- enterprise cashboxes
INSERT INTO `cash_box` (id, label, project_id, is_auxiliary) VALUES 
  (1,'Principal Cashbox',1,0), 
  (2,'First Auxiliary Cashbox',1,1), 
  (3,'Second Auxiliary Cashbox',1,1);

-- inventory additional info
INSERT INTO `inventory_type` VALUES (1,'Article'),(2,'Assembly'),(3,'Service');
INSERT INTO `inventory_unit` VALUES (1,'Act'),(2,'Pallet'),(3,'Pill'),(4,'Box'),(5,'Lot'),(6,'amp'),(7,'bags'),(8,'btl'),(9,'cap'),(10,'flc'),(11,'jar'),(12,'ltr'),(13,'pce'),(14,'sch'),(15,'tab'),(16,'tub'),(17,'vial');

-- basic services for hospital
INSERT INTO `service` VALUES (1, 1, 'Administration', NULL, NULL), (2, 1, 'Pediatrie', NULL, NULL), (3, 1, 'Medecine Interne', NULL, NULL);

-- transaction type
INSERT INTO `transaction_type` (`id`, `text`, `description`, `type`, `prefix`, `fixed`) VALUES
  (1, 'VOUCHERS.SIMPLE.GENERIC_INCOME', 'Generic income transaction type', 'income', 'REC. GEN', 1),
  (2, 'VOUCHERS.SIMPLE.CASH_PAYMENT', 'Cash payment transaction type', 'income', 'CASH', 1),
  (3, 'VOUCHERS.SIMPLE.CONVENTION_PAYMENT', 'Convention payment transaction type', 'income', 'CONV', 1),
  (4, 'VOUCHERS.SIMPLE.SUPPORT_INCOME', 'Support transaction type', 'income', 'PEC', 1),
  (5, 'VOUCHERS.SIMPLE.TRANSFER', 'Transfer transaction type', 'income', 'TRANSF', 1),
  (6, 'VOUCHERS.SIMPLE.GENERIC_EXPENSE', 'Generic expense transaction type', 'expense', 'DEP. GEN', 1),
  (7, 'VOUCHERS.SIMPLE.SALARY_PAYMENT', 'Salary payment transaction type', 'expense', 'SALAIRE', 1),
  (8, 'VOUCHERS.SIMPLE.CASH_RETURN', 'Cash return transaction type', 'expense', 'PAYBACK', 1),
  (9, 'VOUCHERS.SIMPLE.PURCHASES', 'Purchase transaction type', 'expense', 'ACHAT', 1),
  (10,'VOUCHERS.SIMPLE.CREDIT_NOTE', 'Credit note transaction type', 'creditNote', 'CREDIT NOTE', 1);
