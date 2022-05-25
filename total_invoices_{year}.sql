-- How many Invoices were there in 2009 and 2011?

SELECT COUNT(*)
FROM invoice i
WHERE i.invoicedate LIKE '2009%'

SELECT COUNT(*)
FROM invoice i
WHERE strftime('%Y', i.invoicedate)='2011'