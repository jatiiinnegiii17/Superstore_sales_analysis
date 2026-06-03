--  Superstore_sales;
-- use Superstore_sales;

-- select * from record;

--  Level 1: Exploring the Data ( Day-1)
-- select count(distinct `Customer id`) as unique_customers from record;
-- select count(distinct `City`) from record;
-- select distinct category from record;
-- select distinct `ship mode` from record;

-- Level 2: Sales Analysis (Day-2)
-- select sum(sales) from record;
-- select `category`, sum(sales) as total_sales from record group by `category` order by total_sales desc;
-- select `Sub-Category`, sum(sales) as total_sales from record group by `Sub-Category` order by total_sales desc;
-- select `Region`, sum(sales) as highest_sales from record group by `Region` order by highest_sales desc limit 1;

-- Level 3: Customer Analysis (Day-3)
-- select `customer name` , sum(`sales`) as total_sales from record group by `Customer Name` order by `total_sales` desc limit 10;
-- select `Customer Name`, count(`order id`) as `Order count` from record group by `Customer Name` order by `order count` desc limit 1;
-- select `segment` , count(distinct `customer name`) as customers from record group by`segment` order by `segment`;

