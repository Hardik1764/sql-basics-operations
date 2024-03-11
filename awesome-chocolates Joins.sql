SELECT * FROM Sales;

SELECT * FROM People;

-- Join peartion--
SELECT s.saledate, s.amount, p.salesperson, s.SPID, p.SPID FROM Sales s
JOIN People p
ON s.SPID = p.SPID;

-- LEFT JOIN
SELECT s.saledate, s.amount, pr.Product
FROM Sales s
LEFT JOIN products pr ON pr.PID = s.PID;

-- Join multiple tables
SELECT s.saledate, s.amount, p.salesperson, pr.Product, p.team FROM Sales s
JOIN People p ON s.SPID = p.SPID
JOIN products pr ON pr.PID = s.PID;

SELECT s.saledate, s.amount, p.salesperson, pr.Product, p.team FROM Sales s
JOIN People p ON s.SPID = p.SPID
JOIN products pr ON pr.PID = s.PID
WHERE s.amount <500 AND p.team = 'Delish';

SELECT s.saledate, s.amount, p.salesperson, pr.Product, p.team FROM Sales s
JOIN People p ON s.SPID = p.SPID
JOIN products pr ON pr.PID = s.PID
WHERE s.amount <500 AND p.team = '';

SELECT s.saledate, s.amount, p.salesperson, pr.Product, p.team FROM Sales s
JOIN People p ON s.SPID = p.SPID
JOIN products pr ON pr.PID = s.PID
JOIN geo g ON g.GeoID = s.GeoID
WHERE s.amount <500 AND p.team = ''
AND g.Geo IN ('New Zealand','India')
ORDER By saleDate;


-- Using Group By --

