-- A view containing all Patients whose name starts with A

CREATE VIEW `Stars with A` AS
SELECT * FROM Patient
WHERE firstName LIKE 'A%';