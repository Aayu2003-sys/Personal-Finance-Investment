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


## Future Enhancements

1) Graphical User Interface (GUI):
Develop a user-friendly interface using frameworks such as Tkinter, PyQt, or a web-based interface using Flask or Django to make the system more interactive.

2) Data Visualization Dashboard:
Integrate visualization libraries like Matplotlib or Plotly to display charts and graphs for income, expenses, savings trends, and investment performance.

3) Secure Authentication:
Implement password hashing and encryption techniques to enhance user security and protect sensitive financial data.

4) Real-Time Investment Tracking:
Connect the system with financial APIs to fetch real-time stock or mutual fund prices and provide accurate investment performance updates.

5) Automated Financial Reports:
Generate downloadable financial reports in PDF or Excel format for better financial analysis and record keeping.

6) Mobile Application Integration:
Develop a mobile application version to allow users to manage their finances conveniently from smartphones.

7) AI-Based Financial Recommendations:
Add intelligent suggestions for budgeting, saving, and investing based on user spending patterns and financial behavior.

8) Multi-User and Cloud Support:
Enable cloud database integration so multiple users can access the system securely from different locations.

These enhancements can improve the system’s usability, scalability, and analytical capabilities in future versions.

---
