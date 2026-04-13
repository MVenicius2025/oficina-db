-- criação do banco de dados
create database oficina;
use oficina;

-- tabela cliente
create table cliente (
    idcliente int auto_increment primary key,
    nome varchar(100) not null,
    telefone varchar(20),
    email varchar(100)
);

-- tabela veiculo
create table veiculo (
    idveiculo int auto_increment primary key,
    placa varchar(10) unique not null,
    modelo varchar(50),
    ano int,
    idcliente int,
    foreign key (idcliente) references cliente(idcliente)
);

-- tabela servico
create table servico (
    idservico int auto_increment primary key,
    descricao varchar(100),
    valor decimal(10,2)
);

-- tabela ordemservico
create table ordemservico (
    idordem int auto_increment primary key,
    idcliente int,
    idveiculo int,
    data date,
    status enum('aberta','concluida','cancelada') default 'aberta',
    foreign key (idcliente) references cliente(idcliente),
    foreign key (idveiculo) references veiculo(idveiculo)
);

-- tabela itensordem
create table itensordem (
    iditem int auto_increment primary key,
    idordem int,
    idservico int,
    quantidade int,
    subtotal decimal(10,2),
    foreign key (idordem) references ordemservico(idordem),
    foreign key (idservico) references servico(idservico)
);

-- tabela funcionario
create table funcionario (
    idfuncionario int auto_increment primary key,
    nome varchar(100),
    funcao varchar(50)
);

-- tabela pagamento
create table pagamento (
    idpagamento int auto_increment primary key,
    idordem int,
    forma enum('dinheiro','cartao','pix'),
    valor decimal(10,2),
    status enum('pendente','pago') default 'pendente',
    foreign key (idordem) references ordemservico(idordem)
);
