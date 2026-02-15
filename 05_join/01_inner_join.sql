SELECT * FROM users
INNER JOIN dni; # Perform an inner join between 'users' and 'dni' tables, returning only matching records based on the foreign key relationship

SELECT * FROM users
INNER JOIN dni
ON users.user_id = dni.user_id; # Perform an inner join between 'users' and 'dni' tables, specifying the join condition based on the foreign key relationship

SELECT * FROM users
INNER JOIN dni
ON users.user_id = dni.user_id
ORDER BY age DESC; # Perform an inner join between 'users' and 'dni' tables, specifying the join condition and ordering the results by age in descending order

SELECT name, dni_number FROM users
INNER JOIN dni
ON users.user_id = dni.user_id; # Perform an inner join between 'users' and 'dni' tables, selecting only the 'name' and 'dni_number' columns from the resulting joined table

SELECT * FROM users
INNER JOIN companies
ON users.company_id = companies.company_id; # Perform an inner join between 'users' and 'companies' tables, specifying the join condition based on the foreign key relationship between 'company_id' in both tables

SELECT companies.name AS company, users.name AS person FROM companies
INNER JOIN users
ON companies.company_id = users.user_id; # Perform an inner join between 'companies' and 'users' tables, selecting the company name and user name, and aliasing them as 'company' and 'person' respectively. The join condition is based on the relationship between 'company_id' in 'companies' and 'user_id' in 'users'.

SELECT * 
FROM users_languages
INNER JOIN users ON users_languages.user_id = users.user_id
INNER JOIN languages ON users_languages.language_id = languages.language_id; # Perform an inner join between 'users_languages', 'users', and 'languages' tables, joining them based on their respective foreign key relationships. This will return all records where there is a match in all three tables, allowing you to see which users speak which languages.


SELECT users.name, languages.name 
FROM users_languages
INNER JOIN users ON users_languages.user_id = users.user_id
INNER JOIN languages ON users_languages.language_id = languages.language_id;


