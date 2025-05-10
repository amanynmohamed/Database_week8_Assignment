CREATE DATABASE book_db;

-- Step 2: Use the Database
USE book_db;

-- country
CREATE TABLE country (
    country_id INT PRIMARY KEY,
    country_name VARCHAR(100) NOT NULL
);

-- address
CREATE TABLE address (
    address_id INT PRIMARY KEY,
    street VARCHAR(255) NOT NULL,
    city VARCHAR(100) NOT NULL,
    postal_code VARCHAR(20),
    country_id INT,
    FOREIGN KEY (country_id) REFERENCES country(country_id)
);

-- address_status
CREATE TABLE address_status (
    status_id INT PRIMARY KEY,
    status_name VARCHAR(50) NOT NULL
);

-- customer
CREATE TABLE customer (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(255),
    phone_number VARCHAR(20)
);

-- customer_address
CREATE TABLE customer_address (
    customer_id INT,
    address_id INT,
    status_id INT,
    PRIMARY KEY (customer_id, address_id),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (address_id) REFERENCES address(address_id),
    FOREIGN KEY (status_id) REFERENCES address_status(status_id)
);

-- book_language
CREATE TABLE book_language (
    language_id INT PRIMARY KEY,
    language_name VARCHAR(50) NOT NULL
);

-- publisher
CREATE TABLE publisher (
    publisher_id INT PRIMARY KEY,
    publisher_name VARCHAR(100) NOT NULL,
    publisher_address VARCHAR(255)
);

-- author
CREATE TABLE author (
    author_id INT PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL
);

-- book
CREATE TABLE book (
    book_id INT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    isbn VARCHAR(20),
    publish_year INT,
    price DECIMAL(10,2),
    publisher_id INT,
    language_id INT,
    FOREIGN KEY (publisher_id) REFERENCES publisher(publisher_id),
    FOREIGN KEY (language_id) REFERENCES book_language(language_id)
);

-- book_author
CREATE TABLE book_author (
    book_id INT,
    author_id INT,
    PRIMARY KEY (book_id, author_id),
    FOREIGN KEY (book_id) REFERENCES book(book_id),
    FOREIGN KEY (author_id) REFERENCES author(author_id)
);

-- shipping_method
CREATE TABLE shipping_method (
    method_id INT PRIMARY KEY,
    method_name VARCHAR(100) NOT NULL,
    cost DECIMAL(10,2)
);

-- order_status
CREATE TABLE order_status (
    status_id INT PRIMARY KEY,
    status_name VARCHAR(50) NOT NULL
);

-- cust_order
CREATE TABLE cust_order (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    shipping_method_id INT,
    total_amount DECIMAL(10,2),
    status_id INT,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY (shipping_method_id) REFERENCES shipping_method(method_id),
    FOREIGN KEY (status_id) REFERENCES order_status(status_id)
);

-- order_line
CREATE TABLE order_line (
    order_line_id INT PRIMARY KEY,
    order_id INT,
    book_id INT,
    quantity INT,
    unit_price DECIMAL(10,2),
    FOREIGN KEY (order_id) REFERENCES cust_order(order_id),
    FOREIGN KEY (book_id) REFERENCES book(book_id)
);

-- order_history
CREATE TABLE order_history (
    history_id INT PRIMARY KEY,
    order_id INT,
    status_id INT,
    change_date DATE,
    FOREIGN KEY (order_id) REFERENCES cust_order(order_id),
    FOREIGN KEY (status_id) REFERENCES order_status(status_id)
);