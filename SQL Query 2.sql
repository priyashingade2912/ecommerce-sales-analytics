SELECT * FROM ecommerce_analytics.orders;

select count(*) from orders;

LOAD DATA LOCAL INFILE 'D:\priya\Projects\E-Commerce Sales Analytics Project\Data\Orders.csv'
INTO TABLE ecommerce_analytics.orders
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(OrderID,OrderDate,CustomerID,PaymentMethod,OrderStatus
);

SET GLOBAL local_infile = 1;

SET GLOBAL local_infile = 1;

select count(*) from orders;


(OrderID, @d, CustomerID, PaymentMethod, OrderStatus)
SET OrderDate = STR_TO_DATE(@d, '%d-%m-%Y');

LOAD DATA LOCAL INFILE 'D:/priya/Projects/E-Commerce Sales Analytics Project/Data/Orders.csv'
INTO TABLE ecommerce_analytics.orders
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(OrderID, OrderDate, CustomerID, PaymentMethod, OrderStatus);

LOAD DATA LOCAL INFILE 'D:/priya/Projects/E-Commerce Sales Analytics Project/Data/Orders.csv'
INTO TABLE ecommerce_analytics.orders
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(OrderID, @d, CustomerID, PaymentMethod, OrderStatus)
SET OrderDate = STR_TO_DATE(@d, '%d-%m-%Y');

LOAD DATA LOCAL INFILE 'D:/priya/Projects/E-Commerce Sales Analytics Project/Data/Orders.csv' INTO TABLE ecommerce_analytics.orders FIELDS TERMINATED BY ',' OPTIONALLY ENCLOSED BY '"' LINES TERMINATED BY '\r\n' IGNORE 1 ROWS (OrderID, @d, CustomerID, PaymentMethod, OrderStatus) SET OrderDate = STR_TO_DATE(@d, '%d-%m-%Y');

select count(*) from orders;