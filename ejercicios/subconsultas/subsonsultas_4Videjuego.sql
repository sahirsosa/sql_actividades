-- videojuego 

-- 1. Enemigos que tienen más vida que el promedio
SELECT nombre, vida FROM enemigos
WHERE vida > (SELECT AVG(vida) FROM enemigos);

-- 2. Jugadores que tienen la misma habilidad que 'Diego'
SELECT nombre, nivel FROM jugadores
WHERE habilidad = (SELECT habilidad FROM jugadores WHERE nombre = 'Diego');

-- 3. Niveles que contienen un enemigo con dificultad 'Difícil'
SELECT mapa FROM niveles
WHERE enemigos IN (
    SELECT nombre FROM enemigos WHERE dificultad = 'Difícil'
);

-- 4. Objetos que se encuentran en el mismo lugar que 'Esfera de vida'
SELECT nombre FROM objetos
WHERE lugar = (SELECT lugar FROM objetos WHERE nombre = 'Esfera de vida');

-- 5. Habilidades con daño mayor al promedio
SELECT nombre, daño FROM habilidades
WHERE daño > (SELECT AVG(daño) FROM habilidades);
