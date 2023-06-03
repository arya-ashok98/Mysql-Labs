create database parkingSlot;
use parkingSlot;

 CREATE TABLE students(
   `id` INT NOT NULL AUTO_INCREMENT,
   `name` VARCHAR(50) NOT NULL,
   `phone_number` VARCHAR(20) NULL,
   `alternate_number` VARCHAR(20) NOT NULL,
   PRIMARY KEY (id));
   
 CREATE TABLE staffs(
   `id` INT NOT NULL AUTO_INCREMENT,
   `name` VARCHAR(50) NOT NULL,
   `phone_number` VARCHAR(20) NULL,
   `alternate_number` VARCHAR(20) NOT NULL,
   PRIMARY KEY (id));
   
   
 CREATE TABLE vehicles(
   `id` INT NOT NULL AUTO_INCREMENT,
   `number_plate` VARCHAR(50) NOT NULL,
   `student_id` INT,
   `staff_id` INT,
   `type` VARCHAR(10) NOT NULL,
   `time_in` TIMESTAMP,
   `time_out` TIMESTAMP,	
   PRIMARY KEY(id),
   FOREIGN KEY(student_id) REFERENCES students(id),
   FOREIGN KEY(staff_id) REFERENCES staffs(id),
   UNIQUE(number_plate));
   
   
   
   