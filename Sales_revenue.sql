Create database Sales_revenue

Use Sales_revenue

select * from People
select * from Orders
select * from Returns

-- Sales KPIs
select sum(Sales) as total_sales,sum(Profit) as total_profit,sum(Quantity) as total_quantity,
(sum(profit) / nullif(sum(sales), 0)) * 100 as profit_margin_percentage
from Orders;

-- returned orders
select count(case when Returned = 'yes' then 1 end) as Returned_orders from Returns

-- category
select category,sum(sales) as total_sales,sum(profit) as total_profit from orders
group by category order by total_sales desc;

-- monthly sales
select format(order_date, 'yyyy-MM') as sales_month,sum(sales) as monthly_sales from orders
group by FORMAT(order_date, 'yyyy-MM') order by sales_month;
