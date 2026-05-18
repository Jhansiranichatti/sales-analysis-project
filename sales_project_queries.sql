/*Top 5 products by sales*/
SELECT Product_name, SUM(slaes) as Total_sales
FROM ORDERS
GROUP BY Product_name
ORDER BY Total_sales DESC
LIMIT 5;
/*Total sales by region*/
SELECT Region, SUM(Sales) as Total_sales
FROM ORDERS
GROUP BY Region;
/*Monthly sales trend*/
SELECT Date_Trinc('month',Order_date) as month
FROM ORDERS
GROUP BY month
ORDER BY month;
/*Top 5 customers by spending*/
SELECT Customer_name, SUM(Sales) as Total_spending
FROM ORDERS
GROUP BY Customer_name
ORDER BY Total_spending DESC
LIMIT 5;
/*Most profitable category*/
SELECT Category, SUM(Profit) as Total_Profit
FROM ORDERS
GROUP BY Category
ORDER BY Total_Profit;