-- What are the respective total sales for each of those years?

SELECT SUM(i.total)
FROM invoice i
WHERE i.invoicedate LIKE '2009%'

SELECT SUM(i.total)
FROM invoice i
WHERE i.invoicedate LIKE '2011%'