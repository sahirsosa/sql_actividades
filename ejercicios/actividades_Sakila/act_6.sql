-- Liste las ciudades (id y nombre) y las tiendas que se encuentran en cada ciudad, use RIGHT JOIN para mostrar TODAS las ciudades haya o no tiendas en ellas. 
	select c.city_id as id , c.city as nombre ,s.store_id as store
    from store s
    right join city c on c.city_id = s.address_id;
    
-- Liste los países (id y nombre) y las ciudades que se encuentran en cada país, use RIGHT JOIN para mostrar TODOS los países haya o no ciudades  en ellos
   select co.country_id as id, co.country as nombre , c.city_id as ciudad
   from city c
   RIGHT join country co on co.country_id = c.country_id;

-- Liste las ciudades (id y nombre) y los clientes que se encuentran en cada ciudad, use RIGHT JOIN para mostrar TODAS las ciudades haya o no clientes en ellas. 
	select c.city_id as id , c.city as nombre , cu.first_name as cliente 
    from customer cu
    right join city c on c.city_id = cu.address_id;
    
-- Liste las películas que para la tienda 1 no hayan sido rentadas 
	select f.film_id as id , f.title as titulo 
    from film f
    join inventory i on f.film_id = i.film_id where i.store_id=1;
    
-- Liste los nombres de los actores y en cuantas películas del catalogo participa 
	select a.actor_id as id , a.first_name as nombre , count(f.film_id) as peliculas
    from actor a
    join film_actor f on a.actor_id = f.actor_id
    group by a.actor_id , a.first_name ;
    
-- Liste los nombres de las películas y en cuantas tiendas están registradas 
	select f.film_id as id , f.title as nombre , count(distinct i.store_id) as tiendas 
    from film f 
    join inventory i on f.film_id = i.film_id
    group by f.film_id , f.title;
    
-- Liste los idiomas y cuantas películas están habladas en ese idioma 
	select l.language_id as id , l.name as nombre ,count(f.film_id) as peliculas 
    from language l
	left join film f on l.language_id = f.language_id
    group by l.language_id , l.name;
    
-- Liste cuantas veces ha sido rentada cada película en el catalogo 
SELECT f.film_id AS id, f.title AS nombre, COUNT(r.rental_id) AS veces_rentada
FROM film f
JOIN inventory i ON f.film_id = i.film_id
JOIN rental r ON i.inventory_id = r.inventory_id
GROUP BY f.film_id, f.title;

-- Liste cuantos pagos se realizaron en cada renta 
SELECT r.rental_id AS id_renta, COUNT(p.payment_id) AS cantidad_pagos
FROM rental r
LEFT JOIN payment p ON r.rental_id = p.rental_id
GROUP BY r.rental_id;

-- Liste cuantas películas ha rentado cada cliente 
SELECT cu.customer_id AS id_cliente,CONCAT(cu.first_name, ' ', cu.last_name) AS nombre_cliente,COUNT(r.rental_id) AS peliculas_rentadas
FROM customer cu
JOIN rental r ON cu.customer_id = r.customer_id
JOIN inventory i ON r.inventory_id = i.inventory_id
JOIN film f ON i.film_id = f.film_id
GROUP BY cu.customer_id, cu.first_name, cu.last_name
ORDER BY peliculas_rentadas DESC;

-- Liste cuantas películas ha rentado cada miembro del staff 
SELECT s.staff_id AS id_staff, CONCAT(s.first_name, ' ', s.last_name) AS nombre_staff,COUNT(r.rental_id) AS peliculas_rentadas
FROM staff s
JOIN rental r ON s.staff_id = r.staff_id
JOIN inventory i ON r.inventory_id = i.inventory_id
JOIN film f ON i.film_id = f.film_id
GROUP BY s.staff_id, s.first_name, s.last_name
ORDER BY peliculas_rentadas DESC;

-- Liste los clientes que han generado pagos con un monto total mayor a $10
SELECT cu.customer_id AS id_cliente, 
       CONCAT(cu.first_name, ' ', cu.last_name) AS nombre_cliente,
       SUM(p.amount) AS total_pagado
FROM customer cu
JOIN payment p ON cu.customer_id = p.customer_id
GROUP BY cu.customer_id, cu.first_name, cu.last_name
HAVING SUM(p.amount) > 10 ;

-- Liste los empleados que han generado pagos con un monto total mayor a $100
SELECT s.staff_id AS id_empleado, CONCAT(s.first_name, ' ', s.last_name) AS nombre_empleado, SUM(p.amount) AS total_pagado
FROM staff s
JOIN payment p ON s.staff_id = p.staff_id
GROUP BY s.staff_id, s.first_name, s.last_name
HAVING SUM(p.amount) > 100;

-- Calcule el número de pagos realizados por cada cliente en el mes de junio
SELECT cu.customer_id AS id_cliente, CONCAT(cu.first_name, ' ', cu.last_name) AS nombre_cliente, COUNT(p.payment_id) AS numero_pagos
FROM customer cu
JOIN payment p ON cu.customer_id = p.customer_id
WHERE MONTH(p.payment_date) = 6
GROUP BY cu.customer_id, cu.first_name, cu.last_name;

