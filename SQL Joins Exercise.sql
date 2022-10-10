/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */
SELECT p.Name as ProductName, c.Name as CategoryName
FROM Products as p
JOIN Categories as c 
ON c.CategoryID = p.CategoryID
WHERE c.Name = "Computers";

/* joins: find all product names, product prices, and products ratings that have a rating of 5 */
SELECT p.Name as ProductName, p.Price as ProductPrice, r.Rating as ReviewRating
FROM Products as p
JOIN Reviews as r
ON p.ProductID = r.ProductID
WHERE r.Rating = 5;

/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
SELECT e.FirstName, e.LastName, SUM(s.Quantity) AS Total_Sold
FROM employees e
JOIN sales s
ON e.EmployeeID = s.EmployeeID
GROUP BY s.EmployeeID
ORDER BY Total_Sold DESC;
-- Is there a way to do this with distinct sum possibly?

/* joins: find the name of the department, and the name of the category for Appliances and Games */
SELECT d.Name as DepartmentName, c.Name as CategoryName
FROM Departments as d
JOIN Categories as c
ON c.DepartmentID = d.DepartmentID
WHERE c.Name = "Games" OR c.Name = "Appliances";

/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */
SELECT p.Name, SUM(s.Quantity) AS Quantity, SUM(s.Quantity * s.PricePerUnit) AS TotalPriceSold
FROM products p
JOIN sales s
ON p.ProductID = s.ProductID
WHERE s.ProductID = 97;

/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */
SELECT p.Name as ProductName, r.Reviewer as ReviewerName, r.Rating as ReviewRating, r.Comment as ReviewComment
FROM Products as p
JOIN Reviews as r
ON p.ProductID = r.ProductID
WHERE p.Name = "Visio TV" AND r.Rating = 1;

-- ------------------------------------------ Extra - IS difficult, may not have to do.
/* Your goal is to write a query that serves as an employee sales report.
This query should return:
-  the employeeID
-  the employee's first and last name
-  the name of each product
-  and how many of that product they sold */