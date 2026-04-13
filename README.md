# projeto oficina - banco de dados

## 📌 descrição
este projeto implementa um banco de dados para uma oficina mecânica, incluindo clientes, veículos, ordens de serviço, serviços, funcionários e pagamentos.  
o objetivo é praticar modelagem relacional, criação de tabelas em sql e consultas com select, where, order by, having e joins.  

## 🗂️ estrutura
- **cliente**: cadastro de clientes  
- **veiculo**: veículos associados aos clientes  
- **servico**: catálogo de serviços  
- **ordemservico**: ordens abertas para clientes e veículos  
- **itensordem**: serviços associados às ordens  
- **funcionario**: equipe da oficina  
- **pagamento**: formas e status de pagamento  

## 📜 scripts
- `oficina.sql` → criação das tabelas  
- `insert_data.sql` → inserção de dados fictícios  
- `queries.sql` → consultas sql  

## 🔎 exemplos de consultas
- quantas ordens cada cliente realizou  
- serviços com valor acima de 300  
- clientes com mais de 1 ordem  
- valor médio das ordens por cliente  
- detalhes de ordens com serviços  
- ordens concluídas com pagamento realizado  

## 📘 como executar
1. criar o banco de dados com `oficina.sql`  
2. popular com dados fictícios usando `insert_data.sql`  
3. rodar as consultas em `queries.sql` para análise  

## 🎯 objetivo
demonstrar a aplicação de conceitos de modelagem lógica, constraints, chaves primárias e estrangeiras, além de consultas sql complexas para análise de dados em um cenário de oficina.  
