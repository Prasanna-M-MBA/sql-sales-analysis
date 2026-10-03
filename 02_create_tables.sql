Create table customers(
customer_id int primary key,
customer_name varchar(100),
country varchar(50),
customer_type varchar(50)
);

Show tables;

describe customers;

Create table product(
product_id int primary key,
product_name varchar(100),
category varchar(50),
price decimal(10,2)
);

show tables;

Create table sales(
sales_id int primary key,
customer_id int,
product_id int,
sale_date date,
quantity int,
foreign key(customer_id) references customers(customer_id),
foreign key(product_id) references product(product_id)
);