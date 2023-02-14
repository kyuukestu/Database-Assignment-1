
CREATE DEFINER = CURRENT_USER TRIGGER `databaseSystemsAssignment1`.`Patient_BEFORE_INSERT` 
BEFORE INSERT ON `Patient` FOR EACH ROW
BEGIN
    IF new.firstName IS NULL THEN
    SET new.firstName = "Name Mandatory";
    END IF;
END
