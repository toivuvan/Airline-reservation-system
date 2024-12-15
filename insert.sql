INSERT INTO Customers (CustomerID, Name, Gender, Email, PhoneNumber, Address, DateOfBirth) VALUES
    (1, 'Nguyen Nang Thinh', 'Male', 'thinhnang@gmail.com', '1111111111', 'Bac Ninh', '2005-01-01'),
    (2, 'Vu Van Toi', 'Female', 'toivu@gmail.com', '2222222222', 'Hai Duong', '2005-02-02'),
    (3, 'Mai Anh Tung', 'Male', 'maitung@gmail.com', '3333333333', 'Thai Nguyen', '2005-03-03'),
    (4, 'Nguyen Dan', 'Male', 'nguyendan@gmail.com', '4444444444', 'Ha Noi', '2005-04-04'),
    (5, 'Ta Nguyen Thanh', 'Male', 'nguyenthanh@gmail.com', '5555555555', 'Ha Noi', '2005-05-05'),
    (6, 'Nguyen Cong Trinh', 'Male', 'congtrinh@gmail.com', '6666666666', 'Nam Dinh', '2005-06-06'),
    (7, 'Pham Minh Tu', 'Male', 'minhtu@gmail.com', '7777777777', 'Bac Ninh', '2005-07-07'),
    (8, 'Hoang Minh Quyen', 'Male', 'minhquyen@gmail.com', '8888888888', 'Lang Son', '2005-08-08'),
    (9, 'Nguyen Minh Quan', 'Male', 'minhquan@gmail.com', '9999999999', 'Hung Yen', '2005-09-09'),
    (10, 'Dao Tu Phat', 'Male', 'tuphat@gmail.com', '1010101010', 'Ha Noi', '2005-10-10'),
    (11, 'Hoang Son', 'Male', 'hoangson@gmail.com', '0101010101', 'Ha Noi', '2005-11-11'),
    (12, 'Cao Minh Quang', 'Male', 'minhquang@gmail.com', '1212121212', 'Ha Noi', '2005-12-12');
    
INSERT INTO Airports (AirportID, AirportName, Location, AirportCode) VALUES
    (1, 'Noi Bai', 'Ha Noi', 'HAN'),
    (2, 'Tan Son Nhat', 'Ho Chi Minh City', 'SGN'),
    (3, 'Con Dao', 'Ba Ria - Vung Tau', 'VCS'),
    (4, 'Phu Cat', 'Binh Dinh', 'UIH'),
    (5, 'Ca Mau', 'Can Tho', 'VCA'),
    (6, 'Cat Bi', 'Hai Phong', 'HPH'),
    (7, 'Cam Ranh', 'Khanh Hoa', 'CXR'),
    (8, 'Phu Quoc', 'Kien Giang', 'PQC'),
    (9, 'Van Don', 'Quang Ninh', 'VDO');
    
INSERT INTO Airlines (AirlineID, AirlineName, Headquater, PhoneNumber, Email) VALUES
    (1, 'VietNam Airlines', 'Ha Noi', '19001100', 'Telesales@vietnamairlines.com'),
    (2, 'Vietjet Air', 'Ha Noi', '19001886', 'info@vietjetair.com'),
    (3, 'Bamboo Airways', 'Ho Chi Minh City', '19001166 ', 'cto.sgn@bambooairways.com '),
    (4, 'Jetstar Pacific Airlines', 'Ha Noi', '19001550', 'Jetstarairlines.online@gmail.comv'),
    (5, 'Vietravel Airlines', 'Hue', '19006686', 'customercare@vietravelairlines.vn'),
    (6, 'VASCO', 'Ho Chi Minh City', '19000317', 'scc.vasco@vasco.com.vn');
    
INSERT INTO Flights (FlightID, AirlineID, DepartureAirportID, ArrivalAirportID, FlightNumber) VALUES
    (1, 4, 1, 9, 'BL123'),
    (2, 5, 2, 3, 'VU123'),
    (3, 6, 8, 4, 'OV123'),
    (4, 3, 5, 2, 'QH123'),
    (5, 1, 3, 7, 'VN123'),
    (6, 2, 4, 6, 'VJ123'),
    (7, 3, 1, 2, 'QH456'),
    (8, 1, 2, 9, 'VN456');
    
