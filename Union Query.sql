-- For a new clinical trial, the hospital has requested that a report 
-- be generated from the Patient and Appointment tables, to find all 
-- the patients and doctors who are involved in the treatment of Brain 
-- Tumors. They have asked for the Patient ID, Doctor ID and Diagnosis 
-- to be returned.	
		
SELECT patientID, doctorID, diagnosis
FROM Patient
WHERE diagnosis='Brain Tumor'
UNION
SELECT patientID, doctorID, diagnosis
FROM Appointment
WHERE diagnosis='Brain Tumor';