CREATE DATABASE AirlineReservationSystem;

USE AirlineReservationSystem;

CREATE TABLE Customers (
	CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    Gender VARCHAR(10),
    Email VARCHAR(100) UNIQUE,
    PhoneNumber VARCHAR(20),
    Address TEXT,
    DateOfBirth DATE
);

CREATE TABLE Airports (
    AirportID INT PRIMARY KEY AUTO_INCREMENT,
    AirportName VARCHAR(50),
    Location TEXT,
    AirportCode VARCHAR(10) UNIQUE
);

CREATE TABLE Airlines (
    AirlineID INT PRIMARY KEY AUTO_INCREMENT,
    AirlineName VARCHAR(50),
    Headquater TEXT,
    PhoneNumber VARCHAR(15),
    Email VARCHAR(50)
);

CREATE TABLE Flights (
    FlightID INT PRIMARY KEY AUTO_INCREMENT,
    AirlineID INT,
    DepartureAirportID INT,
    ArrivalAirportID INT,
    FlightNumber VARCHAR(20),
    FOREIGN KEY (AirlineID) REFERENCES Airlines(AirlineID),
    FOREIGN KEY (DepartureAirportID) REFERENCES Airports(AirportID),
    FOREIGN KEY (ArrivalAirportID) REFERENCES Airports(AirportID)
);

CREATE TABLE Staff (
    StaffID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    Role VARCHAR(50),
    FlightScheduleID INT,
    PhoneNumber VARCHAR(15),
    Email VARCHAR(50),
    Address TEXT
);


CREATE TABLE FlightSchedules (
    FlightScheduleID INT PRIMARY KEY AUTO_INCREMENT,
    FlightID INT,
    DepartureTime DATETIME,
    ArrivalTime DATETIME,
    StaffID INT,
    FOREIGN KEY (FlightID) REFERENCES Flights(FlightID),
    FOREIGN KEY (StaffID) REFERENCES Staff(StaffID)
);

CREATE TABLE Reservations (
    ReservationID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT,
    FlightSchedulesID INT,
    ReservationDate DATE,
    Status VARCHAR(20),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (FlightSchedulesID) REFERENCES FlightSchedules(FlightScheduleID)
);

CREATE TABLE Passengers (
    PassengerID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DateOfBirth DATE,
    Gender VARCHAR(10),
    Nationality VARCHAR(20),
    PassportNumber VARCHAR(20),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE Tickets (
    TicketID INT PRIMARY KEY AUTO_INCREMENT,
    ReservationID INT,
    PassengerID INT,
    Class VARCHAR(20),
    TicketPrice DECIMAL(10, 2),
    SeatNumber VARCHAR(10),
    FOREIGN KEY (ReservationID) REFERENCES Reservations(ReservationID),
    FOREIGN KEY (PassengerID) REFERENCES Passengers(PassengerID)
);

CREATE TABLE Luggage (
    LuggageID INT PRIMARY KEY AUTO_INCREMENT,
    PassengerID INT,
    Weight DECIMAL(5, 2),
    Type VARCHAR(50),
    FOREIGN KEY (PassengerID) REFERENCES Passengers(PassengerID)
);

CREATE TABLE Feedback (
    FeedbackID INT PRIMARY KEY AUTO_INCREMENT,
    ReservationID INT,
    Rating INT,
    Comments TEXT,
    FeedbackDate DATE,
    FOREIGN KEY (ReservationID) REFERENCES Reservations(ReservationID)
);

CREATE TABLE Payment (
    PaymentID INT PRIMARY KEY AUTO_INCREMENT,
    ReservationID INT,
    Amount DECIMAL(10, 2),
    PaymentMethod VARCHAR(20),
    PaymentDate DATE,
    Status VARCHAR(20),
    FOREIGN KEY (ReservationID) REFERENCES Reservations(ReservationID)
);




