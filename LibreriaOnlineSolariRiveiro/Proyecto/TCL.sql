-- TCL
use my_new_proyect;

SELECT @@autocommit;
set @@autocommit=0;

start transaction;
savepoint sp1;
delete from producto 
where id_producto = 9;

rollback to sp1;
commit;

select * from producto;
-- ---------------------------------------------------------------------------------------------------------------------------------------------------
start transaction;

insert into producto values (11,'2023-03-23',232.2,5,'El legado',0); 
insert into producto values (12,'2021-02-12',22.2,1,'Mozart',0);
insert into producto values (13,'2021-10-10',122,3,'Norman',0);
insert into producto values (14,'2012-12-12',23.12,4,'Normales',0);
savepoint sp_1;
insert into producto values (15,'2012-12-12',78.2,5,'Locura',0); 
insert into producto values (16,'2012-12-12',29.2,6,'El olor',0);
insert into producto values (17,'2012-12-12',13.2,5,'Creacion',0);
insert into producto values (18,'2012-12-12',232.2,6,'Todos',0);
savepoint sp_2;

rollback to sp_1;
-- en este ejercicio deberia volver al primer savepoint y solo cargar los primeros 4
select * from producto;
-- release savepoint sp_1;