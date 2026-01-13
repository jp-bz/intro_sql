SELECT MAX(age) FROM users GROUP BY age; # Get the maximum age grouped by each age in users table

SELECT COUNT(age) FROM users GROUP BY age ORDER BY age DESC; # Count number of users for each age, ordered by age in descending order

SELECT COUNT(age), age FROM users GROUP BY age ORDER BY age DESC; # Count number of users for each age, ordered by age in descending order

SELECT COUNT(age), age FROM users WHERE age > 15 GROUP BY age ORDER BY age DESC;