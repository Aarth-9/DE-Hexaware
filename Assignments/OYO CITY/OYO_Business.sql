CREATE DATABASE oyo_city;

USE oyo_city;

-- 1. Find the - average room rates of different cities

SELECT 
    c.city,
    ROUND(AVG(CAST(s.amount AS FLOAT) / NULLIF(s.no_of_rooms, 0)), 2) AS avg_room_rate
FROM oyo_sales s
JOIN oyo_city c ON s.hotel_id = c.hotel_id
GROUP BY c.city;

-- 2. Find the - No of bookings of different cities in Jan Feb Mar Months.

SELECT 
    c.city,
    DATENAME(MONTH, s.date_of_booking) AS booking_month,
    COUNT(*) AS no_of_bookings
FROM oyo_sales s
JOIN oyo_city c ON s.hotel_id = c.hotel_id
WHERE MONTH(s.date_of_booking) IN (1, 2, 3)
GROUP BY c.city, DATENAME(MONTH, s.date_of_booking)
ORDER BY c.city, booking_month;

-- 3. Write a sql query for the -- Frequency of early bookings prior to check-in the hotel

SELECT 
    DATEDIFF(DAY, s.date_of_booking, s.check_in) AS days_prior,
    COUNT(*) AS frequency
FROM oyo_sales s
WHERE DATEDIFF(DAY, s.date_of_booking, s.check_in) >= 0
GROUP BY DATEDIFF(DAY, s.date_of_booking, s.check_in)
ORDER BY days_prior;


-- 4. write the  sql query  Frequency of bookings of no of rooms in Hotel

SELECT 
    no_of_rooms,
    COUNT(*) AS frequency
FROM oyo_sales
GROUP BY no_of_rooms
ORDER BY no_of_rooms;


-- 5. write the  sql query-- NEW CUSTOMERS ON JAN MONTH 

SELECT 
    customer_id,
    MIN(date_of_booking) AS first_booking_date
FROM oyo_sales
GROUP BY customer_id
HAVING MONTH(MIN(date_of_booking)) = 1;
