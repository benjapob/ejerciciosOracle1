-- consulta que trae todos los datos de las columnas
select * 
from cargos; 

-- consulta que trae los datos de las columnas id_cargo y nombre_cargo
select id_cargo
    , nombre_cargo
from cargos;

-- consulta que trae los datos de las columnas anteriores y las junta en una sola columna
select id_cargo
    , nombre_cargo
    , id_cargo ||' - '|| nombre_cargo "nombre completo"
from cargos;

-- consulta los datos donde el id departamento sea igual a 90 y el nombre sea steven
select id_departmento
    , nombre 
from empleados 
where id_departmento = 90 and nombre='Steven';

-- consulta los datos donde el id departamento sea igual a 90 y el nombre sea steven o lex
select id_departmento
    , nombre 
from empleados 
where id_departmento = 90 and nombre in ('St', 'Lex');

-- consulta los datos donde el nombre termine en 'en'
select id_departmento
    , nombre 
from empleados 
where nombre like '%en';

-- consulta los datos donde el nombre empiece en 'St'
select id_departmento
    , nombre 
from empleados 
where nombre like 'St%';

-- consulta los datos donde el nombre contenga en 'ev'
select id_departmento
    , nombre 
from empleados 
where nombre like '%ev%';

-- consulta las id sin repetir datos
select distinct id_departmento 
from empleados;

-- consulta las columnas y salario
select nombre
    , salario
    , salario*2 as salarioduplicado
    , (2*2000)-400+2*6 as operacion 
from empleados;

-- consulta por los nombres especificados
select * from empleados 
where nombre in ('David', 'Karen', 'Hugo');

-- consulta por los nombres que no sean los especificados
select * from empleados 
where nombre not in ('David', 'Karen', 'Hugo');

-- busca por nombres que empiecen, contengan o terminen en _
select id_empleado iden
    , nombre
    , apellidomaterno
    , fechacontratacion
    , salario 
from empleados
where nombre like 'D_vid';

select id_empleado iden
    , nombre
    , apellidomaterno
    , fechacontratacion
    , salario 
from empleados
where nombre like '_avid';

select id_empleado iden
    , nombre
    , apellidomaterno
    , fechacontratacion
    , salario 
from empleados
where nombre like 'Davi_';

-- busca por nombres que contengan a y terminen en n
select * from empleados 
where nombre like '_a%n';

-- busca los empleados que tengan id_jefe vacío
select * from empleados 
where id_jefe is NULL;

-- busca los empleados que si tengan id_jefe
select * from empleados 
where id_jefe is not NULL;

-- obtener los empleados que tienen un salario entre 2200 y 2500
select id_empleado iden
    , nombre
    , apellidomaterno
    , apellidopaterno
    , fechacontratacion
    , salario
from empleados where salario between 2200 and 2500;

-- obtener los empleados que tienen un salario que no esté entre 2200 y 2500
select id_empleado iden, nombre, apellidomaterno, apellidopaterno, fechacontratacion, salario
from empleados where salario not between 2200 and 2500;

-- obtener los empleados cuya fecha de contratación sea igual a 10/04/99
select id_empleado 
    , nombre
    , apellidomaterno
    , fechacontratacion
    , salario
from empleados
where fechacontratacion = '10/04/99';

-- obtener los empleados cuya fecha de contratación sea distinta a 10/04/99
select id_empleado 
    , nombre
    , apellidomaterno
    , fechacontratacion
    , salario
from empleados
where fechacontratacion <> '10/04/99';

-- obtener los empleados que tienen un salario <=2200
select id_empleado iden
    , nombre
    , apellidomaterno
    , apellidopaterno
    , fechacontratacion
    , salario
from empleados 
where salario<=2200;

-- obtener los empleados que tienen un salario mayor a 2200 y menor a 2500
select id_empleado iden
    , nombre
    , apellidomaterno
    , apellidopaterno
    , fechacontratacion
    , salario
from empleados 
where salario>2200 and salario <2500;

-- obtener los empleados cuyo nombre sea David, Karen o Hugo, tenga fecha de contratación en el periodo del año 97 y sea del departamento 80
select *
from empleados
where nombre in ('David', 'Karen', 'Hugo')
and fechacontratacion between '01/01/97' and '31/12/97'
and id_departmento=80;

-- obtener los empleados cuya fecha de contratación sea 25/06/97 o sea 23/02/00
select *
from empleados
where fechacontratacion = '25/06/97' or fechacontratacion = '23/02/00';

-- obtener los empleados cuyo id este entre 140 y 144 o los empleados con salarios >15000 y su cargo sea ST_CLERK
select *
from empleados
where id_empleado between 140 and 144
or salario >15000
and id_cargo='ST_CLERK';

-- obtener los empleados ordenados por nombre ascendente
select id_empleado
    , nombre
    , apellidomaterno
from empleados
order by nombre;
-- obtener los empleados ordenados por nombre ascendente y después apellido ascendente
select id_empleado
    , nombre
    , apellidomaterno
from empleados
order by nombre, apellidomaterno;

-- obtener los empleados y ordenar por salario ascendente
select id_empleado iden
    , nombre
    , fechacontratacion
    , salario
    , id_departmento
from empleados
where id_departmento=50 and fechacontratacion between '01/01/99' and '31/12/99'
order by salario asc;

-- obtener los empleados y ordenar por salario descendente
select id_empleado iden
    , nombre
    , fechacontratacion
    , salario
    , id_departmento
