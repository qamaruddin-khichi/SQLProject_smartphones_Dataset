# Smartphones Dataset SQL Project

## Table of Contents
1. [About the Project](#about-the-project)
2. [Column Description](#column-description)
3. [Purpose of Project](#purpose-of-project)
4. [Questions](#questions)
   - [Beginner Level](#beginner-level)
   - [Intermediate Level](#intermediate-level)
   - [Advanced Level](#advanced-level)
5. [SQL Code](#sql-code)
6. [Conclusion](#conclusion)

## About the Project
This project involves a dataset of smartphones, where SQL queries are used to extract meaningful insights. The dataset contains various attributes such as brand, price, specifications, and features. The goal is to practice SQL skills at different levels (beginner, intermediate, and advanced) by writing queries to answer a set of questions.

## Column Description
The dataset consists of the following columns:

- `brand_name`: The brand of the smartphone (e.g., Samsung, Apple).
- `model`: The model name of the smartphone.
- `price`: The price of the smartphone.
- `rating`: The customer rating of the smartphone.
- `has_5g`: Whether the smartphone supports 5G (Yes/No).
- `has_nfc`: Whether the smartphone supports NFC (Yes/No).
- `has_ir_blaster`: Whether the smartphone has an IR Blaster (True/False).
- `processor_brand`: The brand of the smartphone's processor (e.g: snapdragon , exynos).
- `num_cores`: The number of processor cores.
- `processor_speed`: The processor's clock speed in GHz.
- `battery_capacity`: The battery capacity in mAh.
- `fast_charging_available`: Whether fast charging is available (Yes/No).
- `fast_charging`: The speed of fast charging (e.g., 18W, 30W).
- `ram_capacity`: The RAM size in GB.
- `internal_memory`: The internal storage capacity in GB.
- `screen_size`: The screen size in inches.
- `refresh_rate`: The screen's refresh rate in Hz.
- `num_rear_cameras`: The number of rear cameras.
- `num_front_cameras`: The number of front cameras.
- `os`: The operating system (e.g., Android, iOS).
- `primary_camera_rear`: The resolution of the primary rear camera.
- `primary_camera_front`: The resolution of the primary front camera.
- `extended_memory_available`: Whether extended memory is supported (Yes/No).
- `extended_upto`: The maximum size of extended memory supported in GB.
- `resolution_width`: The screen resolution width in pixels.
- `resolution_height`: The screen resolution height in pixels.

## Purpose of Project
The purpose of this project is to:
1. Explore and analyze the smartphone dataset using SQL queries.
2. Gain hands-on experience in writing SQL queries at various difficulty levels.
3. Learn how to retrieve, filter, and aggregate data to answer specific questions related to smartphones.
4. Develop SQL skills that are useful for data analysis and reporting in real-world scenarios.

## Questions

### Beginner Level
1. **Query all columns**: Write a query to retrieve all columns from the smartphone dataset.
2. **Filter by price**: Write a query to find all smartphones with a price less than $5000.
3. **Count smartphones**: Write a query to count the total number of smartphones in the dataset.
4. **Filter by brand**: Write a query to find all smartphones from the brand "Samsung".
5. **Sort by rating**: Write a query to sort smartphones by their rating in descending order.
6. **Select specific columns**: Write a query to retrieve the brand name and model of all smartphones.
7. **Filter by 5G support**: Write a query to find all smartphones that support 5G.
8. **Count unique brands**: Write a query to count the number of unique smartphone brands present in the dataset.
9. **Filter by RAM**: Write a query to find all smartphones with a RAM capacity of 8 GB or more.
10. **Find smartphones with fast charging**: Write a query to find all smartphones that have fast charging available.

### Intermediate Level
1. **Smartphones with the highest price**: Write a query to find the smartphone with the highest price.
2. **Average rating by brand**: Write a query to calculate the average rating for smartphones by brand.
3. **Filter by battery capacity**: Write a query to find all smartphones with a battery capacity greater than 4000 mAh.
4. **Sort by screen size**: Write a query to retrieve all smartphones, sorted by screen size in ascending order.
5. **Count smartphones by operating system**: Write a query to count how many smartphones run on Android and iOS.
6. **Find top 5 rated smartphones**: Write a query to retrieve the top 5 smartphones with the highest ratings.
7. **Smartphones with multiple rear cameras**: Write a query to find all smartphones with more than two rear cameras.
8. **Filter by processor speed**: Write a query to find smartphones with a processor speed of 2.5 GHz or higher.
9. **Count smartphones with NFC support**: Write a query to count how many smartphones have NFC capability.
10. **Find smartphones with a specific resolution**: Write a query to find smartphones with a resolution width greater than 1080 pixels.

### Advanced Level
1. **Smartphones with the highest rating per brand**: Write a query to find the highest rating for each brand.
2. **Average price by operating system**: Write a query to calculate the average price of smartphones for each operating system.
3. **Smartphones with a high price-to-rating ratio**: Write a query to find smartphones where the price is greater than 20 times the rating.
4. **Count of smartphones by processor brand**: Write a query to count how many smartphones use each processor brand.
5. **Find smartphones with both 5G and NFC**: Write a query to find smartphones that have both 5G support and NFC capability.
6. **Group by RAM capacity and count**: Write a query to count how many smartphones have each RAM capacity.
7. **Top brands by number of models**: Write a query to find the top 3 smartphone brands with the most models.
8. **Smartphones with extended memory**: Write a query to find smartphones that have extended memory available.
9. **Find smartphones with a resolution greater than a specific value**: Write a query to find smartphones with a resolution height greater than 2400 pixels.
10. **Filter by price and battery capacity more than average**: Write a query to find smartphones which have price and battery capacity higher than their average.

## SQL Code
All the SQL queries for the beginner, intermediate, and advanced-level questions can be found in the `smartphones_SQL_queries.sql` file within this repository. Each query is written with clear comments and explanations to help understand the logic behind it.

```
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
```

## Conclusion
This project has provided an excellent opportunity to practice SQL on a real-world dataset. By answering questions of varying difficulty levels, we have explored different aspects of smartphones, from basic attributes like price and rating to more advanced queries involving aggregations and filtering. Through this project, I have strengthened my SQL skills, which will be useful in future data analysis projects.
