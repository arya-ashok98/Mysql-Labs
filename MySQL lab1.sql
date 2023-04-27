create database mysql labs;

CREATE TABLE `mysql labs`.`userdetails` (`userId` INT NOT NULL AUTO_INCREMENT , `userName` VARCHAR(10) NOT NULL , `place` VARCHAR(30) NOT NULL , PRIMARY KEY (`userId`)) ENGINE = InnoDB;

CREATE TABLE `mysql labs`.complaints (userId INT, description VARCHAR(255) NOT NULL, FOREIGN KEY(userId) REFERENCES userdetails(userId));

-- Inserted some random values for the user details

INSERT INTO userdetails (userName, place) VALUES ('Anu', 'Kollam'), ('Alan', 'Kottayam'), ('Rahul', 'Kollam');

-- Value inserted for the complaints table with userId

INSERT into complaints(userId, description) VALUES (1, 'The site is getting too slow for me from this morning, Could you please check the same! Thanks!!'), (3, 'Im unable to login to the application. Showing access denied message! Please check and get back urgently');

