-- Database: house

-- Drop tables if they exist (order respects FKs if added later)
DROP TABLE IF EXISTS adminlogin;
DROP TABLE IF EXISTS clientregister;
DROP TABLE IF EXISTS userregister;
DROP TABLE IF EXISTS addhouse;

-- Admins
CREATE TABLE adminlogin (
	id INT AUTO_INCREMENT PRIMARY KEY,
	username VARCHAR(100) NOT NULL UNIQUE,
	password VARCHAR(255) NOT NULL,
	fname VARCHAR(100) NOT NULL,
	lname VARCHAR(100) NOT NULL,
	email VARCHAR(150) NOT NULL,
	mobile VARCHAR(30) NOT NULL,
	gender VARCHAR(10) NOT NULL,
	address VARCHAR(255) NOT NULL,
	city VARCHAR(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Clients (house owners)
CREATE TABLE clientregister (
	id INT AUTO_INCREMENT PRIMARY KEY,
	fname VARCHAR(100) NOT NULL,
	lname VARCHAR(100) NOT NULL,
	email VARCHAR(150) NOT NULL,
	mobile VARCHAR(30) NOT NULL,
	gender VARCHAR(10) NOT NULL,
	username VARCHAR(100) NOT NULL UNIQUE,
	password VARCHAR(255) NOT NULL,
	address VARCHAR(255) NOT NULL,
	city VARCHAR(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Customers (users)
CREATE TABLE userregister (
	id INT AUTO_INCREMENT PRIMARY KEY,
	fname VARCHAR(100) NOT NULL,
	lname VARCHAR(100) NOT NULL,
	email VARCHAR(150) NOT NULL,
	mobile VARCHAR(30) NOT NULL,
	gender VARCHAR(10) NOT NULL,
	username VARCHAR(100) NOT NULL UNIQUE,
	password VARCHAR(255) NOT NULL,
	address VARCHAR(255) NOT NULL,
	city VARCHAR(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Houses
CREATE TABLE addhouse (
	id INT AUTO_INCREMENT PRIMARY KEY,
	hname VARCHAR(150) NOT NULL,
	category VARCHAR(100) NOT NULL,
	bedroom VARCHAR(50) NOT NULL,
	email VARCHAR(150) NOT NULL,
	city VARCHAR(100) NOT NULL,
	mobile VARCHAR(30) NOT NULL,
	address VARCHAR(255) NOT NULL,
	descr TEXT,
	photo LONGBLOB,
	price VARCHAR(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Minimal seed (optional)
-- INSERT INTO adminlogin(username,password,fname,lname,email,mobile,gender,address,city)
-- VALUES ('admin','admin','Admin','User','admin@example.com','0000000000','Male','HQ','Metropolis');


