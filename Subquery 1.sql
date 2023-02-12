-- Patients undergoing general surgery

SELECT Patient.firstName, Patient.lastName, Patient.diagnosis, Patient.treatment
FROM Patient
Where doctorID IN
(SELECT Doctor.doctorID FROM Doctor WHERE department = "General Surgery");

