-- Provide a query that shows the customers and employees associated with each invoice. The resultant table should include:
-- Invoice Total
-- Customer Name
-- Customer Country
-- Sale Agent full name

SELECT 
    i.total,
    c.firstName customer_fn, 
    c.lastName customer_ln, 
    c.country,
    i.invoiceid,
    e.firstName employee_fn, 
    e.lastName employee_ln
FROM invoice i
JOIN customer c
    ON i.customerid = c.customerid
JOIN employee e
    ON c.supportrepid = e.employeeid