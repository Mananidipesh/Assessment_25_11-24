--step-3 data analysis

--1)Total sales per product
with cte as (
select * from sales as s
join products as p
on s.productid = p.productid
join salespersons as s2
on s.salespersonid = s2.salespersonid
)
select sum((quantitysold * price)) as total_sales , productname
from cte 
group by productname

--2)Total sales by region
with cte as (
select * from sales as s
join products as p
on s.productid = p.productid
join salespersons as s2
on s.salespersonid = s2.salespersonid
)
select sum((quantitysold * price)) as total_sales , region
from cte 
group by region


--3)Average sales per salesperson
with cte as (
select * from sales as s
join products as p
on s.productid = p.productid
join salespersons as s2
on s.salespersonid = s2.salespersonid
)
select avg((quantitysold * price)) as total_sales , salespersonname
from cte 
group by salespersonname




