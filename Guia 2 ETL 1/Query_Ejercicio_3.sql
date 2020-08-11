USE MASTER
GO

CREATE DATABASE db_electrodomesticos;
GO
USE db_electrodomesticos;

CREATE TABLE ventas_electrodomesticos
(
idempleado INTEGER not null,
dui VARCHAR(9) not null,
nit VARCHAR(14) not null,
apellidos VARCHAR(50) not null,
nombres VARCHAR(50) not null,
ventas DECIMAL(10,2) not null,
CONSTRAINT pk_empleado PRIMARY KEY(idempleado)
)

INSERT INTO ventas_electrodomesticos VALUES(1,'0127859-5','0641140877-193','Hernandez
Ramirez','Carlos Roberto',950.00)
INSERT INTO ventas_electrodomesticos VALUES(2,'1294587-6','7894120652-147','Perez
Hernandez','Maria Leticia',758.25)
INSERT INTO ventas_electrodomesticos VALUES(3,'4589785-8','2365110578-145','Carranza','Pablo
Jose',1050.20)
INSERT INTO ventas_electrodomesticos VALUES(4,'9658745-7','3658090976-145','Rodriguez
Arias','Christian Alberto',857.50)
INSERT INTO ventas_electrodomesticos VALUES(5,'6985847-8','4758121280-193','Pastori','Xavier
Iñaki',856.4)

SELECT*FROM ventas_electrodomesticos


--creando la segunda base

USE MASTER
GO

CREATE DATABASE db_muebles
GO
USE db_muebles
GO

CREATE TABLE ventas_muebles
(
idempleado INTEGER not null,
dui VARCHAR(9) not null,
nit VARCHAR(14) not null,
apellidos VARCHAR(50) not null,
nombres VARCHAR(50) not null,
ventas DECIMAL(10,2) not null,
CONSTRAINT pk_empleado PRIMARY KEY(idempleado)
)
GO

INSERT INTO ventas_muebles VALUES(1,'0127859-5','0641140877-193','Hernandez Ramirez','Carlos
Roberto',750.00)
INSERT INTO ventas_muebles VALUES(2,'1294587-6','7894120652-147','Perez Hernandez','Maria
Leticia',958.25)
INSERT INTO ventas_muebles VALUES(3,'4589785-8','2365110578-145','Carranza','Pablo
Jose',850.20)
INSERT INTO ventas_muebles VALUES(4,'9658745-7','3658090976-145','Rodriguez Arias','Christian
Alberto',1057.50)
INSERT INTO ventas_muebles VALUES(5,'6985847-8','4758121280-193','Pastori','Xavier
Iñaki',1056.4)
go

SELECT * FROM ventas_muebles


--creando tercera base


USE MASTER
GO

CREATE DATABASE db_telefonos
GO
USE db_telefonos
GO

CREATE TABLE ventas_telefonos
(
idempleado INTEGER not null,
dui VARCHAR(9) not null,
nit VARCHAR(14) not null,
apellidos VARCHAR(50) not null,
nombres VARCHAR(50) not null,
ventas DECIMAL(10,2) not null,
CONSTRAINT pk_empleado PRIMARY KEY(idempleado)
)
go

INSERT INTO ventas_telefonos VALUES(1,'8965711-5','1234567890-101','Ramiro Ramirez','Leonel
Cristiano',950.00)
INSERT INTO ventas_telefonos VALUES(2,'7894561-1','9876543210-150','Perez Peralta','Ana
Maria',689.25)
INSERT INTO ventas_telefonos VALUES(3,'1111111-1','1237894569-145','Carranza Carrasco','Andres
Jesus',1024.25)
INSERT INTO ventas_telefonos VALUES(4,'1234567-8','9876541237-170','Carias Arias','Pedro
Alberto',777.50)
INSERT INTO ventas_telefonos VALUES(5,'9876543-2','9638527416-166','Pastori Pastore','Xavier
Roberto',1123.4)
go

SELECT * FROM ventas_telefonos


