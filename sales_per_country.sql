-- Provide a query that shows the total sales per country.

SELECT 
    i.billingcountry,
COUNT(i.invoiceid)
FROM invoice i
GROUP BY i.billingcountry