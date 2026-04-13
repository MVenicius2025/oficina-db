use oficina;

-- clientes
insert into cliente (nome, telefone, email) values
('lucas ferreira','859111111','lucas@teste.com'),
('amanda oliveira','859222222','amanda@teste.com'),
('rodrigo santos','859333333','rodrigo@teste.com'),
('beatriz costa','859444444','beatriz@teste.com');

-- veículos
insert into veiculo (placa, modelo, ano, idcliente) values
('AAA1234','palio','2012',1),
('BBB5678','corolla','2019',2),
('CCC9012','onix','2021',3),
('DDD3456','hb20','2018',4);

-- serviços
insert into servico (descricao, valor) values
('troca de óleo',120.00),
('alinhamento',180.00),
('balanceamento',150.00),
('troca de pastilhas de freio',400.00),
('revisão geral',950.00);

-- ordens de serviço
insert into ordemservico (idcliente, idveiculo, data, status) values
(1,1,'2026-04-13','aberta'),
(2,2,'2026-04-13','concluida'),
(3,3,'2026-04-12','aberta'),
(4,4,'2026-04-11','cancelada');

-- itens da ordem
insert into itensordem (idordem, idservico, quantidade, subtotal) values
(1,1,1,120.00),
(1,2,1,180.00),
(2,4,1,400.00),
(3,5,1,950.00),
(4,3,2,300.00);

-- funcionários
insert into funcionario (nome, funcao) values
('mariana alves','mecânica'),
('paulo henrique','eletricista'),
('carla mendes','atendente');

-- pagamentos
insert into pagamento (idordem, forma, valor, status) values
(1,'cartao',300.00,'pendente'),
(2,'pix',400.00,'pago'),
(3,'dinheiro',950.00,'pendente'),
(4,'cartao',300.00,'pendente');
