insert into customers(customer_id,customer_name,country,customer_type) values
(1,'prasanna','India','Retail'),
(2,'Ramya','India','Corporate'),
(3,'Murthy','India','Retail'),
(4,'Pushpa','India','Retail'),
(5,'Vasu','India','Retail'),
(6,'Yashas','India','Retail'),
(7,'Soujanya','India','Retail'),
(8,'Manjunath','Indian','Retail'),
(9,'kushal','Indian','Corporate'),
(10,'Shashi','Indian','Retail'),
(11,'Kumar','Indian','Retail'),
(12,'Anand','Indian','Retail'),
(13,'Sumanth','Indian','Retail');

Select * from Customers;

Insert into Product(product_id,product_name,category,price) Values
(101,'Laptop','Electronics',75000),
(102,'Monitor','Electronice',25000),
(103,'keyboard','Accessories',3000),
(104,'Mouse','Accessories',1500),
(105,'Printer','Accessories',5000);

select * from product;

INSERT INTO sales
(sales_id, customer_id, product_id, sale_date, quantity)
VALUES
(1, 1, 101, '2026-01-05', 1),
(2, 2, 102, '2026-01-10', 2),
(3, 3, 103, '2026-01-15', 3),
(4, 4, 101, '2026-01-20', 2),
(5, 5, 104, '2026-02-02', 4),
(6, 6, 105, '2026-02-08', 2),
(7, 7, 105, '2026-02-15', 1),
(8, 8, 101, '2026-02-20', 3),
(9, 1, 103, '2026-03-01', 2),
(10, 2, 105, '2026-03-05', 1),
(11, 3, 102, '2026-03-10', 2),
(12, 5, 104, '2026-03-15', 5);