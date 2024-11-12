/* Estoy creando la base de datos llamada dbGamarraMarket */  DROP DATABASE IF EXISTS dbGamarraMarket; 
CREATE DATABASE dbGamarraMarket
DEFAULT CHARACTER SET utf8;

/* Voy a utilizar la base de datos dbGamarraMarket */  
USE dbGamarraMarket;

/* Estoy creando la tabla CLIENTE */  
CREATE TABLE CLIENTE
(
    id int auto_increment,
    tipo_documento char(3),
    numero_documento char(9),
    nombres varchar(60),
    apellidos varchar(90),
    email varchar(80),
    celular char(9),
    fecha_nacimiento date,
    activo bool,
    CONSTRAINT cliente_pk PRIMARY KEY (id)
);

/* Listar estructura de tabla CLIENTE */
SHOW COLUMNS IN CLIENTE;

/* Insertar 1 registro en la tabla CLIENTE */
INSERT INTO CLIENTE
(tipo_documento, numero_documento, nombres, apellidos, email, celular, fecha_nacimiento)
VALUES
('DNI', '77889955', 'Alberto', 'Solano Pariona', 'alberto.pariona@gmail.com', '998456323', STR_TO_DATE('10/02/1970', '%d/%m/%Y'));

/* Insertar varios registros en la tabla CLIENTE */
INSERT INTO CLIENTE
(tipo_documento, numero_documento, nombres, apellidos, email, celular, fecha_nacimiento)
VALUES
('CNE', '457812330', 'Alicia', 'García Campos', 'alicia.garcia@gmail.com', '998459872', STR_TO_DATE('20/03/1980', '%d/%m/%Y')),
('DNI', '15487922', 'Juana', 'Ávila Chumpitaz', 'juana.avila@gmail.com', '923568741', STR_TO_DATE('06/06/1986', '%d/%m/%Y'));

/* Cambiar los apellidos de Alicia García Campos por Méndez Vera así como también su email alicia.mendez@gmail.com */
UPDATE CLIENTE
    SET apellidos = 'Méndez Vera',
        email = 'alicia.mendez@gmail.com'
    WHERE nombres = 'Alicia' AND apellidos = 'García Campos';
    
  



/* Establecer como I inactivo al cliente cuyo DNI es 15487922 */
UPDATE cliente
    SET activo = 0
    WHERE numero_documento = '15487922';
    
DELETE FROM cliente
WHERE nombres = 'Juana' AND apellidos = 'Ávila Chumpitaz';

SET SQL_SAFE_UPDATES = 0;

DELETE FROM CLIENTE;

INSERT INTO cliente (id, tipo_documento, numero_documento, nombres, apellidos, email, celular, fecha_nacimiento, activo) VALUES
(1, 'DNI', '77889955', 'Alberto', 'Solano Pariona', 'alberto.pariona@empresa.com', '998456103', '1970-02-10', 1),
(2, 'CNE', '457812330', 'Alicia', 'García Campos', 'alicia.garcia@gmail.com', '998459872', '1980-03-20', 1),
(3, 'DNI', '15487922', 'Juana', 'Ávila Chumpitaz', 'juana.avila@gmail.com', '923568741', '1986-06-06', 1),
(4, 'CNE', '122116633', 'Ana', 'Enríquez Flores', 'ana.enriquez@empresa.com', '997845263', '1970-02-10', 1),
(5, 'CNE', '088741589', 'Claudia', 'Perales Ortiz', 'claudia.perales@yahoo.com', '997845263', '1981-07-25', 1),
(6, 'DNI', '45122587', 'Mario', 'Barrios Martínez', 'mario.barrios@outlook.com', '986525871', '1987-10-10', 1),
(7, 'CNE', '175285364', 'Brunela', 'Tarazona Guerra', 'brunela.tarazona@gmail.com', '995236741', '1990-06-06', 1),
(8, 'DNI', '471425536', 'Alejandro', 'Jimenez Huapaya', 'alejandro.jimenez@yahoo.com', '941525365', '1989-06-01', 1),
(9, 'CNE', '153522585', 'Claudia', 'Marquez Iturre', 'claudia.marquez@gmail.com', '985814723', '1991-10-01', 1),
(10, 'DNI', '465772587', 'Mario', 'Rodríguez Mayo', 'mario.rodriguez@outlook.com', '912662587', '1987-11-10', 1),
(11, 'CNE', '837952514', 'Luisa', 'Guerra Ibarra', 'luisa.guerra@yahoo.com', '974422136', '1988-12-21', 1),
(12, 'DNI', '74142585', 'Pedro Alonso', 'Candela Valenzuela', 'pedro.candela@gmail.com', '94148525', '1995-06-30', 1),
(13, 'DNI', '53298147', 'Angel M.', 'Rojas Avila', 'angel.rojas@outlook.com', '985514326', '1975-03-02', 1),
(14, 'DNI', '11453265', 'Hilaria F.', 'Huayapa', 'hilaria.huayapa@yahoo.com', '985514326', '2000-05-02', 1),
(15, 'CNE', '757472186', 'Octavio', 'Marquez Chup', 'octavio.marquez@yahoo.es', '966223141', '2000-09-22', 1),
(16, 'DNI', '558692319', 'Manolo', 'Vasquez Saravia', 'manolo.vasquez@outlook.es', '966223141', '2000-09-22', 1),
(17, 'CNE', '41552567', 'Genoveva', 'Ortiz Quispe', 'genoveva.ortiz@outlook.es', '92564137', '2003-04-12', 1),
(18, 'DNI', '49985471', 'Oscar C.', 'Quiroz Vaca', 'oscar.quiroz@outlook.com', '982223145', '2004-10-12', 1),
(19, 'CNE', '44992217', 'veronica', 'Romero Vargas', 'veronica.romero@yahoo.com', NULL, '2002-08-25', 1),
(20, 'DNI', '00253641', 'Eliseo', 'Prada Ortíz', 'eliseo.prada@yahoo.com', NULL, '2004-09-15', 1);

