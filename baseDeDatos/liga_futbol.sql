CREATE DATABASE liga_futbol;
USE liga_futbol;

CREATE TABLE jugadores (
    id_jugadores INT PRIMARY KEY,
    nombre VARCHAR(50),
    posicion VARCHAR(20),
    equipo VARCHAR(50),
    edad INT
);

CREATE TABLE arbitros (
    id_arbitros INT PRIMARY KEY,
    nombre VARCHAR(50),
    experiencia INT,
    precio DECIMAL(10,2)
);

CREATE TABLE categorias (
    id_categorias INT PRIMARY KEY,
    masculino VARCHAR(2),
    femenino VARCHAR(2),
    libre VARCHAR(2),
    junior VARCHAR(2)
);

CREATE TABLE equipos (
    id_equipos INT PRIMARY KEY,
    nombre VARCHAR(50),
    num_jugadores INT,
    entrenador VARCHAR(50),
    categoria VARCHAR(20)
);

INSERT INTO jugadores (id_jugadores, nombre, posicion, equipo, edad) VALUES
(16, 'Alejandro López', 'Delantero', 'Tiburones', 22),
(17, 'Samuel Martínez', 'Portero', 'Felinos', 24),
(18, 'Esteban Torres', 'Defensa', 'Águilas', 26),
(19, 'Roberto García', 'Mediocampista', 'Halcones', 23),
(20, 'José Hernández', 'Defensa', 'Leones', 25),
(21, 'Mario Jiménez', 'Delantero', 'Cobras', 28),
(22, 'Fernando Cruz', 'Mediocampista', 'Jaguares', 21),
(23, 'Luis Gómez', 'Portero', 'Panteras', 30),
(24, 'Andrés Pérez', 'Delantero', 'Dragones', 20),
(25, 'Carlos Rivera', 'Defensa', 'Tiburones', 27);

INSERT INTO arbitros (id_arbitros, nombre, experiencia, precio) VALUES
(16, 'Julio Martínez', 15, 4500.00),
(17, 'Ana Torres', 8, 3200.00),
(18, 'Luis Pérez', 10, 3700.00),
(19, 'Marcela García', 12, 4000.00),
(20, 'Carlos Ramírez', 20, 6000.00),
(21, 'Sofía Moreno', 5, 2500.00),
(22, 'Fernando López', 9, 3500.00),
(23, 'Andrea Ruiz', 7, 3000.00),
(24, 'Javier Hernández', 16, 4800.00),
(25, 'Laura Salazar', 11, 3900.00);

INSERT INTO categorias (id_categorias, masculino, femenino, libre, junior) VALUES
(16, 'Si', 'No', 'Si', 'Si'),
(17, 'No', 'Si', 'No', 'No'),
(18, 'Si', 'Si', 'Si', 'No'),
(19, 'No', 'No', 'Si', 'Si'),
(20, 'Si', 'No', 'No', 'No'),
(21, 'Si', 'Si', 'No', 'Si'),
(22, 'No', 'No', 'No', 'Si'),
(23, 'Si', 'No', 'Si', 'No'),
(24, 'No', 'Si', 'Si', 'No'),
(25, 'Si', 'Si', 'Si', 'Si');

INSERT INTO equipos (id_equipos, nombre, num_jugadores, entrenador, categoria) VALUES
(16, 'Fantasmas', 18, 'Luis García', 'Juvenil'),
(17, 'Piratas', 20, 'Ana Torres', 'Femenil'),
(18, 'Titanes', 22, 'Roberto Gómez', 'Varonil'),
(19, 'Centauros', 19, 'Carlos Ramírez', 'Libre'),
(20, 'Gladiadores', 21, 'María López', 'Juvenil'),
(21, 'Vikingos', 23, 'Fernando Cruz', 'Femenil'),
(22, 'Ánforas', 17, 'Sofía Moreno', 'Varonil'),
(23, 'Tigres Blancos', 20, 'Laura Salazar', 'Libre'),
(24, 'Escorpiones', 18, 'Javier Hernández', 'Juvenil'),
(25, 'Cóndores', 22, 'Andrea Ruiz', 'Femenil');