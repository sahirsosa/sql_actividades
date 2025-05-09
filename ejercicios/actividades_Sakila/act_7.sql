-- 1. Muestra los títulos de las películas que tienen la misma duración que la película 'ALIEN CENTER'.
SELECT title FROM film
WHERE length = (
SELECT length FROM film WHERE title = 'ALIEN CENTER');

-- 2. Muestra los nombres de los clientes que han hecho al menos un pago mayor a 5 dólares.
SELECT DISTINCT customer.first_name, customer.last_name
FROM customer
WHERE customer_id IN (
    SELECT customer_id FROM payment WHERE amount > 5
);

-- 3. Muestra los títulos de las películas que tienen el mismo precio de renta que la película 'ZOOLANDER FICTION'.
SELECT title FROM film
WHERE rental_rate = (SELECT rental_rate FROM film WHERE title = 'ZOOLANDER FICTION');

-- 4. Muestra los nombres de los actores que actuaron en la película 'GHOSTBUSTERS ELF'.
SELECT DISTINCT actor.first_name, actor.last_name
FROM actor
WHERE actor_id IN (
    SELECT actor_id FROM film_actor WHERE film_id = (SELECT film_id FROM film WHERE title = 'GHOSTBUSTERS ELF')
);

-- 5. Muestra las películas cuya duración es mayor al promedio de todas las películas.
SELECT title FROM film
WHERE length > (SELECT AVG(length) FROM film);

-- 6. Lista los nombres de los clientes que han realizado al menos un pago.
SELECT DISTINCT customer.first_name, customer.last_name
FROM customer
WHERE customer_id IN (SELECT DISTINCT customer_id FROM payment);

-- 7. Muestra los títulos de las películas que nunca han sido rentadas.
SELECT title FROM film
WHERE film_id NOT IN (SELECT film_id FROM rental);

-- 8. Muestra el nombre de las categorías que tienen más de 50 películas.
SELECT name FROM category
WHERE category_id IN (
    SELECT category_id FROM film_category
    GROUP BY category_id
    HAVING COUNT(film_id) > 50
);

-- 9. Muestra los nombres de los empleados que trabajan en la tienda que tiene más películas en inventario.
SELECT first_name, last_name FROM staff
WHERE store_id = (
    SELECT store_id FROM inventory
    GROUP BY store_id
    ORDER BY COUNT(film_id) DESC
    LIMIT 1
);

-- 10. Muestra los títulos de las películas que tienen el mismo rating que la película 'ACADEMY DINOSAUR'.
SELECT title FROM film
WHERE rating = (SELECT rating FROM film WHERE title = 'ACADEMY DINOSAUR');

-- 11. Muestra el nombre de los actores que han participado en más de 20 películas.
SELECT first_name, last_name FROM actor
WHERE actor_id IN (
    SELECT actor_id FROM film_actor
    GROUP BY actor_id
    HAVING COUNT(film_id) > 20
);

-- 12. Muestra los títulos de las películas que tienen el mismo costo de reposición que la película 'CRUSADE HONEY'.
SELECT title FROM film
WHERE replacement_cost = (SELECT replacement_cost FROM film WHERE title = 'CRUSADE HONEY');