use cadastro;
create table aluno_assiste_curso(
id int not null auto_increment,
data date,
idaluno int,
idcurso int,
primary key (id),
foreign key (idaluno) references alunos(id),
foreign key (idcurso) references cursos(idcurso)
) default charset = utf8;

insert into aluno_assiste_curso values
(default, '2014-03-01', '1', '2');

select * from aluno_assiste_curso;

select a.nome, c.nome from alunos as a
join aluno_assiste_curso as s
on a.id = s.idaluno
join cursos c
on c.idcurso = s.idcurso
order by a.nome;