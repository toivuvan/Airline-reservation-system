DELIMITER $$

CREATE PROCEDURE GetCustomerTickets(
    IN customer_id INT
)
BEGIN
    SELECT t.TicketID, 
           t.Class, 
           t.TicketPrice, 
           t.SeatNumber, 
           fs.DepartureTime, 
           fs.ArrivalTime, 
           f.FlightNumber
    FROM Tickets t
    INNER JOIN Reservations r 
        ON t.ReservationID = r.ReservationID
    INNER JOIN FlightSchedules fs 
        ON r.FlightSchedulesID = fs.FlightScheduleID
    INNER JOIN Flights f 
        ON fs.FlightID = f.FlightID
    WHERE r.CustomerID = customer_id;
END$$

DELIMITER ;
