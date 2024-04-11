use equipovaciaryeliminar;
create table ciudad6 (id int primary key, nombre varchar(40));
alter table ciudad6 rename granciudad;
alter table granciudad add poblacion int;
alter table granciudad drop column poblacion;
alter table granciudad drop primary key;
alter table granciudad add fecha date;
alter table granciudad add origen varchar(50) after nombre;
alter table granciudad add id2 int first;
alter table granciudad add primary key(id);
alter table granciudad modify column id int auto_increment;
alter table granciudad auto_increment = 40;
set insert_id=50;
insert into granciudad values(1, 1, "barcelona", "barcino", "524-1-5");
insert into granciudad values(2, 2, "barcelona", "barcino", "524-1-5"),
(3, 3, "madrid", "madrilus", 1210-3-4);
insert into granciudad (id, nombre) values (4, "zaragoza");
insert into granciudad set
id = 5,
nombre = "Bilbao";
select * from granciudad;


replace into granciudad (id, nombre, origen) values (4, 'zaragoza', 'caesaraugusta');
select * from granciudad;

update granciudad set origen = 'ciudad_iberica';
select * from granciudad;

update granciudad set origen = 'caesaraugusta' where nombre = 'zaragoza';
select * from granciudad;

create table ciudad3(poblacion int);
delete from ciudad3;

select * from granciudad;
delete from granciudad where id=5;
select * from granciudad;

delete from granciudad order by nombre asc limit 2;
select * from granciudad;

truncate granciudad;
select * from granciudad;