Insert IGNORE INTO Patient (patientID,firstName,lastName,age,phoneNumber,diagnosis,treatmentCost,treatment,doctorID,appointmentNumber)
VALUES (2023009, 'Trigger', 'One', '01', 8761234567, 'Appendicitis', 150000, 'Appendectomy', 1217000, 1617009);

CREATE TRIGGER `Increment age`
AFTER INSERT ON Patient  
FOR EACH ROW
SET age = age + 1;

