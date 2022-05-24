-- Provide a query showing a unique (distinct) list of billing countries from the Invoice table.

SELECT DISTINCT i.billingcountry
FROM invoice i