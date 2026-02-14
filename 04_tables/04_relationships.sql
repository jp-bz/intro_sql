CREATE TABLE dni (
	dni_id INT AUTO_INCREMENT PRIMARY KEY,
    dni_number INT NOT NULL,
    user_id INT,
    UNIQUE(dni_id),
    FOREIGN KEY(user_id) REFERENCES users(user_id)
); # Create 'dni' table with foreign key referencing 'users' table


/* Relación 1 a n*/

ALTER TABLE users
ADD CONSTRAINT fk_companies
FOREIGN KEY(company_id) REFERENCES companies(company_id); # Add foreign key constraint to 'users' table referencing 'companies' table


/* Relación n a n*/

CREATE TABLE languages(
	language_id INT AUTO_INCREMENT PRIMARY KEY
);

CREATE TABLE users_languages(
	users_language_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    language_id INT,
    FOREIGN KEY(user_id) REFERENCES users(user_id),
    FOREIGN KEY(language_id) REFERENCES languages(language_id),
    UNIQUE(user_id, language_id)
);

/* Construcción de tablas para relaciones*/

INSERT INTO dni (dni_id, dni_number, user_id) VALUES (2, 22222222, 2);
INSERT INTO dni (dni_id, dni_number, user_id) VALUES (3, 33333333, 3);
INSERT INTO dni (dni_id, dni_number, user_id) VALUES (4, 44444444, 4);


INSERT INTO companies (name) VALUES ('MoureDev');
INSERT INTO companies (name) VALUES ('Apple');
INSERT INTO companies (name) VALUES ('Google');

UPDATE users SET company_id = 1 WHERE user_id = 1;
UPDATE users SET company_id = 2 WHERE user_id = 3;
UPDATE users SET company_id = 3 WHERE user_id = 4;
UPDATE users SET company_id = 1 WHERE user_id = 7;

INSERT INTO languages (name) VALUES ('Swift');
INSERT INTO languages (name) VALUES ('Kotlin');
INSERT INTO languages (name) VALUES ('JavaScript');
INSERT INTO languages (name) VALUES ('Java');
INSERT INTO languages (name) VALUES ('Python');
INSERT INTO languages (name) VALUES ('C#');
INSERT INTO languages (name) VALUES ('COBOL');


INSERT INTO users_languages(user_id, language_id) VALUES (1, 1);
INSERT INTO users_languages(user_id, language_id) VALUES (1, 2);
INSERT INTO users_languages(user_id, language_id) VALUES (1, 5);
INSERT INTO users_languages(user_id, language_id) VALUES (2, 3);
INSERT INTO users_languages(user_id, language_id) VALUES (2, 5);


