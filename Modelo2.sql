drop table empleados;
drop table cargos;
drop table departamentos;


 CREATE TABLE empleados
   ( id_empleado            INT not null
   , nombre                VARCHAR(60) not null
   , apellidomaterno       VARCHAR(60) not null
   , apellidopaterno       VARCHAR(60) not null
   , email                 VARCHAR(60) 
   , numerotelefono        VARCHAR(20)
   , fechacontratacion     DATE not null
   , fechanacimiento       DATE not null
   , id_cargo              VARCHAR(10)
   , salario               NUMBER not null
   , comission             NUMBER(4,2)
   , id_jefe               NUMBER
   , id_departmento        NUMBER
   , direccion             VARCHAR2(100)
   ) ;
 

 CREATE TABLE departamentos
   ( id_departmento      INT
   , nombre_departamento VARCHAR(30)
   ) ;
 
  CREATE TABLE cargos
   ( id_cargo  VARCHAR(10)
   , nombre_cargo VARCHAR(35)
   , min_salary INT
   , max_salary INT
   ) ;
 ---------------------------------------------------

 ---------------------------------------------------
 ALTER TABLE empleados ADD 
  CONSTRAINT empleados_PK 
  PRIMARY KEY(id_empleado); 
  
  ALTER TABLE departamentos ADD 
  CONSTRAINT departamentos_PK 
  PRIMARY KEY(id_departmento ); 
 
  ALTER TABLE cargos ADD 
  CONSTRAINT cargos_PK 
  PRIMARY KEY(id_cargo ); 
  
 ----------------------------------------------------
 
 ALTER TABLE empleados ADD (
  CONSTRAINT empleados_departamentos_FK 
 FOREIGN KEY (id_departmento ) 
 REFERENCES departamentos (id_departmento ));
 
 ALTER TABLE empleados ADD (
  CONSTRAINT empleados_jefe_FK 
 FOREIGN KEY (id_jefe ) 
 REFERENCES empleados (id_empleado ));
 
  ALTER TABLE empleados ADD (
  CONSTRAINT empleados_cargos_FK 
 FOREIGN KEY (id_cargo ) 
 REFERENCES cargos (id_cargo ));
 
