use oficina;

-- 1. quantas ordens cada cliente realizou
select c.nome, count(o.idordem) as total_ordens
from cliente c
join ordemservico o on c.idcliente = o.idcliente
group by c.nome;

-- 2. serviços com valor acima de 300
select descricao, valor
from servico
where valor > 300
order by valor desc;

-- 3. clientes com mais de 1 ordem
select c.nome, count(o.idordem) as total_ordens
from cliente c
join ordemservico o on c.idcliente = o.idcliente
group by c.nome
having count(o.idordem) > 1;

-- 4. valor médio das ordens por cliente
select c.nome, format(avg(p.valor),2) as valor_medio
from cliente c
join ordemservico o on c.idcliente = o.idcliente
join pagamento p on o.idordem = p.idordem
group by c.nome
having avg(p.valor) > 200;


-- 5. detalhes de ordens com serviços
select o.idordem, c.nome, v.modelo, s.descricao, i.quantidade, i.subtotal
from ordemservico o
join cliente c on o.idcliente = c.idcliente
join veiculo v on o.idveiculo = v.idveiculo
join itensordem i on o.idordem = i.idordem
join servico s on i.idservico = s.idservico;

-- 6. ordens concluídas com pagamento já realizado
select o.idordem, c.nome, p.forma, p.valor, p.status
from ordemservico o
join cliente c on o.idcliente = c.idcliente
join pagamento p on o.idordem = p.idordem
where o.status = 'concluida' and p.status = 'pago';

-- 7. atributo derivado: nome completo do cliente em maiúsculo
select idcliente, upper(nome) as nome_maiusculo
from cliente;

-- 8. ordenação de veículos por ano
select modelo, placa, ano
from veiculo
order by ano desc;

-- 9. junção de funcionários e ordens (exemplo: quem atendeu)
-- supondo que adicionaremos relacionamento depois
-- aqui apenas ilustrativo
select f.nome as funcionario, f.funcao, o.idordem, o.status
from funcionario f
left join ordemservico o on o.idordem % 2 = f.idfuncionario; -- exemplo fictício
