-- Provide a query that shows the most purchased Media Type.

SELECT COUNT(il.invoicelineId) AS sales,
    m.name
FROM invoiceline il
JOIN track t 
    ON il.trackid = t.trackid
JOIN mediatype m
    ON t.mediatypeid = m.mediatypeid
GROUP BY m.mediatypeid
ORDER BY sales DESC
LIMIT 1