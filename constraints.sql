ALTER TABLE Customers
ADD CONSTRAINT Unique_CustomerID UNIQUE (CustomerID);

ALTER TABLE Customers
ADD CONSTRAINT Unique_PhoneNumber UNIQUE (PhoneNumber);

ALTER TABLE Airports
ADD CONSTRAINT Unique_AirportID UNIQUE (AirportID);

ALTER TABLE Airports
ADD CONSTRAINT Unique_AirportCode UNIQUE (AirportCode);

ALTER TABLE Flights
ADD CONSTRAINT Unique_FlightID UNIQUE (FlightID);

ALTER TABLE Staff
ADD CONSTRAINT Unique_StaffID UNIQUE (StaffID);

ALTER TABLE Feedback
ADD CONSTRAINT Check_Rating CHECK (Rating >= 1 AND Rating <= 5);

ALTER TABLE Luggage
ADD CONSTRAINT Check_Weight CHECK (Weight <= 32);

ALTER TABLE Tickets
ADD CONSTRAINT Check_TicketPrice CHECK (TicketPrice > 0);

ALTER TABLE Payment
ADD CONSTRAINT Check_PaymentAmount CHECK (Amount > 0);

ALTER TABLE FlightSchedules
ADD CONSTRAINT Check_ScheduleTime CHECK (DepartureTime < ArrivalTime);

ALTER TABLE Staff
ADD CONSTRAINT fk_Staff_FlightSchedules_FlightScheduleID
FOREIGN KEY (FlightScheduleID)
REFERENCES FlightSchedules(FlightScheduleID)
ON DELETE CASCADE
ON UPDATE CASCADE;