# TradeCart_DB

 🛒 TradeCart_DB – SQL Relational Database Project

**TradeCart_DB** is a SQL-based relational database designed to manage and analyze data for an online retail store. It includes structured tables for **customers**, **products**, **orders**, and **order items**, allowing for efficient sales tracking, inventory management, and customer analysis.

---

## 📁 Project Overview

This project demonstrates:
- Database design for a retail system
- Table relationships using foreign keys
- Querying real-world data for insights (e.g., sales totals, inventory status)

---

## 🛠️ Technologies Used

- MySQL Workbench
- SQL (Structured Query Language)
- Relational Database Design Principles

---

## 📂 File Structure

| File Name              | Description                                      |
|------------------------|--------------------------------------------------|
| `TradeCart_DB.sql`     | SQL file containing schema, inserts, and queries |
| `README.md`            | Project documentation (this file)               |

---

## 🧱 Database Schema

- **customers**: Stores customer information
- **products**: Product catalog with stock info
- **orders**: Master order records
- **order_items**: Line items for each order

---

## 🧾 Sample Queries

-- 1. Show all orders with customer names
SELECT o.order_id, c.name AS customer_name, o.order_date, o.total_amount
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id;

-- 2. Products with stock less than 20
SELECT name, stock FROM products WHERE stock < 20;

-- 3. Total sales made
SELECT SUM(total_amount) AS total_sales FROM orders;

🚀 How to Run
Open TradeCart_DB.sql in MySQL Workbench.

Execute to create tables and insert sample data.

Run the SQL queries to test the database functionality.


📌 Use Cases
This project simulates a real-world online retail environment and demonstrates skills in:

Normalized database design

Writing efficient SQL queries

Performing sales and customer analysis

Great for showcasing SQL and data modeling abilities on GitHub and LinkedIn.

📄 License
This project is strictly for educational and personal portfolio use only.
Please do not reuse, submit, or redistribute this code for commercial or academic purposes.
All rights reserved by the author.

## 👨‍💻 Author

Developed by
**Syeda Alia Samia**  
GitHub:[Syeda Alia Samia](https://github.com/your-github-username)
Project: `TradeCart_DB-sql`
