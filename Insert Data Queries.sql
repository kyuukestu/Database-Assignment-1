INSERT IGNORE INTO Patient (patientID,firstName,lastName,age,phoneNumber,diagnosis,treatmentCost,treatment,doctorID,appointmentNumber)
VALUES  (2023123,'Alex','Rowe',36,8765467134,'Appendicitis',150000,'Appendectomy',1217000,1617989),
		(2023456,'Adam','Gardener',16,8769567101,'Brain Tumor',550000,'Craniotomy',1217890,1617089),
		(2023789,'Hailey','Quinn',46,8764418974,'Hernia',75000,'Hernia Repair',1216500,1617009),
		(2023101,'Brandon','Brown',32,8767612332,'Appendicitis',150000,'Appendectomy',1217000,1617961),
		(2023112,'Kacie','Lee',66,8761198854,'Pancreas Cancer',177000,'Pancreatectomy',1216110,1617011),
		(2023133,'Alexcia','Rowe',30,8769096784,'Brain Tumor',550000,'Craniotomy',1217890,1616086),
		(2023441,'Liam','Spence',27,8763219976,'Brain Tumor',550000,'Craniotomy',1211290,1616054),
		(2023657,'Christopher','Taylor',36,8766617711,'Hernia',75000,'Hernia Repair',1216500,1617700),
		(2023890,'Jonny','Gooden',39,8761019001,'Pancreas Cancer',177000,'Pancreatectomy',1216110,1618811),
		(2023225,'Tianna','Williams',47,8764820101,'Appendicitis',150000,'Appendectomy',1217000,1618999);
		

INSERT IGNORE INTO Doctor (doctorID,firstname,lastname,department)
VALUES  (1217000,'Ella','Thompson','General Surgery'),
		(1217890,'Richard','Scott','Neurology'),
		(1216500,'Matthew','Hamilton','General Surgery'),
		(1211290,'Roshane','Campbell','Neurology'),
		(1216110,'Ashley','Beckford','Oncology');


INSERT IGNORE INTO Appointment (appointmentNumber,doctorID,patientID,appointmentDate,diagnosis)
VALUES  (1617989,1217000,2023123,STR_TO_DATE('12 May 2023', '%d %M %Y'),'Appendicitis'),
		(1617089,1217890,2023456,STR_TO_DATE('13 April 2023', '%d %M %Y'),'Brain Tumor'),
		(1617009,1216500,2023789,STR_TO_DATE('11 April 2023', '%d %M %Y'),'Hernia'),
		(1617961,1217000,2023101,STR_TO_DATE('23 April 2023', '%d %M %Y'),'Appendicitis'),
		(1617011,1216110,2023112,STR_TO_DATE('12 May 2023', '%d %M %Y'),'Pancreas Cancer'),
		(1616086,1217890,2023133,STR_TO_DATE('01 June 2023', '%d %M %Y'),'Brain Tumor'),
		(1616054,1211290,2023441,STR_TO_DATE('17 May 2023', '%d %M %Y'),'Brain Tumor'),
		(1617700,1216500,2023657,STR_TO_DATE('18 July 2023', '%d %M %Y'),'Hernia'),
		(1618811,1216110,2023890,STR_TO_DATE('20 May 2023', '%d %M %Y'),'Pancreas Cancer'),
		(1618999,1217000,2023225,STR_TO_DATE('11 April 2023', '%d %M %Y'),'Appendicitis');


INSERT IGNORE INTO Finance (treatmentID,treatmentCost,treatment)
VALUES  ('APP100',150000,'Appendectomy'),
		('CRAN500',550000,'Craniotomy'),
		('HERN750',75000,'Hernia Repair'),
		('PAN177', 177000,'Pancreatectomy'),
		('HYST175', 175000,'Hysterectomy');