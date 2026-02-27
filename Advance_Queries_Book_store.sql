Use Online_Book_store;
Select * from books;
Select * from orders;
Select * from Customers;

select b.Genre, sum(o.Quantity) AS Total_Books_Sold
From Orders o join Books b ON o.book_id = b.book_id 
group by b.Genre;

Select avg(price) AS Average_Price from books where Genre = "Fantasy";

Select o.Customer_ID, c.Customer_Name, COUNT(o.Order_id) AS Order_Count 
from Orders o
Join customers c on o.Customer_ID = c.Customer_ID
group by c.Customer_Name , o.Customer_ID
having Count(o.Order_ID)=2 ;