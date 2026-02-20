SELECT users.user_id AS u_user_id, dni.user_id AS d_user_id
FROM users
LEFT JOIN dni
ON users.user_id = dni.user_id
UNION  # El operador UNION combina los resultados de dos consultas SELECT y elimina los duplicados. En este caso, se combinan los resultados de un LEFT JOIN y un RIGHT JOIN para obtener todas las filas de ambas tablas.             
SELECT users.user_id AS u_user_id, dni.user_id AS d_user_id
FROM users
RIGHT JOIN dni
ON users.user_id = dni.user_id;


SELECT users.user_id AS u_user_id, dni.user_id AS d_user_id
FROM users
LEFT JOIN dni
ON users.user_id = dni.user_id
UNION ALL # El operador UNION ALL combina los resultados de dos consultas SELECT pero no elimina los duplicados. En este caso, se combinan los resultados de un LEFT JOIN y un RIGHT JOIN para obtener todas las filas de ambas tablas, incluyendo duplicados si los hay.
SELECT users.user_id AS u_user_id, dni.user_id AS d_user_id
FROM users
RIGHT JOIN dni
ON users.user_id = dni.user_id;