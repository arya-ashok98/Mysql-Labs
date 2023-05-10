CREATE TABLE `mysql_labs`.`users` (`id` INT NOT NULL AUTO_INCREMENT , `user_name` VARCHAR(10) NOT NULL , `email` VARCHAR(30) NOT NULL , `password` VARCHAR(30) NOT NULL, KEY (`id`)) ENGINE = InnoDB;

CREATE TABLE `mysql_labs`.`employees` (`id` INT NOT NULL AUTO_INCREMENT , `emp_name` VARCHAR(10) NOT NULL , `email` VARCHAR(30) NOT NULL , `password` VARCHAR(30) NOT NULL, KEY (`id`)) ENGINE = InnoDB;

CREATE TABLE `mysql_labs`.`agents` (`id` INT NOT NULL AUTO_INCREMENT , `agent_name` VARCHAR(10) NOT NULL , `email` VARCHAR(30) NOT NULL , `password` VARCHAR(30) NOT NULL, KEY (`id`)) ENGINE = InnoDB;

CREATE TABLE `mysql_labs`.`complaints` (`id` INT NOT NULL AUTO_INCREMENT , `complaint` TEXT NOT NULL , `status` VARCHAR(30) NOT NULL , `user_id` INT, `employee_id` INT, `agent_id` INT, `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP, PRIMARY KEY (`id`), FOREIGN KEY(user_id) REFERENCES users(id), FOREIGN KEY(employee_id) REFERENCES employees(id), FOREIGN KEY(agent_id) REFERENCES agents(id)) ENGINE = InnoDB;











CREATE TABLE `mysql labs`.`userdetails` (`userId` INT NOT NULL AUTO_INCREMENT , `userName` VARCHAR(10) NOT NULL , `place` VARCHAR(30) NOT NULL , PRIMARY KEY (`userId`)) ENGINE = InnoDB;

CREATE TABLE `mysql labs`.complaints (userId INT, description VARCHAR(255) NOT NULL, FOREIGN KEY(userId) REFERENCES userdetails(userId));

INSERT INTO userdetails (userName, place) VALUES ('Anu', 'Kollam'), ('Alan', 'Kottayam'), ('Rahul', 'Kollam');

INSERT INTO complaints(userId, description) VALUES (1, 'The site is getting too slow for me from this morning, Could you please check the same! Thanks!!'), (3, 'Im unable to login to the application. Showing access denied message! Please check and get back urgently');



