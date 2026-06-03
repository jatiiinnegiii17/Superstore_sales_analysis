-- create database Superstore_sales;
-- use Superstore_sales;
CREATE TABLE `record` (
  `Row ID` int DEFAULT NULL,
  `Order ID` varchar(20) DEFAULT NULL,
  `Order Date` varchar(20) DEFAULT NULL,
  `Ship Date` varchar(20) DEFAULT NULL,
  `Ship Mode` varchar(40) DEFAULT NULL,
  `Customer ID` varchar(20) DEFAULT NULL,
  `Customer Name` varchar(100) DEFAULT NULL,
  `Segment` varchar(20) DEFAULT NULL,
  `Country` varchar(50) DEFAULT NULL,
  `City` varchar(50) DEFAULT NULL,
  `State` varchar(50) DEFAULT NULL,
  `Postal Code` varchar(20) DEFAULT NULL,
  `Region` varchar(20) DEFAULT NULL,
  `Product ID` varchar(20) DEFAULT NULL,
  `Category` varchar(30) DEFAULT NULL,
  `Sub-Category` varchar(30) DEFAULT NULL,
  `Product Name` varchar(255) DEFAULT NULL,
  `Sales` decimal(10,4) DEFAULT NULL
);

 