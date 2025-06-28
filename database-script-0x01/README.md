# Airbnb Database Schema

This project defines the database schema for an Airbnb-like platform, supporting users, property listings, bookings, payments, reviews, and messaging between users.

## Schema Overview

The schema is defined in `schema.sql` and includes the following tables:

- **User**: Stores user information, including personal details, email, password hash, phone number, and role (guest, host, admin).
- **Property**: Represents properties listed by hosts, including details such as name, description, location, price per night, and timestamps.
- **Booking**: Tracks bookings made by users for properties, including booking period, total price, status (pending, confirmed, canceled), and timestamps.
- **Payment**: Records payments for bookings, including amount, payment date, and payment method (credit card, PayPal, Stripe).
- **Review**: Allows users to leave reviews for properties, including rating (1-5), comment, and timestamp.
- **Message**: Enables messaging between users, storing sender, recipient, message body, and sent time.

## Relationships

- Each property is linked to a host (user).
- Bookings reference both the property and the user who made the booking.
- Payments are associated with bookings.
- Reviews are linked to both the property and the user who wrote the review.
- Messages are exchanged between users.

## Indexes and Constraints

- Unique and non-unique indexes are created for efficient querying.
- Foreign key constraints enforce referential integrity between related tables.
- Unique constraints are applied to user emails and primary keys.

## Data Types

- UUIDs are used for primary keys.
- Enum types are used for roles, booking status, and payment methods.
- Timestamps are used for tracking creation and update times.

See `schema.sql` for full details of the table definitions