/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */
 SELECT *
 FROM Products p
 JOIN Categories c
 ON p.CategoryID = c.CategoryID; 
 -- need to now return the two columns. . name new then alter? easier way?
 -- Select Product Name, Category Name FROM NEWTABLENAME;


/* joins: find all product names, product prices, and products ratings that have a rating of 5 */
 SELECT *
 FROM Products p
 JOIN Reviews r
 ON p.ProductID = r.ProductID; 
 -- need to now return the three columns.. name new then alter? easier way?
 
/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
SELECT SUM (Quantity) 
FROM Sales
WHERE EmployeeID DISTINCT;


/* joins: find the name of the department, and the name of the category for Appliances and Games */

/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */

/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */


-- ------------------------------------------ Extra - IS difficult, may not have to do.
/* Your goal is to write a query that serves as an employee sales report.
This query should return:
-  the employeeID
-  the employee's first and last name
-  the name of each product
-  and how many of that product they sold */