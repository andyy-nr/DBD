-- Comentario de una línea, los de dos líneas son con /* */

/* Crear db*/

create database DBPrueba26;
go

use DBPrueba26;
go

create table Ciudad(
	id INT PRIMARY KEY identity(1, 1),
	nombre nvarchar(50) NOT NULL,
	estado bit default 1
);
go

create table Persona(
	id int	primary key identity(1,1),
	primerNombre nvarchar(40) NOT NULL,
	segundoNombre nvarchar(40),
	primerApellido nvarchar(40) NOT NULL,
	segundoApellido nvarchar(40),
	fechaNac dateTime NOT NULL,
	sexo bit default 1 NOT NULL,
	telefono nvarchar(16) NOT NULL,
	email nvarchar(100) NOT NULL,
	direccion nvarchar(100) NOT NULL,
	estado bit default 'true' NOT NULL  --Se puede poner el default asi con comilla simple o numero, 
);

go

-- DML

-- Crear o insertar un registro con el comando insert
Insert into Ciudad(nombre) values (N'Masaya')

-- Insertar mas de un valor
Insert into Ciudad(nombre) values (N'Managua'), (N'Granada'), (N'Chinandega'), (N'Leon')


--Mostrar registro

Select * from Ciudad
