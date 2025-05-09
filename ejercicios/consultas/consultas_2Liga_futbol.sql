-- 1. DISTINCT
-- Categorías únicas
SELECT DISTINCT categoria FROM equipos;

-- Nombres únicos de árbitros
SELECT DISTINCT nombre FROM arbitros;

-- Posiciones únicas de jugadores
SELECT DISTINCT posicion FROM jugadores;

-- 2. LIMIT
-- Mostrar 5 árbitros
SELECT * FROM arbitros LIMIT 5;

-- Mostrar 3 equipos
SELECT * FROM equipos LIMIT 3;

-- Mostrar 8 jugadores
SELECT * FROM jugadores LIMIT 8;

-- 3. ORDER BY
-- Ordenar árbitros por experiencia ascendente
SELECT * FROM arbitros ORDER BY experiencia ASC;

-- Ordenar equipos por jugadores descendente
SELECT * FROM equipos ORDER BY num_jugadores DESC;

-- Ordenar jugadores por edad ascendente
SELECT * FROM jugadores ORDER BY edad ASC;

-- 4. Operadores de comparación
-- Árbitros con más de 10 años de experiencia
SELECT * FROM arbitros WHERE experiencia > 10;

-- Equipos con más de 20 jugadores
SELECT * FROM equipos WHERE num_jugadores > 20;

-- Jugadores de 22 años
SELECT * FROM jugadores WHERE edad = 22;

-- 5. LIKE
-- Nombres de árbitros que comienzan con 'J'
SELECT * FROM arbitros WHERE nombre LIKE 'J%';

-- Equipos con nombres que contienen 'as'
SELECT * FROM equipos WHERE nombre LIKE '%as%';

-- Jugadores con posición que termina en 'o'
SELECT * FROM jugadores WHERE posicion LIKE '%o';

-- 6. BETWEEN
-- Árbitros con experiencia entre 8 y 15 años
SELECT * FROM arbitros WHERE experiencia BETWEEN 8 AND 15;

-- Equipos con jugadores entre 18 y 22
SELECT * FROM equipos WHERE num_jugadores BETWEEN 18 AND 22;

-- Jugadores con edad entre 20 y 25 años
SELECT * FROM jugadores WHERE edad BETWEEN 20 AND 25;

-- 7. AND
-- Árbitros con experiencia >10 y precio >3000
SELECT * FROM arbitros WHERE experiencia > 10 AND precio > 3000;

-- Equipos con jugadores >20 y categoría 'Libre'
SELECT * FROM equipos WHERE num_jugadores > 20 AND categoria = 'Libre';

-- Jugadores edad >20 y posición 'Delantero'
SELECT * FROM jugadores WHERE edad > 20 AND posicion = 'Delantero';

-- 8. OR
-- Árbitros con experiencia >15 o precio >5000
SELECT * FROM arbitros WHERE experiencia > 15 OR precio > 5000;

-- Equipos con jugadores <18 o categoría 'Juvenil'
SELECT * FROM equipos WHERE num_jugadores < 18 OR categoria = 'Juvenil';

-- Jugadores edad <22 o posición 'Defensa'
SELECT * FROM jugadores WHERE edad < 22 OR posicion = 'Defensa';

-- 9. NOT
-- Árbitros con experiencia no menor a 10 años
SELECT * FROM arbitros WHERE NOT experiencia < 10;

-- Equipos que no son categoría 'Femenil'
SELECT * FROM equipos WHERE NOT categoria = 'Femenil';

-- Jugadores que no son 'Mediocampistas'
SELECT * FROM jugadores WHERE NOT posicion = 'Mediocampista';

-- 10. IN
-- Árbitros con experiencia en 8, 10 o 12 años
SELECT * FROM arbitros WHERE experiencia IN (8, 10, 12);

-- Equipos en categorías específicas
SELECT * FROM equipos WHERE categoria IN ('Femenil', 'Juvenil', 'Libre');

-- Jugadores en posiciones específicas
SELECT * FROM jugadores WHERE posicion IN ('Portero', 'Delantero', 'Defensa');

-- 11. Operaciones matemáticas
-- Promedio de precio de árbitros
SELECT AVG(precio) AS promedio_precio FROM arbitros;

-- Total de jugadores en equipos
SELECT SUM(num_jugadores) AS total_jugadores FROM equipos;

-- Edad multiplicada por 2 en jugadores
SELECT (edad * 2) AS edad_doble FROM jugadores;

-- 12. MIN
-- Precio mínimo en árbitros
SELECT MIN(precio) AS precio_minimo FROM arbitros;

-- Mínimo de jugadores en equipos
SELECT MIN(num_jugadores) AS min_jugadores FROM equipos;

-- Edad mínima de jugadores
SELECT MIN(edad) AS menor_edad FROM jugadores;

-- 13. MAX
-- Precio máximo en árbitros
SELECT MAX(precio) AS precio_maximo FROM arbitros;

-- Máximo de jugadores en equipos
SELECT MAX(num_jugadores) AS max_jugadores FROM equipos;