INSERT INTO Staff (StaffID, Name, Role, FlightScheduleID, PhoneNumber, Email, Address) VALUES
    (1, 'Lionel Messi', 'Pilot', 101, '1234567890', 'messi@gmail.com', 'Argentina'),
    (2, 'Cristiano Ronaldo', 'Pilot', 102, '0987654321', 'ronaldo@gmail.com', 'Portugal'),
    (3, 'Luka Modric', 'Male Flight Attendant', 103, '0123456789', 'luka@gmail.com', 'Croatia'),
    (4, 'De Gea', 'Flight Instructor', 104, '5463728190', 'degea@gmail.com', 'Spain'),
    (5, 'Mason Mount', 'Air Traffic Controller', 105, '9876543210', 'mason@gmail.com', 'England'),
    (6, 'Declan Rice', 'Aviation Meteorologist', 106, '2468013579', 'rice@gmail.com', 'England'),
    (7, 'De Bruyne', 'Aviation Security Officer', 107, '1357924680', 'debruyne@gmail.com', 'Belgium');
    
INSERT INTO FlightSchedules (FlightScheduleID, FlightID, DepartureTime, ArrivalTime, StaffID) VALUES
    (101, 1, '2024-03-01 00:00:00', '2024-03-01 01:00:00', 1),
    (102, 2, '2024-03-02 01:00:00', '2024-03-02 03:00:00', 3),
    (103, 3, '2024-03-03 10:00:00', '2024-03-03 14:00:00', 7),
    (104, 4, '2024-03-04 12:00:00', '2024-03-04 13:00:00', 4),
    (105, 5, '2024-03-05 14:00:00', '2024-03-05 16:00:00', 2),
    (106, 6, '2024-03-06 02:00:00', '2024-03-06 05:00:00', 5),
    (107, 7, '2024-03-07 09:00:00', '2024-03-07 13:00:00', 6),
    (108, 8, '2024-03-08 10:00:00', '2024-03-08 11:00:00', 2);

INSERT INTO Reservations (ReservationID, CustomerID, FlightSchedulesID, ReservationDate, Status) VALUES
    (1, 1, 101, '2024-01-01', 'Pending'),
    (2, 2, 102, '2024-01-02', 'Pending'),
    (3, 3, 103, '2024-01-03', 'Confirmed'),
    (4, 4, 104, '2024-01-04', 'Confirmed'),
    (5, 5, 105, '2024-01-05', 'Confirmed'),
    (6, 6, 106, '2024-01-06', 'Pending'),
    (7, 7, 107, '2024-01-07', 'Pending'),
    (8, 8, 108, '2024-01-08', 'Confirmed'),
    (9, 9, 109, '2024-01-09', 'Pending'),
    (10, 10, 110, '2024-01-10', 'Confirmed'),
    (11, 11, 111, '2024-01-11', 'Pending'),
    (12, 12, 112, '2024-01-12', 'Confirmed');
    
