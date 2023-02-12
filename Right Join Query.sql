-- Return patient data for patients paying upwards of 100k  

SELECT Patient.doctorID, Patient.firstName, Patient.lastName, Patient.age, Patient.diagnosis, Patient.treatmentCost
FROM Patient
RIGHT JOIN Doctor
ON Patient.treatmentCost > 100000;
