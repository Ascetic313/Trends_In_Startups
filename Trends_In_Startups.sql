SELECT * 
FROM startups;

SELECT COUNT(*)
FROM startups;

SELECT
SUM(valuation)
FROM startups;

SELECT
MAX(raised)
FROM startups;

SELECT 
MAX(raised)
FROM startups
WHERE stage = 'Seed';

SELECT
MIN(founded)
FROM startups;

SELECT
AVG(valuation)
FROM startups;

SELECT AVG(valuation), category
FROM startups
GROUP BY category;

SELECT ROUND(AVG(valuation),2), category
FROM startups
GROUP BY category;

SELECT category, ROUND(AVG(valuation), 2)
FROM startups
GROUP BY category
ORDER BY ROUND(AVG(valuation), 2) DESC;

SELECT category, COUNT(*)
FROM startups
GROUP BY category;

SELECT category, COUNT(*)
FROM startups
GROUP BY category
HAVING COUNT(*) > 3;

SELECT location, AVG(employees)
FROM startups
GROUP BY location;

SELECT location, AVG(employees)
FROM startups
GROUP BY location
HAVING AVG(employees) > 500;

