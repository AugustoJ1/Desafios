select nome, cursopreferido from alunos;

select nome, ano from cursos;

select a.nome, c.nome, c.ano
from alunos as a right outer join cursos as c
on c.idcurso = a.cursopreferido;

select * from alunos;