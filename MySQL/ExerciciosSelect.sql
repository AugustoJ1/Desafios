use cadastro;
select * from alunos;
alter table gafanhotos rename to alunos;
-- Exercicio 1 = uma lista com nome de todas alunas
select nome from alunos
where sexo = 'F';
-- Exercicio 2 = uma lista com os dados de todos aqueles que nasceram entre 1/jan/2000 e 31/12/2015
select * from alunos
where nascimento between '2000/1/1' and '2015/12/31'
order by nascimento;
-- Exercicio 3 = uma lista com o nome de todos os homes que trabalham como programadores
select nome from alunos
where sexo = 'M' and profissao = 'programador';
-- Exercicio 4 = uma lista com os dados de todas as mulheres que nasceram no brasil e que têm seu nome iniciando com a letra J
select * from alunos
where nome like 'j%' and nacionalidade = 'Brasil' and sexo = 'F';
-- Exercicio 5 = uma lista com o nome a nacionalidade de todos os homens que têm Silva no nome, não nasceram no BR e pesam menos de 100kg
select nome, nacionalidade from alunos
where nome like '%silva%' and sexo = 'M' and nacionalidade != 'Brasil' and peso < 100;
-- Exercicio 6 = Qual é a maior altura entre o gafanhotos homens que moram no brasil
select max(altura) from alunos
where sexo = 'M' and nacionalidade = 'Brasil';
-- Exercicio 7 = Qual é a média de peso dos gafanhotos cadastrados
select avg(altura) from alunos;
-- Exercicio 8 = Qual menor peso entre as gafanhotos mulheres que nasceram fora do BR entre 1/jan/1990 e 31/12/2000
select min(peso) from alunos
where sexo = 'F' and nascimento between '1990/01/01' and '2000/12/31';
-- Exercicio 9 = Quantas gafanhotos mulheres tem mais de 1.90m de altura?
select count(*) from alunos
where sexo = 'F' and altura > 1.9;