from empleados
where id_departmento=50 and fechacontratacion between '01/01/99' and '31/12/99'
order by salario desc;

-- obtener los empleados y ordenar por alias
select id_empleado iden
    , nombre
    , fechacontratacion
    , salario *0.2 veinteporciento
    , id_departmento
from empleados
where id_departmento=50 and fechacontratacion between '01/01/99' and '31/12/99'
order by veinteporciento desc;

-- obtener los empleados y ordenar por un campo utilizando su posición numérica 
select id_empleado iden
    , nombre
    , fechacontratacion
    , salario
    , id_departmento
from empleados
where id_departmento=50 and fechacontratacion between '01/01/99' and '31/12/99'
order by 2, 4 desc;


-- contar todos los empleados del departamento 30
select count(*)
from empleados
where id_departmento=30;

-- contar todos los empleados del departamento 30 y que tengan comision
select count(comission)
from empleados
where id_departmento=30;

-- contar los departamentos que poseen empleados
select count(distinct id_departmento)
from empleados;

-- indicar el empleado que se registró primero del departamento 30
select min(id_empleado)
from empleados
where id_departmento=30;

-- indicar el máximo o último empleado registrado en el dpto 30
select max(id_empleado)
from empleados
where id_departmento=30;

-- obtener la suma de todos los salarios del departamento 30
select sum(salario)
from empleados
where id_departmento=30;

-- obtener el promedio de todos los salarios del dpto 30
select avg(salario)
from empleados
where id_departmento=30;    

-- obtener la varianza de todos los salarios del dpto 30
select variance(salario)
from empleados
where id_departmento=30;

-- obtener la desviación estándar de todos los salarios del dpto 30
select stddev(salario)
from empleados
where id_departmento=30;

-- contar los empleados del dpto 30 que tengan comision
select count(nvl(comission,0))
from empleados
where id_departmento=30;

--
select count(*)
    , count(comission)
    , count(distinct id_departmento)
    , max(id_empleado)
    , min(id_empleado)
    , sum(salario)
    , max(salario)
    , min(salario)
    , avg(salario)
    , variance(salario)
    , stddev(salario)
from empleados;    

--
select count(*)
    , count(comission)
    , count(distinct id_departmento)
    , max(id_empleado)
    , min(id_empleado)
    , sum(salario)
    , max(salario)
    , min(salario)
    , avg(salario)
    , variance(salario)
    , stddev(salario)
from empleados
where id_departmento=30;

--
select count(*)
    , max(nombre)
    , min(nombre)
    , max(fechacontratacion)
    , min(fechacontratacion)
from empleados
where id_departmento=30;  

--
select id_empleado iden
    , nombre
    , fechacontratacion
    , salario
    , id_departmento
    , comission
from empleados
where id_departmento in (20, 30, 60)
order by id_departmento;  

-- contar los empleados de los dptos 20, 30 y 60
select
    id_departmento
    , count(*)
from empleados
where id_departmento in (20, 30, 60)
group by id_departmento
order by id_departmento;

-- error sin el group
select
    id_departmento
    , count(*)
from empleados
where id_departmento in (20, 30, 60);

-- group no acepta alias
select
    id_departmento dept
    , count(*)
from empleados
where id_departmento in (20, 30, 60)
group by dept
order by id_departmento;

-- contar los empleados por dpto, no se usa where
select
    id_departmento
    , count(*)
from empleados
group by id_departmento
order by id_departmento;

-- contar los empleados por dpto sin el id_departmento
select
    count(*)
from empleados
group by id_departmento
order by id_departmento;

-- obtener los promedios de los salarios por dpto
select
    id_departmento
    , avg(salario)
from empleados
group by id_departmento
order by avg(salario);

-- mostrar y contar los cargos por departamentos
select
    id_departmento
    , id_cargo
    , count(id_cargo)
    , avg(salario)
from empleados
group by id_departmento, id_cargo
order by id_departmento, id_cargo;

-- la misma consulta sin indicar las dos columnas en group by
select
    id_departmento
    , id_cargo
    , count(id_cargo)
    , avg(salario)
from empleados
group by id_departmento
order by id_departmento, id_cargo;

-- mostrar y contrar los cargos por dptos para los empleados con código mayor a 100
select
    id_departmento
    , id_cargo
    , count(id_cargo)
    , avg(salario)
from empleados
where id_empleado>100
group by id_departmento, id_cargo
order by id_departmento, id_cargo;

-- mostrar por dpto el promedio del salario para ciertos dptos
select
    id_departmento
    , avg(salario)
from empleados
where id_departmento in (30, 60, 90)
group by id_departmento
order by id_departmento;

-- mostrar el promedio de salario por dpto donde el promedio sea mayor a 3000
select
    id_departmento
    , avg(salario)
from empleados
where avg(salario)>3000
group by id_departmento
order by id_departmento;

-- obtener el salario máximo promedio de los dptos
select
    max(avg(salario))
from empleados
group by id_departmento;

-- mostrar el dpto y los salarios máximos por dpto cuyo salario sea mayor a 1000
select id_departmento, max(salario)
from empleados
group by id_departmento
having max(salario)>1000
order by id_departmento;

-- mostrar los cargos y el salario total por cargo para salarios mayores a 13000
select id_cargo, sum(salario)
from empleados
group by id_cargo
having sum(salario)>13000
order by sum(salario);


