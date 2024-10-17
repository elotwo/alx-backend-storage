-- This script create a table with a unique email
-- and adds a country column with specified enumerated values.

-- Create the table if it does not exist
CREATE TABLE IF NOT EXISTS users(
id INT NOT NULL AUTO_INCREMENT,
email VARCHAR (225) NOT NULL UNIQUE,
name VARCHAR (255) NOT NULL,
country ENUM('US', 'CO', 'TN') NOT NULL DEFAULT 'US',
PRIMARY KEY (id)
);
