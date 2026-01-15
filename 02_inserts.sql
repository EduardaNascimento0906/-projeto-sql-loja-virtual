INSERT INTO uf (sigla, descricao_uf)
VALUES ('SP', 'São Paulo');

INSERT INTO cidade (descricao_cidade, id_uf)
VALUES ('São Paulo', 1);


INSERT INTO clientes (
    nome_completo,
    cpf_cnpj,
    telefone,
    email,
    endereco,
    id_uf,
    id_cidade,
    cep
)
VALUES (
    'Ana Silva',
    '123.456.789-00',
    '11999999999',
    'ana@email.com',
    'Rua das Flores, 123',
    1,
    1,
    '01000-000'
);

INSERT INTO clientes (
    nome_completo, cpf_cnpj, telefone, email, endereco, id_uf, id_cidade, cep
) VALUES
('Carlos Souza', '987.654.321-00', '11988887777', 'carlos@email.com',
 'Av. Paulista, 1000', 1, 1, '01310-100'),

('Mariana Lima', '456.789.123-00', '11977776666', 'mariana@email.com',
 'Rua Augusta, 500', 1, 1, '01305-000');
 
 INSERT INTO categoria (descricao_categoria)
VALUES
('Informática'),
('Periféricos');

 
 INSERT INTO produtos (
    descricao_produto, id_categoria, preco_unitario, quantidade_estoque, observacoes
) VALUES
('Notebook Dell Inspiron', 1, 4500.00, 10, 'Intel i5, 16GB RAM'),
('Mouse Logitech', 2, 120.00, 50, 'Mouse sem fio'),
('Teclado Mecânico', 2, 350.00, 30, 'RGB');

INSERT INTO pedidos (id_cliente, data_pedido, total_pedido)
VALUES
(3, '2026-01-10', 4620.00),
(5, '2026-01-11', 350.00);

INSERT INTO pedidos_produtos (
    id_pedido, id_produto, referencia, descricao, quantidade, valor_unitario, valor_total
) VALUES
(1, 7, 'NB-001', 'Notebook Dell Inspiron', 1, 4500.00, 4500.00),
(1, 8, 'MS-001', 'Mouse Logitech', 1, 120.00, 120.00),
(2, 9, 'TC-001', 'Teclado Mecânico', 1, 350.00, 350.00);
