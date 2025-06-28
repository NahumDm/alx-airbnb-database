# Airbnb Database Seed Data

This project includes a seed script (`seed.sql`) that populates the Airbnb database schema with sample data for testing and demonstration purposes.

## Seed Data Overview

The `seed.sql` file inserts initial records into all major tables:

- **User**: Adds five users with different roles (guest, host, admin), each with unique details.
- **Property**: Inserts four property listings, each associated with a host and containing details such as name, description, location, and price per night.
- **Booking**: Creates four bookings, linking users to properties with various booking statuses (confirmed, pending, canceled), dates, and total prices.
- **Payment**: Records two payments, each linked to a booking, specifying the amount, payment date, and payment method.
- **Review**: Adds three reviews, each associated with a property and user, including ratings and comments.
- **Message**: Inserts three messages exchanged between users, demonstrating the messaging feature.

## Purpose

This seed data provides a realistic dataset for:

- Testing database queries and application features
- Demonstrating relationships between users, properties, bookings, payments, reviews, and messages
- Validating schema constraints and foreign key relationships

You can use `seed.sql` to quickly set up the database with meaningful sample data for development