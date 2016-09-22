--1.
select *
from Customers

--2.
select distinct country
from Customers

--3
select * from Customers
where CustomerID like 'Bl%'

--4
select top 100 *
from orders

--5
select *
from customers 
where postalcode 
 in('1010', '3012', '12209', '05023')

 --6
 select *
 from orders
 where shipregion is NULL

 --7
 select *
 from orders
order by shipcountry, shipcity

--8
USE [Northwind]
GO

INSERT INTO [dbo].[Customers]
           ([CustomerID]
           ,[CompanyName]
           ,[ContactName]
           ,[ContactTitle]
           ,[Address]
           ,[City]
           ,[Region]
           ,[PostalCode]
           ,[Country]
           ,[Phone]
           ,[Fax])
     VALUES
           ('ALk'
           ,'ny hohos'
           ,'Mike B'
           ,'Captain'
           ,'408'
           ,'Grosse Pointe'
           ,'America'
           ,'48236'
           ,'America'
		   ,'3135747157'
		   ,'ac3135747156')
           
           
GO



--9
UPDATE [dbo].[Orders]
   SET 
      [ShipRegion] = 'erozone'
      
      where [ShipCountry] = 'France'

GO

--10
USE [Northwind]
GO

DELETE FROM [dbo].[Order Details]
      WHERE Quantity = 1
GO

--11

select AVG (quantity), MAX(quantity), Min(quantity)
from [Order Details] 

--12
select AVG (quantity), MAX(quantity), Min(quantity)
from [Order Details]
group by OrderID
 
 
--13
select *
from Orders
where OrderID = '10290' 

--14
Select * 
from orders
inner join customers on orders.CustomerID = customers.CustomerID

Select * 
from orders
left join customers on orders.CustomerID = customers.CustomerID

Select * 
from orders
right join customers on orders.CustomerID = customers.CustomerID

--15
Select FirstName
from Employees
where ReportsTo is Null

--16
Select FirstName
from Employees
where ReportsTo = 2