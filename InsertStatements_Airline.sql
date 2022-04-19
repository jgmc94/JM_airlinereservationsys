--Insert query for inserting new records to Customer Table
INSERT INTO Customer
(CustomerID,FirstName,LastName,StreetAddress,City,State,Country,ZipCode,DOB,MobileNumber,Email)
VALUES
('A01','John','Quarter','706 Hart Street','Brooklyn','NY','USA','11221','20-JAN-1993','6462337145','jq@gmail.com');
INSERT INTO Customer
VALUES
('B01','Sam','Dime','72 Cedar Street','Brooklyn','NY','USA','11221','09-MAR-1981','7188447222','sd@gmail.com');
INSERT INTO Customer
VALUES
('C01','Penny','Lejon','1574 Forest Avenue','Queens','NY','USA','11385','20-MAY-1972','7183342244','pennypenny@gmail.com');
INSERT INTO Customer
VALUES
('D01','Pearl','Quartz','300 DeKalb Avenue','Brooklyn','NY','USA','11221','27-APR-1997','3474456253','qpquartz@gmail.com');
INSERT INTO Customer
VALUES
('E01','Jay','Joe','12 University Place','Manhattan','NY','USA','10003','08-AUG-1994','2122332457','joe123@gmail.com');
INSERT INTO Customer
VALUES
('F01','Johnster','Peach','118 Castle Road ','Hoboken','NJ','USA','12103','02-MAY-1967','6162339957','peaches4me@outlook.com');
INSERT INTO Customer
VALUES
('G01','Steven','Cebolla','254 Cooper Street','Wilkes-Barre','PA','USA','22313','17-APR-1985','6314552492','onioninspanish@icloud.com');
INSERT INTO Customer
VALUES
('H01','Samantha','Horseradish','222 Place Street','South Beach','FL','USA','71827','22-JUN-192','1872119019','samsam@outlook.com');
INSERT INTO Customer
VALUES
('I01','Ashley','Alphabet','15 Ridge Street','Los Angeles','CA','USA','90210','26-NOV-1991','7672337122','alphabet@gmail.com');
INSERT INTO Customer
VALUES
('J01','Robert','Rodriguez','12 University Place','Kentucky','AL','USA','10003','30-APR-2000','6331112457','robrod123@gmail.com');
--End of Customer table insertion

--Insert Query for inserting new records into Airport Table
INSERT INTO Airport
(AirportID,AirportName,StreetAddress,City,State,Country,ZipCode,PhoneNumber)
VALUES
('AA1','John F Kennedy','JFK','Queens','NY','USA','11430','7182444444');
INSERT INTO Airport
VALUES
('BB1','LaGuardia','LGA','Queens','NY','USA','11371','7185333200');
INSERT INTO Airport
VALUES
('CC1','Los Angeles Int.','1 World Way','Los Angeles','CA','USA','90045','3106465252');
INSERT INTO Airport
VALUES
('DD1','Pittsburgh Int.','1000 Airport Boulevard','Pittsburgh','PA','USA','15231','4124723500');
INSERT INTO Airport
VALUES
('EE1','Boston Logan Int.','1 Harborside Drive','Boston','MA','USA','02128','6175682509');
INSERT INTO Airport
VALUES
('FF1','Miami International','2100 NW 42nd Avenue','Miami','FL','USA','33126','3058767000');
INSERT INTO Airport
VALUES
('GG1','Dallas/Fort Worth','2400 Aviation Drive','Dallas','TX','USA','75261','9725746000');
--End of Airport table insertion

--Insert Query for inserting new records into Plane Status Table
INSERT INTO Plane_Status
VALUES ('AV','Available');
INSERT INTO Plane_Status
VALUES ('RP','Repair');
--End of Plane Status Table insertion

--Insert Query for inserting new records into Reservation Status Table
INSERT INTO Reservation_Status
VALUES ('C','Confirmed');
INSERT INTO Reservation_Status
VALUES ('L','Cancelled');
INSERT INTO Reservation_Status
VALUES ('P','Complete');
--End of Reservation Status Table insertion

--Insert Query for inserting new records into Connection Status Table
INSERT INTO Connection_Status
VALUES ('Y','Yes');
INSERT INTO Connection_Status
VALUES ('N','None');
--End of Connection Status Table insertion

--Insert Query for inserting new records into Plane Table
INSERT INTO Plane
(PlaneNum,Model,Year,Color,SeatCapacity,PlaneStatusID,AssignedAirportID,CurrentAirportID)
VALUES 
('1AB','Boeing 767','27-AUG-2010','White',300,'AV','AA1','CC1');
INSERT INTO Plane
VALUES 
('2CD','Boeing 787','14-JAN-2015','Blue',300,'AV','FF1','FF1');
INSERT INTO Plane
VALUES 
('3EF','Douglas DC-3','02-SEP-2007','Red/White',250,'AV','GG1','AA1');
INSERT INTO Plane
VALUES 
('4GH','Airbus A380','30-OCT-2008','Yellow',200,'AV','EE1','DD1');
INSERT INTO Plane
VALUES 
('5IJ','Boeing 707','27-DEC-2001','Gray',300,'RP','BB1','BB1');
--End of Plane table insertion

--Insert Query for inserting new records into Reservation Table
INSERT INTO Reservation
(ConfirmationID,CustomerID,AirportID,PlaneNum,GateNum,SeatNum,FlightDate,DepartureTime,ArrivalTime,TripType,FlightType,ReservationStatusID,ConnectionStatusID,Cost,DestinationAirportID)
VALUES 
('1QZAA','A01','AA1','1AB','62','11G','26-NOV-2018','1310','1850','One-Way','Commercial','C','N',245.50,'GG1');
INSERT INTO Reservation
VALUES 
('2QZBB','C01','AA1','3EF','15','1A','29-NOV-2018','1210','1900','One-Way','Commercial','C','N',245.50,'GG1');
INSERT INTO Reservation
VALUES 
('3QZCC','B01','CC1','2CD','12','15C','26-DEC-2018','0810','1445','RoundTrip','FirstClass','C','N',784.50,'FF1');
INSERT INTO Reservation
VALUES 
('4QZDD','F01','BB1','4GH','31','5E','21-NOV-2018','1110','1850','One-Way','FirstClass','C','N',725.00,'EE1');
INSERT INTO Reservation
VALUES 
('5QZEE','G01','DD1','4GH','31','11G','21-NOV-2018','1110','1850','One-Way','Commercial','C','Y',245.50,'BB1');
--End of Reservation table insertion

--Insert Query for inserting new records into Flight Table
INSERT INTO Flight(FlightID,AirportID,DestinationID,Fare,FlightDate,Remaining_Seats)
VALUES ('1','AA1','CC1',375.50,'01-JAN-2022','25');
INSERT INTO Flight
VALUES ('2','DD1','GG1',230.75,'22-DEC-2021','15');
INSERT INTO Flight
VALUES ('3','BB1','EE1',340.00,'07-NOV-2021','N/A');
INSERT INTO Flight
VALUES ('4','FF1','BB1',440.00,'07-FEB-2022','22');
INSERT INTO Flight
VALUES ('5','CC1','DD1',275.10,'20-APR-2022','110');
INSERT INTO Flight
VALUES ('6','BB1','EE1',540.00,'28-JAN-2022','7');
--End of Flight Table insertion

