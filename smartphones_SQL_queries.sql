-- Beginner Level Questions

-- 1.	Query all columns: Write a query to retrieve all columns from the smartphone dataset.

SELECT *
FROM smartphones;

-- 2.	Filter by price: Write a query to find all smartphones with a price less than $5000.

SELECT *
FROM smartphones
WHERE price < 5000;

-- 3.	Count smartphones: Write a query to count the total number of smartphones in the dataset.

SELECT COUNT(*) AS total_phones
FROM smartphones;

-- 4.	Filter by brand: Write a query to find all smartphones from the brand "Samsung".

SELECT *
FROM smartphones
WHERE brand_name LIKE "%Samsung%";

-- 5.	Sort by rating: Write a query to sort smartphones by their rating in descending order.

SELECT *
FROM smartphones
ORDER BY rating DESC;

-- 6.	Select specific columns: Write a query to retrieve the brand name and model of all smartphones.

SELECT brand_name, model
FROM smartphones;

-- 7.	Filter by 5G support: Write a query to find all smartphones that support 5G.

SELECT *
FROM smartphones
WHERE has_5g = "True";

-- 8.	Count unique brands: Write a query to count the number of unique smartphone brands present in the dataset.

SELECT COUNT(DISTINCT brand_name) AS total_brands
FROM smartphones;

-- 9.	Filter by RAM: Write a query to find all smartphones with a RAM capacity of 8 GB or more.

SELECT *
FROM smartphones
WHERE ram_capacity >= 8;

-- 10.	Find smartphones with fast charging: Write a query to find all smartphones that have fast charging available.

SELECT *
FROM smartphones
WHERE fast_charging_available = 1;

-- Intermediate Level Questions

-- 1.	Smartphones with the highest price: Write a query to find the smartphone with the highest price.

SELECT *
FROM smartphones
ORDER BY price DESC
LIMIT 1;

-- 2.	Average rating by brand: Write a query to calculate the average rating for smartphones by brand.

SELECT brand_name, AVG(rating) AS avg_rating
FROM smartphones
GROUP BY brand_name;

-- 3.	Filter by battery capacity: Write a query to find all smartphones with a battery capacity greater than 4000 mAh.

SELECT *
FROM smartphones
WHERE battery_capacity > 4000;

-- 4.	Sort by screen size: Write a query to retrieve all smartphones, sorted by screen size in ascending order.

SELECT *
FROM smartphones
ORDER BY screen_size;

-- 5.	Count smartphones by operating system: Write a query to count how many smartphones run on Android and iOS.

SELECT os, COUNT(*) AS total
FROM smartphones
GROUP BY os;

-- 

-- 6.	Find top 5 rated smartphones: Write a query to retrieve the top 5 smartphones with the highest ratings.

SELECT *
FROM smartphones
ORDER BY rating DESC
LIMIT 5;

-- 7.	Smartphones with multiple rear cameras: Write a query to find all smartphones with more than two rear cameras.

SELECT *
FROM smartphones
WHERE num_rear_cameras > 2;

-- 8.	Filter by processor speed: Write a query to find smartphones with a processor speed of 2.5 GHz or higher.

SELECT * 
FROM smartphones
WHERE processor_speed >= 2.5;

-- 9.	Count smartphones with NFC support: Write a query to count how many smartphones have NFC capability.

SELECT COUNT(*) AS has_nfc
FROM smartphones
WHERE has_nfc LIKE "%True%";

-- 10.	Find smartphones with a specific resolution: Write a query to find smartphones with a resolution width greater than 1080 pixels.

SELECT *
FROM smartphones
WHERE resolution_width > 1080;


-- Advanced Level Questions

-- 1.	Smartphones with the highest rating per brand: Write a query to find the highest rating for each brand.

SELECT brand_name, MAX(rating) AS highest_rating
FROM smartphones
GROUP BY brand_name
ORDER BY highest_rating DESC;

-- 2.	Average price by operating system: Write a query to calculate the average price of smartphones for each operating system.

SELECT os, AVG(price) AS avg_price
FROM smartphones
GROUP BY os
ORDER BY avg_price DESC;

-- 3.	Smartphones with a high price-to-rating ratio: Write a query to find smartphones where the price is greater than 20 times the rating.

SELECT *
FROM smartphones
WHERE price > (rating * 20); 

-- 4.	Count of smartphones by processor brand: Write a query to count how many smartphones use each processor brand.

SELECT 
    processor_brand,
    COUNT(*) AS total_smartphones
FROM
    smartphones
GROUP BY processor_brand
ORDER BY total_smartphones DESC;

-- 5.	Find smartphones with both 5G and NFC: Write a query to find smartphones that have both 5G support and NFC capability.

SELECT *
FROM smartphones
WHERE
    has_5g LIKE '%True%'
	AND has_nfc LIKE '%True%';

-- 6.	Group by RAM capacity and count: Write a query to count how many smartphones have each RAM capacity.

SELECT 
    ram_capacity,
    COUNT(*) AS total_smartphones
FROM
    smartphones
GROUP BY ram_capacity
ORDER BY total_smartphones DESC;

-- 7.	Top brands by number of models: Write a query to find the top 3 smartphone brands with the most models.

SELECT 
    brand_name,
    COUNT(model) AS total_models
FROM
    smartphones
GROUP BY brand_name
ORDER BY total_models DESC
LIMIT 3;

-- 8.	Smartphones with extended memory: Write a query to find smartphones that have extended memory available.

SELECT *
FROM smartphones
WHERE extended_memory_available = 1;

-- 9.	Find smartphones with a resolution greater than a specific value: Write a query to find smartphones with a resolution height greater than 2400 pixels.

SELECT *
FROM smartphones
WHERE resolution_height > 2400;

-- 10.	Filter by price and battery capacity more than average: Write a query to find smartphones which have price and battery capacity higher than their average.

SELECT *
FROM smartphones
	WHERE price > (SELECT AVG(price)
					FROM smartphones)
    AND rating > (SELECT AVG(rating)
					FROM smartphones);