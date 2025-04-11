/* CONSULTAS AVANZADAS GYMBULLS*/
-- Seleccionar la base
USE gym;

-- 1. Total de Equipamientos Activos/Inactivos
SELECT Estatus, COUNT(*) AS Total
FROM tbb_equipamientos
GROUP BY Estatus;

-- 2. Equipamientos con baja existencia (menos de 5 unidades)
SELECT Nombre, Marca, Modelo, Total_Existencias
FROM tbb_equipamientos
WHERE Total_Existencias < 5;

-- 3. Total de productos por marca
SELECT marca, COUNT(*) AS Total
FROM tbb_productos
GROUP BY marca
ORDER BY Total DESC;

-- 4. Historial de mantenimientos con nombre del equipo
SELECT m.Id, e.Nombre AS Equipo, m.Descripcion, m.Responsable, m.Costo, m.Fecha_mantenimiento
FROM tbb_mantenimiento m
JOIN tbb_equipamientos e ON m.Id_equipamiento = e.Id;

-- 5. Usuarios activos vs inactivos
SELECT Estatus, COUNT(*) AS Total
FROM tbb_usuarios
GROUP BY Estatus;

 -- 6. Sucursales con mayor capacidad y promedio de clientes
 SELECT Nombre, Capacidad_Maxima, Promedio_Clientes_X_Dia
FROM tbc_sucursales
ORDER BY Capacidad_Maxima DESC
LIMIT 5;

-- 7. Últimas operaciones registradas en bitácora
SELECT Usuario, Operacion, Tabla, Descripcion, Fecha_Registro
FROM tbi_bitacora
ORDER BY Fecha_Registro DESC
LIMIT 10;

-- 8. Total de mantenimientos realizados por cada responsable
SELECT Responsable, COUNT(*) AS Total_Mantenimientos
FROM tbb_mantenimiento
GROUP BY Responsable
ORDER BY Total_Mantenimientos DESC;

-- 9. Equipamientos que han recibido mantenimiento y su estatus actual
SELECT e.Nombre, e.Marca, e.Estatus AS Estatus_Equipo, m.Descripcion AS Detalle_Mantenimiento, m.Fecha_mantenimiento
FROM tbb_equipamientos e
JOIN tbb_mantenimiento m ON e.Id = m.Id_equipamiento
ORDER BY m.Fecha_mantenimiento DESC;

-- 10. Promedio de clientes atendidos por sucursal
SELECT Nombre, Total_Clientes_Atendidos, Promedio_Clientes_X_Dia,
       ROUND(Total_Clientes_Atendidos / Promedio_Clientes_X_Dia, 2) AS Estimacion_Dias_Operacion
FROM tbc_sucursales;
