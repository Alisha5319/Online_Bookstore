create database Online_Book_store;
Use Online_Book_store;
/* create table*/
DROP Table if exists Books;
Create table Books (
Book_ID serial primary key,
Title varchar(100),
Author varchar(100),
Genre varchar(50),
Published_Year Year,
Price numeric (10, 2),
Stock integer 
);
drop table if exists Customers;
Create table Customers (
Customer_ID serial primary key ,
Customer_Name varchar(100),
Email varchar(100),
Contact_NO varchar(15),
City varchar(50),
Country varchar(150)
);
drop table if exists Orders;
Create table Orders (
Order_ID Serial primary key,
Customer_ID INT references Customers(Customer_ID),
Book_ID INT references Books(Book_ID),
Order_Date date ,
Quantity INT,
Total_Amount numeric(10,2)
);
select * from Books;
Select * from Customers;
Select * from Orders;
#Retrive all the books in the "fiction" genre--
select * from books where genre = "Fiction";
#Find books published after the year 1950 : yaha equal to 1950 nhi 1950 k baad -----
select * from books where Published_Year > 1950;
#List all customers from the canada -----
Select* from Customers where Country = "Canada";
#Show orders placed in nov 2023 ---
Select * from Orders where Order_Date between '2023-11-01' AND '2023-11-30';
#Retreive the total stock of books available ---
Select Sum(Stock) AS Total_Book_Available from Books;
SELECT COUNT(*) AS TotalBooks, SUM(Stock) AS Total_Book_Available FROM Books;
#Find the details of the most expensive book ----
Select * from Books order by Price DESC LIMIT 1;
#Show all customers who ordered more than 1 qunatity of a book---
select * from Orders where Quantity > 1;
#Retrieve all orders where the total amount exceeds 20---
select * from orders where Total_Amount > 20;
#List all genres available in the book table ---
Select DISTINCT Genre from Books ;
#Find the book with the lowest stock ---
Select * from books order by Stock LIMIT 1;
# calculate the total revenue generated from all the orders----
Select sum(Total_Amount) as Revenue from Orders;
