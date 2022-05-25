-- Which sales agent made the most in sales in 2009?

-- not working, need to add MAX

SELECT SUM(i.total),
    e.firstName, 
    e.lastName
FROM invoice i
WHERE i.invoicedate LIKE '2009%'
JOIN customer c
    ON i.customerid = c.customerid
JOIN employee e
    ON c.supportrepid = e.employeeid
GROUP BY e.employeeid