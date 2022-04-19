--Create CreditCard Table
CREATE TABLE Creditcard
(
    CardNum         NUMBER(16)     PRIMARY KEY,
    OwnerName       VARCHAR(50)    NOT NULL,
    ExpDate         DATE           NOT NULL
); 

--Create Customer Table
CREATE TABLE Customer
(
    CustomerID          VARCHAR2(3)     PRIMARY KEY,
    FirstName           VARCHAR2(20)    NOT NULL,
    LastName            VARCHAR2(30)    NOT NULL,
    StreetAddress       VARCHAR2(30)    NOT NULL,
    City                VARCHAR2(20)    NOT NULL,
    State               CHAR(2)         NOT NULL,
    Country             VARCHAR2(15)    NOT NULL,
    ZipCode             VARCHAR2(8)     NOT NULL,
    DOB                 DATE            NOT NULL,
    MobileNumber        VARCHAR2(13)    NOT NULL,
    Email               VARCHAR2(50)    NOT NULL
);

--Create Customer Creditcard Table
CREATE TABLE Customer_Creditcard
(
    CardNum        NUMBER(16)    NOT NULL,
    CustomerID     VARCHAR2(3)  NOT NULL,
    
    CONSTRAINT  CardNum_FK
    FOREIGN KEY  (CardNum)
    REFERENCES  Creditcard(CardNum),
    
    CONSTRAINT CustomerID_FK
    FOREIGN KEY (CustomerID)
    REFERENCES  Customer(CustomerID)
); 

--Create Airport Table
CREATE TABLE Airport
(
    AirportID        CHAR(3)        PRIMARY KEY,
    AirportName      VARCHAR2(20)   NOT NULL,
    StreetAddress    VARCHAR2(30)   NOT NULL,
    City             VARCHAR2(20)   NOT NULL,
    State            CHAR(2)        NOT NULL,
    Country          VARCHAR2(15)   NOT NULL,
    ZipCode          VARCHAR2(8)    NOT NULL,
    PhoneNumber      VARCHAR2(13)   NOT NULL
); 

--Create Flight table
CREATE TABLE Flight
(
    FlightID            CHAR(3)       PRIMARY KEY,
    AirportID           CHAR(3)       NOT NULL,
    DestinationID       CHAR(3)       NOT NULL,
    Fare                NUMBER(5,2)   NOT NULL,
    FlightDate          DATE          NOT NULL,
    Remaining_Seats     CHAR(3)       NOT NULL,
    
    CONSTRAINT       AirportID_FK
    FOREIGN KEY      (AirportID)
    REFERENCES       Airport(AirportID),
    
    CONSTRAINT       DestinationID_FK
    FOREIGN KEY      (DestinationID)
    REFERENCES       Airport(AirportID)
);

--Create Table Plane Status
CREATE TABLE Plane_Status
(
    PlaneStatusID    CHAR(2)        PRIMARY KEY,
    PlaneStatus      VARCHAR2(10)   NOT NULL
); 

--Create Plane Table
CREATE TABLE Plane
(
    PlaneNum            CHAR(3)       PRIMARY KEY,
    Model               VARCHAR2(20)   NOT NULL,
    Year                DATE           NOT NULL,
    Color               VARCHAR2(10)   NOT NULL,
    SeatCapacity        NUMBER(3)      NOT NULL,
    PlaneStatusID       CHAR(2)        NOT NULL,
    AssignedAirportID   CHAR(3)        NOT NULL,
    CurrentAirportID    CHAR(3)        NOT NULL,
    
    CONSTRAINT       PlaneStatusID_FK
    FOREIGN KEY      (PlaneStatusID)
    REFERENCES       Plane_Status(PlaneStatusID),
    
    CONSTRAINT       AssignedAirportID_FK
    FOREIGN KEY      (AssignedAirportID)
    REFERENCES       Airport(AirportID),
    
    CONSTRAINT       CurrentAirportID_FK
    FOREIGN KEY      (CurrentAirportID)
    REFERENCES       Airport(AirportID)
);

--Create Table Reservation Status
CREATE TABLE Reservation_Status
(
    ReservationStatusID    CHAR(1)        PRIMARY KEY,
    ReservationStatus      VARCHAR2(10)   NOT NULL
); 

--Create Table Connection Status
CREATE TABLE Connection_Status
(
    ConnectionStatusID    CHAR(1)        PRIMARY KEY,
    ConnectionStatus      VARCHAR2(10)   NOT NULL
); 

--Create Reservation Table
CREATE TABLE Reservation
(
    ConfirmationID       CHAR(5)        PRIMARY KEY,
    CustomerID           VARCHAR2(3)    NOT NULL,
    AirportID            CHAR(3)        NOT NULL,
    PlaneNum             CHAR(3)        NOT NULL,
    GateNum              VARCHAR2(3)    NOT NULL,
    SeatNum              CHAR(3)        NOT NULL,
    FlightDate           DATE           NOT NULL,
    DepartureTime        NUMBER(4)      NOT NULL,
    ReturnDate           DATE           NULL,
    ArrivalTime          NUMBER(4)      NOT NULL,
    TripType             VARCHAR2(10)   NOT NULL,
    FlightType           VARCHAR2(10)   NOT NULL,
    ReservationStatusID  CHAR(1)        NOT NULL,
    ConnectionStatusID   CHAR(1)        NOT NULL,
    Cost                 NUMBER(6,2)    NOT NULL,
    DestinationAirportID CHAR(3)        NOT NULL,
    FlightID             CHAR(3)        NOT NULL,
    Seats_Confirmed      CHAR(3)        NOT NULL,
    
    CONSTRAINT       CustomerIDRes_FK
    FOREIGN KEY      (CustomerID)
    REFERENCES       Customer(CustomerID),
    
    CONSTRAINT       AirportIDRes_FK
    FOREIGN KEY      (AirportID)
    REFERENCES       Airport(AirportID),
    
    CONSTRAINT       PlaneNumRes_FK
    FOREIGN KEY      (PlaneNum)
    REFERENCES       Plane(PlaneNum),
    
    CONSTRAINT       ReservationStatusIDRes_FK
    FOREIGN KEY      (ReservationStatusID)
    REFERENCES       Reservation_Status(ReservationStatusID),

    CONSTRAINT       ConnectionStatusIDRes_FK
    FOREIGN KEY      (ConnectionStatusID)
    REFERENCES       Connection_Status(ConnectionStatusID),

    CONSTRAINT       DestinationAirportIDRes_FK
    FOREIGN KEY      (DestinationAirportID)
    REFERENCES       Airport(AirportID),

    CONSTRAINT       FlightID_FK
    FOREIGN KEY      (FlightID) 
    REFERENCES       Flight(FlightID)
);