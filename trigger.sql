-- Trigger 1: Tự động thêm 1 hàng vào bảng Feedback khi trạng thái của Reservation trở thành 'Confirmed'
DELIMITER $$

CREATE TRIGGER After_Reservation_Confirmed
    AFTER UPDATE ON Reservations
    FOR EACH ROW
BEGIN
    IF NEW.Status = 'Confirmed' THEN
        INSERT INTO Feedback (FeedbackID, ReservationID, Rating, Comments, FeedbackDate)
        VALUES (NULL, NEW.ReservationID, NULL, 'meow meow', CURDATE());
    END IF;
END$$

DELIMITER ;


-- Kiểm tra trigger After_Reservation_Confirmed
UPDATE Reservations
SET Status = 'Confirmed'
WHERE ReservationID = 12;
SELECT * FROM Feedback WHERE ReservationID = 12;

-- Trigger 2: Hành lý quá nặng (>30kg) sẽ bị chặn
DELIMITER $$

CREATE TRIGGER Before_Insert_Luggage
    BEFORE INSERT ON Luggage
    FOR EACH ROW
BEGIN
    IF NEW.Weight > 30 THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Luggage weight cannot exceed 30 kg';
    END IF;
END$$

DELIMITER ;

-- Kiểm tra trigger Before_Insert_Luggage
INSERT INTO Luggage (LuggageID, PassengerID, Weight, Type)
VALUES (16, 11, 35.00, 'Checked');
SELECT * FROM Luggage;

-- Trigger 3: Không được phép đặt vé trong quá khứ
DELIMITER $$

CREATE TRIGGER Before_Insert_Reservation
    BEFORE INSERT ON Reservations
    FOR EACH ROW
BEGIN
    IF NEW.ReservationDate < CURDATE() THEN
        SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Reservation date cannot be in the past';
    END IF;
END$$

DELIMITER ;

-- Kiểm tra trigger Before_Insert_Reservation
INSERT INTO Reservations (ReservationID, CustomerID, FlightSchedulesID, ReservationDate, Status)
VALUES (20, 5, 101, '2023-12-15', 'Pending');
SELECT * FROM Reservations;
