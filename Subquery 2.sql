-- Select Patients who have an appointment after June 1st

SELECT *
FROM Patient
Where doctorID In
(SELECT Appointment.doctorID FROM Appointment Where appointmentDate > STR_TO_DATE("1 June 2023", "%d %M %Y"))

