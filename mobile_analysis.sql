USE ms;
SELECT * FROM mobile

-- QUESTION FOR ANALYSIS --
-- Check mobile features and the price list? --

select phone_name, Price FROM mobile;

-- Find out the price for the most expensive phones? --

SELECT * FROM mobile
ORDER BY Price desc
LIMIT 5;

-- Find out the price of 5 cheapest phones? --

SELECT * FROM mobile
ORDER BY Price asc
LIMIT 5;

-- What is the list of top 5 Samsung phones with price and features? --

SELECT * FROM mobile WHERE Brands = 'Samsung'
ORDER BY Price desc
LIMIT 5;

-- What is the top 5 high price android phones? --

SELECT * FROM mobile WHERE Operating_System_Type = 'Android'
ORDER BY Price desc
LIMIT 5;

-- What is the 5 cheapest android phones? --

SELECT * FROM mobile WHERE Operating_System_Type = 'Android'
ORDER BY Price asc
LIMIT 5;

-- What are the top 5 high priced IOS Phones? --
SELECT * FROM mobile WHERE Operating_System_Type = 'IOS'
ORDER BY Price desc
LIMIT 5;

-- What are the 5 lowest price IOS phones? --
SELECT * FROM mobile WHERE Operating_System_Type = 'iOS'
ORDER BY PRICE asc
LIMIT 5;

-- Find the all the phones which support 5g and also the top 5 high priced phones with 5g support? -- 
SELECT * FROM mobile WHERE 5G_Availability = 'Yes'
ORDER BY Price desc;
LIMIT 5;

-- Find the total price of all mobiles with brand name --

SELECT SUM(Price), Brands FROM mobile GROUP BY Brands;

