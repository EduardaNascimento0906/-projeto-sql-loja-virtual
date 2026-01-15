SELECT * FROM uf;
SELECT * FROM cidade;
SELECT * FROM clientes;
SELECT * FROM produtos;
SELECT * FROM categoria;
SELECT * FROM pedidos; 

SELECT -- este é um relatório que liga clientes e seus dados
    c.nome_completo,
    c.email,
    ci.descricao_cidade AS cidade,
    u.sigla AS uf
FROM clientes c
JOIN cidade ci ON c.id_cidade = ci.id_cidade
JOIN uf u ON c.id_uf = u.id_uf;

SELECT -- total de pedidos por cliente
    c.nome_completo,
    COUNT(p.id_pedido) AS total_pedidos,
    SUM(p.total_pedido) AS valor_total_gasto
FROM clientes c
JOIN pedidos p ON c.id_cliente = p.id_cliente
GROUP BY c.nome_completo;

SELECT-- venda dos produtos 
    pr.descricao_produto,
    SUM(pp.quantidade) AS quantidade_vendida
FROM pedidos_produtos pp
JOIN produtos pr ON pp.id_produto = pr.id_produto
GROUP BY pr.descricao_produto
ORDER BY quantidade_vendida DESC;