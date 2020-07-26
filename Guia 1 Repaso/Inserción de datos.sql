use Control_Libros_VC190544
INSERT INTO AUTORES VALUES
('AU01','JOSE PEDRO','ALVARADO','ESPAÑOLA'),
('AU02','MARIA TERESA','RIVAS','MEXICANO'),
('AU03','JULIO CARLOS','FERNANDEZ','COLOMBIANO'),
('AU04','ALEXANDER','RODRIGUEZ','MEXICANO'),
('AU05','JUAN MANUEL','ARTIGA','COLOMBIANO')

INSERT INTO EDITORIALES VALUES
('ED01','Thomson internacional','España'),
('ED02','Omega','Mexico'),
('ED03','La fuente de la sabiduria','Colombia'),
('ED04','Siglo XV','España')

INSERT INTO LIBROS VALUES
('LB01','Metologia de la programacion','123-334-456','Sintaxis basicas de la programacion','204 paginas','2000-01-01','ED02'),
('LB02','SQL server 2005','345-678-076','Explicacion de las consultas SQL','798 paginas','2005-01-01','ED03'),
('LB03','Como programar en C/C++','153-567-345','Diferencias entre C y C++','156 paginas','1997-01-01','ED02'),
('LB04','Aprende PHP en 30 dias','234-345-987','Sintaxis PHP para crear paginas web dinamicas','200 paginas','2005-01-01','ED01'),
('LB05','SQL server 2018','789-255-487','Administracion de base de datos','150 paginas','2008-01-01','ED03'),
('LB06','CSS y HTML','652-414-111','Creacion de paginas web y hojas de estilo','350 paginas','2007-01-01','ED01')

INSERT INTO DETALLE_AUTORES_LIBROS VALUES 
('LB01','AU02'),
('LB01','AU04'),
('LB02','AU01'),
('LB03','AU05'),
('LB03','AU03'),
('LB04','AU02'),
('LB04','AU04')

INSERT INTO EJEMPLARES VALUES
('LB01','Estante 1','Prestado'),
('LB02','Estante 2','Disponible'),
('LB02','Estante 2','Reservado'),
('LB03','Estante 3','Prestado'),
('LB04','Estante 4','Disponible'),
('LB02','Estante 2','Reservado'),
('LB04','Estante 4','Prestado'),
('LB01','Estante 1','Disponible'),
('LB02','Estante 2','Reservado'),
('LB03','Estante 3','Prestado'),
('LB01','Estante 1','Disponible'),
('LB05','Estante 5','Disponible'),
('LB06','Estante 5','Prestado'),
('LB06','Estante 5','Disponible')

