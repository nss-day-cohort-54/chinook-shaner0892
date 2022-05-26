-- Provide a query that shows the top 3 best selling artists.

SELECT COUNT(il.invoicelineId) AS track_sales,
    ar.name
FROM invoiceline il
JOIN track t 
    ON il.trackid = t.trackid
JOIN album al
    ON t.albumid = al.albumid
JOIN artist ar
    ON al.artistid = ar.artistid
GROUP BY ar.name
ORDER BY track_sales DESC
LIMIT 3
