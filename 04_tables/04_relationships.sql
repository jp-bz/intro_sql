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

