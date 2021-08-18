USE Sakila;
-- 1 Excercise
SELECT * from Sakila.actor
WHERE first_name = 'Scarlett';
-- 2 Exercise
SELECT COUNT(*) from Sakila.rental;
SELECT return_date, COUNT(*)
FROM rental
GROUP BY rental_date;
-- 3 Exercise
SELECT MAX(length) AS 'max_duration' FROM Sakila.film;
SELECT MIN(length) AS 'min__duration' FROM Sakila.film;
-- 4 Excercise
-- hours
SELECT (length* 60) FROM Sakila.film;
-- minutes 
SELECT (length* 60) FROM Sakila.film;
-- 5 Excercise How many distinct (different) actors' last names are there?
SELECT DISTINCT last_name FROM Sakila.actor;
-- 6 Excercise Since how many days has the company been operating (check DATEDIFF() function)?
SELECT DATEDIFFMAX(rental_date) FROM Sakila.rental;
SELECT DATEDIFFMIN(rental_date) FROM Sakila.rental;
-- Exercise 7 Show rental info with additional columns month and weekday. Get 20 results
limit 20;
-- Exercise 8 Add an additional column day_type with values 'weekend' and 'workday' depending on the rental day of the week
SELECT rental_id
-- Exercise 9 Get release years
SELECT release_year FROM Sakila.film;
-- Exercise 10 Get all films with ARMAGEDDON in the title.
SELECT title from Sakila.film
WHERE title LIKE('%ARMAGEDDON%');
-- Exercise 11 Get all films which title ends with APOLLO.
SELECT title from Sakila.film
WHERE title LIKE ('%APOLLO');
-- 12 Get 10 the longest films.
SELECT title, lenghth from Sakila.film;
SELECT title, lenghth from Sakila.film
ORDER BY length DESC
LIMIT 10;
-- 13 How many films include Behind the Scenes content?
SELECT special_features, COUNT(*) FROM Sakila.film
WHERE special_features = 'Behind the Scenes'; 