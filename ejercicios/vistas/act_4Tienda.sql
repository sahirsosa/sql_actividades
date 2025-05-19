SELECT * FROM nombre_de_la_vista;

-- tienda

-- 1. Vista de clientes en el mismo departamento que 'Cliente1'
CREATE VIEW clientes_mismo_departamento AS
SELECT nombre FROM clientes
WHERE departamento_id = (SELECT departamento_id FROM clientes WHERE nombre = 'Cliente1');

-- 2. Vista de artículos con el mismo precio que 'Laptop'
CREATE VIEW articulos_mismo_precio AS
SELECT nombre FROM articulos
WHERE precio = (SELECT precio FROM articulos WHERE nombre = 'Laptop');

-- 3. Vista de departamentos con más de 2 clientes asignados
CREATE VIEW departamentos_mas_2_clientes AS
SELECT nombre FROM departamentos
WHERE id IN (
    SELECT departamento_id FROM clientes
    GROUP BY departamento_id
    HAVING COUNT(*) > 2
);

-- 4. Vista de empleados con el mismo puesto que 'Empleado3'
CREATE VIEW empleados_mismo_puesto AS
SELECT nombre FROM empleados
WHERE puesto = (SELECT puesto FROM empleados WHERE nombre = 'Empleado3');

-- 5. Vista de proveedores con el mismo teléfono que 'Proveedor1'
CREATE VIEW proveedores_mismo_telefono AS
SELECT nombre FROM proveedores
WHERE telefono = (SELECT telefono FROM proveedores WHERE nombre = 'Proveedor1');