-- Edad máxima de jugadores
SELECT MAX(edad) AS mayor_edad FROM jugadores;

-- 14. COUNT
-- Total de árbitros
SELECT COUNT(*) AS total_arbitros FROM arbitros;

-- Total de equipos
SELECT COUNT(*) AS total_equipos FROM equipos;

-- Total de jugadores
SELECT COUNT(*) AS total_jugadores FROM jugadores;

-- 15. SUM
-- Suma de precios de árbitros
SELECT SUM(precio) AS suma_precios FROM arbitros;

-- Suma de jugadores en equipos
SELECT SUM(num_jugadores) AS suma_jugadores FROM equipos;

-- Suma de edades de jugadores
SELECT SUM(edad) AS suma_edades FROM jugadores;

-- 16. AVG
-- Promedio de precios de árbitros
SELECT AVG(precio) AS precio_promedio FROM arbitros;

-- Promedio de jugadores en equipos
SELECT AVG(num_jugadores) AS promedio_jugadores FROM equipos;

-- Promedio de edades de jugadores
SELECT AVG(edad) AS promedio_edad FROM jugadores;

-- 17. CONCAT
-- Concatenar nombre y categoría de equipos
SELECT CONCAT(nombre, ' - ', categoria) AS equipo_categoria FROM equipos;

-- Concatenar nombre y experiencia de árbitros
SELECT CONCAT(nombre, ' (', experiencia, ' años)') AS arbitro_detalle FROM arbitros;

-- Concatenar nombre y posición de jugadores
SELECT CONCAT(nombre, ' - ', posicion) AS jugador_posicion FROM jugadores;

-- 18. UPPER
-- Nombres en mayúsculas de árbitros
SELECT UPPER(nombre) AS nombre_mayusculas FROM arbitros;

-- Nombres en mayúsculas de equipos
SELECT UPPER(nombre) AS nombre_mayusculas FROM equipos;

-- Nombres en mayúsculas de jugadores
SELECT UPPER(nombre) AS nombre_mayusculas FROM jugadores;

-- 19. LOWER
-- Nombres en minúsculas de árbitros
SELECT LOWER(nombre) AS nombre_minusculas FROM arbitros;

-- Nombres en minúsculas de equipos
SELECT LOWER(nombre) AS nombre_minusculas FROM equipos;

-- Nombres en minúsculas de jugadores
SELECT LOWER(nombre) AS nombre_minusculas FROM jugadores;

-- 20. OFFSET
-- Mostrar árbitros desde el registro 6
SELECT * FROM arbitros LIMIT 5 OFFSET 5;

-- Mostrar equipos desde el registro 4
SELECT * FROM equipos LIMIT 3 OFFSET 3;

-- Mostrar jugadores desde el registro 11
SELECT * FROM jugadores LIMIT 10 OFFSET 5;

-- 21. GROUP BY
-- Equipos agrupados por categoría
SELECT categoria, COUNT(*) AS total_equipos FROM equipos GROUP BY categoria;

-- Árbitros agrupados por experiencia
SELECT experiencia, COUNT(*) AS total_arbitros FROM arbitros GROUP BY experiencia;

-- Jugadores agrupados por posición
SELECT posicion, COUNT(*) AS total_jugadores FROM jugadores GROUP BY posicion;

-- 22. HAVING
-- Equipos con más de 2 categorías
SELECT categoria, COUNT(*) AS total_equipos FROM equipos GROUP BY categoria HAVING COUNT(*) > 2;

-- Árbitros con más de 1 experiencia
SELECT experiencia, COUNT(*) AS total_arbitros FROM arbitros GROUP BY experiencia HAVING COUNT(*) > 1;

-- Posiciones con más de 2 jugadores
SELECT posicion, COUNT(*) AS total_jugadores FROM jugadores GROUP BY posicion HAVING COUNT(*) > 2;

-- 23. CASE
-- Clasificar experiencia de árbitros
SELECT nombre, 
CASE 
    WHEN experiencia > 10 THEN 'Experto'
    ELSE 'Principiante'
END AS nivel_experiencia
FROM arbitros;

-- Clasificar tamaño de equipos
SELECT nombre, 
CASE 
    WHEN num_jugadores > 20 THEN 'Equipo Grande'
    ELSE 'Equipo Pequeño'
END AS tipo_equipo
FROM equipos;

-- Clasificar edad de jugadores
SELECT nombre, 
CASE 
    WHEN edad > 25 THEN 'Veterano'
    ELSE 'Joven'
END AS categoria_edad
FROM jugadores;

-- 24. IFNULL
-- Reemplazar valores nulos en precio de árbitros
SELECT nombre, IFNULL(precio, 0) AS precio_arbitro FROM arbitros;

-- Reemplazar valores nulos en entrenador de equipos
SELECT nombre, IFNULL(entrenador, 'Sin Asignar') AS entrenador FROM equipos;

-- Reemplazar valores nulos en posición de jugadores
SELECT nombre, IFNULL(posicion, 'Sin posición') AS posicion FROM jugadores;