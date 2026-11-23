-- TRIANGLE Property Management System: sample data (MySQL / MariaDB)
-- Same rows as shown in the project presentation. Run after schema.sql.

INSERT INTO Owner (ownerid, name, address, phone, email, bank_details) VALUES
    (1, 'Ahmad Khan', '321 Elm St., Boston, 12321, MA', '123-456-7890', 'ahmadk@email.com', 'Bank A'),
    (2, 'Fatima Ali', '654 Cedar Blvd, Austin, 45632, TX', '234-567-8901', 'fatimaa@email.com', 'Bank B'),
    (3, 'Yusuf Ahmed', '987 Willow Way, Seattle, 78901, WA', '345-678-9012', 'yusufa@email.com', 'Bank C'),
    (4, 'Aisha Rahman', '432 Oak Lane, Miami, 89012, FL', '456-789-0123', 'aishar@email.com', 'Bank D'),
    (5, 'Omar Farooq', '876 Pine Ct, Portland, 90123, OR', '567-890-1234', 'omarf@email.com', 'Bank E'),
    (6, 'Sara Malik', '543 Maple Dr, Chicago, 01234, IL', '678-901-2345', 'saram@email.com', 'Bank F'),
    (7, 'Mohammed Hussain', '210 Birch St, San Diego, 12345, CA', '789-012-3456', 'mohammedh@email.com', 'Bank G'),
    (8, 'Hassan Iqbal', '321 Oak St, Philadelphia, 23456, PA', '890-123-4567', 'hassani@email.com', 'Bank H'),
    (9, 'Noor Khan', '654 Maple Ave, Orlando, 34567, FL', '901-234-5678', 'noork@email.com', 'Bank I'),
    (10, 'Ali Zafar', '987 Elm Rd, New York, 45678, NY', '012-345-6789', 'aliz@email.com', 'Bank J');

INSERT INTO tenant (tenantid, name, address, phone, email) VALUES
    (1, 'Ahmad Khan', '321 Elm St., Boston, 12321, MA', '123-456-7890', 'ahmadk@email.com'),
    (2, 'Fatima Ali', '654 Cedar Blvd, Austin, 45632, TX', '234-567-8901', 'fatimaa@email.com'),
    (3, 'Yusuf Ahmed', '987 Willow Way, Seattle, 78901, WA', '345-678-9012', 'yusufa@email.com'),
    (4, 'Aisha Rahman', '432 Oak Lane, Miami, 89012, FL', '456-789-0123', 'aishar@email.com'),
    (5, 'Omar Farooq', '876 Pine Ct, Portland, 90123, OR', '567-890-1234', 'omarf@email.com'),
    (6, 'Sara Malik', '543 Maple Dr, Chicago, 01234, IL', '678-901-2345', 'saram@email.com'),
    (7, 'Mohammed Hussain', '210 Birch St, San Diego, 12345, CA', '789-012-3456', 'mohammedh@email.com'),
    (8, 'Hassan Iqbal', '321 Oak St, Philadelphia, 23456, PA', '890-123-4567', 'hassani@email.com'),
    (9, 'Noor Khan', '654 Maple Ave, Orlando, 34567, FL', '901-234-5678', 'noork@email.com'),
    (10, 'Ali Zafar', '987 Elm Rd, New York, 45678, NY', '012-345-6789', 'aliz@email.com');

INSERT INTO Property (propertyid, ownerid, address, size, type) VALUES
    (1, 1, '123 Oak St, Springfield, 12345, IL', 1200, 'Residential'),
    (2, 2, '456 Maple Ave, Dayton, 67890, OH', 1500, 'Commercial'),
    (3, 3, '789 Pine Rd, Salem, 11223, OR', 900, 'Residential'),
    (4, 4, '101 Apple Blvd, Madison, 45678, WI', 1100, 'Residential'),
    (5, 5, '202 Cherry Ln, Phoenix, 78901, AZ', 1600, 'Commercial'),
    (6, 6, '303 Peach St, Denver, 23456, CO', 1300, 'Residential'),
    (7, 7, '404 Berry Ave, Tampa, 34567, FL', 1400, 'Commercial'),
    (8, 8, '505 Grape Rd, Reno, 45678, NV', 1200, 'Residential'),
    (9, 9, '606 Lemon Ln, Dallas, 56789, TX', 1500, 'Commercial'),
    (10, 10, '707 Lime Blvd, Charlotte, 67890, NC', 1000, 'Residential');

