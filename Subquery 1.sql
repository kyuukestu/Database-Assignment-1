-- SubQuery that selects all Patients with doctors in the general surgery department.

SELECT *
FROM Patient
Where doctorID IN
(SELECT Doctor.doctorID FROM Doctor WHERE department = "General Surgery");

