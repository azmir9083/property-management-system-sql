-- TRIANGLE Property Management System: queries (MySQL)

-- =========================================================
-- BASIC
-- =========================================================

-- SELECT: residential properties
SELECT propertyid, address, type
FROM Property
WHERE type = 'Residential';

-- ALTER: add a free-text description column to Property
ALTER TABLE Property
ADD Description TEXT;

-- UPDATE: set rent for all 1-bedroom apartments to $1300
UPDATE apartments
SET rent_price = 1300.00
WHERE bedrooms = 1;

-- ORDER BY: tenants alphabetically
SELECT tenantid, name
FROM tenant
ORDER BY name ASC;

-- GROUP BY: average rent by number of bedrooms
SELECT bedrooms, ROUND(AVG(rent_price), 2) AS AverageRent
FROM apartments
GROUP BY bedrooms;

-- =========================================================
-- INTERMEDIATE (joins)
-- =========================================================

-- INNER JOIN: properties with their owners
SELECT *
FROM Property
INNER JOIN Owner ON Property.ownerid = Owner.ownerid;

-- LEFT JOIN: every property and its apartments (if any)
SELECT *
FROM Property
LEFT JOIN apartments ON Property.propertyid = apartments.propertyid;

-- RIGHT JOIN: same relationship from the property side
SELECT *
FROM apartments
RIGHT JOIN Property ON apartments.propertyid = Property.propertyid;

-- =========================================================
-- ADVANCED (nested joins)
-- =========================================================

-- Nested INNER JOIN (two-way): each apartment with its property address and owner
SELECT A.*, PO.PropertyAddress, PO.OwnerName
FROM apartments A
INNER JOIN (
    SELECT P.propertyid, P.address AS PropertyAddress, O.name AS OwnerName
    FROM Property P
    INNER JOIN Owner O ON P.ownerid = O.ownerid
) AS PO ON A.propertyid = PO.propertyid;

-- Nested RIGHT JOIN (two-way): every payment with its lease details
SELECT L.*, PayInfo.PaymentAmount, PayInfo.PaymentMethod
FROM Lease L
RIGHT JOIN (
    SELECT P.leaseid, P.amount AS PaymentAmount, P.method AS PaymentMethod
    FROM Payment P
) AS PayInfo ON L.leaseid = PayInfo.leaseid;
