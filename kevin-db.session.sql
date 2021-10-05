--Question #1
SELECT COUNT(actor)
FROM actor
WHERE last_name = 'Wahlberg';
-- Answer = 2;


--Question #2
SELECT COUNT(amount)
FROM payment
WHERE amount >= 3.99 AND amount <= 5.99;
-- Answer = 5607

-- --Question #3
SELECT * FROM inventory;
SELECT COUNT(film_id), film_id
FROM inventory
WHERE store_id = 1
GROUP BY film_id
ORDER BY COUNT(film_id)DESC;

SELECT COUNT(film_id), film_id
FROM inventory
WHERE store_id = 2
GROUP BY film_id
ORDER BY COUNT(film_id)DESC;
--Answer = This question is bogus lol, store 1 and 2 both have many many films with 4 copies in inventory

--Question #4
SELECT COUNT(customer)
FROM customer
WHERE last_name = 'William';
--ANSWER = 0

--QUESTION #5
SELECT staff_id, COUNT(*)
FROM rental
GROUP BY staff_id
ORDER BY COUNT(*);
--ANSWER = staff_id 1 with 8040 rentals
--         staff_id 2 only had 8004 rentals


--Question #6
SELECT COUNT(DISTINCT district)
FROM address;
--Answer = There are 378 different district names

--Question #7
SELECT COUNT(actor_id), film_id
FROM film_actor
GROUP BY film_id
ORDER BY COUNT(actor_id) DESC;
--Answer = film_id 508 has the most actors with a count of 15

--Question #8
SELECT COUNT(customer_id)
FROM customer
WHERE last_name LIKE '%es' AND store_id = 1;
--Answer = 13 customers have a last name ending in 'es' and a store_id of 1

--Question #9
SELECT * FROM payment;
SELECT COUNT(DISTINCT amount)
FROM payment
WHERE customer_id BETWEEN 380 AND 430
HAVING COUNT(amount) > 250;
--Answer = 11 payments ammounts had more than 250 rentals from customers with id's between 380 and 430

--Question #10
-- SELECT * FROM film;

SELECT COUNT(DISTINCT rating)
FROM film;
--Answer = There are 5 different rating categories
SELECT COUNT(film_id), rating
FROM film
GROUP BY rating
ORDER BY COUNT(film_id) DESC;
--Answer = rating PG-13 has the most movies with 223