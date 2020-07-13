SELECT concat(e.lastName, ', ', e.firstName) AS 'Sales Rep', COUNT(od.quantityOrdered) AS '# Orders', IFNULL(SUM(od.quantityOrdered * od.priceEach), 0) AS 'Total Sales'
from employees e
LEFT JOIN customers c ON e.employeeNumber = c.salesRepEmployeeNumber
LEFT JOIN orders o ON c.customerNumber = o.customerNumber
LEFT JOIN orderdetails od ON o.orderNumber = od.orderNumber
WHERE e.jobTitle = 'Sales Rep'
GROUP BY e.lastName, e.firstName
ORDER BY SUM(od.quantityOrdered * od.priceEach) DESC
