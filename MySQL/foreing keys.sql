use cadastro;
desc alunos;

alter table alunos add column cursopreferido int;

alter table alunos
add foreign key (cursopreferido)
references cursos(idcurso);

select * from alunos;
select * from cursos;

update alunos set cursopreferido = '6' where id = '1';

delete from cursos where idcurso = '6';
delete from cursos where idcurso = '28';
