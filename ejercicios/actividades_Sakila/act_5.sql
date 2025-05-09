-- Liste los identificadores, títulos y descripciones de las películas en el catalogo 
SELECT film_id, title, description FROM film;

-- Liste los identificadores, títulos de las películas en el catalogo y nombres completos de los actores que participan en cada una de ellas 
SELECT f.film_id, f.title, CONCAT(a.first_name, ' ', a.last_name) AS actor_name
FROM film f
JOIN film_actor fa ON f.film_id = fa.film_id
JOIN actor a ON fa.actor_id = a.actor_id;


-- Liste los nombres completos de los actores registrados asi como los títulos de las películas en que participan que están el catalogo de la empresa 
SELECT CONCAT(a.first_name, ' ', a.last_name) AS actor_name, f.title
FROM actor a
JOIN film_actor fa ON a.actor_id = fa.actor_id
JOIN film f ON fa.film_id = f.film_id;


-- Liste los nombres de los clientes y los títulos de las películas que ha rentado
SELECT CONCAT(c.first_name, ' ', c.last_name) AS customer_name, f.title
FROM customer c
JOIN rental r ON c.customer_id = r.customer_id
JOIN inventory i ON r.inventory_id = i.inventory_id
JOIN film f ON i.film_id = f.film_id;

-- Lista cuantos clientes tiene cada miembro del staff 
SELECT s.staff_id, CONCAT(s.first_name, ' ', s.last_name) AS staff_name, COUNT(DISTINCT c.customer_id) AS customer_count
FROM staff s
JOIN store st ON s.store_id = st.store_id
JOIN customer c ON st.store_id = c.store_id
GROUP BY s.staff_id;
-- Calcularemos la suma de pagos registrados agrupados por tienda y la dirección de la tienda 
SELECT st.store_id, ad.address, SUM(p.amount) AS total_payments
FROM store st
JOIN address ad ON st.address_id = ad.address_id
JOIN payment p ON st.store_id = p.staff_id
GROUP BY st.store_id, ad.address;