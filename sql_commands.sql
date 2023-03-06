-- Write the DROP commands as your need to drop the tables and then create the tables again.
DROP TABLE Prescribes_Medication;
DROP TABLE Prescribes_Treatment;
DROP TABLE Prescribes_Test;
DROP TABLE Appointment;
DROP TABLE Patient;
DROP TABLE Doctor;
DROP TABLE FrontDeskOp;
DROP TABLE DataEntryOp;
DROP TABLE DbAdmin;

CREATE TABLE Doctor(EmployeeID int NOT NULL,
                    Name varchar(30) NOT NULL,
                    Department varchar(30) NOT NULL,
                    Email varchar(30) NOT NULL,
                    Phone varchar(13) NOT NULL,
                    Password varchar(30) NOT NULL,
                    Working int NOT NULL,
                    PRIMARY KEY(EmployeeID));
CREATE TABLE FrontDeskOp(Username varchar(30) NOT NULL,
                         Password varchar(30) NOT NULL,
                         Email varchar(30) NOT NULL,
                         Name varchar(30) NOT NULL,
                         PRIMARY KEY(Username));
CREATE TABLE DataEntryOp(Username varchar(30) NOT NULL,
                         Password varchar(30) NOT NULL,
                         Email varchar(30) NOT NULL,
                         Name varchar(30) NOT NULL,
                         PRIMARY KEY(Username));
CREATE TABLE DbAdmin(Username varchar(30) NOT NULL,
                     Password varchar(30) NOT NULL,
                     PRIMARY KEY(Username));

INSERT INTO Doctor VALUES
(1,'anirudh','General Surgeon','anirudhaitipamula@gmail.com','94572877742','123', 1),
(2,'vinod','Orthopedicican','vinod345@gmail.com','6302548792','234', 1),
(3,'shalini','Pediatrician','shalini@gmail.com','8416544713','345', 1);

INSERT INTO FrontDeskOp VALUES
('arjun', '123', 'arjun@gmail.com', 'Arjuna K'),
('karen', '1234', 'karena@gmail.com', 'Karen Jr.'),
('mohan', '12345', 'kishore@gmail.com', 'Mohan Kishore'),
('namo', '123456', 'narendra@gmail.com', 'Narendra Modi');

INSERT INTO DataEntryOp VALUES
('aditya','123', 'aditya@gmail.com', 'Aditya'),
('kumar', '1234', 'kumara@gmail.com', 'Kumar');

INSERT INTO DbAdmin VALUES
('syam','123');

CREATE TABLE Patient(PatientID int NOT NULL,
                     Name varchar(255) NOT NULL,
                     Gender varchar(1) NOT NULL,
                     Age int NOT NULL,
                     Phone varchar(255) NOT NULL,
                     Diagnosis varchar(255) NOT NULL,
                     PRIMARY KEY(PatientID));
INSERT INTO Patient VALUES (1, 'Rahul','M', 25,'8759658745', 'bone fracture');
INSERT INTO Patient VALUES (2, 'Pinky', 'F', 35, '4444658745', 'fever,cold,cough');
INSERT INTO Patient VALUES  (3, 'Likhitha', 'F', 15, '5368768888', 'allergy');
INSERT INTO Patient VALUES  (4, 'Vijay', 'M', 20, '9999999999', 'Headache, nausea, weakness');

CREATE TABLE Appointment (AppointmentID int NOT NULL, 
                            Doctor int NOT NULL,
                            Patient int NOT NULL,
                            Date DATE NOT NULL,
                            StartTime varchar(255) NOT NULL,
                            PRIMARY KEY (AppointmentID),
                            FOREIGN KEY (Doctor) REFERENCES Doctor(EmployeeID),
                            FOREIGN KEY (Patient) REFERENCES Patient(PatientID));

INSERT INTO Appointment VALUES(1,3,3,'2023-03-04','3:00');
INSERT INTO Appointment VALUES(2,1,2,'2022-10-15','11:00');
INSERT INTO Appointment VALUES(3,1,4,'2022-11-05','4:00');
INSERT INTO Appointment VALUES(4,2,1,'2023-02-28','10:00');

CREATE TABLE Prescribes_Medication(Doctor int NOT NULL,
                                    Patient int NOT NULL,
                                    Appointment int NOT NULL,
                                    Medication varchar(255) NOT NULL,
                                    PRIMARY KEY (Doctor, Patient, Appointment),
                                    FOREIGN KEY (Doctor) REFERENCES Doctor(EmployeeID),
                                    FOREIGN KEY (Patient) REFERENCES Patient(PatientID),
                                    FOREIGN KEY (Appointment) REFERENCES Appointment(AppointmentID));

INSERT INTO Prescribes_Medication VALUES(1,2,2,'Paracetamol');
INSERT INTO Prescribes_Medication VALUES(1,4,3,'Zincovit');
INSERT INTO Prescribes_Medication VALUES(2,1,4,'Vitamin D');
INSERT INTO Prescribes_Medication VALUES(3,3,1,'Crocin');

CREATE TABLE Prescribes_Treatment(Doctor int NOT NULL,
                                    Patient int NOT NULL,
                                    Appointment int NOT NULL,
                                    Date DATE NOT NULL,
                                    Treatment varchar(255) NOT NULL,
                                    PRIMARY KEY (Doctor, Patient, Appointment,Date),
                                    FOREIGN KEY (Doctor) REFERENCES Doctor(EmployeeID),
                                    FOREIGN KEY (Patient) REFERENCES Patient(PatientID),
                                    FOREIGN KEY (Appointment) REFERENCES Appointment(AppointmentID));

INSERT INTO Prescribes_Treatment VALUES(1,2,2,'2022-10-15','Rest');
INSERT INTO Prescribes_Treatment VALUES(1,4,3,'2022-11-05','Steam Breathing');
INSERT INTO Prescribes_Treatment VALUES(2,1,4,'2023-02-28','Rest');
INSERT INTO Prescribes_Treatment VALUES(3,3,1,'2023-03-04','Massage');

CREATE TABLE Prescribes_Test(Doctor int NOT NULL,
                             Patient int NOT NULL,
                             Appointment int NOT NULL,
                             Date DATE NOT NULL,
                             Test varchar(255) NOT NULL,
                             PRIMARY KEY (Doctor, Patient, Appointment,Date),
                             FOREIGN KEY (Doctor) REFERENCES Doctor(EmployeeID),
                             FOREIGN KEY (Patient) REFERENCES Patient(PatientID),
                             FOREIGN KEY (Appointment) REFERENCES Appointment(AppointmentID));

INSERT INTO Prescribes_Test VALUES(1,2,2,'2022-10-15','Blood Test');
INSERT INTO Prescribes_Test VALUES(1,4,3,'2022-11-05','X-Ray');
