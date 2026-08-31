CREATE DATABASE Vera
CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci; 

USE Vera;

CREATE TABLE cliente (
    id INT PRIMARY KEY,
    nombre VARCHAR(25),
    tel INT,
    pago FLOAT,
    direccion VARCHAR(25),
    tipo_pago VARCHAR(10),
    banco VARCHAR(15)
);

CREATE TABLE proveedor (
    id INT PRIMARY KEY,
    precio FLOAT,
    cantidad INT,
    ubicacion VARCHAR(25),
    fecha_entrega DATETIME,
    tipo_entrega VARCHAR(15)
);

CREATE TABLE inventario (
    id INT PRIMARY KEY,
    nombre VARCHAR(25),
    direccion VARCHAR(15),
    f_salida DATE,
    f_ingreso DATE,
    cantidad INT
);

CREATE TABLE producto_terminado (
    id_producto INT PRIMARY KEY,
    nom_pieza VARCHAR(20),
    cantidad INT,
    calidad VARCHAR(15),
    tamaño VARCHAR(10),
    material VARCHAR(12),
    inventario_id INT,
    FOREIGN KEY (inventario_id) REFERENCES inventario(id)
);

CREATE TABLE venta (
	id_venta int primary key , 
    descrip_venta varchar (70) , 
    fecha_venta date ,
    estado_venta varchar (25)
); 


CREATE TABLE envio (
	id_envio int primary key , 
    direccion varchar (15), 
    cantidad int not null , 
    precio_envio float 
); 

CREATE TABLE fabricacion (
	id_pieza int primary key , 
    material varchar (10), 
    modelo varchar (10), 
    tamaño varchar (10), 
    tiempo datetime
);

CREATE TABLE 	factura_venta(
	id_factura int primary key , 
    nombre varchar (20), 
    valor_total float , 
    cantidad int 
); 

CREATE TABLE materia_prima (
	id_materia_prima int primary key , 
    precio_final float, 
    tipo varchar (16), 
    cantidad int 
);