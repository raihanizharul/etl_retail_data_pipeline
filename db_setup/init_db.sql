create database grocery_sales;

create schema if not exists sales;

create table if not exists sales.grocery_sales(
	Store_ID VARCHAR(50),
	Date DATE,
	Dept CHAR(10),
	Weekly_Sales DOUBLE PRECISION
)