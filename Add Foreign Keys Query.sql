ALTER TABLE `Patient` 
ADD FOREIGN KEY (`doctorID`) REFERENCES Doctor(`doctorID`);

ALTER TABLE `Patient`
ADD FOREIGN KEY (`appointmentNumber`) REFERENCES Appointment(`appointmentNumber`);

ALTER TABLE `Appointment`
ADD FOREIGN KEY (`doctorID`) REFERENCES Doctor(`doctorID`);

ALTER TABLE `Appointment`
ADD FOREIGN KEY (`patientID`) REFERENCES Patient(`patientID`);