-- Calcule la cantidad de películas por cada duración de renta (rental_duration)
SELECT f.rental_duration AS duracion_renta, COUNT(f.film_id) AS cantidad_peliculas
FROM film f
GROUP BY f.rental_duration ;

-- Calcule la cantidad total de pagos recibidos cada año
SELECT f.rental_duration AS duracion_renta, COUNT(f.film_id) AS cantidad_peliculas
FROM film f
GROUP BY f.rental_duration 
order by f.rental_duration ;

-- Calcule el monto total de pagos por cada día de la semana
SELECT DAYOFWEEK(p.payment_date) AS dia_semana, SUM(p.amount) AS monto_total
FROM payment p
GROUP BY DAYOFWEEK(p.payment_date)
ORDER BY dia_semana;
-- Liste los días donde el total de pagos fue mayor a $50
SELECT DATE(p.payment_date) AS dia, SUM(p.amount) AS total_pagado
FROM payment p
GROUP BY DATE(p.payment_date)
HAVING SUM(p.amount) > 50
ORDER BY dia;

-- Calcule cuántas películas hay en cada duración (length) específica
SELECT f.length AS duracion, COUNT(f.film_id) AS cantidad_peliculas
FROM film f
GROUP BY f.length
ORDER BY cantidad_peliculas DESC;

-- Calcule la cantidad de pagos realizados en cada tienda
SELECT st.store_id AS id_tienda, COUNT(p.payment_id) AS cantidad_pagos
FROM store st
JOIN staff sf ON st.store_id = sf.store_id
JOIN payment p ON sf.staff_id = p.staff_id
GROUP BY st.store_id;

-- Calcule el monto total de pagos por cada cliente, pero solo para aquellos que han realizado más de 5 pagos
SELECT cu.customer_id AS id_cliente, CONCAT(cu.first_name, ' ', cu.last_name) AS nombre_cliente,COUNT(p.payment_id) AS cantidad_pagos,SUM(p.amount) AS monto_total
FROM customer cu
JOIN payment p ON cu.customer_id = p.customer_id
GROUP BY cu.customer_id, cu.first_name, cu.last_name
HAVING COUNT(p.payment_id) > 5 ;

-- Calcule el número de películas (puede haber mas de 1 película por cada titulo) según su clasificación (rating)
SELECT f.rating AS clasificacion, COUNT(i.inventory_id) AS cantidad_peliculas
FROM film f
JOIN inventory i ON f.film_id = i.film_id
GROUP BY f.rating
ORDER BY cantidad_peliculas DESC;

-- Liste los clientes que han realizado pagos con un monto promedio mayor a $5
SELECT cu.customer_id AS id_cliente, CONCAT(cu.first_name, ' ', cu.last_name) AS nombre_cliente, AVG(p.amount) AS promedio_pago
FROM customer cu
JOIN payment p ON cu.customer_id = p.customer_id
GROUP BY cu.customer_id, cu.first_name, cu.last_name
HAVING AVG(p.amount) > 5;

-- Calcule la cantidad de títulos de películas en cada duración de renta (rental_duration) mayor a 5 días
SELECT f.rental_duration AS duracion_renta, COUNT(f.film_id) AS cantidad_titulos
FROM film f
WHERE f.rental_duration > 5
GROUP BY f.rental_duration
ORDER BY cantidad_titulos DESC;

-- Liste el total de pagos recibidos por cada mes, pero solo los meses con más de 100 pagos
SELECT MONTH(p.payment_date) AS mes, YEAR(p.payment_date) AS anio, COUNT(p.payment_id) AS cantidad_pagos, SUM(p.amount) AS total_pagado
FROM payment p
GROUP BY YEAR(p.payment_date), MONTH(p.payment_date)
HAVING COUNT(p.payment_id) > 100
ORDER BY anio, mes;

-- Liste las clasificaciones de películas (rating) que tienen más de 50 películas registradas
SELECT f.rating AS clasificacion, COUNT(f.film_id) AS cantidad_peliculas
FROM film f
GROUP BY f.rating
HAVING COUNT(f.film_id) > 50
ORDER BY cantidad_peliculas DESC;

-- complemente la consulta para: liste los nombres de las películas y en cuantas tiendas están registradas 
-- y ordene los datos por la cantidad de mayor a menor

SELECT f.title,  COUNT(DISTINCT i.store_id) AS total_stores
FROM film f
LEFT JOIN inventory i ON f.film_id = i.film_id
GROUP BY f.title 
ORDER BY total_stores DESC;

SELECT a.actor_id, CONCAT(a.first_name, ' ', a.last_name) AS actor_name, COUNT(fa.film_id) AS total_movies
FROM actor a
LEFT JOIN film_actor fa ON a.actor_id = fa.actor_id
GROUP BY a.actor_id
ORDER BY actor_name ;


-- Complemente la consulta para: Liste los identificadores y titulos de las peliculas asi como los nombres completos de los actores registrados 
-- asi como los títulos de las películas en que participan que están el catalogo de la empresa

SELECT f.film_id, f.title
, concat(a.first_name," ",a.last_name) as actors
FROM film f
INNER JOIN film_actor fa ON f.film_id = fa.film_id
INNER JOIN actor a ON a.actor_id = fa.actor_id
order by f.title;