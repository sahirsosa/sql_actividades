CREATE DATABASE tienda;
USE tienda;

CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    telefono VARCHAR(15),
    direccion VARCHAR(100),
    departamento_id INT
);

CREATE TABLE empleados (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    telefono VARCHAR(15),
    puesto VARCHAR(50)
);

CREATE TABLE departamentos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    piso INT
);

CREATE TABLE marcas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    origen VARCHAR(50)
);

CREATE TABLE articulos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    precio DECIMAL(10, 2),
    marca_id INT
);

CREATE TABLE provedores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    telefono VARCHAR(15),
    direccion VARCHAR(100)
);

CREATE TABLE vendedores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    especialidad VARCHAR(50)
);

-- Insertar registros en la tabla clientes
INSERT INTO clientes (nombre, telefono, direccion, departamento_id) VALUES
('Cliente1', '1234567890', 'Calle 1', 1),
('Cliente2', '2345678901', 'Calle 2', 2),
('Cliente3', '3456789012', 'Calle 3', 3),
('Cliente4', '4567890123', 'Calle 4', 4),
('Cliente5', '5678901234', 'Calle 5', 5),
('Cliente6', '6789012345', 'Calle 6', 1),
('Cliente7', '7890123456', 'Calle 7', 2),
('Cliente8', '8901234567', 'Calle 8', 3),
('Cliente9', '9012345678', 'Calle 9', 4),
('Cliente10', '0123456789', 'Calle 10', 5),
('Cliente11', '1123456789', 'Calle 11', 1),
('Cliente12', '2123456789', 'Calle 12', 2),
('Cliente13', '3123456789', 'Calle 13', 3),
('Cliente14', '4123456789', 'Calle 14', 4),
('Cliente15', '5123456789', 'Calle 15', 5),
('Cliente16', '6123456789', 'Calle 16', 1),
('Cliente17', '7123456789', 'Calle 17', 2),
('Cliente18', '8123456789', 'Calle 18', 3),
('Cliente19', '9123456789', 'Calle 19', 4),
('Cliente20', '1234509876', 'Calle 20', 5),
('Cliente21', '2345609876', 'Calle 21', 1),
('Cliente22', '3456709876', 'Calle 22', 2),
('Cliente23', '4567809876', 'Calle 23', 3),
('Cliente24', '5678909876', 'Calle 24', 4),
('Cliente25', '6789019876', 'Calle 25', 5);

-- Insertar registros en la tabla empleados
INSERT INTO empleados (nombre, telefono, puesto) VALUES
('Empleado1', '1234567890', 'Cajero'),
('Empleado2', '2345678901', 'Supervisor'),
('Empleado3', '3456789012', 'Gerente'),
('Empleado4', '4567890123', 'Almacén'),
('Empleado5', '5678901234', 'Seguridad'),
('Empleado6', '6789012345', 'Vendedor'),
('Empleado7', '7890123456', 'Reponedor'),
('Empleado8', '8901234567', 'Limpieza'),
('Empleado9', '9012345678', 'Recepción'),
('Empleado10', '0123456789', 'Cajero'),
('Empleado11', '1123456789', 'Supervisor'),
('Empleado12', '2123456789', 'Gerente'),
('Empleado13', '3123456789', 'Almacén'),
('Empleado14', '4123456789', 'Seguridad'),
('Empleado15', '5123456789', 'Vendedor'),
('Empleado16', '6123456789', 'Reponedor'),
('Empleado17', '7123456789', 'Limpieza'),
('Empleado18', '8123456789', 'Recepción'),
('Empleado19', '9123456789', 'Cajero'),
('Empleado20', '1234509876', 'Supervisor'),
('Empleado21', '2345609876', 'Gerente'),
('Empleado22', '3456709876', 'Almacén'),
('Empleado23', '4567809876', 'Seguridad'),
('Empleado24', '5678909876', 'Vendedor'),
('Empleado25', '6789019876', 'Reponedor');

-- Insertar registros en la tabla departamentos
INSERT INTO departamentos (nombre, piso) VALUES
('Electrónica', 1),
('Hogar', 2),
('Ropa', 3),
('Zapatería', 4),
('Juguetería', 5),
('Deportes', 6),
('Papelería', 7),
('Mascotas', 8),
('Jardinería', 9),
('Librería', 10),
('Tecnología', 11),
('Supermercado', 12),
('Electrodomésticos', 13),
('Muebles', 14),
('Cosméticos', 15),
('Joyería', 16),
('Bebés', 17),
('Oficina', 18),
('Herramientas', 19),
('Automotriz', 20),
('Cocina', 21),
('Baño', 22),
('Terraza', 23),
('Camping', 24),
('Audio', 25);

