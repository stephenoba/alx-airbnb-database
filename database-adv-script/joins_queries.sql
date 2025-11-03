SELECT Booking.booking_id, User.user_id
FROM Booking
INNER JOIN User
ON Booking.user_id = User.user_id;

SELECT Property.property_id, Review.comment
FROM Property
LEFT JOIN Review
ON Property.property_id = Review.property_id;

SELECT User.user_id, Booking.booking_id
FROM User
FULL OUTER JOIN Booking
ON User.user_id = Booking.user_id;
