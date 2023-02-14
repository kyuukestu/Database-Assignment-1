
CREATE DEFINER = CURRENT_USER TRIGGER `databaseSystemsAssignment1`.`Finance_BEFORE_INSERT` 
BEFORE INSERT ON `Finance` FOR EACH ROW
BEGIN
INSERT into `audit_table` (username, audit_info, audit_date) values (CURRENT_USER, "info", CURRENT_TIME());
END
