-- Funciones
use my_new_proyect;

-- Funcion que carga votos en mi app a traves de parametros

DELIMITER $$
CREATE FUNCTION fn_cargar_parametros(n1 INT, n2 INT,n3 INT, n4 INT)
RETURNS INT
DETERMINISTIC
BEGIN
   INSERT INTO votos (id_voto,id_producto,voto,id_cliente)
   VALUES (n1,n2,n3,n4);
   
   RETURN n1;
END $$
 DELIMITER ;
 
select fn_cargar_parametros (11,3,9,2) as id_voto;
 
-- Funcion que pida por parametro un nombre de un cliente y luego nos muestre la cantidad de compras que tiene
 
DELIMITER $$
CREATE FUNCTION fn_mostrar_compras(nombref CHAR(20), apellidof CHAR(20))
RETURNS INT
DETERMINISTIC
BEGIN
   DECLARE cantidad_compras_cliente INT;
   SELECT COUNT(*) INTO cantidad_compras_cliente
   FROM compras
   WHERE id_cliente = (
      SELECT id_cliente
      FROM cliente
      WHERE nombre = nombref AND apellido = apellidof
   );	
   
   RETURN cantidad_compras_cliente;
END $$
DELIMITER ;

select fn_mostrar_compras ('Dario', 'Loperfido');

