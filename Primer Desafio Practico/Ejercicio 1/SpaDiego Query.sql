USE MASTER
CREATE DATABASE Spa_Diego
USE Spa_Diego

CREATE TABLE Clientes
(
id varchar(60),
sexo varchar(10),
ingresos money,
promvisitas int,
edad int,
sauna bit,
masaje bit,
hidro bit,
yoga bit
)

select*from Clientes