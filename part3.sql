SELECT o.status AS 'Order Status', SUM(od.quantityOrdered) AS '# Orders'
FROM orderdetails od, orders o
WHERE od.orderNumber = o.orderNumber
GROUP BY o.status
ORDER BY o.status