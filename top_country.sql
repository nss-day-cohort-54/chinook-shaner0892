-- Which country's customers spent the most?

SELECT SUM(i.total),
    i.billingcountry
FROM invoice i
GROUP BY i.billingcountry
ORDER BY SUM(i.total) DESC