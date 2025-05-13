# Café Order Management System  

## *Description:*  
This project is a complete database management system for a café, developed as part of the Week 8 assignment. It provides a structured way to manage customer orders, track items, and categorize the menu efficiently.  

---

## *Database Design:*  
The database includes the following main tables:  

### *1. Customers Table:*  
- *Columns:* Customer_ID (PK), Name, Contact_Info  
- *Purpose:* Stores customer details.  
- *Relationship:*  
  - Each customer can place multiple orders (One-to-Many).  

### *2. Menu_Items Table:*  
- *Columns:* Item_ID (PK), Item_Name, Price, Category  
- *Purpose:* Stores details of each item available in the café.  
- *Notes:*  
  - The *Category* is stored as a simple text field without a separate table for categories.  

### *3. Orders Table:*  
- *Columns:* Order_ID (PK), Customer_ID (FK), Order_Date, Total_Amount  
- *Purpose:* Stores order details.  
- *Relationship:*  
  - Each order is linked to a single customer but can contain multiple items (One-to-Many).  
  - The *Customer_ID* is a foreign key referencing the *Customers* table.  

### *4. Order_Details Table:*  
- *Columns:* Order_Detail_ID (PK), Order_ID (FK), Item_ID (FK), Quantity, Subtotal  
- *Purpose:* Manages the many-to-many relationship between orders and items.  
- *Relationship:*  
  - Each order can have multiple items, and each item can appear in multiple orders.  
  - *Order_ID* is a foreign key referencing the *Orders* table.  
  - *Item_ID* is a foreign key referencing the *Menu_Items* table.  

---

## *Relationships:*  
- *Customers to Orders (One-to-Many):*  
   - A single customer can place multiple orders, but each order is linked to a single customer.  

- *Orders to Order_Details (One-to-Many):*  
   - Each order can contain multiple items, but each order item belongs to a single order.  

- *Menu_Items to Order_Details (One-to-Many):*  
   - Each item can appear in multiple orders, and each order can contain multiple items.  

---

## *Foreign Key Details:*  
- *Customers Table:*  
  - Customer_ID (PK)  

- *Menu_Items Table:*  
  - Item_ID (PK)  

- *Orders Table:*  
  - Order_ID (PK)  
  - Customer_ID (FK) → References Customers.Customer_ID  

- *Order_Details Table:*  
  - Order_Detail_ID (PK)  
  - Order_ID (FK) → References Orders.Order_ID  
  - Item_ID (FK) → References Menu_Items.Item_ID  

---

## *Setup and How to Run the Project:*  
1. Clone the repository:  
   ```bash
   git clone https://github.com/amanynmohamed/Database_week8_Assignment.git

	2.	Open MySQL Workbench or any other SQL client.
	3.	Run the SQL script to create the database schema and tables.
	4.	Import the data if provided.
	5.	Test the basic SQL queries to verify the setup.

ERD Diagram:

The ERD (Entity-Relationship Diagram) for this project is included as a PDF file in this repository. It visually represents the relationships between the tables.


