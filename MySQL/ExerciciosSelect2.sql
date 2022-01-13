use cadastro;
select * from alunos;

-- Exercicio 1 Uma lista com as profissões e suas respectivas quantidades
select profissao, count(*) from alunos
group by profissao;
-- Exercicio 2 Quantos alunos homens e quantas alunas nasceram após 01/Jan/2005
select sexo, count(*) from alunos
where nascimento > '2005/01/01'
group by sexo;
-- Exercicio 3 Uma lista com os alunos que nasceram fora do BR, mostrando o país de origem e o total de pessoas nascidas lá.
-- Só nos interessam os países que tiverem mais de 3 alunos com essa nacionaldidade
select nacionalidade, count(*) from alunos
where nacionalidade != 'Brasil'
group by nacionalidade
having count(nacionalidade) > 3;
-- Exercicio 4 Uma lista agrupada pela altura dos alunos, mostrando quantas pessoas pesam mais de 100 kg e que estão acima da média de altura de todos.
select altura, count(peso > 100) from alunos
where peso > 100
group by altura desc
having altura > (select avg(altura) from alunos);