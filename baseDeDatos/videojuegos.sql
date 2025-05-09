CREATE DATABASE videojuego;
USE videojuego;

CREATE TABLE enemigos (
    id_enemigos INT PRIMARY KEY,
    nombre VARCHAR(50),
    dificultad VARCHAR(20),
    descripcion VARCHAR(100),
    lugar VARCHAR(50),
    vida INT
);

CREATE TABLE habilidades (
    id_habilidades INT PRIMARY KEY,
    nombre VARCHAR(50),
    descripcion VARCHAR(100),
    tiempo INT,
    daño INT
);

CREATE TABLE jugadores (
    id_jugadores INT PRIMARY KEY,
    nombre VARCHAR(50),
    nivel VARCHAR(20),
    habilidad VARCHAR(50),
    vida INT
);

CREATE TABLE niveles (
    id_niveles INT PRIMARY KEY,
    mapa VARCHAR(50),
    dificultad VARCHAR(20),
    enemigos VARCHAR(50),
    objetos VARCHAR(50)
);

CREATE TABLE objetos (
    id_objetos INT PRIMARY KEY,
    nombre VARCHAR(50),
    funcion VARCHAR(100),
    lugar VARCHAR(50)
);

INSERT INTO enemigos (id_enemigos, nombre, dificultad, descripcion, lugar, vida) VALUES
(16, 'Harpía', 'Medio', 'Criatura con cuerpo de ave y cara humana', 'Acantilado', 120),
(17, 'Quimera', 'Difícil', 'Criatura con cuerpo de león y cola de serpiente', 'Laberinto', 300),
(18, 'Espectro de hielo', 'Medio', 'Entidad gélida que reduce la velocidad', 'Cueva helada', 140),
(19, 'Tiburón gigante', 'Difícil', 'Pez enorme con instinto asesino', 'Océano profundo', 250),
(20, 'Fénix', 'Difícil', 'Ave de fuego que renace de sus cenizas', 'Volcán', 280);

INSERT INTO habilidades (id_habilidades, nombre, descripcion, tiempo, daño) VALUES
(16, 'Fuerza bruta', 'Aumenta el ataque cuerpo a cuerpo', 30, 70),
(17, 'Puñetazo explosivo', 'Golpe con una onda expansiva', 20, 75),
(18, 'Rugido de guerra', 'Reduce el daño recibido', 25, 0),
(19, 'Cadena de rayos', 'Ataque eléctrico en cadena', 15, 80),
(20, 'Lluvia de flechas', 'Ataque múltiple con flechas', 20, 60),
(21, 'Rayo solar', 'Ataque poderoso con energía solar', 40, 90),
(22, 'Telequinesis', 'Mover objetos con la mente', 30, 0),
(23, 'Explosión ígnea', 'Onda expansiva de fuego', 25, 85),
(24, 'Golpe fantasma', 'Ataca sin ser visto', 20, 65),
(25, 'Vendaval', 'Crea un fuerte viento que daña al enemigo', 30, 50);

INSERT INTO jugadores (id_jugadores, nombre, nivel, habilidad, vida) VALUES
(16, 'Lucía', 'Intermedio', 'Magia', 180),
(17, 'Pablo', 'Avanzado', 'Rayo', 220),
(18, 'Diego', 'Experto', 'Vendaval', 250),
(19, 'Carla', 'Novato', 'Curación', 120),
(20, 'Esteban', 'Intermedio', 'Boladefuego', 190),
(21, 'Gabriela', 'Experto', 'Escudodehielo', 260),
(22, 'Andrés', 'Avanzado', 'Flechavenenosa', 210),
(23, 'Silvia', 'Novato', 'Rugidodeguerra', 150),
(24, 'Mariana', 'Intermedio', 'Cadenaderayos', 180),
(25, 'César', 'Experto', 'Frenodeltiempo', 270);

INSERT INTO niveles (id_niveles, mapa, dificultad, enemigos, objetos) VALUES
(16, 'Ruinas', 'Medio', 'Escorpióndelava', 'Llavemisteriosa'),
(17, 'Lago subterráneo', 'Difícil', 'Tiburóngigante', 'Tridentedecoral'),
(18, 'Caverna mágica', 'Medio', 'Espectrodehielo', 'Pocionemísticas'),
(19, 'Arena de batalla', 'Difícil', 'Quimera', 'Espadaantigua'),
(20, 'Bosque encantado', 'Fácil', 'Harpía', 'Armaduraligera'),
(21, 'Castillo sombrío', 'Difícil', 'Vampiro', 'Collaroscuro'),
(22, 'Templo de fuego', 'Difícil', 'Fénix', 'Pergaminoardiente'),
(23, 'Páramo helado', 'Medio', 'Gólemdehielo', 'Escudodecristal'),
(24, 'Labios de volcán', 'Difícil', 'Escorpióndelava', 'Martillígneo'),
(25, 'Palacio petrificado', 'Difícil', 'Medusa', 'Gemadevida');

INSERT INTO objetos (id_objetos, nombre, funcion, lugar) VALUES
(16, 'Antorcha mágica', 'Ilumina áreas oscuras', 'Ruinas'),
(17, 'Espada fantasmal', 'Daño a entidades espectrales', 'Castillo sombrío'),
(18, 'Llave misteriosa', 'Abre puertas ocultas', 'Lago subterráneo'),
(19, 'Capa sigilosa', 'Reduce detección por enemigos', 'Caverna mágica'),
(20, 'Gema de poder', 'Incrementa ataque temporalmente', 'Arena de batalla'),
(21, 'Anillo de curación', 'Restaura puntos de vida', 'Templo de fuego'),
(22, 'Casco dorado', 'Resistencia contra hechizos', 'Páramo helado'),
(23, 'Lanza eléctrica', 'Daño eléctrico al enemigo', 'Labios de volcán'),
(24, 'Botas de plumas', 'Aumenta velocidad al doble', 'Bosque encantado'),
(25, 'Esfera de vida', 'Revive al jugador una vez', 'Palacio petrificado');