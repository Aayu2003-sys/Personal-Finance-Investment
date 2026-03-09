# Personal-Finance-Investment

# Personal Finance & Investment Management System

## Overview
The Personal Finance & Investment Management System is a Python-based application integrated with a MySQL database designed to help users efficiently manage their financial activities. The system allows users to track income, expenses, investments, and financial goals in a structured and organized manner.

It also includes an employee module that enables administrators to monitor customer financial records, verify users, and manage budgeting information. The system demonstrates the integration of Python programming with relational database management while applying financial analytics and validation techniques.

---

## Features

### Customer Module
- User registration and login with validation
- Income tracking and management
- Expense tracking with categories
- Budget monitoring with overspending alerts
- Investment portfolio management
- Financial goal creation and progress tracking
- SIP (Systematic Investment Plan) calculator
- CAGR (Compound Annual Growth Rate) calculator
- Net worth calculation
- Tax estimation based on income

### Employee Module
- Employee authentication using company email
- View all registered customers
- Verify customer details
- View customer transactions
- Generate customer financial summaries
- Assign monthly budgets to customers
- Export customer data to CSV

---

## Technologies Used
- **Python** – Core application logic
- **MySQL** – Database management
- **mysql-connector-python** – Database connectivity
- **Regular Expressions (re module)** – Input validation
- **Datetime module** – Date validation
- **CSV module** – Data export functionality

---

## Database Structure

The system uses the following tables:

- `users` – Stores customer information
- `employees` – Stores employee credentials
- `income` – Records income transactions
- `expenses` – Records expense transactions
- `investments` – Tracks investment portfolio
- `goals` – Stores financial goals
- `budget` – Stores monthly budget limits

Each user can have multiple income records, expenses, investments, goals, and budget entries.

---

## Entity Relationship Diagram (ERD)

The ER diagram illustrates relationships between the database tables.  
The **Users table acts as the central entity**, connected to income, expenses, investments, goals, and budget through one-to-many relationships.

---
