
SELECT * FROM nombre_de_la_vista;

-- liga de futbol

-- 1. Vista de jugadores con la misma posición que 'Alejandro López'
CREATE VIEW jugadores_misma_posicion AS
SELECT nombre, equipo FROM jugadores
WHERE posicion = (SELECT posicion FROM jugadores WHERE nombre = 'Alejandro López');

-- 2. Vista de árbitros con más experiencia que el promedio
CREATE VIEW arbitros_mas_experiencia AS
SELECT nombre, experiencia FROM arbitros
WHERE experiencia > (SELECT AVG(experiencia) FROM arbitros);

-- 3. Vista de equipos con más jugadores que el equipo 'Titanes'
CREATE VIEW equipos_mas_jugadores AS
SELECT nombre, num_jugadores FROM equipos
WHERE num_jugadores > (SELECT num_jugadores FROM equipos WHERE nombre = 'Titanes');

-- 4. Vista de categorías en las que se permite jugar en modo 'Libre'
CREATE VIEW categorias_modo_libre AS
SELECT id_categorias FROM categorias
WHERE libre = 'Si';

-- 5. Vista de árbitros con el mismo precio que 'Carlos Ramírez'
CREATE VIEW arbitros_mismo_precio AS
SELECT nombre, experiencia FROM arbitros
WHERE precio = (SELECT precio FROM arbitros WHERE nombre = 'Carlos Ramírez');