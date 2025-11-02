INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number)
VALUES
('u1', 'John', 'Doe', 'johndoe@gmail.com', 'hashed_password_1', '123-456-7890'),
('u2', 'Jane', 'Smith', 'janesmith@gmail.com', 'hashed_password_2', '234-567-8901'),
('u3', 'Alice', 'Johnson', 'alicejohnson@gmail.com', 'hashed_password_3', '345-678-9012');

INSERT INTO Property (property_id, host_id, name, `description`, `location`, price_per_night)
VALUES
('p1', 'u1', 'Cozy Cottage', 'A cozy cottage in the countryside.', 'Countryside', 120.00),
('p2', 'u2', 'Modern Apartment', 'A modern apartment in the city center.', 'City Center', 200.00),
('p3', 'u1', 'Beach House', 'A beautiful beach house with ocean views.', 'Beachfront', 350.00);

INSERT INTO Booking (booking_id, property_id, user_id, `start_date`, end_date, total_price, `status`)
VALUES
('b1', 'p1', 'u3', '2024-07-01', '2024-07-05', 480.00, 'confirmed'),
('b2', 'p2', 'u3', '2024-08-10', '2024-08-15', 1000.00, 'pending'),
('b3', 'p3', 'u2', '2024-09-20', '2024-09-25', 1750.00, 'cancelled');

INSERT INTO Payment (payment_id, booking_id, amount, payment_method)
VALUES
('pay1', 'b1', 480.00, 'credit_card'),
('pay2', 'b2', 1000.00, 'paypal'),
('pay3', 'b3', 1750.00, 'bank_transfer');

INSERT INTO Review (review_id, property_id, user_id, rating, comment)
VALUES
('r1', 'p1', 'u3', 5, 'Amazing stay! The cottage was perfect and very cozy.'),
('r2', 'p2', 'u3', 4, 'Great location and modern amenities. Would stay again.'),
('r3', 'p3', 'u2', 3, 'The beach house was nice, but had some maintenance issues.');

INSERT INTO Message (message_id, sender_id, recipient_id, content)
VALUES
('m1', 'u3', 'u1', 'Hi John, I just wanted to thank you for the wonderful stay at your cottage!'),
('m2', 'u2', 'u3', 'Hello Jane, I have a question about the apartment booking.'),
('m3', 'u1', 'u2', 'Hi Jane, the beach house is available for your requested dates.');
