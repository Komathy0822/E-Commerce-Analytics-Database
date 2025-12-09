/*Table creation*/
create table customers (
customer_id varchar(20) primary key,
age int,
gender varchar(10),
subscription_status varchar(5),
locations varchar(50),
preivous_purchase int,
frequency_of_purchases varchar(20),
payment_method varchar(20)
);

create table products (
item_purchased varchar(100),
category varchar(50),
sizes varchar(20),
color varchar(20),
season varchar(20),
review_rating int,
product_id varchar(20) primary key
);

create table orders (
customer_id varchar(20),
order_id varchar(20) primary key,
purchase_amount int,
discount_applied varchar(5),
promo_code_used varchar(5),
shipping_type varchar(20),
season varchar(20),
product_id varchar(20),

FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

/*show tables*/
SELECT table_name 
FROM information_schema.tables
WHERE table_schema = 'public';

/*importing csv files*/
copy customers
from 'C:\Program Files\PostgreSQL\18\data\customer_data.csv'
delimiter ','
CSV header;

ALTER TABLE products
ALTER COLUMN review_rating TYPE NUMERIC;

copy products
from 'C:\Program Files\PostgreSQL\18\data\product_data.csv'
delimiter ','
CSV header;

copy orders
from 'C:\Program Files\PostgreSQL\18\data\order_data.csv'
delimiter ','
CSV header;

/* checking data*/
select* from customers limit 10;
select* from products limit 10;
select* from orders limit 10;

/*row count*/
select count(*) from customers;
select count(*) from products;
select count(*) from orders;

/* top 5 customers on spending*/
SELECT c.customer_id, c.gender, SUM(o.purchase_amount) AS total_spent
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.customer_id, c.gender
ORDER BY total_spent DESC
LIMIT 5;

/*Best-selling products*/
SELECT p.item_purchased, COUNT(o.order_id) AS total_orders
FROM orders o
JOIN products p ON o.product_id = p.product_id
GROUP BY p.item_purchased
ORDER BY total_orders DESC;

/*Most used payment method*/
SELECT payment_method, COUNT(*) 
FROM customers
GROUP BY payment_method;

/*Revenue by Season*/
SELECT season, SUM(purchase_amount) AS total_revenue
FROM orders
GROUP BY season
ORDER BY total_revenue DESC;

SELECT SUM(purchase_amount) AS total_revenue FROM orders;




