SELECT fn_genera_estatus();

SELECT fn_genera_telefono();

SELECT fn_genera_contrasena();

SELECT fn_genera_nombre_usuario();

SELECT fn_genera_correo();

CALL sp_genera_usuarios(20);

CALL sp_genera_sucursales(10);

CALL sp_genera_equipamientos(10);

CALL sp_genera_instalaciones(5);

CALL sp_genera_mantenimientos(15);

SELECT Id FROM tbb_equipamientos WHERE Id IS NULL OR Id = '';

SELECT ID,Nombre,Marca,Estatus FROM tbb_equipamientos ;
