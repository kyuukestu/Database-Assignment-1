SELECT Patient.doctorID, Patient.firstName, Patient.lastName, Patient.age, Patient.diagnosis
FROM Patient
RIGHT JOIN Doctor
ON Patient.doctorID = Doctor.doctorID;
