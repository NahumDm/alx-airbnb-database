
-- Users
INSERT INTO [User] ([user_id], [first_name], [last_name], [email], [password_hash], [phone_number], [role], [created_at]) VALUES
('a0000000-0000-0000-0000-000000000001', 'Alice', 'Smith', 'alice.smith@example.com', 'hashed_password_alice123', '111-222-3333', 'guest', CURRENT_TIMESTAMP),
('a0000000-0000-0000-0000-000000000002', 'Bob', 'Johnson', 'bob.johnson@example.com', 'hashed_password_bob456', '444-555-6666', 'host', CURRENT_TIMESTAMP),
('a0000000-0000-0000-0000-000000000003', 'Charlie', 'Brown', 'charlie.brown@example.com', 'hashed_password_charlie789', '777-888-9999', 'admin', CURRENT_TIMESTAMP),
('a0000000-0000-0000-0000-000000000004', 'Diana', 'Prince', 'diana.p@example.com', 'hashed_password_diana012', '101-202-3030', 'guest', CURRENT_TIMESTAMP),
('a0000000-0000-0000-0000-000000000005', 'Eve', 'Adams', 'eve.adams@example.com', 'hashed_password_eve345', '505-606-7070', 'host', CURRENT_TIMESTAMP);
GO

-- Properties
INSERT INTO [Property] ([property_id], [host_id], [name], [description], [location], [pricepernight], [created_at], [updated_at]) VALUES
('b0000000-0000-0000-0000-000000000001', 'a0000000-0000-0000-0000-000000000002', 'Cozy Downtown Apartment', 'A charming apartment in the heart of the city.', 'New York, NY', 150.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('b0000000-0000-0000-0000-000000000002', 'a0000000-0000-0000-0000-000000000005', 'Sunny Beach House', 'Spacious house with ocean views, perfect for families.', 'Miami, FL', 300.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('b0000000-0000-0000-0000-000000000003', 'a0000000-0000-0000-0000-000000000002', 'Mountain Cabin Retreat', 'Secluded cabin ideal for a peaceful getaway.', 'Aspen, CO', 200.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
('b0000000-0000-0000-0000-000000000004', 'a0000000-0000-0000-0000-000000000005', 'Urban Loft with Balcony', 'Modern loft in a vibrant neighborhood.', 'Los Angeles, CA', 180.00, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);
GO

-- Bookings
INSERT INTO [Booking] ([booking_id], [property_id], [user_id], [start_date], [end_date], [total_price], [status], [created_at]) VALUES
('c0000000-0000-0000-0000-000000000001', 'b0000000-0000-0000-0000-000000000001', 'a0000000-0000-0000-0000-000000000001', '2025-07-01', '2025-07-05', 600.00, 'confirmed', CURRENT_TIMESTAMP),
('c0000000-0000-0000-0000-000000000002', 'b0000000-0000-0000-0000-000000000002', 'a0000000-0000-0000-0000-000000000004', '2025-08-10', '2025-08-17', 2100.00, 'pending', CURRENT_TIMESTAMP),
('c0000000-0000-0000-0000-000000000003', 'b0000000-0000-0000-0000-000000000001', 'a0000000-0000-0000-0000-000000000004', '2025-09-01', '2025-09-03', 300.00, 'canceled', CURRENT_TIMESTAMP),
('c0000000-0000-0000-0000-000000000004', 'b0000000-0000-0000-0000-000000000003', 'a0000000-0000-0000-0000-000000000001', '2025-07-20', '2025-07-25', 1000.00, 'confirmed', CURRENT_TIMESTAMP);
GO

-- Payments
INSERT INTO [Payment] ([payment_id], [booking_id], [amount], [payment_date], [payment_method]) VALUES
('d0000000-0000-0000-0000-000000000001', 'c0000000-0000-0000-0000-000000000001', 600.00, CURRENT_TIMESTAMP, 'credit_card'),
('d0000000-0000-0000-0000-000000000002', 'c0000000-0000-0000-0000-000000000004', 1000.00, CURRENT_TIMESTAMP, 'paypal');
GO

-- Reviews
INSERT INTO [Review] ([review_id], [property_id], [user_id], [rating], [comment], [created_at]) VALUES
('e0000000-0000-0000-0000-000000000001', 'b0000000-0000-0000-0000-000000000001', 'a0000000-0000-0000-0000-000000000001', 5, 'Absolutely loved the place! Clean and great location.', CURRENT_TIMESTAMP),
('e0000000-0000-0000-0000-000000000002', 'b0000000-0000-0000-0000-000000000002', 'a0000000-0000-0000-0000-000000000004', 4, 'Nice beach house, but a bit noisy in the evenings.', CURRENT_TIMESTAMP),
('e0000000-0000-0000-0000-000000000003', 'b0000000-0000-0000-0000-000000000003', 'a0000000-0000-0000-0000-000000000001', 5, 'Perfect cabin for a quiet retreat. Highly recommend.', CURRENT_TIMESTAMP);
GO

-- Messages
INSERT INTO [Message] ([message_id], [sender_id], [recipient_id], [message_body], [sent_at]) VALUES
('f0000000-0000-0000-0000-000000000001', 'a0000000-0000-0000-0000-000000000001', 'a0000000-0000-0000-0000-000000000002', 'Hi Bob, is the downtown apartment available next month?', CURRENT_TIMESTAMP),
('f0000000-0000-0000-0000-000000000002', 'a0000000-0000-0000-0000-000000000002', 'a0000000-0000-0000-0000-000000000001', 'Yes Alice, it is. What dates are you looking for?', CURRENT_TIMESTAMP),
('f0000000-0000-0000-0000-000000000003', 'a0000000-0000-0000-0000-000000000004', 'a0000000-0000-0000-0000-000000000005', 'Hello, I''m interested in the beach house. Are pets allowed?', CURRENT_TIMESTAMP);
GO
