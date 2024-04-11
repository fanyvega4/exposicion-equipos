use equipomulticonysubconsult;
create table jugador(id int primary key auto_increment,
jugador varchar(15));

insert into jugador (jugador) values
('Ronaldo'),
('Messi'),
('Guedes'),
('Griezmann'),
('Suarez');

create table pichichi (id int primary key auto_increment, goles int);

insert into pichichi (goles) values
(35),
(33),
(20),
(18),
(15);

select * from jugador;
select * from pichichi;
select * from jugador join pichichi;
select * from jugador join pichichi on (jugador.id = pichichi.id);
select * from jugador natural join pichichi;

insert into pichichi(id, goles) values(11,6);
insert into pichichi(id, goles) values(12,3);
select * from pichichi;
select * from jugador;

select * from jugador left join pichichi on (jugador.id = pichichi.id);
select * from jugador right join pichichi on (jugador.id = pichichi.id);
select * from jugador natural right join pichichi;
select * from jugador natural left join pichichi;

create table piezas(codigo int primary key, nombre varchar(15));
insert into piezas (codigo, nombre) values
(1, "poliet23"),
(2, "alum35"),
(3, "etile53");

create table proveedores(id int primary key, nombre varchar(15));
insert into proveedores(id, nombre) values
(1001, "sipem"),
(1002, "alcupla"),
(1003, "dragados"),
(1004, "femeval");

create table suministra (codigoPieza int, idProveedor int, precio int);
insert into suministra(codigoPieza, idProveedor, precio) values
(1, 1001, 28),
(2, 1002, 30),
(3, 1003, 23),
(1, 1003, 28),
(1, 1002, 30),
(2, 1001, 20),
(3, 1002, 44),
(4, 1004, 34);

select nombre from proveedores where id in (select idProveedor from suministra where codigoPieza = 1);