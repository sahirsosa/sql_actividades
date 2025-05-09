CREATE DATABASE escuela;
USE escuela;

CREATE TABLE estudiantes (
    id_estudiantes INT PRIMARY KEY,
    nombre VARCHAR(50),
    edad INT,
    telefono VARCHAR(15),
    carrera VARCHAR(50)
);

CREATE TABLE grupos (
    id_grupos INT PRIMARY KEY,
    grado VARCHAR(10),
    num_alumnos INT,
    num_maestros INT,
    tutor VARCHAR(50)
);

CREATE TABLE maestros (
    id_maestros INT PRIMARY KEY,
    nombre VARCHAR(50),
    experiencia INT,
    direccion VARCHAR(50),
    especialidad VARCHAR(50)
);

CREATE TABLE materias (
    id_materias INT PRIMARY KEY,
    grupo VARCHAR(10),
    nombre VARCHAR(50),
    horario VARCHAR(20),
    id_maestro INT,
    FOREIGN KEY (id_maestro) REFERENCES maestros(id_maestros)
);

INSERT INTO estudiantes (id_estudiantes, nombre, edad, telefono, carrera) VALUES 
(16, 'Mario Ramírez', 20, '5557654320', 'Ingeniería Civil'),
(17, 'Susana Díaz', 22, '5558765431', 'Medicina Veterinaria'),
(18, 'Iván Reyes', 19, '5551230987', 'Ingeniería Mecánica'),
(19, 'Carla Mendoza', 21, '5554567890', 'Psicología'),
(20, 'Jorge Villalobos', 23, '5557891234', 'Administración'),
(21, 'Elena Ortega', 20, '5553215678', 'Diseño de Modas'),
(22, 'Héctor Esquivel', 19, '5556549870', 'Biología'),
(23, 'Camila Pérez', 18, '5554321987', 'Arte Digital'),
(24, 'Santiago Morales', 22, '5559871234', 'Contaduría Pública'),
(25, 'Isabel Soto', 21, '5555678900', 'Relaciones Internacionales');

INSERT INTO grupos (id_grupos, grado, num_alumnos, num_maestros, tutor) VALUES 
(16, '1º', 28, 5, 'Julieta'),
(17, '2º', 29, 4, 'Esteban'),
(18, '3º', 26, 6, 'Marina'),
(19, '4º', 30, 5, 'Lucio'),
(20, '5º', 27, 5, 'Lorena'),
(21, '6º', 31, 6, 'Mónica'),
(22, '1º', 32, 5, 'Rafael'),
(23, '2º', 30, 4, 'Sofía'),
(24, '3º', 28, 6, 'Daniela'),
(25, '4º', 25, 5, 'Emilio');

INSERT INTO maestros (id_maestros, nombre, experiencia, direccion, especialidad) VALUES 
(16, 'Silvia Andrade', 9, 'Calle 303', 'Historia'),
(17, 'Javier Muñoz', 12, 'Calle 404', 'Química'),
(18, 'Marta Valle', 6, 'Calle 505', 'Arte'),
(19, 'Felipe Escobar', 10, 'Avenida 606', 'Deportes'),
(20, 'Gabriela Fernández', 8, 'Calle 707', 'Inglés'),
(21, 'Alonso Gómez', 7, 'Avenida 808', 'Física'),
(22, 'Patricia Cruz', 11, 'Calle 909', 'Matemáticas'),
(23, 'Rodolfo Luna', 13, 'Calle 1010', 'Filosofía'),
(24, 'Lucía Márquez', 5, 'Calle 1111', 'Biología'),
(25, 'Roberto Castellanos', 4, 'Avenida 1212', 'Tecnología');

INSERT INTO materias (id_materias, grupo, nombre, horario, id_maestro) VALUES 
(16, '1º', 'Ciencias Naturales', '08:00 - 09:00', 16),
(17, '2º', 'Historia Universal', '09:00 - 10:00', 17),
(18, '3º', 'Álgebra', '10:00 - 11:00', 18),
(19, '4º', 'Música', '11:00 - 12:00', 19),
(20, '5º', 'Educación Física', '12:00 - 13:00', 20),
(21, '6º', 'Química Orgánica', '13:00 - 14:00', 21),
(22, '1º', 'Arte Visual', '14:00 - 15:00', 22),
(23, '2º', 'Geometría', '15:00 - 16:00', 23),
(24, '3º', 'Lengua Española', '16:00 - 17:00', 24),
(25, '4º', 'Física Experimental', '08:00 - 09:00', 25);