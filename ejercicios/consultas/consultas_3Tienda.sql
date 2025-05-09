-- 3 Consultas DISTINCT
SELECT DISTINCT marca_id FROM articulos; -- Obtiene las marcas únicas de artículos
SELECT DISTINCT nombre FROM clientes; -- Obtiene los nombres únicos de clientes
SELECT DISTINCT departamento_id FROM clientes; -- Obtiene los departamentos únicos de clientes

-- 3 Consultas LIMIT
SELECT * FROM clientes LIMIT 5; -- Obtiene los 5 primeros clientes registrados
SELECT * FROM empleados LIMIT 3; -- Muestra los primeros 3 empleados registrados
SELECT * FROM articulos ORDER BY precio ASC LIMIT 10; -- Lista los 10 artículos más económicos

-- 3 Consultas ORDER BY
SELECT * FROM articulos ORDER BY precio DESC; -- Ordena los artículos por precio de mayor a menor
SELECT * FROM empleados ORDER BY nombre ASC; -- Ordena empleados alfabéticamente por nombre
SELECT * FROM clientes ORDER BY direccion DESC; -- Ordena los clientes por dirección en orden descendente

-- 3 Consultas con Operadores de comparación
SELECT * FROM articulos WHERE precio > 500; -- Obtiene artículos con precio mayor a 500
SELECT * FROM empleados WHERE puesto = 'Cajero'; -- Encuentra empleados cuyo puesto sea 'Cajero'
SELECT * FROM clientes WHERE id < 10; -- Encuentra clientes con ID menor a 10

-- 3 Consultas LIKE
SELECT * FROM clientes WHERE nombre LIKE 'C%'; -- Encuentra clientes cuyo nombre empieza con 'C'
SELECT * FROM empleados WHERE puesto LIKE '%gerente%'; -- Encuentra empleados cuyo puesto contiene 'gerente'
SELECT * FROM departamentos WHERE nombre LIKE '%a'; -- Encuentra departamentos cuyo nombre termina en 'a'

-- 3 Consultas BETWEEN
SELECT * FROM articulos WHERE precio BETWEEN 100 AND 500; -- Encuentra artículos con precio entre 100 y 500
SELECT * FROM empleados WHERE id BETWEEN 5 AND 15; -- Encuentra empleados con ID entre 5 y 15
SELECT * FROM departamentos WHERE piso BETWEEN 1 AND 5; -- Filtra departamentos con piso entre 1 y 5

-- 3 Consultas AND
SELECT * FROM articulos WHERE precio > 500 AND marca_id = 2; -- Artículos con precio mayor a 500 y marca específica
SELECT * FROM empleados WHERE puesto = 'Cajero' AND telefono LIKE '123%'; -- Empleados con puesto 'Cajero' y teléfono específico
SELECT * FROM clientes WHERE id < 10 AND direccion LIKE 'Calle%'; -- Clientes con ID menor a 10 y dirección que contiene 'Calle'

-- 3 Consultas OR
SELECT * FROM articulos WHERE precio < 100 OR precio > 800; -- Artículos con precio menor a 100 o mayor a 800
SELECT * FROM clientes WHERE nombre = 'Cliente1' OR nombre = 'Cliente5'; -- Clientes con nombre específico
SELECT * FROM empleados WHERE puesto = 'Gerente' OR puesto = 'Supervisor'; -- Empleados con puesto 'Gerente' o 'Supervisor'

-- 3 Consultas NOT
SELECT * FROM articulos WHERE NOT precio < 100; -- Excluye artículos con precio menor a 100
SELECT * FROM empleados WHERE NOT puesto = 'Cajero'; -- Encuentra empleados que no sean 'Cajero'
SELECT * FROM clientes WHERE NOT direccion = 'Calle 1'; -- Filtra clientes que no vivan en 'Calle 1'

-- 3 Consultas IN
SELECT * FROM articulos WHERE marca_id IN (1, 2, 3); -- Encuentra artículos de marcas específicas
SELECT * FROM clientes WHERE id IN (1, 5, 10); -- Encuentra clientes con IDs específicos
SELECT * FROM empleados WHERE puesto IN ('Gerente', 'Supervisor', 'Cajero'); -- Encuentra empleados con puestos específicos

-- 3 Operaciones matemáticas
SELECT nombre, precio, precio * 1.16 AS precio_con_iva FROM articulos; -- Calcula el precio con IVA (16%)
SELECT nombre, precio, precio + 10 AS precio_nuevo FROM articulos; -- Aumenta el precio de los artículos en 10
SELECT nombre, precio, precio * 0.8 AS precio_descuento FROM articulos; -- Reduce el precio en un 20%

-- 3 Consultas MIN, MAX, COUNT, SUM, AVG
SELECT MIN(precio) AS precio_minimo FROM articulos; -- Precio mínimo de artículos
SELECT MAX(precio) AS precio_maximo FROM articulos; -- Precio máximo de artículos
SELECT COUNT(*) AS total_clientes FROM clientes; -- Total de clientes registrados
SELECT SUM(precio) AS suma_precios FROM articulos; -- Suma de precios de artículos
SELECT AVG(precio) AS promedio_precio FROM articulos; -- Precio promedio de artículos

-- 3 Consultas CONCAT, UPPER, LOWER
SELECT CONCAT(nombre, ' - ', direccion) AS cliente_info FROM clientes; -- Combina nombre y dirección de clientes
SELECT UPPER(nombre) AS nombre_mayusculas FROM empleados; -- Convierte nombres de empleados a mayúsculas
SELECT LOWER(nombre) AS nombre_minusculas FROM clientes; -- Convierte nombres de clientes a minúsculas

-- 3 Consultas OFFSET
SELECT * FROM articulos LIMIT 5 OFFSET 5; -- Muestra artículos del registro 6 al 10
SELECT * FROM clientes LIMIT 5 OFFSET 5; -- Muestra clientes del registro 6 al 10
SELECT * FROM empleados LIMIT 10 OFFSET 10; -- Lista empleados a partir del registro 11

-- 3 Consultas GROUP BY y HAVING
SELECT marca_id, SUM(precio) AS total_precio FROM articulos GROUP BY marca_id; -- Agrupa artículos por marca y suma precios
SELECT departamento_id, COUNT(*) AS total_clientes FROM clientes GROUP BY departamento_id HAVING total_clientes > 5; -- Agrupa clientes y filtra los que tienen más de 5
SELECT puesto, AVG(id) AS promedio_id FROM empleados GROUP BY puesto HAVING AVG(id) > 5; -- Promedio de ID agrupado por puesto

-- 3 Consultas CASE y IFNULL
SELECT nombre, precio,
CASE
    WHEN precio < 100 THEN 'Bajo'
    WHEN precio BETWEEN 100 AND 500 THEN 'Medio'
    ELSE 'Alto'
END AS rango_precio
FROM articulos; -- Clasifica artículos por precio

SELECT id, IFNULL(direccion, 'Desconocida') AS direccion FROM clientes; -- Reemplaza valores nulos en dirección con 'Desconocida'

SELECT nombre, 
CASE 
    WHEN id < 10 THEN 'Junior'
    ELSE 'Senior'
END AS nivel_experiencia
FROM empleados; -- Clasifica empleados por experiencia