CREATE TABLE Doctor(EmployeeID int NOT NULL, Name varchar(30) NOT NULL, Department varchar(30) NOT NULL, Email varchar(30) NOT NULL, Phone varchar(13) NOT NULL, Password varchar(30) NOT NULL,PRIMARY KEY(EmployeeID));
CREATE TABLE FrontDeskOp(Username varchar(30) NOT NULL, Password varchar(30) NOT NULL,PRIMARY KEY(Username));
CREATE TABLE DataEntryOp(Username varchar(30) NOT NULL, Password varchar(30) NOT NULL,PRIMARY KEY(Username));
CREATE TABLE DbAdmin(Username varchar(30) NOT NULL, Password varchar(30) NOT NULL,PRIMARY KEY(Username));


INSERT INTO Doctor VALUES(1,'anirudh','General Surgeon','anirudhaitipamula@gmail.com','9999999999','123');

INSERT INTO FrontDeskOp VALUES('mohan','123');

INSERT INTO DataEntryOp VALUES('aditya','123');

INSERT INTO DbAdmin VALUES('syam','123');


DROP TABLE Doctor;
DROP TABLE FrontDeskOp;
DROP TABLE DataEntryOp;
DROP TABLE DbAdmin;



