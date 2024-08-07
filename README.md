## Airbnb-Like Platform DataMart Project

### Abstract

This document provides an overview of a comprehensive data mart designed for a dynamic platform similar to Airbnb. The system is engineered to enhance user experiences for hosts, guests, and administrators by efficiently managing listings, bookings, payments, reviews, user ratings, and property statistics. Leveraging various database features such as triggers, events, and automation mechanisms, this system streamlines operations, reduces manual data entry, and provides real-time information.

#### Enhanced Entity-Relationship (EER) Diagram

- Refer to the included EER diagram files in the `EER Diagram` folder. The folder contains both an image (`EER Diagram (Enhanced Entity Relationship Diagram).png`) and a PDF (`EER Diagram.pdf`) for a visual representation of the database structure. The PDF file provides a clearer resolution compared to the image.


#### Triggers

The system incorporates several triggers to respond to specific events, including:

1. **CalculateExpectedIncome Trigger:** Calculates expected income and occupancy rates for properties after creation.
2. **UpdatePropertyCount Trigger:** Keeps hosts informed about the number of properties they manage.
3. **CalculateTotalPriceAndCommissions Trigger:** Ensures accurate pricing for bookings by calculating total prices, host commissions, and guest commissions.
4. **OccupancyRate Trigger:** Dynamically updates property occupancy rates based on booking and availability data.
5. **UpdateBookingCount Trigger:** Maintains a count of a guest's bookings, facilitating user management.
6. **PropertyAvailability Trigger:** Ensures properties are marked as 'Booked' for relevant dates in the PropertyAvailability table.
7. **CalculateTotalAmount Trigger:** Aids in precise financial transactions by calculating the total amount, including guest commissions.
8. **SetStatus Trigger:** Establishes the payment status of a transaction based on the success of the payment procedure.
9. **UpdateBookingStatusOnPayment Trigger:** Updates booking statuses to 'Booked' or 'Failed' upon successful or failed payments.
10. **UpdatePropertyAverageRating Trigger:** Keeps property ratings up-to-date based on user reviews.
11. **UpdateUserAverageRating Trigger:** Maintains user ratings by calculating the average ratings for each user.

#### Events

Automated events further enhance the system's efficiency:

- **automate_host_payments Event:** Processes guest arrivals older than 24 hours and marks bookings as processed every second.
- **AutoInsertReservations Event:** Inserts reservations for bookings with a 'Booked' status every minute.
- **UpdatePhoneNumbers Event:** Ensures phone numbers include country codes every minute.

#### Metadata

The database comprises 39 tables, covering various aspects of the platform.

### Installation Manual

#### Prerequisites

- [MySQL Workbench](https://www.mysql.com/products/workbench/) is recommended for a smooth installation. Using other DBMS may lead to compatibility issues.

#### Database Setup

1. **Create Database:**
   - Open MySQL Workbench.
   - Open a Local instance.
   - Execute the following SQL script: `CREATE DATABASE AirBnB_Project;`

2. **Run Data Mart Script:**
   - Run the SQL script named `Data Mart.sql` using MySQL Workbench or any MySQL-compatible tool.
   - This script includes necessary tables, triggers, events, and initial data for the AirBnB_Project database.

3. **Insert Test Data:**
   - Utilize the SQL INSERT File `SQL INSERT File.sql` to insert sample rows into tables for testing purposes.

#### Note on Compatibility

- The database scripts are optimized for MySQL Workbench. Using other database management systems may require adjustments.

#### Uninstallation

- To uninstall the database, use the following query: `DROP DATABASE AirBnB_Project;`.
