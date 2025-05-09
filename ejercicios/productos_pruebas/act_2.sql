CREATE TABLE productos3 (
    id INT PRIMARY KEY,
    nombre VARCHAR(50),
    categoria VARCHAR(50),
    precio DECIMAL(10, 2),
    stock INT,
    descuento DECIMAL(10, 2)
);

INSERT INTO productos3 (id, nombre, categoria, precio, stock, descuento) VALUES
(1, 'Laptop', 'Tecnología', 1500.00, 10, NULL),
(2, 'Mouse', 'Tecnología', 25.00, NULL, 5.00),
(3, 'Teclado', 'Tecnología', 50.00, 60, NULL),
(4, 'Monitor', 'Tecnología', 300.00, 20, 15.00),
(5, 'Silla', 'Muebles', 120.00, NULL, NULL),
(6, 'Escritorio', 'Muebles', 250.00, 5, 10.00);

-- Mostrar todos los productos y su stock. Si el stock es NULL, mostrar 0.
SELECT id, nombre, 
       IFNULL(stock, 0) AS stock
FROM productos3;

-- Mostrar el nombre del producto y el precio_final considerando el descuento.
-- Si descuento es NULL, considerarlo como 0.
SELECT nombre, 
       precio - IFNULL(descuento, 0) AS precio_final
FROM productos3;



-- Mostrar el nombre y una columna categoria_segura que muestre "Desconocida" si la categoría es NULL.
SELECT nombre, 
       IFNULL(categoria, 'Desconocida') AS categoria_segura
FROM productos3;

-- Actualizar el campo stock para que, si es NULL, se establezca en 0.
UPDATE productos3
SET stock = IFNULL(stock, 0);

-- Actualizar el campo descuento para que, si es NULL, se establezca en 0.
UPDATE productos3
SET descuento = IFNULL(descuento, 0);

-- Mostrar todos los productos ordenados por stock, considerando los NULL como 0.
SELECT id, nombre, 
       IFNULL(stock, 0) AS stock
FROM productos3
ORDER BY IFNULL(stock, 0);
