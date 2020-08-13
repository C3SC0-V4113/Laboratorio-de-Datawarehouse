use master
--DROP DATABASE MODELO_ESTRELLA
CREATE DATABASE MODELO_ESTRELLA
GO
USE MODELO_ESTRELLA
GO

--Tablas
--LUGAR_COMPRA
CREATE TABLE LUGAR_COMPRA
(
id_lugar_compra int not null,
n_region int,
region varchar(30),
provincia varchar(100),
comuna varchar(100),
ciudad varchar(100)
constraint pk_id_lugar_compra primary key(id_lugar_compra)
)

--SECTOR_VENTA
CREATE TABLE SECTOR_VENTA
(
id_sector_venta int not null,
canal_1 varchar(30),
canal_2 varchar(30),
cod_zona varchar(5),
zona varchar(100)
constraint pk_id_sector_venta primary key(id_sector_venta)
)

--VENDEDOR
CREATE TABLE VENDEDOR
(
id_vendedor int not null,
cod_vendedor varchar(6),
cod_persona varchar(6),
vendedor varchar(100),
supervisor varchar(100),
jefe_regional varchar(100),
subgerente varchar(100)
constraint pk_id_vendedor primary key(id_vendedor)
)

--PRODUCTO
CREATE TABLE PRODUCTO
(
id_producto int not null,
invtid varchar(6),
descr_producto varchar(100),
cod_marca varchar(6),
descr_marcha varchar(100),
categoria varchar(50),
cod_seccion varchar(6),
descr_seccion varchar(100),
peso decimal(4,2),
volumen decimal(5,2)
constraint pk_id_producto primary key(id_producto)
)

--FECHA
CREATE TABLE FECHA
(
id_fecha int not null,
año date,
mes_nombre varchar(15),
mes date,
semestres int,
trimestre int,
semana int,
dia_nombre varchar(15),
dia date,
fecha_completa datetime
constraint pk_id_fecha primary key(id_fecha)
)

--VENTA
CREATE TABLE VENTA
(
id_lugar_compra int not null,
id_sector_venta int not null,
id_vendedor int not null,
id_producto int not null,
id_fecha int not null,
num_nota_venta int not null,
not_cod_cd int not null,
MontoVenta money,
MontoCosto money,
Ganancias money,
Unidades int,
peso decimal(4,2),
volumen decimal(5,2)
)

ALTER TABLE VENTA
ADD CONSTRAINT pk_Llave_compuesta
PRIMARY KEY(id_lugar_compra,id_sector_venta,id_vendedor,id_producto,id_fecha,num_nota_venta,not_cod_cd)
GO

ALTER TABLE VENTA
ADD CONSTRAINT fk_id_lugar_compra
FOREIGN KEY(id_lugar_compra)
REFERENCES LUGAR_COMPRA(id_lugar_compra)

ALTER TABLE VENTA
ADD CONSTRAINT fk_id_sector_venta
FOREIGN KEY(id_sector_venta)
REFERENCES SECTOR_VENTA(id_sector_venta)

ALTER TABLE VENTA
ADD CONSTRAINT fk_id_vendedor
FOREIGN KEY(id_vendedor)
REFERENCES VENDEDOR(id_vendedor)

ALTER TABLE VENTA
ADD CONSTRAINT fk_id_producto
FOREIGN KEY(id_producto)
REFERENCES PRODUCTO(id_producto)

ALTER TABLE VENTA
ADD CONSTRAINT fk_id_fecha
FOREIGN KEY(id_fecha)
REFERENCES FECHA(id_fecha)