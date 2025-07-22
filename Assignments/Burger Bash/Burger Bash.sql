use burger_bash;

-- 1. How many burgers were ordered?

SELECT COUNT(*) AS total_burgers_ordered
FROM customer_orders;

-- 2. How many unique customer orders were made?

SELECT COUNT(DISTINCT order_id) AS unique_orders
FROM customer_orders;

-- 3. How many successful orders were delivered by each runner?

SELECT runner_id, COUNT(*) AS successful_orders
FROM runner_orders
WHERE cancellation IS NULL
GROUP BY runner_id;

-- 4. How many of each type of burger was delivered?

SELECT bo.burger_name, COUNT(*) AS total_delivered
FROM customer_orders co
JOIN burger_names bo ON co.burger_id = bo.burger_id
JOIN runner_orders ro ON co.order_id = ro.order_id
WHERE ro.cancellation IS NULL
GROUP BY bo.burger_name;

-- 5. How many Vegetarian and Meatlovers were ordered by each customer?

SELECT co.customer_id, bn.burger_name, COUNT(*) AS burger_count
FROM customer_orders co
JOIN burger_names bn ON co.burger_id = bn.burger_id
GROUP BY co.customer_id, bn.burger_name;

-- 6. What was the maximum number of burgers delivered in a single order?

SELECT TOP 1 co.order_id, COUNT(*) AS burger_count
FROM customer_orders co
JOIN runner_orders ro ON co.order_id = ro.order_id
WHERE ro.cancellation IS NULL
GROUP BY co.order_id
ORDER BY burger_count DESC;

-- 7. For each customer, how many delivered burgers had at least 1 change and how many had no changes?

SELECT customer_id,
       SUM(CASE WHEN exclusions IS NOT NULL OR extras IS NOT NULL THEN 1 ELSE 0 END) AS changed_burgers,
       SUM(CASE WHEN exclusions IS NULL AND extras IS NULL THEN 1 ELSE 0 END) AS unchanged_burgers
FROM customer_orders co
JOIN runner_orders ro ON co.order_id = ro.order_id
WHERE ro.cancellation IS NULL
GROUP BY customer_id;

-- 8. What was the total volume of burgers ordered for each hour of the day?

SELECT DATEPART(HOUR, order_time) AS order_hour, COUNT(*) AS total_burgers
FROM customer_orders
GROUP BY DATEPART(HOUR, order_time)
ORDER BY order_hour;

-- 9. How many runners signed up for each 1 week period?

SELECT 
  DATEADD(WEEK, DATEDIFF(WEEK, 0, registration_date), 0) AS week_start,
  COUNT(*) AS runners_signed_up
FROM burger_runner
GROUP BY DATEADD(WEEK, DATEDIFF(WEEK, 0, registration_date), 0)
ORDER BY week_start;

-- 10. What was the average distance travelled for each customer?

SELECT co.customer_id,
       ROUND(AVG(CAST(REPLACE(ro.distance, 'km', '') AS FLOAT)), 2) AS avg_distance_km
FROM customer_orders co
JOIN runner_orders ro ON co.order_id = ro.order_id
WHERE ro.cancellation IS NULL
GROUP BY co.customer_id;