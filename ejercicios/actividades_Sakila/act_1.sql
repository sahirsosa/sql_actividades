/*Calcularemos el porcentaje de comisión del mes de mayo del empleado con id=2 aplicando un 10% al monto de las rentas*/

SELECT payment_id, rental_id, amount * 0.1 AS comision, amount * 1.1 as total
FROM payment
WHERE staff_id=2 AND month(payment_date)=5 ;


/* Calcularemos el porcentaje de comisión del mes de Junio del empleado con id=1 aplicando un 10% al monto de las rentas*/

SELECT payment_id, rental_id, amount * 0.1 AS comision, amount * 1.1 as total
FROM payment
WHERE staff_id=1 AND month(payment_date)=6 ;


/*El día 30 de mayo se agrega 1 dólar a la comisión de todos los empleados (que es del 10% del monto de la renta) muestre el listado de las rentas del día calculando la comisión de forma que la comisión no sea mayor al 50% del monto de la renta*/

SELECT rental_id,staff_id,amount AS monto_renta,LEAST((amount * 0.10) + 1, amount * 0.50) AS comision_final
FROM payment
WHERE DATE(payment_date) = '2025-05-30';

/*A todos los clientes que rentaron los días 30 o 31 de cada mes se les da un descuento del 20% sobre el monto de la renta , liste los id de los clientes, el folio de la renta, el monto, el descuento y el nuevo valor a pagar*/

SELECT customer_id AS id_cliente,rental_id AS folio_renta,amount AS monto_original,amount * 0.20 AS descuento,amount - (amount * 0.20) AS monto_final
FROM payment
WHERE DAY(payment_date) IN (30, 31);

/*A todos los clientes que rentan los lunes se les otorga un día mas para regresarla , liste los id de los clientes, el folio de la renta, la fecha de pago y la fecha de entrega 3 días después del pago*/

SELECT customer_id AS id_cliente,rental_id AS folio_renta,payment_date AS fecha_pago,
CASE WHEN DAYOFWEEK(payment_date) = 2 THEN DATE_ADD(payment_date, INTERVAL 4 DAY)
        ELSE DATE_ADD(payment_date, INTERVAL 3 DAY)
    END AS fecha_entrega
FROM payment;

/*En la tabla de rentas calcular para cada ID los días trascurridos entre la fecha de regreso y la facha de la renta */

SELECT rental_id,DATEDIFF(return_date, rental_date) AS dias_transcurridos
FROM rental;

/*Lista el id de la renta, el id del cliente y la fecha de renta de todas las rentas de los días domingo*/

SELECT rental_id AS id_renta,customer_id AS id_cliente,rental_date AS fecha_renta
FROM rental
WHERE DAYOFWEEK(rental_date) = 1;

/*Lista el id de la renta, el id del cliente y la fecha de renta de todas las rentas de los días domingo del mes de mayo */

SELECT rental_id AS id_renta,customer_id AS id_cliente,rental_date AS fecha_renta
FROM rental
WHERE DAYOFWEEK(rental_date) = 1 AND MONTH(rental_date) = 5;

/*Lista el id de la renta, el id del cliente, fecha de renta y fecha de devolución de todas las rentas que se devuelven los días domingo del mes de junio*/

SELECT rental_id AS id_renta,customer_id AS id_cliente,rental_date AS fecha_renta,return_date AS fecha_devolucion
FROM rental
WHERE DAYOFWEEK(return_date) = 1 AND MONTH(return_date) = 6;



