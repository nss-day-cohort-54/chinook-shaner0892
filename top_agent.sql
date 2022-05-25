-- Which sales agent made the most in sales over all?

-- not working

S ELECT SUM(i.total),
    e.firstName, 
    e.lastName
FROM invoice i
JOIN customer c
    ON i.customerid = c.customerid
JOIN employee e
    ON c.supportrepid = e.employeeid
GROUP BY e.employeeid