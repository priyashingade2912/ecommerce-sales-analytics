create database ecommerce_analytics;

use ecommerce_analytics;

CREATE TABLE Customers
(
	CustomerID VARCHAR(10) PRIMARY KEY,
    CustomerName VARCHAR(100),
    Gender VARCHAR(20),
    Age INT,
    City VARCHAR(50),
    Region VARCHAR(30),
    SignupDate DATE
);

-- Products Table
CREATE TABLE Products
(
	ProductID VARCHAR(10) PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50),
    CostPrice DECIMAL(12,2),
    SellingPrice DECIMAL(12,2)
);

-- Orders Table
CREATE TABLE Orders
(
	OrderID VARCHAR(10) PRIMARY KEY,
    OrderDate DATE,
    CustomerID VARCHAR(10),
    PaymentMethod VARCHAR(30) ,
	OrderStatus VARCHAR(20),
    
    FOREIGN KEY (CustomerID)
		REFERENCES Customers(CustomerID)
);

-- OrderDetails
CREATE TABLE OrderDetails
(
	OrderDetailID VARCHAR(12) PRIMARY KEY,
    OrderID VARCHAR(10),
    ProductID VARCHAR(10),
    Quantity INT,
    UnitPrice DECIMAL(12,2),
    DiscountPct DECIMAL(5,2),
    SalesAmount DECIMAL(14,2),
    Profit DECIMAL(14,2),
    
    FOREIGN KEY (OrderID)
		REFERENCES Orders(OrderID),
    
    FOREIGN KEY (ProductID)
		REFERENCES Products(ProductID)
);

-- Returns
CREATE TABLE Returns
(
	ReturnID VARCHAR(10) PRIMARY KEY,
    OrderID VARCHAR(10),
    ReturnDate DATE,
	ReturnResult VARCHAR(50),

	FOREIGN KEY (OrderID)
		REFERENCES Orders(OrderID)
);

-- Tables check

show tables;

desc customers

desc orders

desc OrderDetails

desc returns