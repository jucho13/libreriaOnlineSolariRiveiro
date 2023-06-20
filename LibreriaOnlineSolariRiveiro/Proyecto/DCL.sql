-- DCL
use my_new_proyect;
-- creo un nuevo usuario
create user if not exists 'usuario1'@'localhost' identified by 'clave123';
flush privileges;
-- creo otro usuario
create user if not exists 'usuario2'@'localhost' identified by 'clave123';
flush privileges;

show grants for 'usuario1'@'localhost';
-- damos permiso de solo lectura de todo al usuario 1
grant select on *.* to 'usuario1'@'localhost';
-- damos permiso de lectura, insercion y modificacion al usuario 2
grant select, insert, update on *.* to 'usuario2'@'localhost';