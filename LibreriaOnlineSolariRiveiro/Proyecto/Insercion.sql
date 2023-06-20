-- Comienzo con las inserciones a las tablas
use my_new_proyect;

-- clientes

insert into cliente
values (1,0,'Carlos','Zambrano','Peru','2012-12-11'); 
insert into cliente
values (2,0,'Ruben','Venegas','Bolivia','2015-11-01'); 
insert into cliente
values (3,0,'Carlos','Bianchi','Francia','2012-10-11'); 
insert into cliente
values (4,0,'Pedro','Aznar','Chile','2015-02-21'); 
insert into cliente
values (5,0,'Dario','Pong','China','2017-05-13'); 
insert into cliente
values (6,0,'Carlos','Lopez','Uruguay','2011-10-03'); 
insert into cliente
values (7,0,'Esteban','Artero','Francia','2022-04-04'); 
insert into cliente
values (8,0,'Pedro','Pascal','Argentina','2022-11-11'); 
insert into cliente
values (9,0,'Dario','Loperfido','Peru','2012-10-11'); 
insert into cliente
values (10,0,'Cesar','Bueno','Bolivia','2012-05-11');
insert into cliente
values (11,0,'Julian','Zarate','Argentina','2019-06-11'); 

-- autores

insert into autor
values  (1,'2019-06-11', 'Argentina'),
		(2,'2020-02-15', 'España'),
		(3,'2018-11-27', 'México'),
		(4,'2022-07-04', 'Estados Unidos'),
		(5,'2021-09-30', 'Brasil'),
		(6,'2023-01-18', 'Francia'),
		(7,'2020-12-01', 'Italia'),
		(8,'2022-03-22', 'Alemania'),
		(9,'2021-05-09', 'Chile'),
		(10,'2023-06-02', 'Canadá');

-- producto

insert into producto (id_producto,fecha,precio,id_autor,nombre,cantidad_ventas)
values  (1, '2022-05-27', 78.95, 3, 'El secreto de la montaña', 0),
(2, '2023-01-15', 55.20, 6, 'El laberinto de los sueños', 0),
(3, '2021-09-10', 109.99, 2, 'El poder de la imaginación', 0),
(4, '2022-11-03', 45.50, 1, 'El jardín de las mariposas', 0),
(5, '2023-06-08', 67.80, 8, 'El susurro de la noche', 0),
(6, '2022-07-19', 92.75, 9, 'El último adiós', 0),
(7, '2021-12-05', 34.99, 5, 'El vuelo de la mariposa', 0),
(8, '2023-02-28', 79.99, 7, 'El eco de la montaña', 0),
(9, '2021-06-21', 28.50, 10, 'El amanecer dorado', 0),
(10, '2022-09-14', 63.25, 4, 'La sombra del pasado', 0);

-- genero

insert into genero (id_genero,nombre)
values (1, 'Acción'),
(2, 'Aventura'),
(3, 'Comedia'),
(4, 'Drama'),
(5, 'Ciencia ficción'),
(6, 'Romance'),
(7, 'Terror'),
(8, 'Fantasía'),
(9, 'Suspense'),
(10, 'Documental');


-- sitio

insert into sitio 
values (1, 'E-Commerce Store 1', 'Argentina', 'ecommercestore1.com', 0),
(2, 'Online Shop 2', 'Brasil', 'onlineshop2.com', 0),
(3, 'Digital Marketplace', 'Chile', 'digitalmarketplace.com', 0),
(4, 'eShop Plus', 'México', 'eshopplus.com', 0),
(5, 'Global Online Mart', 'España', 'globalonlinemart.com', 0),
(6, 'Webstore Express', 'Francia', 'webstoreexpress.com', 0),
(7, 'Virtual Mall', 'Italia', 'virtualmall.com', 0),
(8, 'Online Outlet', 'Alemania', 'onlineoutlet.com', 0),
(9, 'eCommerce Hub', 'Estados Unidos', 'ecommercehub.com', 0),
(10, 'eShop Pro', 'Canadá', 'eshoppro.com', 0);

-- editorial

insert into editorial
values (1, 'Editorial XYZ', 'Argentina', 0),
(2, 'Editorial ABC', 'Brasil', 0),
(3, 'Editorial QWERTY', 'Chile', 0),
(4, 'Editorial 123', 'México', 0),
(5, 'Editorial Random', 'España', 0),
(6, 'Editorial Libros Rápidos', 'Francia', 0),
(7, 'Editorial Bestseller', 'Italia', 0),
(8, 'Editorial Letras Grandes', 'Alemania', 0),
(9, 'Editorial Books Unlimited', 'Estados Unidos', 0),
(10, 'Editorial Bookworm', 'Canadá', 0);

insert into compras
values
(1, 3, 5, 8, 2, 6, 49.99, '2022-05-15', 'EFT'),
(2, 1, 7, 4, 3, 9, 29.99, '2022-09-02', 'CDNI'),
(3, 2, 9, 6, 5, 1, 19.99, '2022-07-18', 'MP'),
(4, 5, 8, 2, 1, 4, 39.99, '2022-11-30', 'TRANSF'),
(5, 4, 2, 1, 9, 10, 59.99, '2022-08-25', 'TC'),
(6, 10, 6, 9, 7, 3, 14.99, '2022-06-11', 'TD'),
(7, 9, 4, 5, 6, 2, 24.99, '2022-12-05', 'EFT'),
(8, 7, 1, 3, 10, 5, 34.99, '2022-10-20', 'CDNI'),
(9, 8, 3, 10, 4, 8, 44.99, '2022-07-29', 'MP'),
(10, 6, 10, 7, 8, 7, 54.99, '2022-09-14', 'TRANSF');

insert into votos 
values 
(1, 3, 5, 8),
(2, 1, 7, 4),
(3, 2, 9, 6),
(4, 5, 8, 2),
(5, 4, 2, 1),
(6, 10, 6, 9),
(7, 9, 4, 5),
(8, 7, 1, 3),
(9, 8, 3, 10),
(10, 6, 10, 7);