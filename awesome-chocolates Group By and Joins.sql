SELECT geoid, Sum(amount), AVG(amount), SUM(Boxes) FROM Sales
GROUP BY geoid;

SELECT g.geo, Sum(amount), AVG(amount), SUM(Boxes) FROM Sales s
JOIN geo g ON s.GeoID = g.GeoID
GROUP BY g.geo;

SELECT pr.Category, p.team, Sum(Boxes), Sum(amount)
FROM Sales s
JOIN People p ON p.spid = s.spid
join products pr ON Pr.pid = s.pid
GROUP BY pr.Category, p.team
ORDER BY pr.Category, p.team;

SELECT pr.Category, p.team, Sum(Boxes), Sum(amount)
FROM Sales s
JOIN People p ON p.spid = s.spid
join products pr ON Pr.pid = s.pid
WHERE p.team <> ''
GROUP BY pr.Category, p.team
ORDER BY pr.Category, p.team;

SELECT pr.Product, SUM(s.amount) AS 'Total Amount'
FROM Sales s
JOIN products pr ON pr.pid = s.pid
GROUP BY pr.product
ORDER BY SUM(s.amount) DESC;

SELECT pr.Product, SUM(s.amount) AS 'Total Amount'
FROM Sales s
JOIN products pr ON pr.pid = s.pid
GROUP BY pr.product
ORDER BY SUM(s.amount) DESC
LIMIT 10;


