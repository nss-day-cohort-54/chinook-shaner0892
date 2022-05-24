-- Provide a query showing Customers who are not in the US. The resultant table should include:
-- Customer's full name
-- Customer Id,
-- Customer's country

SELECT 
    c.firstName, 
    c.lastName, 
    c.customerid, 
    c.country
FROM customer c
WHERE c.country != "USA"