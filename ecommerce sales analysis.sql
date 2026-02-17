select * from Sales_details
--Total Revenue
select sum(Quantity*price) as[Total_revenue] from Sales_details

--Revenue by Category
select category,sum(Quantity*price) as[Total_revenue] from Sales_details
group by Category
order by [Total_revenue] desc

--Monthly Revenue
select format(OrderDate ,'yyyy-MM') as month ,
SUM(Quantity * Price) AS [Total_revenue] from Sales_details
group by format(OrderDate ,'yyyy-MM')
order by [Total_revenue]desc

--Revenue by Region
select Region,SUM(Quantity * Price) AS [Total_revenue] from Sales_details
group by Region
order by [Total_revenue]

--Repeat Customers
select CustomerID,count(OrderID) as [total orders] from Sales_details
group by CustomerID
having count(orderId) >1

--Top Spending Customer
SELECT CustomerID,SUM(Quantity * Price) AS [Total_Spent]
FROM Sales_details
GROUP BY CustomerID
ORDER BY [Total_Spent] DESC
