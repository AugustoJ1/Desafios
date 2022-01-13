use cadastro;

select * from cursos
where nome like 'a%';

select * from cursos
where nome not like '%a%'; -- comentário

select * from cursos
where nome like 'p__t%';

select * from gafanhotos
where nome like '%silva%';

select distinct nacionalidade from gafanhotos
order by nacionalidade;

select count(nome) from cursos where carga > 20;

select max(carga) from cursos where ano = 2010;

select nome, min(carga) from cursos where ano = 2016;

select sum(totaulas) from cursos where ano = 2016;

select avg(totaulas) from cursos where ano = 2016;
