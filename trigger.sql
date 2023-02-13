CREATE TRIGGER `Total Cost`
AFTER INSERT ON
Patient
SELECT SUM(treatmentCost);