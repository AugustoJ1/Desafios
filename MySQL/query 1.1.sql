desc pessoas;
desc gafanhotos;

alter table pessoas
rename to gafanhoto;

alter table gafanhoto
rename to gafanhotos;

alter table pessoas
add column profissao varchar(10) after nome;

alter table pessoas
modify column profissao varchar(20) not null Default '';

alter table pessoas
change column profissao prof varchar(20) not null default '';

alter table pessoas
add column codigo int first;

alter table pessoas
drop column profissao;

select * from pessoas;