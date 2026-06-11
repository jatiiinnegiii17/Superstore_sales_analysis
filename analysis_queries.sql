-- Superstore_sales;
-- use Superstore_sales;

-- select * from record;

-- =========================
-- Level 1: Exploring the Data
-- =========================

-- Q1. How many unique customers are there?
-- select count(distinct `Customer id`) as unique_customers from record;

-- Q2. How many cities does the company serve?
-- select count(distinct `City`) from record;

-- Q3. What are the distinct product categories?
-- select distinct category from record;

-- Q4. What are the distinct shipping modes?
-- select distinct `ship mode` from record;


-- =========================
-- Level 2: Sales Analysis
-- =========================

-- Q5. What is the total sales revenue?
-- select sum(sales) from record;

-- Q6. Which category generates the highest sales?
-- select `category`, sum(sales) as total_sales
-- from record
-- group by `category`
-- order by total_sales desc;

-- Q7. Which sub-category generates the highest sales?
-- select `Sub-Category`, sum(sales) as total_sales
-- from record
-- group by `Sub-Category`
-- order by total_sales desc;

-- Q8. Which region generates the highest sales?
-- select `Region`, sum(sales) as highest_sales
-- from record
-- group by `Region`
-- order by highest_sales desc
-- limit 1;


-- =========================
-- Level 3: Customer Analysis
-- =========================

-- Q9. Who are the top 10 customers by total sales?
-- select `customer name`, sum(`sales`) as total_sales
-- from record
-- group by `Customer Name`
-- order by total_sales desc
-- limit 10;

-- Q10. Which customer placed the most orders?
-- select `Customer Name`, count(`order id`) as `Order count`
-- from record
-- group by `Customer Name`
-- order by `Order count` desc
-- limit 1;

-- Q11. How many customers belong to each segment?
-- select `segment`, count(distinct `customer name`) as customers
-- from record
-- group by `segment`
-- order by `segment`;

-- Q12. What is the average sales per segment?
-- select `segment`, avg(sales) as average_sales
-- from record
-- group by `segment`
-- order by `segment`;


-- =========================
-- Level 4: Geographic Analysis
-- =========================

-- Q13. What are the top 10 cities by sales?
-- select `city`, sum(`sales`) as total_sales
-- from record
-- group by `city`
-- order by total_sales desc
-- limit 10;

-- Q14. What are the top 10 states by sales?
-- select `state`, sum(`sales`) as total_sales
-- from record
-- group by `state`
-- order by total_sales desc
-- limit 10;

-- Q15. Which city has the highest number of orders?
-- select `city`, count(`order id`) as highest_order
-- from record
-- group by `city`
-- order by highest_order desc
-- limit 1;

-- Q16. Which region has the highest number of unique customers?
-- select `region`, count(distinct `customer id`) as highest_customer
-- from record
-- group by `region`
-- order by highest_customer desc
-- limit 1;

-- Q17. Which state has the highest average sales?
-- select `state`, avg(`sales`) as highest_avg_sale
-- from record
-- group by `state`
-- order by highest_avg_sale desc
-- limit 1;


-- =========================
-- Level 5: Product Analysis
-- =========================

-- Q18. What are the top 10 products by sales?
-- select `product name`, round(sum(sales),2) as total_sales
-- from record
-- group by `product name`
-- order by total_sales desc
-- limit 10;

-- Q19. Which category has the most orders?
-- select `category`, count(`order id`) as orders
-- from record
-- group by `category`
-- order by orders desc
-- limit 1;

-- Q20. Which sub-category has the most orders?
-- select `sub-category`, count(`order id`) as orders
-- from record
-- group by `sub-category`
-- order by orders desc
-- limit 1;

-- Q21. What are the top 5 sub-categories by number of orders?
-- select `sub-category`, count(`order id`) as orders
-- from record
-- group by `sub-category`
-- order by orders desc
-- limit 5;

-- Q22. Which products were ordered more than 10 times?
-- select `product name`, count(`order id`) as orders
-- from record
-- group by `product name`
-- having orders > 10
-- order by orders desc;

-- Q23. What percentage of total sales does each category contribute?
-- select category,
--        sum(sales) AS total_sales,
--        round(sum(sales) /
--             (select sum(sales) from record) * 100, 2) as contribution
-- from record
-- group by category
-- order by contribution desc;
