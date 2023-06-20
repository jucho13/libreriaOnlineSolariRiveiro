-- triggers

use my_new_proyect;

-- En este trigger voy a anotar en una logBitacora que usuario superviso la compra, el importe, que fecha y que hora

create table if not exists logBitacora (
	id int not null auto_increment primary key,
    usuario varchar(100) not null,
    importe float not null,
    fecha timestamp);
    
    
delimiter $$
drop trigger if exists triggerCompra_after_insert $$
create trigger triggerCompra_after_insert
after insert on compras
for each row
begin
  insert into logBitacora values (NEW.ID_COMPRA, current_user(), NEW.precio, current_timestamp());
end $$
delimiter ;


insert into compras values (14,7,2,5,2,3,232.2,'2012-12-04','MP');
select * from compras;
select * from logBitacora;

-- En este trigger voy a hacer un check de los votos de los clientes, en el caso que sea mayor a 10 sera 10
-- y en el caso que sea menor a 0 sera 0

DELIMITER $$
drop trigger if exists trigger_check_votos_before_insert $$
create trigger trigger_check_votos_before_insert
before insert 
on votos for each row
begin 
	if new.voto <0 then
		set new.voto=0;
	elseif new.voto >10 then
		set new.voto =10;
	end if;
end $$
DELIMITER   ;

-- prueba
insert into votos values (12,3,11,3);
insert into votos values (13,2,-2,7);

-- al consultar la tabla de votos el trigger funciona a la perfeccion en ambas
select * from votos;

-- trigger que suma una compra a cantidad_compra a varias tablas

delimiter $$
drop trigger if exists triggerCompra_after_insert2 $$
create trigger triggerCompra_after_insert2
after insert on compras
for each row
begin
  update editorial set cantidad_ventas=cantidad_ventas + 1
  where id_editorial= new.id_editorial;
  update producto set cantidad_ventas=cantidad_ventas + 1
  where id_producto= new.id_producto;
  update sitio set cantidad_ventas=cantidad_ventas + 1
  where id_sitio= new.id_sitio;
  update cliente set cantidad_compras = cantidad_compras + 1
  where id_cliente= new.id_cliente;
end $$
delimiter ;

insert into compras 
values (15,2,5,6,1,4,122.23,'2023-02-12','CDNI');

select * from editorial;
select * from producto;
select * from sitio;
select * from cliente;

-- como podemos observar a partir de aqui todas los inserts que se hagan van a dejar marcado en cada una de las tablas su venta
-- ademas de la bitacora