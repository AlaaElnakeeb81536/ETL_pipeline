-- Create warehouse
CREATE OR REPLACE WAREHOUSE finance_wh
  WITH WAREHOUSE_SIZE = 'XSMALL'
  AUTO_SUSPEND = 60
  AUTO_RESUME = TRUE
  INITIALLY_SUSPENDED = TRUE;

-- Create database
CREATE OR REPLACE DATABASE finance_db;

-- Create schema
CREATE OR REPLACE SCHEMA finance_db.raw;

-- Create customers table
CREATE OR REPLACE TABLE finance_db.raw.customers (
  id VARCHAR PRIMARY KEY,
  name VARCHAR,
  email VARCHAR,
  country VARCHAR
);

-- Create orders table
CREATE OR REPLACE TABLE finance_db.raw.orders (
  id INT PRIMARY KEY,
  customer_id INT,
  order_date DATE,
  total_amount INT,
  status VARCHAR
);

-- Create order_items table
CREATE OR REPLACE TABLE finance_db.raw.order_items (
  id INT,
  order_id INT,
  product_id INT,
  quantity INT,
  unit_price INT
);

-- Create products table
CREATE OR REPLACE TABLE finance_db.raw.products (
  id INT PRIMARY KEY,
  name STRING,
  category STRING,
  price INT
);
