-- 3 Consultas DISTINCT
SELECT DISTINCT nombre FROM enemigos; -- Muestra los nombres únicos de enemigos
SELECT DISTINCT lugar FROM objetos; -- Obtiene los lugares únicos de aparición de los objetos
SELECT DISTINCT habilidad FROM jugadores; -- Lista las habilidades únicas de los jugadores

-- 3 Consultas LIMIT
SELECT * FROM enemigos LIMIT 5; -- Muestra los primeros 5 registros de enemigos
SELECT * FROM objetos LIMIT 3; -- Obtiene los primeros 3 objetos disponibles
SELECT * FROM jugadores LIMIT 10; -- Muestra los primeros 10 jugadores registrados

-- 3 Consultas ORDER BY
SELECT * FROM enemigos ORDER BY dificultad ASC; -- Ordena a los enemigos por nivel de dificultad de menor a mayor
SELECT * FROM objetos ORDER BY id_objetos DESC; -- Lista los objetos ordenados por valor de forma descendente
SELECT * FROM jugadores ORDER BY vida DESC; -- Ordena los jugadores por vida de mayor a menor

-- 3 Operadores de comparación
SELECT * FROM enemigos WHERE vida > 200; -- Encuentra enemigos con vida mayor a 200
SELECT * FROM objetos WHERE lugar = 'Bosque';
SELECT * FROM jugadores WHERE vida >= 150; -- Lista jugadores con vida mayor o igual a 150

-- 3 Consultas LIKE
SELECT * FROM enemigos WHERE nombre LIKE 'D%'; -- Encuentra enemigos cuyo nombre empieza con 'D'
SELECT * FROM objetos WHERE nombre LIKE '%Espada%'; -- Encuentra objetos cuyo nombre contiene 'Espada'
SELECT * FROM jugadores WHERE nombre LIKE '%a'; -- Encuentra jugadores cuyo nombre termina con 'a'

-- 3 Consultas BETWEEN
SELECT * FROM enemigos WHERE vida BETWEEN 100 AND 300; -- Muestra enemigos cuya vida está entre 100 y 300
SELECT * FROM objetos WHERE id_objetos BETWEEN 200 AND 800;
SELECT * FROM jugadores WHERE id_jugadores BETWEEN 5 AND 15; -- Lista jugadores con IDs entre 5 y 15

-- 3 Consultas AND
SELECT * FROM enemigos WHERE dificultad = 'Difícil' AND lugar = 'Castillo'; -- Encuentra enemigos difíciles que aparecen en un castillo
SELECT * FROM objetos WHERE lugar = 'Ruinas' AND funcion = 'Ilumina áreas oscuras';
SELECT * FROM jugadores WHERE nivel = 'Avanzado' AND vida > 200; -- Busca jugadores avanzados con vida mayor a 200

-- 3 Consultas OR
SELECT * FROM enemigos WHERE dificultad = 'Difícil' OR vida > 300; -- Muestra enemigos que sean difíciles o tengan vida mayor a 300
SELECT * FROM objetos WHERE lugar = 'Ruinas' OR lugar = 'Castillosombrío';
SELECT * FROM jugadores WHERE nivel = 'Novato' OR vida < 150; -- Busca jugadores que sean novatos o con vida menor a 150

-- 3 Consultas NOT
SELECT * FROM enemigos WHERE NOT vida < 100; -- Excluye enemigos que tengan vida menor a 100
SELECT * FROM objetos WHERE NOT lugar = 'Ruinas';
SELECT * FROM jugadores WHERE NOT nivel = 'Novato'; -- Lista jugadores que no sean de nivel novato

-- 3 Consultas IN
SELECT * FROM enemigos WHERE nombre IN ('Duende', 'Dragón', 'Vampiro'); -- Filtra enemigos específicos por nombre
SELECT * FROM objetos WHERE nombre IN ('Espada fantasmal', 'Llave misteriosa', 'Botas de plumas'); -- Encuentra objetos específicos por nombre
SELECT * FROM jugadores WHERE nivel IN ('Novato', 'Experto'); -- Filtra jugadores que estén en los niveles Novato o Experto

-- 3 Operaciones matemáticas
SELECT nombre, vida, vida - 50 AS vida_restante FROM enemigos; -- Calcula la vida restante de los enemigos después de reducir 50 puntos
SELECT nombre, id_objetos, id_objetos * 1.2 AS id_incrementado FROM objetos;
SELECT nombre, vida, vida + 100 AS vida_actualizada FROM jugadores; -- Suma 100 puntos de vida a cada jugador

-- 3 Consultas MIN, MAX, COUNT, SUM, AVG
SELECT MIN(vida) AS vida_minima FROM enemigos; -- Muestra la vida mínima entre todos los enemigos
SELECT MAX(valor) AS valor_maximo FROM objetos; -- Muestra el valor máximo de los objetos
SELECT COUNT(*) AS total_jugadores FROM jugadores; -- Cuenta cuántos jugadores están registrados en la tabla
ALTER TABLE objetos ADD COLUMN valor INT;
SELECT AVG(vida) AS vida_promedio FROM jugadores; -- Calcula la vida promedio de los jugadores

-- 3 Consultas CONCAT, UPPER, LOWER
SELECT CONCAT(nombre, ' - ', lugar) AS objeto_info FROM objetos; -- Combina el nombre y lugar de los objetos en una sola columna
SELECT UPPER(nombre) AS nombre_mayusculas FROM jugadores; -- Convierte los nombres de los jugadores a mayúsculas
SELECT LOWER(nombre) AS nombre_minusculas FROM enemigos; -- Convierte los nombres de los enemigos a minúsculas

-- 3 Consultas OFFSET
SELECT * FROM enemigos LIMIT 5 OFFSET 5; -- Muestra enemigos después de los primeros 5 registros
SELECT * FROM objetos LIMIT 5 OFFSET 5; -- Lista objetos empezando desde el sexto registro
SELECT * FROM jugadores LIMIT 10 OFFSET 10; -- Obtiene jugadores comenzando desde el décimo registro

-- 3 Consultas GROUP BY y HAVING
SELECT dificultad, COUNT(*) AS total_enemigos FROM enemigos GROUP BY dificultad; -- Agrupa enemigos por dificultad y cuenta cuántos hay en cada grupo
SELECT lugar, COUNT(*) AS cantidad_objetos FROM objetos GROUP BY lugar HAVING COUNT(*) > 3;
SELECT nivel, AVG(vida) AS vida_promedio FROM jugadores GROUP BY nivel HAVING AVG(vida) > 150; -- Agrupa jugadores por nivel y calcula la vida promedio en cada nivel

-- 3 Consultas CASE y IFNULL
SELECT nombre, vida,
CASE
    WHEN vida < 100 THEN 'Baja'
    WHEN vida BETWEEN 100 AND 200 THEN 'Media'
    ELSE 'Alta'
END AS nivel_vida
FROM enemigos; -- Clasifica enemigos según su vida en bajo, medio, y alto

SELECT id_objetos, lugar, IFNULL(lugar, 'Desconocido') AS lugar_reemplazado FROM objetos; -- Reemplaza valores nulos en la columna lugar de objetos con 'Desconocido'

SELECT nombre, 
CASE 
    WHEN nivel = 'Novato' THEN 'Principiante'
    ELSE 'Avanzado'
END AS categoria
FROM jugadores; -- Clasifica jugadores según su nivel en principiantes y avanzados