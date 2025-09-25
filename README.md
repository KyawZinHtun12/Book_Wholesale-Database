# Golden Valley Database

A full SQL database schema and sample data for Golden Valley — a bookstore/publishing system. This project models authors, books, categories, publishers, customers, employees, and orders, including many-to-many relationships and sample queries for reporting.

## 📋 Features

Relational schema for a complete bookstore workflow:

Authors and Books (many-to-many)

Categories and Publishers

Customers placing orders

Employees and Employee Types (with salaries)

Orders containing multiple books

Sample data for immediate testing.

Example queries for selecting, updating, and deleting records.

## 🗄️ Database Schema
Table	Description
Author	Author details with contact info.
Category	Book categories (Romance, Drama, Horror, etc.).
Publisher	Publishers with contact and location.
Customer	Customers purchasing books.
EmployeeType	Employee roles and salaries.
Employee	Employees with hire date and type.
Book	Books linked to category and publisher.
Orders	Orders placed by customers handled by employees.
Author_Book	Junction table for authors and books.
Order_Book	Junction table for orders and books (with quantity and total).
