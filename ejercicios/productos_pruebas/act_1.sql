SET SQL_SAFE_UPDATES = 0;

CREATE TABLE productos2 (
    id INT PRIMARY KEY,
    nombre VARCHAR(50),
    categoria VARCHAR(50),
    precio DECIMAL(10, 2),
    stock INT,
    stock_status VARCHAR(20)

);

INSERT INTO productos2 (id, nombre, categoria, precio, stock) VALUES
(1, 'Laptop', 'Tecnología', 1500.00, 10),
(2, 'Mouse', 'Tecnología', 25.00, 0),
(3, 'Teclado', 'Tecnología', 50.00, 60),
(4, 'Monitor', 'Tecnología', 300.00, 20),
(5, 'Silla', 'Muebles', 120.00, 15),
(6, 'Escritorio', 'Muebles', 250.00, 5);




/* Mostrar el nombre y una columna llamada rango_precio que clasifique los productos así:
"Económico" si el precio es menor a 100.
"Moderado" si el precio está entre 100 y 500.
"Caro" si el precio es mayor a 500. */

SELECT 
    nombre, 
    CASE 
        WHEN precio < 100 THEN 'Económico'
        WHEN precio BETWEEN 100 AND 500 THEN 'Moderado'
        WHEN precio > 500 THEN 'Caro'
    END AS rango_precio
FROM 
    productos2;


/*2. Mostrar el nombre del producto y una columna disponibilidad que diga:
"Sin Stock" si el stock es 0.
"Bajo Stock" si el stock es menor a 20.
"Disponible" si el stock es igual o mayor a 20.*/

SELECT 
    nombre, 
    CASE 
        WHEN stock = 0 THEN 'Sin Stock'
        WHEN stock < 20 THEN 'Bajo Stock'
        WHEN stock >= 20 THEN 'Disponible'
    END AS disponibilidad
FROM 
    productos2;

/*3. Agregar una columna calculada llamada descuento que aplique lo siguiente:
Si el precio es mayor a 1000, aplicar un descuento del 10%.
Si el precio es entre 500 y 1000, aplicar un descuento del 5%.
En otros casos, sin descuento (0).*/

SELECT 
    nombre, 
    precio, 
    CASE 
        WHEN precio > 1000 THEN precio * 0.10
        WHEN precio BETWEEN 500 AND 1000 THEN precio * 0.05
        ELSE 0
    END AS descuento
FROM 
    productos2;

/*4. Actualizar la columna stock_status de la tabla productos con los siguientes valores:
"Sin Stock" si el stock es 0.
"Bajo" si el stock es menor a 20.
"Disponible" si el stock es igual o mayor a 20.*/
UPDATE productos2
SET stock_status = 
    CASE 
        WHEN stock = 0 THEN 'Sin Stock'
        WHEN stock < 20 THEN 'Bajo'
        ELSE 'Disponible'
    END;

/*5. Actualizar la categoría de los productos:
Si el precio es mayor a 1000, cambiar la categoría a "Alta Gama".
Si el precio está entre 500 y 1000, cambiar a "Gama Media".
En otros casos, dejar la categoría como "Gama Baja".*/
UPDATE productos2
SET categoria = 
    CASE 
        WHEN precio > 1000 THEN 'Alta Gama'
        WHEN precio BETWEEN 500 AND 1000 THEN 'Gama Media'
        ELSE 'Gama Baja'
    END;

/*6. Ordenar los productos mostrando primero los "Sin Stock", luego los de "Bajo Stock" y al final los "     Disponibles".*/
 SELECT *
FROM productos2
ORDER BY 
    CASE 
        WHEN stock_status = 'Sin Stock' THEN 1
        WHEN stock_status = 'Bajo' THEN 2
        ELSE 3
    END;

/*7. Ordenar los productos por precio según la siguiente prioridad:
Primero los productos "Caros" (precio > 1000).
Luego los "Moderados" (precio entre 500 y 1000).
Por último, los "Económicos" (precio menor a 500).*/
 SELECT *
FROM productos2
ORDER BY 
    CASE 
        WHEN precio > 1000 THEN 1
        WHEN precio BETWEEN 500 AND 1000 THEN 2
        ELSE 3
    END;

/*8. Mostrar una lista de productos con una columna oferta_especial que indique:
"Sí" si el producto está en la categoría "Muebles" y tiene un stock menor a 10.
"No" en caso contrario.*/
SELECT *,
    CASE 
        WHEN categoria = 'Muebles' AND stock < 10 THEN 'Sí'
        ELSE 'No'
    END AS oferta_especial
FROM productos2;


