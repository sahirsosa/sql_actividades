SELECT * FROM nombre_de_la_vista;


-- 1. Vista de películas con la misma duración que 'ALIEN CENTER'
CREATE VIEW peliculas_misma_duracion AS
SELECT title FROM film
WHERE length = (
    SELECT length FROM film WHERE title = 'ALIEN CENTER'
);

-- 2. Vista de clientes que han hecho pagos mayores a 5 dólares
CREATE VIEW clientes_pago_mayor_5 AS
SELECT DISTINCT customer.first_name, customer.last_name
FROM customer
WHERE customer_id IN (
    SELECT customer_id FROM payment WHERE amount > 5
);

-- 3. Vista de películas con el mismo precio de renta que 'ZOOLANDER FICTION'
CREATE VIEW peliculas_mismo_precio AS
SELECT title FROM film
WHERE rental_rate = (
    SELECT rental_rate FROM film WHERE title = 'ZOOLANDER FICTION'
);

-- 4. Vista de actores que actuaron en 'GHOSTBUSTERS ELF'
CREATE VIEW actores_ghostbusters_elf AS
SELECT DISTINCT actor.first_name, actor.last_name
FROM actor
WHERE actor_id IN (
    SELECT actor_id FROM film_actor WHERE film_id = (
        SELECT film_id FROM film WHERE title = 'GHOSTBUSTERS ELF'
    )
);

-- 5. Vista de películas con duración mayor al promedio
CREATE VIEW peliculas_mayor_promedio AS
SELECT title FROM film
WHERE length > (SELECT AVG(length) FROM film);

-- 6. Vista de clientes que han realizado al menos un pago
CREATE VIEW clientes_con_pago AS
SELECT DISTINCT customer.first_name, customer.last_name
FROM customer
WHERE customer_id IN (
    SELECT DISTINCT customer_id FROM payment
);

-- 7. Vista de películas que nunca han sido rentadas
CREATE VIEW peliculas_no_rentadas AS
SELECT title FROM film
WHERE film_id NOT IN (SELECT film_id FROM rental);

-- 8. Vista de categorías con más de 50 películas
CREATE VIEW categorias_mas_50_peliculas AS
SELECT name FROM category
WHERE category_id IN (
    SELECT category_id FROM film_category
    GROUP BY category_id
    HAVING COUNT(film_id) > 50
);

-- 9. Vista de empleados de la tienda con más películas en inventario
CREATE VIEW empleados_tienda_mas_peliculas AS
SELECT first_name, last_name FROM staff
WHERE store_id = (
    SELECT store_id FROM inventory
    GROUP BY store_id
    ORDER BY COUNT(film_id) DESC
    LIMIT 1
);

-- 10. Vista de películas con el mismo rating que 'ACADEMY DINOSAUR'
CREATE VIEW peliculas_mismo_rating AS
SELECT title FROM film
WHERE rating = (SELECT rating FROM film WHERE title = 'ACADEMY DINOSAUR');

-- 11. Vista de actores que han participado en más de 20 películas
CREATE VIEW actores_mas_20_peliculas AS
SELECT first_name, last_name FROM actor
WHERE actor_id IN (
    SELECT actor_id FROM film_actor
    GROUP BY actor_id
    HAVING COUNT(film_id) > 20
);

-- 12. Vista de películas con el mismo costo de reposición que 'CRUSADE HONEY'
CREATE VIEW peliculas_mismo_costo AS
SELECT title FROM film
WHERE replacement_cost = (
    SELECT replacement_cost FROM film WHERE title = 'CRUSADE HONEY'
);