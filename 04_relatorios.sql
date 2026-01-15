
-- faturamento total
SELECT SUM(total_pedido) AS faturamento_total
FROM pedidos; 

-- controle de estoque 
SELECT descricao_produto, quantidade_estoque
FROM produtos
WHERE quantidade_estoque < 20;








