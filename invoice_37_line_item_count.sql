-- Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for Invoice ID 37.

SELECT COUNT(*)
FROM invoiceline i
WHERE i.invoiceid = 37