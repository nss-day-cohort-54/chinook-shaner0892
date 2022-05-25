-- Looking at the InvoiceLine table, provide a query that COUNTs the number of line items for each Invoice.

SELECT i.invoiceid, COUNT(*)
FROM invoiceline i
GROUP BY i.invoiceid