SELECT COUNT(age) FROM users HAVING COUNT(age) > 2; # Count number of ages that appear more than twice in users table

SELECT COUNT(age) AS 'n', age FROM users GROUP BY age HAVING n  > 2;





