SELECT EXTRACT(MONTH FROM p.paymentDate) AS Month, EXTRACT(YEAR FROM p.paymentDate) Year, FORMAT(SUM(p.amount), 2) AS 'Payments Received'
FROM payments p 
GROUP BY Month, Year
ORDER BY Year ASC, Month ASC