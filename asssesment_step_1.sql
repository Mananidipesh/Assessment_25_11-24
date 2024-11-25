--step-1 

create table complete(
SaleID int,
ProductID int,
ProductName varchar,
Category varchar,
QuantitySold int,
Price float,
SaleDate date,
SalespersonID int,
SalespersonName varchar,
Region varchar
)
--after creating i used directly importing the data 

select ProductID, ProductName, Category, Price into products
from complete

select SaleID, ProductID, QuantitySold, SaleDate, SalespersonID into sales 
from complete

select SalespersonID, SalespersonName, Region into salespersons
from complete

select * from products
select * from sales
select * from salespersons

--after this i downloaded the data of each table as a csv






