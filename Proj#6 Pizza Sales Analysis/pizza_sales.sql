-- CREATE TABLE pizza_sales (
--     pizza_id INTEGER,
--     order_id INTEGER,
--     pizza_name_id VARCHAR(50),
--     quantity INTEGER,
--     order_date DATE,
--     order_time TIME,
--     unit_price NUMERIC(10, 2),
--     total_price NUMERIC(10, 2),
--     pizza_size VARCHAR(5),
--     pizza_category VARCHAR(50),
--     pizza_ingredients TEXT,
--     pizza_name VARCHAR(100)
-- );

-- Total Revenue
select sum(total_price) as total_revenue from pizza_sales

-- Avg Order Value
select avg(order_price) as Avg_order_value from (select order_id, sum(total_price) as order_price from pizza_sales
group by order_id)

-- Total Pizzas Sold
select sum(quantity) as total_pizza_sold from pizza_sales

-- Total Orders
select count(distinct(order_id)) as total_orders from pizza_sales;

-- Avg Pizzas per Order
select avg(num_of_pizza) as Avg_Pizza from (select order_id, sum(quantity) as num_of_pizza from pizza_sales
group by order_id)

-- Daily Trend for Total Orders
select EXTRACT(DOW FROM order_date) as weekday,count(distinct(order_id)) from pizza_sales
group by weekday

-- Hourly Trend for Total Orders
select EXTRACT(hour FROM order_time) as hours,count(distinct(order_id)) from pizza_sales
group by hours

-- Sales by Category and Size

select pizza_category, count(pizza_category) from pizza_sales
group by pizza_category
order by count(pizza_category) DESC;

select pizza_size, count(pizza_size) from pizza_sales
group by pizza_size
order by count(pizza_size) DESC
-- % of Sales by Pizza Category
select pizza_category,round(sum(total_price)/ (select sum(total_price) from pizza_sales),4) as category_percentage from pizza_sales
group by pizza_category

-- % of Sales by Pizza Size
select pizza_size,round(sum(total_price)/ (select sum(total_price) from pizza_sales),4) as size_percentage from pizza_sales
group by pizza_size


-- Total Pizzas Sold by Pizza Category
select pizza_category, sum(quantity) as total_pizza from pizza_sales
group by pizza_category


-- Best & Worst Sellers
select pizza_name, sum(total_price) as revenue from pizza_sales
group by pizza_name
order by revenue
limit 1

select pizza_name, sum(total_price) as revenue from pizza_sales
group by pizza_name
order by revenue desc
limit 1

-- Top 5 Best Sellers by Total Pizzas Sold
select pizza_name, sum(total_price) as revenue from pizza_sales
group by pizza_name
order by revenue desc
limit 5

-- Bottom 5 Worst Sellers by Total Pizzas Sold
select pizza_name, sum(total_price) as revenue from pizza_sales
group by pizza_name
order by revenue
limit 5

-- Find the best seller name for each category
WITH RankedPizza AS (
    SELECT 
        pizza_category, 
        pizza_name, 
        COUNT(pizza_category) AS category_count,
        ROW_NUMBER() OVER (PARTITION BY pizza_category ORDER BY COUNT(pizza_category) DESC) AS rank
    FROM pizza_sales
    GROUP BY pizza_name, pizza_category
)
SELECT pizza_category, pizza_name, category_count
FROM RankedPizza
WHERE rank = 1;
