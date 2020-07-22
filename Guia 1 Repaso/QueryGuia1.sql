USE master
GO
CREATE DATABASE Control_Libros_VC190544
GO
USE Control_Libros_VC190544
GO
--DROP DATABASE Control_Libros_VC190544
--CREACION DE TABLAS
CREATE TABLE AUTORES
(
CodAutor varchar(4) NOT NULL,
Nombres varchar(max),
Apellidos varchar(max),
Nacionalidad varchar(max)
)

CREATE TABLE EDITORIALES
(
CodEditorial varchar(4) NOT NULL,
Nombre varchar(max),
Pais varchar(max)
)

CREATE TABLE LIBROS
(
CodLibro varchar(4) NOT NULL,
Titulo varchar(max),
ISBN varchar(13),
Descripcion varchar(max),
Resumen varchar(max),
AñoEdicion date,
CodEditorial varchar(4)
)

CREATE TABLE EJEMPLARES
(
CodLibro varchar(4),
Ubicacion varchar(max),
Estado varchar(25)
)

CREATE TABLE DETALLE_AUTORES_LIBROS
(
CodLibro varchar(4),
CodAutor varchar(4)
)

--LLAVES PRIMARIAS
ALTER TABLE AUTORES
ADD CONSTRAINT PK_CodAutor
PRIMARY KEY (CodAutor)
GO

ALTER TABLE LIBROS
ADD CONSTRAINT PK_CodLibro
PRIMARY KEY (CodLibro)
GO

ALTER TABLE EDITORIALES
ADD CONSTRAINT PK_CodEditorial
PRIMARY KEY (CodEditorial)
GO

--LLAVES FORANEAS
ALTER TABLE DETALLE_AUTORES_LIBROS
ADD CONSTRAINT FK_CodLibro
FOREIGN KEY(CodLibro)
REFERENCES LIBROS(CodLibro)

ALTER TABLE DETALLE_AUTORES_LIBROS
ADD CONSTRAINT FK_CodAutor
FOREIGN KEY(CodAutor)
REFERENCES AUTORES(CodAutor)

ALTER TABLE EJEMPLARES
ADD CONSTRAINT FK_CodLibro1
FOREIGN KEY(CodLibro)
REFERENCES LIBROS(CodLibro)

ALTER TABLE LIBROS
ADD CONSTRAINT FK_CodEditorial
FOREIGN KEY(CodEditorial)
REFERENCES EDITORIALES(CodEditorial)