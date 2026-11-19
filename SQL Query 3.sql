SELECT * FROM ecommerce_analytics.orderdetails;

select * from customers limit 10;

-- Row Count
select count(*) as TotalCustomers
from customers;

-- Final Data Validation
select 'customers' as TableName, count(*) as TotalRows
from Customers

UNION ALL

select 'Products', count(*)
from products

UNION ALL

select 'orders', count(*)
from orders

UNION ALL

select 'orderdetails',count(*)
from orderdetails

UNION ALL

select 'returns', count(*)
from returns;

TRUNCATE TABLE ecommerce_analytics.customers;

SET foreign_key_checks = 0;
TRUNCATE TABLE ecommerce_analytics.customers;
SET foreign_key_checks = 1;


SET SQL_SAFE_UPDATES = 0;

DELETE FROM ecommerce_analytics.orderdetails;
DELETE FROM ecommerce_analytics.returns;
DELETE FROM ecommerce_analytics.orders;
DELETE FROM ecommerce_analytics.customers;

SET SQL_SAFE_UPDATES = 1;

SELECT COUNT(*) FROM ecommerce_analytics.customers;

-- Duplicate check
select customerID, count(*) as DuplicateCount
from customers
group by CustomerID
having count(*) > 1;

select ProductID, count(*) as DuplicateCount
from products
group by ProductID
having count(*) > 1;

select orderID, count(*) as DuplicateCount
from orders
group by OrderID
having count(*) > 1;

-- NULL CHECK
select
	SUM(CustomerID IS NULL) AS CustomerID_Null,
	SUM(CustomerName IS NULL) AS CustomerName_Null,
	SUM(Gender IS NULL) AS Gender_Null,
	SUM(Age IS NULL) AS Age_Null,
	SUM(City IS NULL) AS City_Null,
	SUM(Region IS NULL) AS Region_Null,
	SUM(SignupDate IS NULL) AS SignupDate_Null
FROM Customers;

-- Foreign Key Validation
select o.orderID, o.customerID
from orders o
left join customers c
on o.customerID = c.CustomerID
where c.CustomerID is null;

-- order details validation
select od.orderID
from orderdetails od
left join orders o
on od.orderID = o.orderID
where o.orderID is null;

-- products validation
select od.ProductID
from orderdetails od
left join products p
on od.ProductID = p.ProductID
where p.ProductID is null;

-- Basic Business Data check
select
	min(orderDate) as FirstOrderDate,
    max(orderDate) as LastOrderDate,
    count(distinct customerID) as UniqueCustomers
from orders;
    
-- Database select
use ecommerce_analytics;

-- Total Customers
select count(*) as TotalCustomers
from customers;

-- Total Orders
select count(*) as TotalOrders
from orders;

-- Order Status Analysis
select OrderStatus, count(*) as TotalOrders
from orders
group by OrderStatus;

-- Delivered Status
select count(*) as DeliveredOrders
from orders
where OrderStatus = 'Delivered';

-- Total Revenue
select sum(od.SalesAmount) as TotalRevenue
from orders o
join orderdetails od
	on o.orderid = od.orderid
where o.orderstatus = 'Delivered';

-- Total Profit
select sum(od.Profit) as TotalProfit
from orders o
join orderdetails od
	on o.orderid = od.orderid
where o.orderstatus = 'Delivered';

-- Revenue + profit together
select 
	sum(od.SalesAmount) as TotalRevenue,
	sum(od.Profit) as TotalProfit
from orders o
join orderdetails od
	on o.orderid = od.orderid
where o.orderstatus = 'Delivered';

-- Average Order value
select 
	sum(od.SalesAmount)/count(distinct o.orderid) as AverageValue
from orders o
join orderdetails od
	on o.orderid = od.orderid
where o.orderstatus = 'Delivered';

-- Category wise Revenue
select p.category, sum(SalesAmount) as Revenue
from orders o
join orderdetails od
	on o.orderid = od.orderid
join products p
	on p.productid = od.productid
where o.orderstatus = 'Delivered'
group by p.category
order by revenue desc;

-- Category wise Profit
select p.category, sum(od.profit) as Profit
from orders o
join orderdetails od
	on o.orderid = od.orderid
join products p
	on p.productid = od.productid
where o.orderstatus = 'Delivered'
group by p.category
order by profit desc;

-- category revenue + profit
select 
	p.category, 
    sum(od.salesamount) as Revenue,
    sum(od.profit) as Profit,
    sum(od.profit) / sum(od.salesamount) * 100 as ProfitMarginPct
from orders o
join orderdetails od
	on o.orderid = od.orderid
join products p
	on p.productid = od.productid
where o.orderstatus = 'Delivered'
group by p.category
order by Revenue desc;

-- Monthly Sales Trend
select
	year(o.orderdate) as SalesYear,
    month(o.orderdate) as SalesMonth,
    sum(od.SalesAmount) as Revenue
from orders o
join orderdetails od
	on o.orderid = od.orderid
where o.orderstatus = 'Delivered'
group by
	year(o.orderdate),
    month(o.orderdate)
order by 
	SalesYear,
    SalesMonth;
    
-- Region wise Revenue
select 
	c.region, 
    sum(od.SalesAmount) as Revenue,
    sum(od.profit) as Profit
from Customers c
join orders o
	on c.customerid = o.customerid
join orderdetails od
	on o.orderid = od.orderid
where o.orderstatus = 'Delivered'
group by c.region
order by revenue desc;

-- Top 10 Customers
select 
	c.CustomerID,
    c.CustomerName,
    sum(od.SalesAmount) as Revenue,
    sum(od.profit) as Profit
from Customers c
join orders o
	on c.customerid = o.customerid
join orderdetails od
	on o.orderid = od.orderid
where o.orderstatus = 'Delivered'
group by 
	c.CustomerID,
    c.CustomerName
order by revenue desc
limit 10;

-- Top 10 Products
select 
	p.ProductID,
    p.ProductName,
    p.category,
    sum(od.Quantity) as UnitsSold,
    sum(od.SalesAmount) as Revenue,
    sum(od.profit) as Profit
from Products p
join orderdetails od
	on p.productid = od.productid
join orders o
	on od.orderid = o.orderid
where o.orderstatus = 'Delivered'
group by 
	p.ProductID,
    p.ProductName,
    p.category
order by revenue desc
limit 10;

-- Payment Method Analysis
select
	paymentmethod,
    count(*) as TotalOrders
from orders
where OrderStatus = 'Delivered'
Group by PaymentMethod
order by TotalOrders Desc;

-- Return Analysis
select
	r.ReturnResult,
    count(*) as TotalReturns
from returns r
Group by r.ReturnResult
order by TotalReturns Desc;

-- Return Rate
select
	count(distinct r.OrderID) as ReturnedOrders,
    count(distinct o.OrderID) as TotalOrders,
	count(distinct r.OrderID) / count(distinct o.OrderID) * 100 as ReturnRatePct
from orders o
left join returns r
	on o.orderID = r.OrderID;

