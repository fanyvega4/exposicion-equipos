use lps2;
create table ciudad6 (id int primary key, nombre varchar(40));
alter table ciudad6 rename granciudad;
show tables;
alter table granciudad add poblacion int;

describe granciudad;

alter table granciudad drop column poblacion;

describe granciudad;

alter table granciudad drop primary key;


describe granciudad;

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

select * from granciudad;

insert into granciudad set
id = 5,
nombre = "Bilbao";

select * from granciudad;
