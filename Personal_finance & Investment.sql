CREATE DATABASE finance_master;
USE finance_master;

CREATE TABLE users (
user_id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(100) NOT NULL,
email VARCHAR(100) UNIQUE NOT NULL,
password VARCHAR(100) NOT NULL
);

CREATE TABLE employees (
emp_id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(100),
email VARCHAR(100) UNIQUE,
password VARCHAR(100),
role VARCHAR(50)
);

CREATE TABLE income (
income_id INT AUTO_INCREMENT PRIMARY KEY,
user_id INT,
source VARCHAR(100),
amount DECIMAL(10,2),
date DATE,
FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE expenses (
expense_id INT AUTO_INCREMENT PRIMARY KEY,
user_id INT,
category VARCHAR(100),
amount DECIMAL(10,2),
date DATE,
FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE investments (
investment_id INT AUTO_INCREMENT PRIMARY KEY,
user_id INT,
type VARCHAR(50),
name VARCHAR(100),
invested DECIMAL(10,2),
current_value DECIMAL(10,2),
FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE goals (
goal_id INT AUTO_INCREMENT PRIMARY KEY,
user_id INT,
goal_name VARCHAR(100),
target_amount DECIMAL(10,2),
saved_amount DECIMAL(10,2),
FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE budget (
budget_id INT AUTO_INCREMENT PRIMARY KEY,
user_id INT,
category VARCHAR(100),
monthly_limit DECIMAL(10,2),
FOREIGN KEY (user_id) REFERENCES users(user_id)
);

INSERT INTO employees (name,email,password,role) VALUES
('Rahul Sharma','rahul@finance.com','emp123','Manager'),
('Priya Mehta','priya@finance.com','emp456','Analyst'),
('Amit Kapoor','amit@finance.com','emp789','Finance Officer');

INSERT INTO users (name,email,password) VALUES
('Aayush Arora','aayush@gmail.com','user123'),
('Rohan Patel','rohan@gmail.com','user456'),
('Sneha Verma','sneha@gmail.com','user789');

INSERT INTO income (user_id,source,amount,date) VALUES
(1,'Salary',60000,'2026-01-05'),
(1,'Freelancing',12000,'2026-01-20'),
(2,'Salary',50000,'2026-01-03'),
(2,'Bonus',10000,'2026-01-15'),
(3,'Salary',45000,'2026-01-08');

INSERT INTO expenses (user_id,category,amount,date) VALUES
(1,'Rent',15000,'2026-01-02'),
(1,'Food',6000,'2026-01-10'),
(1,'Travel',3000,'2026-01-15'),
(2,'Rent',12000,'2026-01-04'),
(2,'Food',4500,'2026-01-09'),
(2,'Shopping',3500,'2026-01-12'),
(3,'Food',4000,'2026-01-11'),
(3,'Travel',2000,'2026-01-16');

INSERT INTO investments (user_id,type,name,invested,current_value) VALUES
(1,'Stock','TCS',20000,25000),
(1,'Mutual Fund','HDFC MF',15000,18000),
(2,'Stock','Infosys',18000,21000),
(2,'Crypto','Bitcoin',10000,12000),
(3,'Mutual Fund','SBI Bluechip',12000,14000);

INSERT INTO goals (user_id,goal_name,target_amount,saved_amount) VALUES
(1,'Buy Car',500000,120000),
(1,'Emergency Fund',200000,80000),
(2,'Vacation',100000,35000),
(3,'Laptop Purchase',80000,20000);

INSERT INTO budget (user_id,category,monthly_limit) VALUES
(1,'Food',5000),
(1,'Travel',2500),
(2,'Shopping',3000),
(2,'Food',4000),
(3,'Food',3500);