use equipoconsultayagrupa;
create table granciudad(id int primary key, nombre varchar(40), poblacion int);
describe granciudad;
insert into granciudad (id, nombre, poblacion) values
(1, 'madrid', 4000000),
(30, 'barcelona', 2000000),
(31, 'valencia', 1500000);
select * from granciudad;
select id, nombre from granciudad;
select nombre, poblacion/1000000 from granciudad;
select nombre, poblacion/1000000 as poblacion_en_millones from granciudad;
select distinct nombre, poblacion from granciudad;
select * from granciudad where poblacion >= 2000000;
select * from granciudad where poblacion >= 2000000 and id>10;


insert into lista (id, nombre) values
(1, 'paco'),
(2, 'alfonso'),
(3, 'Ana'),
(4, 'yasmina'),
(5, 'Babet');

select * from lista limit 1,2;
select * from lista limit 2,2;

create table muestras (
ciudad varchar(40),
fecha date,
temperatura tinyint);

insert into muestras (ciudad, fecha, temperatura) values
('Madrid', '2005-03-17', 23),
('Paris', '2005-03-17', 16),
('Berlin', '2005-03-17', 15),
('Madrid', '2005-03-18', 25),
('Madrid', '2005-03-19', 24),
('Berlin', '2005-03-19', 18);

select * from muestras;
select ciudad from muestras group by ciudad;
select ciudad, count(*) as cuenta from muestras group by ciudad;

select ciudad, MAX(temperatura) from muestras
group by ciudad having MAX(temperatura)>16;