UPDATE tu_tabla
SET celular = '922881101'
WHERE numero_documento = '465772587' AND nombres = 'Mario' AND apellidos = 'Rodríguez Mayo';




/* Listar registros de la tabla CLIENTE */
SELECT * FROM cliente;


UPDATE CLIENTE
SET celular = '922881101'
WHERE numero_documento = '465772587' AND nombres = 'Mario' AND apellidos = 'Rodríguez Mayo';


UPDATE CLIENTE
SET celular = '977226604'
WHERE numero_documento = '53298147' AND nombres = 'Angel Manuel' AND apellidos = 'Rojas Avila';

UPDATE CLIENTE
SET celular = '977226604'
WHERE numero_documento = '53298147' AND nombres = 'Angel Manuel' AND apellidos = 'Rojas Avila';

UPDATE CLIENTE
SET celular = NULL
WHERE numero_documento IN ('87952514', '55869321', '74142585');

UPDATE CLIENTE
SET email = 'oscar.quiroz@yahoo.es', activo = 1
WHERE numero_documento = '49985471' AND nombres = 'Oscar César' AND apellidos = 'Quiroz Zavala';

INSERT INTO CLIENTE (tipo_documento, numero_documento, nombres, apellidos, email, celular, fecha_nacimiento, activo)
VALUES 
('DNI', 'nuevo_dni', 'Nombre', 'Apellido', 'correo@example.com', 'numero_celular', 'fecha_nacimiento', 1);








/* Listar registros de la tabla CLIENTE */
SELECT * FROM cliente;



SELECT * FROM CLIENTE;

/* Listar tablas existentes en la base de datos en uso */
SHOW TABLES;

/* Crear la tabla VENTA */
CREATE TABLE VENTA
(
    id int auto_increment,
    fecha_hora timestamp,
    activo bool,    
    CONSTRAINT venta_pk PRIMARY KEY (id)
);

INSERT INTO VENTA (fecha_hora, cliente_id, vendedor_id, activo) VALUES
('2023-05-01 19:04:08', 4, 1, 1),
('2023-05-01 19:04:08', 6, 3, 1),
('2023-05-01 19:04:08', 10, 1, 1),
('2023-05-01 19:04:08', 18, 4, 1);



/* Creacion de la tabla VENTA_DETALLE */
CREATE TABLE VENTA_DETALLE
(
    id int auto_increment,
    cantidad int,
    CONSTRAINT venta_detalle_pk PRIMARY KEY (id)
);

INSERT INTO VENTA_DETALLE (venta_id, prenda_id, cantidad) VALUES
(1, 6, 3),
(1, 3, 5),
(2, 2, 7),
(2, 7, 3),
(3, 4, 3),
(3, 10, 6),
(3, 5, 7),
(4, 2, 5),
(4, 8, 4),
(4, 5, 3);


/* Creacion de la tabla VENDEDOR */
CREATE TABLE VENDEDOR
(
    id int auto_increment,
    tipo_documento char(3),
    numero_documento char(15),
    nombres varchar(60),
    apellidos varchar(90),
    salario decimal(8,2),
    celular char(9),
    email varchar(80),
    activo bool,
    CONSTRAINT vendedor_pk PRIMARY KEY (id)
);

INSERT INTO vendedor (tipo_documento, numero_documento, nombres, apellidos, salario, celular, email, activo) VALUES
('DNI', '85471236', 'Enrique', 'Pérez Manco', 1500.00, '985512436', 'enrique.perez@outlook.com', 1),
('DNI', '47259136', 'Sofía', 'Ávila Solís', 1550.00, '993214587', 'sofia.avila@yahoo.com', 1),
('DNI', '61542380', 'Marcela', 'Napacio Can', 1600.00, '956874357', 'marcela.napacio@gmail.com', 1),
('DNI', '15482736', 'Carmelo', 'Rodríguez Chauca', 1550.00, '989563214', 'carmelo.rodriguez@yahoo.com', 1);




