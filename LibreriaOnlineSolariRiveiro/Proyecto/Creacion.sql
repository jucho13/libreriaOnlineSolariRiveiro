-- ----------------------------------------------------------------------------------------------------------------------------------------
create schema if not exists my_new_proyect;
use my_new_proyect;


-- tabla para clientes
create table if not exists cliente (
id_cliente int primary key auto_increment,
cantidad_compras int,
nombre varchar(20) not null,
apellido varchar(20) not null,
pais varchar(20),
fecha_alta date
);

-- tabla para autores
create table if not exists autor (
id_autor int primary key auto_increment,
fecha_alta date,
pais varchar(20)
);

-- tabla para productos
create table if not exists producto (
id_producto int primary key auto_increment,
fecha date,
precio float,
id_autor int,
nombre varchar (30),
cantidad_ventas int
);
ALTER TABLE producto
ADD CONSTRAINT fk_id_autor FOREIGN KEY (id_autor)
REFERENCES autor (id_autor);
-- foreign key id_autor references autor (id_autor)

-- tabla dedicada unicamente a los generos de los libros
create table if not exists genero (
id_genero int primary key auto_increment,
nombre varchar(20)
);

-- tabla dedicada a los sitios donde se realizan las compras

create table if not exists sitio(
id_sitio int primary key auto_increment,
nombre char(30),
pais char(30),
dominio char(30),
cantidad_ventas int
);

-- tabla dedicada a la editorial de cada libro

create table if not exists editorial(
id_editorial int primary key auto_increment,
nombre char(30),
pais char(30),
cantidad_ventas int
);

-- tabla dedicada a cada compra que se hace en el sitio

create table if not exists compras (
id_compra int primary key auto_increment,
id_producto int,
id_autor int,
id_cliente int,
id_sitio int,
id_editorial int,
precio float,
fecha_compra date,
tipo_compra varchar (10)
);
ALTER TABLE compras
ADD CONSTRAINT fk_id_autor_compras FOREIGN KEY (id_autor)
REFERENCES autor (id_autor);
ALTER TABLE compras
ADD CONSTRAINT fk_id_producto_compras FOREIGN KEY (id_producto)
REFERENCES producto (id_producto);
ALTER TABLE compras
ADD CONSTRAINT fk_id_cliente_compras FOREIGN KEY (id_cliente)
REFERENCES cliente (id_cliente);
ALTER TABLE compras
ADD CONSTRAINT fk_id_sitio_compras FOREIGN KEY (id_sitio)
REFERENCES sitio (id_sitio);
ALTER TABLE compras
ADD CONSTRAINT fk_id_editorial_compras FOREIGN KEY (id_editorial)
REFERENCES editorial (id_editorial);

-- tabla dedicada a los votos de los usuarios de la pagina a un libro particular

create table if not exists votos(
id_voto int primary key auto_increment,
id_producto int,
voto tinyint,
id_cliente int
);
ALTER TABLE votos
ADD CONSTRAINT fk_id_producto_votos FOREIGN KEY (id_producto)
REFERENCES producto (id_producto);
ALTER TABLE votos
ADD CONSTRAINT fk_id_cliente_votos FOREIGN KEY (id_cliente)
REFERENCES cliente (id_cliente);


-- -----------------------------------------------------------------------------------------------------------------------------------------