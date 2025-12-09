# E-Commerce Analytics Database

## 1. Project Overview
This project is an **E-Commerce Analytics Database** built using **PostgreSQL**.  
It demonstrates realistic e-commerce data management including **customers, products, and orders**, with the ability to perform analytics and generate insights.

The project is designed for **portfolio purposes** to showcase database design, data import, and SQL analysis skills.

---

## 2. Dataset
The dataset contains **realistic synthetic data** for an online retail store.

### Tables and Columns:

### 2.1 Customers Table
| Column | Description |
|--------|-------------|
| customer_id | Unique identifier for each customer |
| age | Age of the customer |
| gender | Male/Female |
| subscription_status | Indicates if the customer has a subscription (Yes/No) |
| location | Customer location |
| previous_purchases | Total past purchases |
| frequency_of_purchases | Purchase frequency (Weekly, Monthly, Fortnightly) |
| payment_method | Customer's preferred payment method |

### 2.2 Products Table
| Column | Description |
|--------|-------------|
| product_id | Unique product identifier |
| item_purchased | Name of the product |
| category | Product category (Fashion, Footwear, Accessories) |
| size | Size of the product |
| color | Color of the product |
| season | Season of sale |
| review_rating | Customer review rating (1-5, numeric) |

### 2.3 Orders Table
| Column | Description |
|--------|-------------|
| order_id | Unique order identifier |
| customer_id | Reference to the customer making the order |
| product_id | Reference to the purchased product |
| purchase_amount | Amount spent in USD |
| discount_applied | Yes/No |
| promo_code_used | Yes/No |
| shipping_type | Type of shipping (Standard/Express) |
| season | Season during which the purchase occurred |

---

## 3. Database Design (ER Diagram)
**Entities:**  
- Customers  
- Products  
- Orders  

**Relationships:**  
- Customers → Orders (1-to-many)  
- Products → Orders (1-to-many)  

![ER Diagram](link-to-your-er-diagram.png)  


---


## 5. Tools Used
PostgreSQL 18
PgAdmin 4
CSV files for dataset
SQL for queries and analytics

---

## 6. Key Learnings / Skills Demonstrated
Designing relational databases for e-commerce
Creating tables with primary and foreign keys
Importing CSV data into PostgreSQL
Performing SQL analytics: joins, aggregates, group by, order by
Generating insights for customer behavior, product performance, and sales trends
