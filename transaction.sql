-- Transaction 1: Đảm bảo reservation và ticket tương ứng được nhập vào database cùng lúc
START TRANSACTION;

INSERT INTO Reservations (ReservationID, CustomerID, FlightSchedulesID, ReservationDate, Status)
VALUES (69, 12, 108, '2024-12-26', 'Confirmed');

INSERT INTO Tickets (TicketID, ReservationID, PassengerID, Class, TicketPrice, SeatNumber)
VALUES (13, 69, 12, 'Economy', 300.00, '15C');

COMMIT;
ROLLBACK;

-- Transaction 2: Đảm bảo reservation, ticket và payment tương ứng được nhập vào database cùng lúc. Để test tính năng rollback, sẽ có lỗi ở bước payment
START TRANSACTION;

INSERT INTO Reservations (ReservationID, CustomerID, FlightSchedulesID, ReservationDate, Status)
VALUES (13, 3, 107, '2024-12-27', 'Pending');

INSERT INTO Tickets (TicketID, ReservationID, PassengerID, Class, TicketPrice, SeatNumber)
VALUES (13, 13, 3, 'Business', 450.00, '12A');

-- lỗi invalid type ở đây
INSERT INTO Payment (PaymentID, ReservationID, Amount, PaymentMethod, PaymentDate, Status)
VALUES (13, 13, 'InvalidAmount', 'Credit Card', '2024-12-27', 'Pending');

COMMIT;
ROLLBACK;

-- Transaction 3: Thêm record hành lý và cập nhật status của hành khách nếu thành công
START TRANSACTION;

INSERT INTO Luggage (LuggageID, PassengerID, Weight, Type)
VALUES (13, 3, 25.5, 'Checked');

UPDATE Passengers
SET Nationality = 'Viet Nam'
WHERE PassengerID = 3;

COMMIT;
ROLLBACK;



