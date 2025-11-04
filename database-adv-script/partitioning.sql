/*
- Assume the Booking table is large and query performance is slow. Implement partitioning
  on the Booking table based on the start_date column. Save the query in a file partitioning.sql

- Test the performance of queries on the partitioned table (e.g., fetching bookings by date
  range).

- Write a brief report on the improvements you observed.
*/

ALTER TABLE Booking RENAME TO Booking_old;

CREATE TABLE Booking (
    booking_id VARCHAR(50) PRIMARY KEY,
    property_id VARCHAR(50) NOT NULL,
    user_id VARCHAR(50) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    total_price DECIMAL(10, 2) NOT NULL,
    status VARCHAR(20) CHECK (status IN ('pending', 'confirmed', 'cancelled')) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (property_id) REFERENCES Property(property_id) ON DELETE SET NULL,
    FOREIGN KEY (user_id) REFERENCES User(user_id) ON DELETE SET NULL
) PARTITION BY RANGE (start_date);

-- Create partitions (yearly partitions)
CREATE TABLE Booking_2023 PARTITION OF Booking
    FOR VALUES FROM ('2023-01-01') TO ('2024-01-01');

CREATE TABLE Booking_2024 PARTITION OF Booking
    FOR VALUES FROM ('2024-01-01') TO ('2025-01-01');

CREATE TABLE Booking_2025 PARTITION OF Booking
    FOR VALUES FROM ('2025-01-01') TO ('2026-01-01');

-- Migrate data
INSERT INTO Booking
SELECT * FROM Booking_old;

-- DROP TABLE Booking_old;