INSERT INTO Passengers (PassengerID, CustomerID, FirstName, LastName, DateOfBirth, Gender, Nationality, PassportNumber) VALUES
    (1, 1, 'Nguyen Nang', 'Thinh', '2005-01-01', 'Male', 'Viet Nam', 'P1234'),
    (2, 2, 'Vu Van', 'Toi', '2005-02-02', 'Female', 'Viet Nam', 'P4321'),
    (3, 3, 'Mai Anh', 'Tung', '2005-03-03', 'Male', 'Viet Nam', 'P5678'),
    (4, 4, 'Nguyen', 'Dan', '2005-04-04', 'Male', 'Viet Nam', 'P8765'),
    (5, 5, 'Ta Nguyen', 'Thanh', '2005-05-05', 'Male', 'Viet Nam', 'P7890'),
    (6, 4, 'Nguyen Cong', 'Trinh', '2005-06-06', 'Male', 'Viet Nam', 'P0987'),
    (7, 4, 'Pham Minh', 'Tu', '2005-07-07', 'Male', 'Viet Nam', 'P2345'),
    (8, 4, 'Hoang Minh', 'Quyen', '2005-08-08', 'Male', 'Viet Nam', 'P5432'),
    (9, 4, 'Nguyen Minh', 'Quan', '2005-09-09', 'Male', 'Viet Nam', 'P3456'),
    (10, 4, 'Dao Tu', 'Phat', '2005-10-10', 'Male', 'Viet Nam', 'P6543'),
    (11, 4, 'Hoang', 'Son', '2005-11-11', 'Male', 'Viet Nam', 'P4567'),
    (12, 4, 'Cao Minh', 'Quang', '2005-12-12', 'Male', 'Viet Nam', 'P7654');
    
INSERT INTO Luggage (LuggageID, PassengerID, Weight, Type) VALUES
    (1, 1, 29, 'Checked'),
    (2, 2, 12, 'Handed'),
    (3, 3, 26, 'Checked'),
    (4, 4, 10, 'Handed'),
    (5, 5, 16, 'Checked'),
    (6, 6, 20, 'Checked'),
    (7, 7, 7, 'Handed'),
    (8, 8, 30, 'Checked'),
    (9, 9, 25, 'Checked'),
    (10, 10, 3, 'Handed'),
    (11, 11, 2, 'Handed'),
    (12, 12, 12, 'Handed');
    
INSERT INTO Feedback (FeedbackID, ReservationID, Rating, Comments, FeedbackDate) VALUES
    (1, 1, 1, 'Bad service', '2024-01-02'),
    (2, 4, 4, 'Good service', '2024-01-06'),
    (3, 3, 3, 'Average experience', '2024-01-05'),
    (4, 8, 5, 'Very satisfied', '2024-01-13'),
    (5, 12, 5, 'Excellent, I love it', '2024-01-16');
    
INSERT INTO Tickets (TicketID, ReservationID, PassengerID, Class, TicketPrice, SeatNumber) VALUES
    (1, 1, 1, 'Economy', 200, '16B'),
    (2, 2, 2, 'Business', 400, '12D'),
    (3, 3, 3, 'Premium Economy', 300, '9C'),
    (4, 4, 4, 'First', 600, '1A'),
    (5, 5, 5, 'Business', 450, '6E'),
    (6, 6, 6, 'Premium Economy', 250, '10A'),
    (7, 7, 7, 'Business', 350, '5C'),
    (8, 8, 8, 'First', 600, '2B'),
    (9, 9, 9, 'Economy', 250, '20D'),
    (10, 10, 10, 'Economy', 200, '22C'),
    (11, 11, 11, 'Economy', 220, '24A'),
    (12, 12, 12, 'Business', 400, '12B');
    
INSERT INTO Payment (PaymentID, ReservationID, Amount, PaymentMethod, PaymentDate, Status) VALUES
    (1, 1, 200, 'Cash', '2024-01-01', 'Completed'),
    (2, 2, 400, 'Paypal', '2024-01-03', 'Pending'),
    (3, 3, 300, 'Debit Card', '2024-01-03', 'Pending'),
    (4, 4, 600, 'Bank Transfer', '2024-01-04', 'Completed'),
    (5, 5, 450, 'Credit Card', '2024-01-06', 'Pending'),
    (6, 6, 250, 'Paypal', '2024-01-07', 'Completed'),
    (7, 7, 350, 'Cash', '2024-01-07', 'Completed'),
    (8, 8, 600, 'Debit Card', '2024-01-10', 'Pending'),
    (9, 9, 250, 'Credit Card', '2024-01-13', 'Completed'),
    (10, 10, 200, 'Credit Card', '2024-01-11', 'Completed'),
    (11, 11, 220, 'Bank Transfer', '2024-01-13', 'Pending'),
    (12, 12, 400, 'Credit Card', '2024-01-14', 'Pending');
    