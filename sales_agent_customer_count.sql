-- Provide a query that shows how many customers are assigned to each employee. The resultant table should include:
-- Employee full name
-- Total number of customers assigned to each employee (even if it's zero)

SELECT 
    e.firstname,
    e.lastname,
COUNT(c.customerid)
FROM employee e
LEFT JOIN customer c 
    ON c.supportrepid = e.employeeid
GROUP BY e.employeeid