/* Estoy creando la tabla PRENDA */  
CREATE TABLE PRENDA
(
    id int auto_increment,
    descripcion varchar(90),
    marca varchar(60),
    cantidad int,
    talla varchar(10),
    precio decimal(8,2),
    activo bool,
    CONSTRAINT prenda_pk PRIMARY KEY (id)
);

INSERT INTO PRENDA (descripcion, marca, cantidad, talla, precio, activo) VALUES
('Pantalon Jeans', 'Levis', 60, '28', 65.80, 1),
('Camisa manga corta', 'Adams', 75, '16', 55.00, 1),
('Polo sport', 'Australia', 100, '16', 40.00, 1),
('Camisa manga larga', 'Newport', 150, '16', 42.50, 1),
('Pijama para caballero', 'Adams', 180, '28', 79.50, 1),
('Corbata', 'Maxwell', 85, '16', 14.50, 1),
('Pijama para dama', 'Adams', 170, '24', 55.50, 1),
('Pantalon Jeans', 'Australia', 200, '28', 68.50, 1),
('Camisa Sport', 'John Holden', 85, '16', 88.50, 1),
('Shorts Jeans', 'Pepe Jeans', 185, '28', 77.20, 1);






/* Ahora voy a listar la estructura de las tablas que he creado */  
SHOW COLUMNS IN CLIENTE;
SHOW COLUMNS IN VENTA;
SHOW COLUMNS IN VENTA_DETALLE;
SHOW COLUMNS IN VENDEDOR;
SHOW COLUMNS IN PRENDA;

/* También quiero confirmar las tablas que existen en mi base de datos activa */  
SHOW TABLES;

ALTER TABLE VENTA
ADD COLUMN cliente_id int;

/* Estoy estableciendo la relación entre VENTA y CLIENTE */  
ALTER TABLE VENTA
	ADD CONSTRAINT CLIENTE_VENTA FOREIGN KEY (cliente_id)
    REFERENCES CLIENTE (id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
;

/* Quiero revisar las relaciones de las tablas en mi base de datos activa */  
SELECT 
    i.constraint_name, k.table_name, k.column_name, 
    k.referenced_table_name, k.referenced_column_name
FROM 
    information_schema.TABLE_CONSTRAINTS i 
LEFT JOIN information_schema.KEY_COLUMN_USAGE k 
ON i.CONSTRAINT_NAME = k.CONSTRAINT_NAME 
WHERE i.CONSTRAINT_TYPE = 'FOREIGN KEY' 
AND i.TABLE_SCHEMA = DATABASE();

ALTER TABLE VENTA
ADD COLUMN vendedor_id int;

/* Voy a crear la relación entre VENTA y VENDEDOR */  
ALTER TABLE VENTA
	ADD CONSTRAINT VENDEDOR_VENTA FOREIGN KEY (vendedor_id)
    REFERENCES VENDEDOR (id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
;

ALTER TABLE VENTA_DETALLE
ADD COLUMN venta_id int;

/* Estoy creando la relación entre VENTA_DETALLE y VENTA */  
ALTER TABLE VENTA_DETALLE
	ADD CONSTRAINT VENTA_VENTA_DETALLE FOREIGN KEY (venta_id)
    REFERENCES VENTA (id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
;

/* Quiero verificar las relaciones en mi base de datos activa de nuevo */  
SELECT 
    i.constraint_name, k.table_name, k.column_name, 
    k.referenced_table_name, k.referenced_column_name
FROM 
    information_schema.TABLE_CONSTRAINTS i 
LEFT JOIN information_schema.KEY_COLUMN_USAGE k 
ON i.CONSTRAINT_NAME = k.CONSTRAINT_NAME 
WHERE i.CONSTRAINT_TYPE = 'FOREIGN KEY' 
AND i.TABLE_SCHEMA = DATABASE();

ALTER TABLE VENTA_DETALLE
ADD COLUMN prenda_id int;

/* Estoy creando la relación entre VENTA_DETALLE y PRENDA */  
ALTER TABLE VENTA_DETALLE
	ADD CONSTRAINT VENTA_DETALLE_PRENDA FOREIGN KEY (prenda_id)
    REFERENCES VENTA_DETALLE (id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
;

/* Voy a listar las relaciones de tablas en mi base de datos activa una vez más */  
SELECT 
    i.constraint_name, k.table_name, k.column_name, 
    k.referenced_table_name, k.referenced_column_name
FROM 
    information_schema.TABLE_CONSTRAINTS i 
LEFT JOIN information_schema.KEY_COLUMN_USAGE k 
ON i.CONSTRAINT_NAME = k.CONSTRAINT_NAME 
WHERE i.CONSTRAINT_TYPE = 'FOREIGN KEY' 
AND i.TABLE_SCHEMA = DATABASE();

/* Quiero ver la estructura de las tablas nuevamente */  
SHOW COLUMNS IN CLIENTE;
SHOW COLUMNS IN VENTA;
SHOW COLUMNS IN VENTA_DETALLE;
SHOW COLUMNS IN VENDEDOR;
SHOW COLUMNS IN PRENDA;