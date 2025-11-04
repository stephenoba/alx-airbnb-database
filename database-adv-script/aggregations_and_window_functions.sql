/*
- Write a query to find the total number of bookings made by each user,
  using the COUNT function and GROUP BY clause.

- Use a window function (ROW_NUMBER, RANK) to rank properties based
  on the total number of bookings they have received.
*/

SELECT u.first_name, COUNT(b.booking_id) AS no_of_bookings
FROM User u
LEFT JOIN Booking b
ON u.user_id = b.user_id
GROUP BY u.first_name;

SELECT 
    p.property_id,
    p.name,
    COUNT(b.booking_id) AS total_bookings, 
    RANK() OVER (ORDER BY COUNT(b.booking_id) DESC) AS rank_by_bookings,
    ROW_NUMBER() OVER (ORDER BY COUNT(b.booking_id) DESC) AS unique_rank
FROM Property p
LEFT JOIN Booking b
ON p.property_id = b.property_id
GROUP BY p.property_id, p.name;