-- Insertar registros en la tabla marcas
INSERT INTO marcas (nombre, origen) VALUES
('Sony', 'Japón'),
('Samsung', 'Corea del Sur'),
('Apple', 'Estados Unidos'),
('Microsoft', 'Estados Unidos'),
('Dell', 'Estados Unidos'),
('HP', 'Estados Unidos'),
('Lenovo', 'China'),
('Asus', 'Taiwán'),
('Acer', 'Taiwán'),
('LG', 'Corea del Sur'),
('Panasonic', 'Japón'),
('Philips', 'Países Bajos'),
('Bosch', 'Alemania'),
('Siemens', 'Alemania'),
('Canon', 'Japón'),
('Nikon', 'Japón'),
('GoPro', 'Estados Unidos'),
('Fujifilm', 'Japón'),
('Xiaomi', 'China'),
('Huawei', 'China'),
('Oppo', 'China'),
('Vivo', 'China'),
('Realme', 'China'),
('OnePlus', 'China'),
('Tesla', 'Estados Unidos');

-- Insertar registros en la tabla artículos
INSERT INTO articulos (nombre, precio, marca_id) VALUES
('Televisor', 300.00, 1),
('Smartphone', 500.00, 2),
('Laptop', 1000.00, 3),
('Tablet', 400.00, 4),
('Smartwatch', 200.00, 5),
('Auriculares', 50.00, 6),
('Altavoz', 150.00, 7),
('Impresora', 100.00, 8),
('Cámara', 600.00, 9),
('Dron', 800.00, 10),
('Microondas', 120.00, 11),
('Licuadora', 60.00, 12),
('Refrigerador', 500.00, 13),
('Lavadora', 700.00, 14),
('Secadora', 650.00, 15),
('Cafetera', 80.00, 16),
('Horno', 200.00, 17),
('Plancha', 40.00, 18),
('Ventilador', 30.00, 19),
('Aire Acondicionado', 900.00, 20),
('Lámpara', 20.00, 21),
('Teclado', 50.00, 22),
('Ratón', 30.00, 23),
('Disco Duro', 100.00, 24),
('Memoria USB', 20.00, 25);

-- Insertar registros en la tabla proveedores
INSERT INTO provedores (nombre, telefono, direccion) VALUES
('Proveedor1', '1234567890', 'Av. Central 1'),
('Proveedor2', '2345678901', 'Av. Central 2'),
('Proveedor3', '3456789012', 'Av. Central 3'),
('Proveedor4', '4567890123', 'Av. Central 4'),
('Proveedor5', '5678901234', 'Av. Central 5'),
('Proveedor6', '6789012345', 'Av. Central 6'),
('Proveedor7', '7890123456', 'Av. Central 7'),
('Proveedor8', '8901234567', 'Av. Central 8'),
('Proveedor9', '9012345678', 'Av. Central 9'),
('Proveedor10', '0123456789', 'Av. Central 10'),
('Proveedor11', '1123456789', 'Av. Central 11'),
('Proveedor12', '2123456789', 'Av. Central 12'),
('Proveedor13', '3123456789', 'Av. Central 13'),
('Proveedor14', '4123456789', 'Av. Central 14'),
('Proveedor15', '5123456789', 'Av. Central 15'),
('Proveedor16', '6123456789', 'Av. Central 16'),
('Proveedor17', '7123456789', 'Av. Central 17'),
('Proveedor18', '8123456789', 'Av. Central 18'),
('Proveedor19', '9123456789', 'Av. Central 19'),
('Proveedor20', '1234509876', 'Av. Central 20'),
('Proveedor21', '2345609876', 'Av. Central 21'),
('Proveedor22', '3456709876', 'Av. Central 22'),
('Proveedor23', '4567809876', 'Av. Central 23'),
('Proveedor24', '5678909876', 'Av. Central 24'),
('Proveedor25', '6789019876', 'Av. Central 25');
-- Insertar registros en la tabla vendedores
INSERT INTO vendedores (nombre, especialidad) VALUES
('Vendedor1', 'Electrónica'),
('Vendedor2', 'Hogar'),
('Vendedor3', 'Ropa'),
('Vendedor4', 'Zapatería'),
('Vendedor5', 'Juguetería'),
('Vendedor6', 'Deportes'),
('Vendedor7', 'Papelería'),
('Vendedor8', 'Mascotas'),
('Vendedor9', 'Jardinería'),
('Vendedor10', 'Librería'),
('Vendedor11', 'Tecnología'),
('Vendedor12', 'Supermercado'),
('Vendedor13', 'Electrodomésticos'),
('Vendedor14', 'Muebles'),
('Vendedor15', 'Cosméticos'),
('Vendedor16', 'Joyería'),
('Vendedor17', 'Bebés'),
('Vendedor18', 'Oficina'),
('Vendedor19', 'Herramientas'),
('Vendedor20', 'Automotriz'),
('Vendedor21', 'Cocina'),
('Vendedor22', 'Baño'),
('Vendedor23', 'Terraza'),
('Vendedor24', 'Camping'),
('Vendedor25', 'Audio');


