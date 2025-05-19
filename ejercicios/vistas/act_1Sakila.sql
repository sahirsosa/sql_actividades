
SELECT * FROM nombre_de_la_vista;


-- 1. Vista de títulos de películas y categorías
CREATE VIEW peliculas_categorias AS
SELECT f.title, c.name AS category
FROM film f
JOIN film_category fc ON f.film_id = fc.film_id
JOIN category c ON fc.category_id = c.category_id;

-- 2. Vista de películas y su idioma
CREATE VIEW peliculas_idiomas AS
SELECT f.title, l.name AS language
FROM film f
LEFT JOIN language l ON f.language_id = l.language_id;

-- 3. Vista de categorías y número de películas
CREATE VIEW categorias_num_peliculas AS
SELECT c.name AS category, COUNT(fc.film_id) AS num_movies
FROM category c
LEFT JOIN film_category fc ON c.category_id = fc.category_id
GROUP BY c.name;

-- 4. Vista de clientes y total pagado
CREATE VIEW clientes_total_pagado AS
SELECT c.customer_id, c.first_name, c.last_name, COALESCE(SUM(p.amount), 0) AS total_paid
FROM customer c
LEFT JOIN payment p ON c.customer_id = p.customer_id
GROUP BY c.customer_id, c.first_name, c.last_name;

-- 5. Vista de direcciones y si tienen una tienda
CREATE VIEW direcciones_tiendas AS
SELECT a.address, COALESCE(s.store_id, 'NULL') AS store_id
FROM address a
LEFT JOIN store s ON a.address_id = s.address_id;

-- 6. Vista de fecha de renta y título de película
CREATE VIEW rentas_peliculas AS
SELECT r.rental_date, f.title
FROM rental r
JOIN inventory i ON r.inventory_id = i.inventory_id
JOIN film f ON i.film_id = f.film_id;

-- 7. Vista de empleados y tiendas
CREATE VIEW empleados_tiendas AS
SELECT s.staff_id, s.first_name, s.last_name, COALESCE(s.store_id, 'NULL') AS store_id
FROM staff s
LEFT JOIN store st ON s.store_id = st.store_id;

-- 8. Vista de ciudades y cantidad de clientes
CREATE VIEW ciudades_num_clientes AS
SELECT ci.city, COUNT(c.customer_id) AS num_customers
FROM city ci
LEFT JOIN address a ON ci.city_id = a.city_id
LEFT JOIN customer c ON a.address_id = c.address_id
GROUP BY ci.city;

-- 9. Vista de clientes y películas rentadas
CREATE VIEW clientes_peliculas_rentadas AS
SELECT c.first_name, c.last_name, f.title
FROM customer c
JOIN rental r ON c.customer_id = r.customer_id
JOIN inventory i ON r.inventory_id = i.inventory_id
JOIN film f ON i.film_id = f.film_id;

-- 10. Vista de películas y número de veces rentadas
CREATE VIEW peliculas_num_rentas AS
SELECT f.title, COUNT(r.rental_id) AS times_rented
FROM film f
LEFT JOIN inventory i ON f.film_id = i.film_id
LEFT JOIN rental r ON i.inventory_id = r.inventory_id
GROUP BY f.title;

-- 11. Vista de actores y cantidad de películas en las que han actuado
CREATE VIEW actores_num_peliculas AS
SELECT a.first_name, a.last_name, COUNT(fa.film_id) AS num_movies
FROM actor a
LEFT JOIN film_actor fa ON a.actor_id = fa.actor_id
GROUP BY a.first_name, a.last_name;

-- 12. Vista de tiendas y número de empleados
CREATE VIEW tiendas_num_empleados AS
SELECT st.store_id, COUNT(s.staff_id) AS num_employees
FROM store st
LEFT JOIN staff s ON st.store_id = s.store_id
GROUP BY st.store_id;