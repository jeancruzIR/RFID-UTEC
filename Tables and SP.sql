
--////////////////////////////////////////////////////////////////////
--SP Insertar Usuarios
create procedure insertAdmins
@idadmin varchar (15),
@nameadmin varchar (35),
@passadmin varchar(9)
as 
insert into Administradores(idAdmin, nameAdmin, passAdmin)
values (@idadmin,@nameadmin,@passadmin)
go

--Ejecutar SP "Insertar Usuarios"
execute insertAdmins 'x.x', 'x x x x','xxxx'
--////////////////////////////////////////////////////////////////////

Create table Administradores(
idAdmin varchar(15) primary key not null,
nameAdmin varchar(35) not null,
passAdmin varchar(9) not null
);

--DATOS DE PRUEBA
create table Laboratorio (
NumeroLaboratorio int Primary Key Not null,
NombreLaboratorio varchar (30) not null
)

--drop table Asistencia
create table Alumno (
Carnet varchar (30) primary key not null,
Nombre varchar (50)not null,
Apellido Varchar (50)not null,
Carrera varchar (50)not null,
)

create table Asistencia (
Carnet varchar (30) not null,
Nombre varchar (30)not null,
Apellido Varchar (50) not null,
Carrera varchar (50)not null,
NumeroLaboratorio int not null,
NombreLaboratorio varchar (30)not null,
HoraEntrada datetime default getdate()not null,
)


--PROCEDIMIENTOS ALMACENADOS
--Procedimiento almacenado para marcar asistencia

create Procedure Marca_Asistencia
@carnet varchar (30),
@NumLab int
as
insert into Asistencia (carnet, nombre, apellido, carrera, numerolaboratorio, nombrelaboratorio)
select a.Carnet,a.Nombre, a.apellido, a.Carrera, b.NumeroLaboratorio, b.NombreLaboratorio
from Alumno a inner join Laboratorio b on a.Carnet=@carnet and b.NumeroLaboratorio=@NumLab 
go


exec marca_Asistencia

----------------------------------------------------
--Procedimiento almacenado para Consultar asistencia por laboratorio

create procedure Consultar_Laboratorio 
@NumLab int ,
@NomLab varchar (30)
AS
select * from Asistencia where NumeroLaboratorio = @NumLab or NombreLaboratorio = @NomLab
go


exec Consultar_Laboratorio '4', ''

-------------------------------------------
--Procedimiento almacenado para ver Datos de alumno

create procedure DatosAlumno
@carnet varchar (30)
as
select * from Alumno where Carnet=@carnet
go


exec DatosAlumno 821154831

-------------------------------------------
--Procedimiento almacenado que 
