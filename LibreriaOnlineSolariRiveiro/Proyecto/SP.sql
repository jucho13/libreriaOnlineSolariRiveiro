-- stored procedures

use my_new_proyect;

-- EN ESTE STORED PROCEDURES PIDO POR PARAMETROS DE ENTRADA UNA COLUMNA, Y UN ORDENAMIENTO (ASC O DESC) 

DELIMITER $$
DROP PROCEDURE IF EXISTS sp_ordenar_tabla_producto $$
CREATE PROCEDURE sp_ordenar_tabla_producto(
	IN campo varchar(20),
    IN ordenamiento char(5))
BEGIN
    if (ordenamiento = 'asc') then
		set @query = concat('select * from producto order by ', campo, ' asc;');
    else
		set @query = concat('select * from producto order by ', campo, ' desc;');
	end if;
    
    prepare stmt from @query;
    execute stmt;
    deallocate prepare stmt;
END
$$
DELIMITER ;

-- ACA LAS LLAMO 
call sp_ordenar_tabla_producto('fecha','desc');
call sp_ordenar_tabla_producto('nombre','asc');

-- EN ESTE STORED PROCEDURE PIDO POR PARAMETROS LOS VALORES DE LAS COLUMNAS DE LA TABLA COMPRAS

DELIMITER $$
DROP PROCEDURE IF EXISTS sp_ingresar_registro_compras $$
CREATE PROCEDURE sp_ingresar_registro_compras(
	IN id_c int,
    IN id_prod int,
    IN id_aut int,
    IN id_client int,
    IN id_sit int,
    IN id_edit int,
    IN precio float,
    IN fecha date,
    IN tipo_compra char(5))
BEGIN
	insert into compras values (id_c,id_prod,id_aut,id_client,id_sit,id_edit,precio,fecha,tipo_compra);
END
$$
DELIMITER;

-- ACA LAS LLAMO

call sp_ingresar_registro_compras(11,4,3,5,3,8,1222.2,'2012-10-04','MP');
call sp_ingresar_registro_compras(12,1,1,9,4,5,22.2,'2011-11-11','TRANS');
call sp_ingresar_registro_compras(13,6,4,1,2,1,64.2,'2017-10-23','CDNI');
