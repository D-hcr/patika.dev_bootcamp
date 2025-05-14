-- 1. Retrieve and sort the 'title' and 'description' columns from the 'film' table.
SELECT title, description 
FROM film
ORDER BY title, description;

-- 2. Retrieve all columns from the 'film' table where the film length is greater than 60 and less than 75.
SELECT * 
FROM film
WHERE length > 60 AND length < 75;

-- 3. Retrieve all columns from the 'film' table where the rental_rate is 0.99 and the replacement_cost is either 12.99 or 28.99.
SELECT * 
FROM film
WHERE rental_rate = 0.99 AND (replacement_cost = 12.99 OR replacement_cost = 28.99);

-- 4. Find the 'last_name' of the customer whose 'first_name' is 'Mary'.
SELECT last_name 
FROM customer
WHERE first_name = 'Mary';

-- 5. Retrieve all records from the 'film' table where the length is not greater than 50 and the rental_rate is not 2.99 or 4.99.
SELECT * 
FROM film
WHERE length <= 50 AND rental_rate NOT IN (2.99, 4.99);

-- 6. Retrieve all columns from the 'film' table where the 'replacement_cost' is between 12.99 and 16.99 (inclusive).
SELECT * 
FROM film
WHERE replacement_cost BETWEEN 12.99 AND 16.99;

-- 7. Retrieve the 'first_name' and 'last_name' columns from the 'actor' table 
-- where 'first_name' is 'Penelope', 'Nick', or 'Ed'.
SELECT first_name, last_name
FROM actor
WHERE first_name IN ('Penelope', 'Nick', 'Ed');

-- 8. Retrieve all columns from the 'film' table where:
-- 'rental_rate' is 0.99, 2.99, or 4.99
-- AND 'replacement_cost' is 12.99, 15.99, or 28.99.
SELECT *
FROM film
WHERE rental_rate IN (0.99, 2.99, 4.99)
  AND replacement_cost IN (12.99, 15.99, 28.99);

-- 9. Retrieve country names from the 'country' table that start with 'A' and end with 'a'.
SELECT country
FROM country
WHERE country LIKE 'A%a';

-- 10. Retrieve country names from the 'country' table that have at least 6 characters and end with 'n'.
SELECT country
FROM country
WHERE LENGTH(country) >= 6 AND country LIKE '%n';

-- 11. Retrieve film titles from the 'film' table that contain at least 4 'T' (case-insensitive).
SELECT title
FROM film
WHERE LOWER(title) LIKE '%t%t%t%t%';

-- 12. Retrieve all columns from the 'film' table where the title starts with 'C', length is greater than 90, and rental_rate is 2.99.
SELECT *
FROM film 
WHERE title LIKE 'C%' AND length > 90 AND rental_rate = 2.99;

-- 13. List all distinct values from the 'replacement_cost' column in the 'film' table, ordered ascending.
SELECT DISTINCT replacement_cost
FROM film
ORDER BY replacement_cost;

-- 14. Count how many distinct values exist in the 'replacement_cost' column of the 'film' table.
SELECT COUNT(DISTINCT replacement_cost)
FROM film;

-- 15. Count how many films have a title starting with 'T' and a rating of 'G'.
SELECT COUNT(title)
FROM film
WHERE title LIKE 'T%' AND rating = 'G';

-- 16. Count how many country names in the 'country' table are exactly 5 characters long.
SELECT COUNT(country)
FROM country
WHERE LENGTH(country) = 5;

-- 17. Count how many city names in the 'city' table end with the letter 'R' or 'r'.
SELECT COUNT(city)
FROM city
WHERE city LIKE '%R' OR city LIKE '%r';

-- 18. Retrieve the top 5 longest films (by length) from the 'film' table where the title ends with the character 'n'.
SELECT * 
FROM film
WHERE title LIKE '%n'
ORDER BY length DESC
LIMIT 5;

-- 19. Retrieve the next 5 shortest films (6th to 10th) from the 'film' table where the title ends with the character 'n'.
SELECT * 
FROM film
WHERE title LIKE '%n'
ORDER BY length ASC
OFFSET 5
LIMIT 5;

-- 20. Retrieve the first 4 customers from the 'customer' table who are in store 1, sorted by last_name in descending order.
SELECT * 
FROM customer
WHERE store_id = 1
ORDER BY last_name DESC
LIMIT 4;

-- 21. Calculate the average value of the 'rental_rate' column from the 'film' table.
SELECT AVG(rental_rate)
FROM film;

-- 22. Count how many films in the 'film' table start with the character 'C'.
SELECT COUNT(*) 
FROM film
WHERE title LIKE 'C%';

-- 23. Find the maximum length of films in the 'film' table where the rental_rate is equal to 0.99.
SELECT MAX(length)
FROM film
WHERE rental_rate = 0.99;

-- 24. Count how many distinct replacement_cost values exist for films longer than 150 minutes in the 'film' table.
SELECT COUNT(DISTINCT replacement_cost)
FROM film
WHERE length > 150;

-- 25. Group films by their 'rating' value and count how many films exist for each rating.
SELECT rating, COUNT(*)
FROM film
GROUP BY rating;

-- 26. Group films by their 'replacement_cost' value and count how many films exist for each replacement_cost filter to show only replacement_cost values that have more than 50 films.
SELECT replacement_cost, COUNT(*)
FROM film
GROUP BY replacement_cost
HAVING COUNT(*) > 50
ORDER BY replacement_cost ASC;
