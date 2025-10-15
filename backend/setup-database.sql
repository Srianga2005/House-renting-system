-- Database setup script for Online House Renting System
-- Run this script to create the database and user

-- Create database
CREATE DATABASE IF NOT EXISTS house;
USE house;

-- Create user (optional - you can use root if preferred)
-- CREATE USER IF NOT EXISTS 'houserent'@'localhost' IDENTIFIED BY 'houserent123';
-- GRANT ALL PRIVILEGES ON house.* TO 'houserent'@'localhost';
-- FLUSH PRIVILEGES;

-- Note: The main database schema will be loaded from house.sql
-- Make sure to run: mysql -u root -p house < database/house.sql



