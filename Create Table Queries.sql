CREATE TABLE `Patient`(
  `patientID` int AUTO_INCREMENT NOT Null,
  `firstName` varchar(25) NOT NULL,
  `lastName` varchar(25) NOT NULL,
  `age` int NOT NULL,
  `phoneNumber` int NOT NULL,
  `diagnosis` varchar(100) NOT NULL,
  `treatmentCost` int NOT NULL,
  `surgeryType` varchar(50) NOT NULL,
  `doctorID` int NOT NULL,
  `appointmentNumber` int NOT NULL,
PRIMARY KEY (`patientID`)
);

CREATE TABLE `Appointment` (
  `appointmentNumber` int NOT NULL AUTO_INCREMENT,
  `doctorID` int NOT NULL,
  `patientID` int NOT NULL,
  `date` date NOT NULL,
  `diagnosis` varchar(100) NOT NULL,
  `prescription` varchar(100) NOT NULL,
  PRIMARY KEY (`appointmentNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `Doctor` (
  `doctorID` int NOT NULL AUTO_INCREMENT,
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

