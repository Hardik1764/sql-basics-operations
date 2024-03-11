CREATE DATABASE `Awesome Chocolates`;
USE `Awesome Chocolates`;

-- when you do not have any idea in databse how many tables --
SHOW Tables;

-- What is avaiable in specific table --
DESC sales;

-- Select everything from sales table
SELECT * FROM Sales;

-- Show just a few columns from sales table
SELECT Saledate, Amount, Customers FROM Sales;
SELECT PID, Customers, GeoID FROM Sales;

-- Adding a calculated column with SQL
SELECT Customers, Saledate, Amount, Boxes, Amount/Boxes FROM Sales;

-- Naming a field with AS in SQL
SELECT Customers, Saledate, Amount, Boxes, Amount/Boxes 'Amount Per Box' FROM Sales;

-- Using WHERE Clause in SQL
SELECT * FROM Sales
WHERE Amount > 20000;

-- Showing sales data where amount is greater than 20,000 by descending order
SELECT * FROM Sales
WHERE Amount > 20000
ORDER BY Amount DESC;

-- Showing sales data where geography is g1 by product ID &
-- descending order of amounts
SELECT * FROM Sales
WHERE GeoID = 'g1'
ORDER BY PID, Amount DESC;	

-- Working with dates in SQL
SELECT * FROM Sales
WHERE amount > 10000 AND SaleDate >= '2022-01-01';

-- Using year() function to select all data in a specific year
SELECT SaleDate, Amount FROM Sales
WHERE Amount > 10000 AND YEAR(SaleDate) = 2022
ORDER BY Amount DESC;

-- BETWEEN condition in SQL with < & > operators
SELECT * FROM sales
WHERE Boxes > 0 AND Boxes <= 50;

-- Using the between operator in SQL
SELECT * FROM sales
WHERE Boxes BETWEEN 0 AND 50
ORDER BY Boxes;

-- Using weekday() function in SQL
SELECT SaleDate, Amount, Boxes, weekday(SaleDate) AS 'Day Of Week' FROM Sales
WHERE weekday(SaleDate) = 4;

-- Working with People table --
SELECT * FROM People;

-- OR operator in SQL
SELECT * FROM People
WHERE Team = 'Delish' OR Team = 'Jucies';

-- IN operator in SQL
SELECT * FROM People
WHERE Team IN ('Delish', 'Jucies');

-- LIKE operator in SQL also Pattern Matching 
SELECT * FROM People
WHERE salesperson LIKE 'B%';

SELECT * FROM People
WHERE salesperson LIKE '%B%';

SELECT * FROM Sales;

-- Using CASE to create branching logic in SQL
SELECT  SaleDate, Amount,
		CASE 	WHEN Amount < 1000 THEN 'Under 1k'
				WHEN Amount < 5000 THEN 'Under 5k'
                WHEN Amount < 10000 THEN 'Under 10k'
			ELSE '10k or more'
		END AS 'Amount Category'
FROM Sales;



