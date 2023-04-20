-- Tabulka zaměstanci 
CREATE TABLE employees (
emp_id INT PRIMARY KEY,
first_name VARCHAR(10),
last_name VARCHAR(20),
birth_date DATE,
role VARCHAR(20),
shop_id INT,
manager_id int
);

-- Tabulka obchody
CREATE TABLE shops (
shop_id INT PRIMARY KEY,
city VARCHAR(10),
shop_mgr_id INT,
FOREIGN KEY(shop_mgr_id) REFERENCES employees(emp_id) ON DELETE SET NULL
);

ALTER TABLE employees
ADD FOREIGN KEY(shop_id) REFERENCES shops(shop_id) ON DELETE SET NULL;

ALTER TABLE employees
ADD FOREIGN KEY(manager_id) REFERENCES employees(emp_id) ON DELETE SET NULL;

-- Tabulka zákazníci
CREATE TABLE customers (
customer_id VARCHAR(10) PRIMARY KEY,
customer_last_name VARCHAR(20),
shop_id INT,
FOREIGN KEY(shop_id) REFERENCES shops(shop_id) ON DELETE SET NULL
);

-- Tabulka dodavatelé
CREATE TABLE suppliers (
shop_id INT,
supplier_name VARCHAR(20),
suply_type VARCHAR(20),
PRIMARY KEY(shop_id, supplier_name),
FOREIGN KEY(shop_id) REFERENCES shops(shop_id) ON DELETE CASCADE
);

-- Tabulka prodeje
CREATE TABLE sales (
shop_mgr_id INT,
shop_id INT,
total_sales INT,
PRIMARY KEY(shop_mgr_id, shop_id),
FOREIGN KEY(shop_mgr_id) REFERENCES employees(emp_id) ON DELETE CASCADE,
FOREIGN KEY(shop_id) REFERENCES shops(shop_id)
);












