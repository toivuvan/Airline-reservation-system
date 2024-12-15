DELIMITER $$

CREATE PROCEDURE CalculateTotalPayment(
    IN customer_id INT,
    OUT total_amount DECIMAL(10,2)
)
BEGIN
    SELECT SUM(Payments.PaymentAmount)
    INTO total_amount
    FROM Payments
    INNER JOIN Reservations ON Payments.ReservationID = Reservations.ReservationID
    WHERE Reservations.CustomerID = customer_id;
END$$

DELIMITER ;