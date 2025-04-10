CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_genera_equipamientos`(IN cantidad INT)
BEGIN
    DECLARE i INT DEFAULT 1;

    WHILE i <= cantidad DO
        INSERT INTO tbb_equipamientos (
            Nombre,
            Marca,
            Modelo,
            Fotografia,
            Estatus,
            Total_Existencias,
            Fecha_Registro,
            Fecha_Actualizacion
        )
        VALUES (
            fn_genera_nombre_equipo(),
            CONCAT('Marca ', CHAR(FLOOR(65 + RAND() * 26))),
            CONCAT('Modelo-', FLOOR(RAND() * 1000)),
            CONCAT('https://fakeimg.pl/250x250/?text=Equipo+', i),
            FLOOR(RAND() * 2),
            FLOOR(1 + (RAND() * 100)),
            NOW(),
            NULL
        );
        SET i = i + 1;
    END WHILE;
END