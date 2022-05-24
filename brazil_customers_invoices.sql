-- Provide a query showing the Invoices of Customers who are from Brazil. The resultant table should include:
-- Customer's full name
-- Invoice Id,
-- Date of the invoice
-- Billing country

SELECT 
    c.firstName, 
    c.lastName, 
    i.invoiceid, 
    i.invoicedate,
    i.billingcountry
FROM customer c
JOIN invoice i 
    ON c.customerid = i.customerid
WHERE c.country = "Brazil"