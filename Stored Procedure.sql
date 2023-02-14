CREATE DEFINER=`root`@`localhost` PROCEDURE `getTreatmentTotal`()
BEGIN
SELECT SUM(treatmentCost)
FROM Patient;
END