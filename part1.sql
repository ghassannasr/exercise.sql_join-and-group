SELECT c.customerName AS 'Customer Name', concat(e.lastName, ', ', e.firstName) AS 'Sales Rep'
FROM customers c, employees e
WHERE c.salesRepEmployeeNumber = e.employeeNumber