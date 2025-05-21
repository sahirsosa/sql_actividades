USE sakila;

DELIMITER //

-- 1. Obtener el nombre completo de un cliente
CREATE PROCEDURE GetCustomerName(IN customer_id INT)
BEGIN
    SELECT CONCAT(first_name, ' ', last_name) AS full_name
    FROM customer
    WHERE customer.customer_id = customer_id;
END //

DELIMITER ;

CALL GetCustomerName(5);

DELIMITER //

-- 2. Contar películas en una categoría
CREATE PROCEDURE CountMoviesByCategory(IN category_name VARCHAR(50))
BEGIN
    SELECT COUNT(film.film_id) AS total_movies
    FROM film
    INNER JOIN film_category ON film.film_id = film_category.film_id
    INNER JOIN category ON film_category.category_id = category.category_id
    WHERE category.name = category_name;
END //

DELIMITER ;

CALL CountMoviesByCategory('Action');

DELIMITER //

-- 3. Verificar si un cliente existe
CREATE PROCEDURE CustomerExists(IN customer_id INT, OUT exists_flag TINYINT)
BEGIN
    SELECT COUNT(*) INTO exists_flag
    FROM customer
    WHERE customer.customer_id = customer_id;
END //

DELIMITER ;

CALL CustomerExists(7, @exists_flag);
SELECT @exists_flag;

DELIMITER //

-- 4. Listar películas con duración mayor a cierto valor
CREATE PROCEDURE MoviesLongerThan(IN min_duration INT)
BEGIN
    SELECT title, length
    FROM film
    WHERE length > min_duration;
END //

DELIMITER ;

CALL MoviesLongerThan(120);

DELIMITER //

-- 5. Obtener títulos de películas rentadas por un cliente
CREATE PROCEDURE RentedMoviesByCustomer(IN customer_id INT)
BEGIN
    SELECT DISTINCT film.title
    FROM rental
    INNER JOIN inventory ON rental.inventory_id = inventory.inventory_id
    INNER JOIN film ON inventory.film_id = film.film_id
    WHERE rental.customer_id = customer_id;
END //

DELIMITER ;

CALL RentedMoviesByCustomer(3);

DELIMITER //

-- 6. Total de dinero generado por una tienda
CREATE PROCEDURE StoreRevenue(IN store_id INT)
BEGIN
    SELECT SUM(payment.amount) AS total_revenue
    FROM payment
    INNER JOIN rental ON payment.rental_id = rental.rental_id
    INNER JOIN inventory ON rental.inventory_id = inventory.inventory_id
    INNER JOIN store ON inventory.store_id = store.store_id
    WHERE store.store_id = store_id;
END //

DELIMITER ;

CALL StoreRevenue(2);

DELIMITER //

-- 7. Número de copias disponibles en inventario
CREATE PROCEDURE FilmCopiesAvailable(IN film_id INT)
BEGIN
    SELECT COUNT(*) AS available_copies
    FROM inventory
    WHERE inventory.film_id = film_id;
END //

DELIMITER ;

CALL FilmCopiesAvailable(10);

DELIMITER //

-- 8. Listar actores de una película
CREATE PROCEDURE FilmActors(IN film_id INT)
BEGIN
    SELECT actor.first_name, actor.last_name
    FROM actor
    INNER JOIN film_actor ON actor.actor_id = film_actor.actor_id
    WHERE film_actor.film_id = film_id;
END //

DELIMITER ;

CALL FilmActors(15);

DELIMITER //

-- 9. Obtener correo de un cliente
CREATE PROCEDURE GetCustomerEmail(IN customer_id INT)
BEGIN
    SELECT email
    FROM customer
    WHERE customer.customer_id = customer_id;
END //

DELIMITER ;

CALL GetCustomerEmail(8);

DELIMITER //

-- 10. Contar clientes en una ciudad
CREATE PROCEDURE CountCustomersByCity(IN city_name VARCHAR(50))
BEGIN
    SELECT COUNT(customer.customer_id) AS total_customers
    FROM customer
    INNER JOIN address ON customer.address_id = address.address_id
    INNER JOIN city ON address.city_id = city.city_id
    WHERE city.city = city_name;
END //

DELIMITER ;

CALL CountCustomersByCity('Los Angeles');

DELIMITER //

-- 11. Listar películas por clasificación
CREATE PROCEDURE MoviesByRating(IN rating VARCHAR(5))
BEGIN
    SELECT title
    FROM film
    WHERE film.rating = rating;
END //

DELIMITER ;

CALL MoviesByRating('PG');

DELIMITER //

-- 12. Listar clientes activos o inactivos
CREATE PROCEDURE ListCustomersByStatus(IN active_status TINYINT)
BEGIN
    SELECT first_name, last_name, email
    FROM customer
    WHERE customer.active = active_status;
END //

DELIMITER ;

CALL ListCustomersByStatus(1);

DELIMITER //

-- 13. Listar películas con duración menor a un valor
CREATE PROCEDURE MoviesShorterThan(IN max_duration INT)
BEGIN
    SELECT title, length
    FROM film
    WHERE length < max_duration;
END //

DELIMITER ;

CALL MoviesShorterThan(90);

DELIMITER //

-- 14. Listar clientes registrados después de una fecha
CREATE PROCEDURE CustomersRegisteredAfter(IN reg_date DATE)
BEGIN
    SELECT first_name, last_name, email, create_date
    FROM customer
    WHERE customer.create_date > reg_date;
END //

DELIMITER ;

CALL CustomersRegisteredAfter('2022-01-01');

DELIMITER //

-- 15. Listar películas disponibles en una tienda
CREATE PROCEDURE MoviesAvailableInStore(IN store_id INT)
BEGIN
    SELECT DISTINCT film.title
    FROM inventory
    INNER JOIN film ON inventory.film_id = film.film_id
    WHERE inventory.store_id = store_id;
END //

DELIMITER ;

CALL MoviesAvailableInStore(1);