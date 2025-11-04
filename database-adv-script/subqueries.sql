/*
1. Write a query to find all properties where the average rating is
   greater than 4.0 using a subquery.
2. Write a correlated subquery to find users who have made more than
   3 bookings.
*/

SELECT Property.name
FROM Property
WHERE (
    SELECT AVG(Review.rating)
    FROM Review 
    WHERE Review.property_id = Property.property_id
) > 4;


SELECT User.email
FROM User
WHERE (
    SELECT COUNT(*)
    FROM Booking 
    WHERE Booking.user_id = User.user_id
) > 3;
