-- liga_fulbol

-- 1. Jugadores con la misma posición que 'Alejandro López'
SELECT nombre, equipo FROM jugadores
WHERE posicion = (SELECT posicion FROM jugadores WHERE nombre = 'Alejandro López');

-- 2. Árbitros con más experiencia que el promedio
SELECT nombre, experiencia FROM arbitros
WHERE experiencia > (SELECT AVG(experiencia) FROM arbitros);

-- 3. Equipos que tienen más jugadores que el equipo 'Titanes'
SELECT nombre, num_jugadores FROM equipos
WHERE num_jugadores > (SELECT num_jugadores FROM equipos WHERE nombre = 'Titanes');

-- 4. Categorías en las que se permite jugar en modo 'Libre'
SELECT id_categorias FROM categorias
WHERE libre = 'Si';

-- 5. Árbitros con el mismo precio que 'Carlos Ramírez'
SELECT nombre, experiencia FROM arbitros
WHERE precio = (SELECT precio FROM arbitros WHERE nombre = 'Carlos Ramírez');