INSERT INTO apartments (apartmentid, propertyid, floor, bedrooms, rent_price, availability) VALUES
    (1, 1, 1, 2, 1300.00, 1),
    (2, 1, 2, 3, 1600.00, 0),
    (3, 2, 1, 1, 1100.00, 1),
    (4, 2, 3, 2, 1400.00, 0),
    (5, 3, 1, 3, 1500.00, 1),
    (6, 3, 2, 1, 1200.00, 0),
    (7, 4, 1, 2, 1350.00, 1),
    (8, 4, 2, 3, 1650.00, 0),
    (9, 5, 1, 1, 1150.00, 1),
    (10, 5, 3, 2, 1450.00, 0);

INSERT INTO rental_application (applicationid, tenantid, propertyid, status) VALUES
    (1, 1, 1, 'Pending'),
    (2, 2, 2, 'Accepted'),
    (3, 3, 3, 'Rejected'),
    (4, 4, 4, 'Pending'),
    (5, 5, 5, 'Accepted'),
    (6, 6, 6, 'Rejected'),
    (7, 7, 7, 'Pending'),
    (8, 8, 8, 'Accepted'),
    (9, 9, 9, 'Rejected'),
    (10, 10, 10, 'Pending');

INSERT INTO Lease (leaseid, apartmentid, tenantid, start_date, end_date, rent, deposit) VALUES
    (1, 1, 1, '2023-01-01', '2024-01-01', 1300.00, 600.00),
    (2, 2, 2, '2023-02-01', '2024-02-01', 1600.00, 750.00),
    (3, 3, 3, '2023-03-01', '2024-03-01', 1100.00, 500.00),
    (4, 4, 4, '2023-04-01', '2024-04-01', 1400.00, 650.00),
    (5, 5, 5, '2023-05-01', '2024-05-01', 1500.00, 700.00),
    (6, 6, 6, '2023-06-01', '2024-06-01', 1200.00, 550.00),
    (7, 7, 7, '2023-07-01', '2024-07-01', 1350.00, 625.00),
    (8, 8, 8, '2023-08-01', '2024-08-01', 1650.00, 775.00),
    (9, 9, 9, '2023-09-01', '2024-09-01', 1150.00, 525.00),
    (10, 10, 10, '2023-10-01', '2024-10-01', 1450.00, 675.00);

INSERT INTO Payment (paymentid, leaseid, date, amount, method) VALUES
    (1, 1, '2023-01-05', 1300.00, 'Credit Card'),
    (2, 2, '2023-02-05', 1600.00, 'Bank Transfer'),
    (3, 3, '2023-03-05', 1100.00, 'Cash'),
    (4, 4, '2023-04-05', 1400.00, 'Check'),
    (5, 5, '2023-05-05', 1500.00, 'Credit Card'),
    (6, 6, '2023-06-05', 1200.00, 'Bank Transfer'),
    (7, 7, '2023-07-05', 1350.00, 'Cash'),
    (8, 8, '2023-08-05', 1650.00, 'Check'),
    (9, 9, '2023-09-05', 1150.00, 'Credit Card'),
    (10, 10, '2023-10-05', 1450.00, 'Bank Transfer');

INSERT INTO Maintenance_Request (requestid, apartmentid, tenantid, description, report_date, resolved_date, status) VALUES
    (1, 1, 1, 'Leaky faucet', '2023-01-10', NULL, 'Pending'),
    (2, 2, 2, 'Broken window', '2023-02-15', NULL, 'Pending'),
    (3, 3, 3, 'Heating not working', '2023-03-10', '2023-03-15', 'Resolved'),
    (4, 4, 4, 'Clogged drain', '2023-04-12', NULL, 'Pending'),
    (5, 5, 5, 'Electrical issue', '2023-05-14', '2023-05-20', 'Resolved'),
    (6, 6, 6, 'Damaged door', '2023-06-18', NULL, 'Pending'),
    (7, 7, 7, 'Paint peeling', '2023-07-22', '2023-07-30', 'Resolved'),
    (8, 8, 8, 'Broken light fixture', '2023-08-25', NULL, 'Pending'),
    (9, 9, 9, 'Leaky ceiling', '2023-09-28', '2023-10-03', 'Resolved'),
    (10, 10, 10, 'Window seal broken', '2023-10-31', NULL, 'Pending');
