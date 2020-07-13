SELECT pl.productLine AS 'Product Line', SUM(od.quantityOrdered) AS '# Sold'
FROM productlines pl, products p, orderdetails od
WHERE pl.productLine = p.productLine AND p.productCode = od.productCode
GROUP BY pl.productLine
ORDER BY SUM(od.quantityOrdered) DESC