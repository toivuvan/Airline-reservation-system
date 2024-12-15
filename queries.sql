-- Lấy thông tin vé của khách hàng (INNER JOIN)
SELECT t.TicketID, p.FirstName, p.LastName, t.Class, t.SeatNumber, t.TicketPrice
FROM Tickets t
INNER JOIN Passengers p ON t.PassengerID = p.PassengerID;

-- Lấy ra những phản hồi của các khách hàng (INNER JOIN)
SELECT c.Name, f.Rating, f.Comments, f.FeedbackDate
FROM Feedback f
INNER JOIN Reservations r ON f.ReservationID = r.ReservationID
INNER JOIN Customers c ON r.CustomerID = c.CustomerID;

-- Lấy ra hành lý của khách hàng (INNER JOIN)
SELECT p.FirstName, p.LastName, l.Weight AS LuggageWeight, l.Type
FROM Passengers p
INNER JOIN Luggage l ON l.PassengerID = p.PassengerID;

-- Lấy danh sách các chuyến bay, kể cả chưa có lịch trình (LEFT JOIN)
SELECT f.FlightID, f.FlightNumber, fs.DepartureTime, fs.ArrivalTime
FROM Flights f
LEFT JOIN FlightSchedules fs ON f.FlightID = fs.FlightID;

-- Lấy ra danh sách hành lý, kể cả không có chủ (RIGHT JOIN)
SELECT l.LuggageID, l.Weight, p.FirstName, p.LastName
FROM Luggage l
RIGHT JOIN Passengers p ON p.PassengerID = l.PassengerID;

-- Lấy ra các vé có giá cao hơn giá trung bình (Subquery trong Where)
SELECT t.TicketID, t.TicketPrice, t.Class
FROM Tickets t
WHERE TicketPrice > (
    SELECT AVG(TicketPrice)
    FROM Tickets);
    
-- Lấy ra các khách hàng có hành lý trên 15kg (Subquery trong Where) 
SELECT p.FirstName, p.LastName, 
       (SELECT l.Weight 
        FROM Luggage  l
        WHERE l.PassengerID = p.PassengerID AND l.Weight > 15) AS LuggageWeight
FROM Passengers p
WHERE p.PassengerID IN (
    SELECT PassengerID
    FROM Luggage
    WHERE Weight > 15
);

-- Lấy ra số vé mỗi khách hàng đặt (Subquery trong From)
SELECT c.Name, CustomerTicketCount.TotalTickets
FROM Customers c
INNER JOIN (
    SELECT r.CustomerID, COUNT(t.TicketID) AS TotalTickets
    FROM Tickets t
    INNER JOIN Reservations r ON t.ReservationID = r.ReservationID
    GROUP BY r.CustomerID
) AS CustomerTicketCount
ON c.CustomerID = CustomerTicketCount.CustomerID;

-- Lấy ra tổng số tiền mỗi khách hàng trả (Group by và Sum)
SELECT c.Name, SUM(p.Amount) AS TotalPaid
FROM Customers c
INNER JOIN Reservations r ON c.CustomerID = r.CustomerID
INNER JOIN Payment p ON r.ReservationID = p.ReservationID
GROUP BY c.CustomerID;
