
SELECT * FROM nombre_de_la_vista;


--videojuegos

-- 1. Vista de enemigos con más vida que el promedio
CREATE VIEW enemigos_mas_vida AS
SELECT nombre, vida FROM enemigos
WHERE vida > (SELECT AVG(vida) FROM enemigos);

-- 2. Vista de jugadores con la misma habilidad que 'Diego'
CREATE VIEW jugadores_misma_habilidad AS
SELECT nombre, nivel FROM jugadores
WHERE habilidad = (SELECT habilidad FROM jugadores WHERE nombre = 'Diego');

-- 3. Vista de niveles con enemigos de dificultad 'Difícil'
CREATE VIEW niveles_enemigos_dificil AS
SELECT mapa FROM niveles
WHERE enemigos IN (
    SELECT nombre FROM enemigos WHERE dificultad = 'Difícil'
);

-- 4. Vista de objetos en el mismo lugar que 'Esfera de vida'
CREATE VIEW objetos_mismo_lugar AS
SELECT nombre FROM objetos
WHERE lugar = (SELECT lugar FROM objetos WHERE nombre = 'Esfera de vida');

-- 5. Vista de habilidades con daño mayor al promedio
CREATE VIEW habilidades_mas_dano AS
SELECT nombre, daño FROM habilidades
WHERE daño > (SELECT AVG(daño) FROM habilidades);