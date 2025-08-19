CREATE DATABASE IF NOT EXISTS ShopDB;
USE ShopDB;

CREATE TABLE GeoIPCache (
    ID INT PRIMARY KEY,
    IPRange VARCHAR(45),
    CountryID INT
) ENGINE=MEMORY;

CREATE TABLE ProductDescription (
    ID INT PRIMARY KEY,
    Description TEXT,
    ProductID INT,
    CountryID INT
) ENGINE=InnoDB;

CREATE TABLE Logs (
    ID INT PRIMARY KEY AUTO_INCREMENT,
    Timestamp DATETIME,
    Message TEXT
) ENGINE=BLACKHOLE;

CREATE TABLE ProductReporting (
    Date DATE,
    ProductName VARCHAR(100),
    Orders INT
) ENGINE=CSV;
