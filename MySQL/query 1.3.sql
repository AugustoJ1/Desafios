create table if not exists teste (
id int, 
nome varchar(100),
idade int
);

insert into teste value
('1', 'Pedro', '22'),
('1', 'Maria', '12'),
('1', 'Maricota', '77');

select * from teste;

drop table if exists teste;