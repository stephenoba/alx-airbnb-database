-- Index for fast user lookup by email (login)
CREATE INDEX idx_user_email ON User (email);

-- Index for sorting/filtering users by created date
CREATE INDEX idx_user_created_at ON User (created_at);

-- Index on Booking table for property_id to speed up JOIN with Property
CREATE INDEX idx_booking_property_id ON Booking (property_id);

-- Index on Booking table for user_id to speed up JOIN with User
CREATE INDEX idx_booking_user_id ON Booking (user_id);

-- Index for searching/filtering bookings by status
CREATE INDEX idx_booking_status ON Booking (status);

-- Index for date-range queries on Booking table
CREATE INDEX idx_booking_start_date ON Booking (start_date);

-- Index on Property table for host reference lookup
CREATE INDEX idx_property_host_id ON Property (host_id);

-- Index for filtering/sorting by location
CREATE INDEX idx_property_location ON Property (location);

-- Index for price-based queries (filtering or sorting)
CREATE INDEX idx_property_price ON Property (price_per_night);
