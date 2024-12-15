# ✈️ Airline Reservation System Database

## 🌟 Project Overview
This project is a database system for managing the operations of an airline reservation system. It covers various functionalities such as managing customers, reservations, flights, tickets, payments, luggage, and feedback. The database is designed to ensure data consistency, enforce constraints, and provide useful triggers to automate specific processes.

## 🚀 Features
- 👤 **Customer Management**: Stores and manages customer details like name, email, phone, and address.
- 🛫 **Reservation Management**: Handles reservations for flights, linking customers to flight schedules.
- 🎫 **Ticketing System**: Issues tickets based on reservations and tracks seat assignments.
- ⏰ **Flight Schedules**: Manages flight details, including departure and arrival times.
- 💳 **Payments**: Tracks payment transactions for reservations, including statuses.
- 🧳 **Luggage Management**: Tracks passenger luggage, enforcing constraints like weight limits.
- 💬 **Feedback System**: Collects feedback from customers after their flights.

---

## 📊 Database Schema
The database consists of the following main tables:
1. 👥 **Customers**: Stores customer information.
2. 🛒 **Reservations**: Links customers to flight schedules.
3. 🛬 **Flights**: Contains flight details and routes.
4. 🎟️ **Tickets**: Tracks issued tickets and seat assignments.
5. 👜 **Luggage**: Manages passenger luggage information.
6. 💬 **Feedback**: Collects feedback from customers post-flight.
7. 💰 **Payments**: Manages payment transactions related to reservations.
8. 📅 **FlightSchedules**: Details flight timings and crew assignments.

### 🔗 Relationships
- `Reservations` ➡️ References `Customers` and `FlightSchedules`.
- `Tickets` ➡️ References `Reservations` and `Passengers`.
- `Luggage` ➡️ References `Passengers`.
- `Feedback` ➡️ References `Reservations`.

---

## 💡 Sample Queries
Here are a few sample queries included in `queries.sql`:
1. 🎟️ **Fetch all tickets for a flight:**
   ```sql
   SELECT * FROM Tickets WHERE ReservationID = 12;
   ```
2. 💰 **Total payments per customer:**
   ```sql
   SELECT Customers.Name, SUM(Payment.Amount) AS TotalPaid
   FROM Customers
   JOIN Reservations ON Customers.CustomerID = Reservations.CustomerID
   JOIN Payment ON Reservations.ReservationID = Payment.ReservationID
   GROUP BY Customers.Name;
   ```
3. 🛫 **Reservations with feedback:**
   ```sql
   SELECT Reservations.ReservationID, Feedback.Comments, Feedback.Rating
   FROM Reservations
   JOIN Feedback ON Reservations.ReservationID = Feedback.ReservationID;
   ```

---

## 🛠️ Future Enhancements
- ➕ Add procedures for common operations like ticket booking and cancellation.
- 📊 Implement advanced reporting queries.
- 🔒 Add more constraints to ensure data consistency.

---

## ✍️ Authors
- Vũ Văn Tới (Project Leader)
- Mai Phan Anh Tùng
- Vũ Nguyên Đan
- Nguyễn Năng Thịnh

---
