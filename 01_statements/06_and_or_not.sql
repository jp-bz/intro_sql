SELECT * FROM users WHERE NOT email = 'sara@gmail.co'; # Select all columns from users where email is not 'sara@gmail.co'

SELECT * FROM users WHERE email NOT LIKE 'sara%'; # Select all columns from users where email does not start with 'sara'

SELECT * FROM users WHERE email NOT LIKE 'sara%' OR email IS NULL; # Select all columns from users where email does not start with 'sara' or is NULL

SELECT * FROM users WHERE email NOT LIKE 'sara%' AND age = 26; # Select all columns from users where email does not start with 'sara' and age is 26

SELECT * FROM users WHERE NOT email = 'sara@gmail.co' AND age = 26; # Select all columns from users where email is not 'sara@gmail.co' and age is 26

SELECT * FROM users WHERE NOT email = 'sara@gmail.co' OR age = 26; # Select all columns from users where email is not 'sara@gmail.co' or age is 26




