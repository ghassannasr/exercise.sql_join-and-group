SELECT concat(e.lastName, ', ', e.firstName) AS 'Sales Rep', SUM(od.quantityOrdered) AS '# Orders', SUM(od.quantityOrdered * od.priceEach) AS 'Total Sales'
from employees e
LEFT JOIN customers c ON e.employeeNumber = c.salesRepEmployeeNumber
LEFT JOIN orders o ON c.customerNumber = o.customerNumber
LEFT JOIN orderdetails od ON o.orderNumber = od.orderNumber
WHERE e.jobTitle = 'Sales Rep'
GROUP BY e.lastName
ORDER BY SUM(od.quantityOrdered * od.priceEach) DESC
