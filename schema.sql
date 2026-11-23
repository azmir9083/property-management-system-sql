-- Drop existing tables so the script can be re-run from scratch
SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS Maintenance_Request;
DROP TABLE IF EXISTS Payment;
DROP TABLE IF EXISTS Lease;
DROP TABLE IF EXISTS rental_application;
DROP TABLE IF EXISTS apartments;
DROP TABLE IF EXISTS Property;
DROP TABLE IF EXISTS tenant;
DROP TABLE IF EXISTS Owner;
SET FOREIGN_KEY_CHECKS = 1;

-- TRIANGLE Property Management System
-- Schema (MySQL)

CREATE TABLE Owner (
    ownerid INT PRIMARY KEY,
    name VARCHAR(255),
    address VARCHAR(255),
    phone VARCHAR(255),
    email VARCHAR(255),
    bank_details VARCHAR(255)
);

CREATE TABLE tenant (
    tenantid INT PRIMARY KEY,
    name VARCHAR(255),
    address VARCHAR(255),
    phone VARCHAR(255),
    email VARCHAR(255)
);

CREATE TABLE Property (
    propertyid INT PRIMARY KEY,
    ownerid INT,
    address VARCHAR(255),
    size INT,
    type VARCHAR(255)
);

CREATE TABLE apartments (
    apartmentid INT PRIMARY KEY,
    propertyid INT,
    floor INT,
    bedrooms INT,
    rent_price DECIMAL(10, 2),
    availability TINYINT
);

CREATE TABLE rental_application (
    applicationid INT PRIMARY KEY,
    tenantid INT,
    propertyid INT,
    status VARCHAR(255)
);

CREATE TABLE Lease (
    leaseid INT PRIMARY KEY,
    apartmentid INT,
    tenantid INT,
    start_date DATE,
    end_date DATE,
    rent DECIMAL(10, 2),
    deposit DECIMAL(10, 2)
);

CREATE TABLE Payment (
    paymentid INT PRIMARY KEY,
    leaseid INT,
    date DATE,
    amount DECIMAL(10, 2),
    method VARCHAR(255)
);

CREATE TABLE Maintenance_Request (
    requestid INT PRIMARY KEY,
    apartmentid INT,
    tenantid INT,
    description VARCHAR(255),
    report_date DATE,
    resolved_date DATE,
    status VARCHAR(255)
);
