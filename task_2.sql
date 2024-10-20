-- Drop tables if they exist
DROP TABLE IF EXISTS Order_Details;
DROP TABLE IF EXISTS Orders;
DROP TABLE IF EXISTS Books;
DROP TABLE IF EXISTS Customers;
DROP TABLE IF EXISTS Authors;

-- Create the Authors table
CREATE TABLE Authors (
    id INT AUTO_INCREMENT PRIMARY KEY,
    author_name VARCHAR(200) NOT NULL,
    date_of_birth DATE
);

-- Create the Books table
CREATE TABLE Books (
    book_id INT AUTO_INCREMENT PRIMARY KEY,  -- Ensure book_id matches the expected column name
    title VARCHAR(255) NOT NULL,
    author_id INT,
    published_year INT,
    price DECIMAL(10, 2),
    stock_quantity INT,
    FOREIGN KEY (author_id) REFERENCES Authors(id) ON DELETE CASCADE
);

-- Create the Customers table
CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,  -- Ensure customer_id matches the expected column name
    customer_name VARCHAR(215) NOT NULL,
    email VARCHAR(215),
    phone VARCHAR(20),
    address TEXT
);

-- Create the Orders table
CREATE TABLE Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,  -- Ensure order_id matches the expected column name
    customer_id INT,
    order_date DATE NOT NULL,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id) ON DELETE CASCADE
);

-- Create the Order_Details table with correct foreign key references and quantity type
CREATE TABLE Order_Details (
    order_id INT,
    book_id INT,
    quantity DOUBLE,  -- Ensure quantity is set as DOUBLE
    price DECIMAL(10, 2
