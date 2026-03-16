SELECT * FROM users
RIGHT JOIN dni
ON users.user_id = dni.user_id; 


SELECT users.name, dni.dni_number FROM dni
RIGHT JOIN users
ON users.user_id = dni.user_id;

SELECT users.name AS 'Persona', languages.name AS 'Lenguaje'
FROM users
RIGHT JOIN users_languages ON users_languages.user_id = users.user_id
RIGHT JOIN languages ON users_languages.language_id = languages.language_id; 

