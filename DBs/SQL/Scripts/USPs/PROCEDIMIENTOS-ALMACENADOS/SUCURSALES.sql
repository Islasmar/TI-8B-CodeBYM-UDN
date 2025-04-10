CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_genera_sucursales`(IN cantidad INT)
BEGIN
    DECLARE i INT DEFAULT 1;

    WHILE i <= cantidad DO
        INSERT INTO tbc_sucursales (
            Nombre,
            Direccion,
            Responsable_Id,
            Total_Clientes_Atendidos,
            Promedio_Clientes_X_Dia,
            Capacidad_Maxima,
            Total_Empleados,
            Horario_Disponibilidad,
            Estatus,
            Fecha_Registro,
            Fecha_Actualizacion
        )
        VALUES (
            fn_genera_nombre_sucursal(),
            CONCAT('Calle Principal #', FLOOR(RAND() * 1000)),
            FLOOR(1 + (RAND() * 10)),
            FLOOR(RAND() * 10000),
            FLOOR(10 + (RAND() * 100)),
            FLOOR(50 + (RAND() * 200)),
            FLOOR(5 + (RAND() * 50)),
            'Lunes a Viernes de 6:00 a 22:00 hrs',
            FLOOR(RAND() * 2),
            NOW(),
            NULL
        );
        SET i = i + 1;
    END WHILE;
END