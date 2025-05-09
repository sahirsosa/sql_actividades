-- Crear la base de datos
CREATE DATABASE productos_prueba;

USE productos_prueba;

-- Crear la tabla productos
CREATE TABLE productos (
    id INT PRIMARY KEY,
    nombre VARCHAR(50),
    categoria VARCHAR(50),
    precio DECIMAL(10, 2),
    stock INT
);

INSERT INTO productos (id, nombre, categoria, precio, stock) VALUES
(1, 'Laptop', 'Tecnología', 1500.00, 10),
(2, 'Mouse', 'Tecnología', 25.00, 100),
(3, 'Teclado', 'Tecnología', 50.00, 60),
(4, 'Monitor', 'Tecnología', 300.00, 20),
(5, 'Silla', 'Muebles', 120.00, 15),
(6, 'Escritorio', 'Muebles', 250.00, 5),
(7, 'Tablet', 'Tecnología', 450.00, 15),
(8, 'Cámara', 'Tecnología', 800.00, 8),
(9, 'Audífonos', 'Tecnología', 100.00, 50),
(10, 'Impresora', 'Tecnología', 200.00, 12),
(11, 'Cafetera', 'Electrodomésticos', 85.00, 25),
(12, 'Lámpara', 'Hogar', 45.00, 30),
(13, 'Couch', 'Muebles', 700.00, 7),
(14, 'Libro', 'Educación', 20.00, 80),
(15, 'Microondas', 'Electrodomésticos', 120.00, 10),
(16, 'Refrigerador', 'Electrodomésticos', 900.00, 2),
(17, 'Planta', 'Hogar', 30.00, 18),
(18, 'Alfombra', 'Hogar', 150.00, 9),
(19, 'Cama', 'Muebles', 1000.00, 4),
(20, 'Reloj', 'Tecnología', 250.00, 14);
