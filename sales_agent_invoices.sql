-- Provide a query that shows the invoices associated with each sales agent. The resultant table should include:
-- Sales Agent's full name
-- Invoice ID

SELECT 
    e.firstName, 
    e.lastName, 
    i.invoiceid
FROM employee e
JOIN customer c
    ON e.employeeid = c.supportrepid
JOIN invoice i 
    ON c.customerid = i.customerid