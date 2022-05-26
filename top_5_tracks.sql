-- Provide a query that shows the top 5 most purchased tracks over all.

SELECT COUNT(il.invoicelineId) AS track_sales,
    il.trackid,
    t.name
FROM invoiceline il
JOIN track t 
    ON il.trackid = t.trackid
JOIN invoice i
    ON il.invoiceid = i.invoiceid
GROUP BY t.name
ORDER BY track_sales DESC
LIMIT 5
