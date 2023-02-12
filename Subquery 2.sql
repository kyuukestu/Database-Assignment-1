SELECT Patient.firstName, Patient.lastName, Patient.diagnosis
FROM Patient
Where doctorID In
(SELECT Appointment.doctorID FROM Appointment Where appointmentDate > STR_TO_DATE("1 June 2023", "%d %M %Y"))
-- Right Join Doctor
-- On Doctor.doctorID = Patient.doctorID;
