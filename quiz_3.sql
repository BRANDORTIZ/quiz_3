CREATE TABLESPACE quiz_manana DATAFILE 
'quiz_manana_1.dbf' SIZE 30M,
'quiz_manana_2.dbf' SIZE 30M,
'quiz_manana_3.dbf' SIZE 30M;

CREATE PROFILE estudiante_quiz LIMIT
IDLE_TIME 15;

GRANT CONNECT TO estudiante_quiz;

CREATE USER carlos_2
IDENTIFIED BY carlos_2
DEFAULT TABLESPACE quiz_manana
PROFILE estudiante_quiz;

ALTER USER carlos_2 QUOTA UNLIMITED ON quiz_manana;

GRANT CONNECT TO carlos_2;
GRANT CREATE TABLE TO carlos_2;

CREATE USER user_2
IDENTIFIED BY carlos_2
DEFAULT TABLESPACE quiz_manana
PROFILE estudiante_quiz;

GRANT CONNECT TO user_2;


-- CREACION DE LA TABLA
create table icfes (
	tipo_documento 	varchar2(255),
	nacionalidad		varchar2(255),
	genero					varchar2(255),
	fecha_nacimiento	date,
	periodo					varchar2(255),
	consecutivo			varchar2(255),
	departamento_residencia	varchar2(255),
	codigo_departamento_residencia	integer,
	municipio_residencia		varchar2(255),
	codigo_municipio_residencia	varchar2(255),
	estrato					varchar2(255),
	educacion_padre	varchar2(255),
	educacion_madre	varchar2(255),
	tiene_internet	varchar2(255),
	tiene_tv				varchar2(255),
	tiene_lavadora	varchar2(255),
	tiene_horno_micro_o_gas	varchar2(255),
	tiene_automovil	varchar2(255),
	tiene_motocicleta	varchar2(255),
	tiene_consola_videojuegos	varchar2(255),
	colegio_codigo_icfes	varchar2(255),
	colegio_codigo_dane		varchar2(255),
	colegio_nombre				varchar2(255),
	puntaje_lectura_critica	integer,
	puntaje_matematicas		integer,
	puntaje_ciencias_naturales	integer,
	puntaje_sociales			integer,
	puntaje_ingles				integer,
	desempeno_ingles			varchar2(255),
	puntaje_global				integer
);

GRANT SELECT TABLE ON icfes TO user_2;