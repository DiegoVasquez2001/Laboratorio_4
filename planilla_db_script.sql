CREATE DATABASE planilla_db;
USE planilla_db;

CREATE TABLE Concepto_19543
(codigo_concepto varchar(5) primary key not null,
nombre_concepto varchar(60) not null,
efecto_concepto varchar(1) not null,
estatus_concepto varchar(1) not null
)engine=InnoDB default charset=latin1;

CREATE TABLE Departamento_19543
(codigo_departamento varchar(5) primary key not null,
nombre_departamento varchar(60) not null,
estatus_departamento varchar(1) not null
)engine=InnoDB default charset=latin1;

CREATE TABLE Puesto_19543
(codigo_puesto varchar(5) primary key not null, 
nombre_puesto varchar(60) not null,
estatus_puesto varchar(1) not null
)engine=InnoDB default charset=latin1;

CREATE TABLE NominaE_19543
(codigo_nomina varchar(5) primary key not null,
fecha_inicial_nomina date not null,
fecha_final_nomina date not null
)engine=InnoDB default charset=latin1;

CREATE TABLE NominasD_19543
(
FK_CodigoNomina Varchar(5) not null,
Fk_CodigoEmpleado Varchar(5) not null,
FK_CodigoConcepto varchar(5) not null,
valor_nominaD float(10,2) not null
)engine=InnoDB default charset=latin1;

CREATE TABLE Empleado_19543
(codigo_empleado varchar(5) primary key not null,
nombre_empleado varchar(60) not null,
FKcodigo_puesto varchar(5) not null,
FKcodigo_departamento varchar(5) not null,
sueldo_empleado float(10,2) not null,
estatus_empleado varchar(1) not null
)engine=InnoDB default charset=latin1;
