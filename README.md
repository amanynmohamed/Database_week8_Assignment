Project Title : café order management system

Description:

This project is a complete database management system for a simple café order management system, created as part of the Week 8 assignment. 

The database design includes the following key elements:
	1.	Customer Table:
	•	Columns: customer_id, customer_name, customer_email, customer_phone
	•	This table stores the details of the customers who place orders in the café. Each customer can have multiple orders.
	2.	Order Table:
	•	Columns: order_id, customer_id, order_date, total_amount
	•	This table stores each order placed by customers. It is related to the Customer table via the customer_id. Each order may contain multiple items.
	3.	Order Items Table (Many-to-Many relationship between Orders and Items):
	•	Columns: order_item_id, order_id, item_id, quantity, price
	•	This table stores the individual items in an order. It is used to manage the many-to-many relationship between Orders and Items.
	4.	Item Table:
	•	Columns: item_id, item_name, item_price, category_id
	•	This table stores all the items available in the café. Each item is linked to a specific category in the Categories table.
	5.	Category Table:
	•	Columns: category_id, category_name
	•	This table stores the categories of items in the café, such as beverages, food, etc. Each item belongs to one category.


Relationships:
	•	Customer and Orders (One-to-Many):
Each customer can place multiple orders, but each order is linked to a single customer.
	•	Orders and Order Items (One-to-Many):
Each order can have multiple items, but each order item belongs to a single order.
	•	Items and Order Items (Many-to-Many via Order Items):
Each item can appear in multiple orders, and each order can contain multiple items, which is managed through the Order Items table.
	•	Items and Categories (Many-to-One):
Each item belongs to one category, but a category can have multiple items.

How to Run / Setup the Project:
	1.	Clone the repository:

git clone https://github.com/amanynmohamed/Database_week8_Assignment.git


	2.	Open MySQL Workbench or any other SQL client.
	3.	Run the SQL script to create the database schema and tables.
	4.	Import the data if provided.
	5.	Test the basic SQL queries to verify the setup.

ERD Diagram:

The ERD (Entity-Relationship Diagram) for this project is included as a PDF file in this repository.
