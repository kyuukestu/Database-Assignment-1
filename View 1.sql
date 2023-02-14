-- A view of all Patients whose payment is above 170k

CREATE VIEW `170k Patients` AS
SELECT firstName, lastName, age, diagnosis, treatment, treatmentCost
FROM Patient
Where treatmentCost > 170000;