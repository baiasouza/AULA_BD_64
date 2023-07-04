#excluindo os registros da tabela funcionarios
delete from funcionarios;

#desativando o safe updates 
set sql_safe_updates=0;

#selecionando a tabela funcionarios
select * from funcionarios;
select * from departamentos;

#A contagem de funcionarios agrupados por departamento
select id_departamento, count(*) as total_funcionarios from funcionarios group by id_departamento;

#A contagem de funcionarios agrupados por departamento que recebem acima de 10000
select id_departamento, count(*) as total_funcionarios from funcionarios where salario >10000 group by id_departamento;

#A contagem de funcionarios agrupados por departamento que recebem entre 5000 e 10000
select id_departamento, count(*) as total_funcionarios from funcionarios where salario between 5000 and 10000 group by id_departamento;

#selecionar a soma dos salario agrupados por departamento
select id_departamento, sum(salario) as soma_salarios from funcionarios group by id_departamento;

#selecionar a media salarial por departamento
select id_departamento, avg(salario) as media_salarios from funcionarios group by id_departamento;

select id_departamento, round( avg(salario), 2) from funcionarios group by id_departamento;
