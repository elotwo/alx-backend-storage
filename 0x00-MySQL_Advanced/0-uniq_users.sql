-- This create a table with a unique email

-- Create the table if it does not exist
CREATE TABLE IF NOT EXISTS users(
id INT NOT NULL AUTO_INCREMENT,
email VARCHAR (225) NOT NULL UNIQUE,
name VARCHAR (255) NOT NULL,
PRIMARY KEY (id)
);
