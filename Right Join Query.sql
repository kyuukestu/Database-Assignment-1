-- Right Join Patient & Doctor on doctorID 

SELECT Patient.patientID, Patient.firstName, Patient.age, Patient.diagnosis, Patient.treatment, Doctor.doctorID, Doctor.firstName, Doctor.lastName, Doctor.department
FROM Patient
RIGHT JOIN Doctor
ON Patient.doctorID = Doctor.doctorID;
