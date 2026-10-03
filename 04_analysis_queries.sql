Use sales_analysis;

-- Q1 View all sales
Select * from sales;

-- Q2 Count Customers
select count(*) as total_customers
from customers;

-- Q3 Count Sales
select count(*) as total_sales
from sales;

-- Q4 Total Quantity Sold
select sum(quantity) as total_quantity
from sales;

-- my first join

select 
s.sales_id,
c.customer_name,
p.product_name,
s.sale_date,
s.quantity,
p.price
from sales s
Join customers c
on s.customer_id = c.customer_id
Join product p
on s.product_id = p.product_id;

-- Calculate Revenue
select
s.sales_id,
c.customer_name,
p.product_name,
s.quantity,
p.price,
s.quantity * p.price as revenue 
from sales s
Join customers c
on s.customer_id = c.customer_id
join product p
on s.product_id = p.product_id;

-- Total Revenue
select
sum(s.quantity * p.price) as total_revenue
from sales s
Join product p
on s.product_id = p.product_id;

select
p.product_name,
sum(s.quantity) as total_quantity,
sum(s.quantity * p.price) as revenue
from sales s
Join product p
on s.product_id = p.product_id
group by p.product_name
order by revenue desc;

-- Q15 Revenue by country
select
c.country,
sum(s.quantity * p.price) as revenue
from sales s
join customers c
on s.customer_id = c.customer_id
Join product p
on s.product_id = p.product_id
group by c.country
order by revenue desc;

-- Q16 Revenue by customer type
select
c.customer_type,
sum(s.quantity * p.price) as revenue
from sales s
join customers c
on s.customer_id = c.customer_id
join product p
on s.product_id = p.product_id
group by c.customer_type
order by revenue desc;

-- Q17 Monthly Revenue
select
month(s.sale_date) as month_number,
sum(s.quantity * P.price) as revenue
from sales s
join product p
on s.product_id = p.product_id
group by month(s.sale_date)
order by month_number;

-- Q18 Top 5 Customers
select
c.customer_name, sum(s.quantity * p.price) As Revenue
from sales s
join customers c
on s.customer_id = c.customer_id
join product p
on s.product_id =p.product_id
group by c.customer_name
order by revenue desc
limit 5;