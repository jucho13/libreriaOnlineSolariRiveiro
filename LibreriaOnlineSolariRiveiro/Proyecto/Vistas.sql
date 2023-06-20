use my_new_proyect;
-- creo una vista que me muestre el nombre del cliente que mas compras realizo en mi sitio 

create or replace view vw_nombre_cliente_mas_comprador as (
select nombre, apellido from cliente
where cantidad_compras=(
	select max(cantidad_compras) from cliente
));

-- creo una vista que me muestre el precio del libro mas caro, su nombre y cantidad de ventas

create or replace view vw_nombre_libro_mas_caro as (
select nombre,precio,cantidad_ventas from producto
where precio =( select max(precio) from producto) );

-- creo una vista que me muestre el total de la suma de todas las compras de mi proyecto 

create or replace view vw_total_de_ventas as (
select round(sum(precio),2) as total_ventas from compras);

-- muestro el nombre, apellido, pais y fecha de alta del cliente que hizo la compra mas baja de toda la tienda

create or replace view vw_cliente_compra_mas_baja as (
	select c.nombre as nombre,c.apellido as apellido, c.fecha_alta as fecha_alta,c.pais as país 
    from cliente as c
	join compras as co on co.id_cliente=c.id_cliente where co.precio=
		(select min(precio) from compras));

-- creo una vista que me muestre el precio y la fecha de compra de todas las compras que se realizaron con mercado pago en mi programa 

create or replace view vw_compras_mercado_pago as (
	select precio,fecha_compra from compras
    where tipo_compra = 'MP'
 );