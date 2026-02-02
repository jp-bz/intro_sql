ALTER TABLE persons7
ADD surname VARCHAR(150); # Add a new column 'surname' to the 'persons7' table

ALTER TABLE persons7
RENAME COLUMN surname TO description; # Rename the column 'surname' to 'description' in the 'persons7' table

ALTER TABLE persons7
MODIFY COLUMN description VARCHAR(250); # Change the data type of 'description' column to VARCHAR(250) in the 'persons7' table

ALTER TABLE persons7
DROP COLUMN description;

