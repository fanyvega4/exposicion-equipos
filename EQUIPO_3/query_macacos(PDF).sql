use macacos;
show tables;
CREATE TABLE personas (
id INT AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(40),
fecha DATE)
ENGINE=InnoDB;

CREATE TABLE telefonos (
numero CHAR(12),
id INT NOT NULL,
KEY (id),
FOREIGN KEY (id) REFERENCES personas (id)
ON DELETE CASCADE ON UPDATE CASCADE)
ENGINE=InnoDB;

describe telefonos;
describe personas;

set @ahora = current_timestamp();
set @variable:="Hola mundo";
select @variable_numerica:=155;
select @variable:="Hola mundo";
select @ahora;
select true;
select true, 1, false, 0, null;
select true xor true or true and true;
select true xor (true or true and true);

show tables;
create table lista (codigo int primary key auto_increment, fecha date);

insert into lista (fecha) values (
'2010-03-03'),
('2010-03-06'),
('2010-03-03'),
('2010-03-025'),
('2010-03-03');

select * from lista;
select * from lista where fecha = "2010-03-03";

select 4=3;
select 4=4;
select null <=> 19;
select null = 19;
select 30 <> 29;
select 30 != 30;
select "a" < "z";
select 30 >= 29;


insert into lista (fecha) values (null);
select * from lista;
select * from lista where fecha is null;

select 15 between 10 and 16;

select '2018-01-01' between '2017-01-01' and '2019-01-01';

select coalesce (null,23,"hola");

select greatest(1,2,5);

select least("a","b","g");

select "g" in ("u", "o", "p");

select "2010-03-03" in(select fecha from lista);

select 5 not in (1, 2, 3, 4);

select interval (55, 30, 40, 50, 60, 70);

set @a=10, @b = 2;
select @a-@b, -@a, @a*@b, @a/@b, @a%@b;