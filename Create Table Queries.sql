CREATE TABLE `Patient`(
  `patientID` int NOT Null,
  `firstName` varchar(25) NOT NULL,
  `lastName` varchar(25) NOT NULL,
  `age` int NOT NULL,
  `phoneNumber` int NOT NULL,
  `diagnosis` varchar(100) NOT NULL,
  `treatmentCost` int NOT NULL,
  `treatment` varchar(50) NOT NULL,
  `doctorID` int NOT NULL,
  `appointmentNumber` int NOT NULL,
  PRIMARY KEY (`patientID`),
  FOREIGN KEY (`doctorID`) REFERENCES Doctor(`doctorID`),
  FOREIGN KEY (`appointmentNumber`) REFERENCES Appointment(`appointmentNumber`)
);

CREATE TABLE `Appointment` (
  `appointmentNumber` int NOT NULL,
  `doctorID` int NOT NULL,
  `patientID` int NOT NULL,
  `date` date NOT NULL,
  `diagnosis` varchar(100) NOT NULL,
  PRIMARY KEY (`appointmentNumber`),
  FOREIGN KEY (`doctorID`) REFERENCES Doctor(`doctorID`),
  FOREIGN KEY (`patientID`) REFERENCES Patient(`patientID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `Doctor` (
  `doctorID` int NOT NULL,
  `firstName` varchar(45) NOT NULL,
  `lastName` varchar(45) NOT NULL,
  `department` varchar(45) NOT NULL,
  PRIMARY KEY (`doctorID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `Finance` (
  `treatmentID` varchar(45) NOT NULL,
  `treatmentCost` int NOT NULL,
  `treatment` varchar(45) NOT NULL,
  PRIMARY KEY (`treatmentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

