SELECT  p.productName AS 'Product Name', SUM(od.quantityOrdered) AS 'Total # Ordered', SUM(od.priceEach*od.quantityOrdered) AS 'Total Sale'
FROM products p, orders o, orderdetails od
WHERE p.productCode = od.productCode AND od.orderNumber = o.orderNumber
GROUP BY p.productName 
ORDER BY SUM(od.priceEach*od.quantityOrdered) DESC
