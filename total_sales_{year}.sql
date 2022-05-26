-- What are the respective total sales for each of those years?

SELECT SUM(i.total), strftime('%Y', i.invoicedate) as i.invoiceyear
FROM invoice i
WHERE i.invoicedate LIKE '2009%' OR i.invoicedate LIKE '2011%'
GROUP BY i.invoiceyear

SELECT SUM(i.total)
FROM invoice i
WHERE i.invoicedate LIKE '2011%'