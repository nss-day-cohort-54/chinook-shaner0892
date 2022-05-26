-- Provide a query that shows the total number of invoices per country.

SELECT 
    i.billingcountry,
COUNT(*)
FROM invoice i
GROUP BY i.billingcountry