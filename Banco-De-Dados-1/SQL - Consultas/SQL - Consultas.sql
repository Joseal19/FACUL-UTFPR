#LINK DO REPOSITORIO: https://github.com/Joseal19/FACUL-UTFPR/tree/main/Banco-De-Dados-1

# Listara os clientes que tem os id_pedido com 10, 12, 14, 17, 18
SELECT *
FROM CLIENTE
WHERE cpf IN (SELECT cpf
                FROM COMPRA
                WHERE id_pedido IN (10,12,14,17,18));


#Listar numero de pedidos por cliente
SELECT c.nome, COUNT(cp.id_pedido)
FROM CLIENTE c, COMPRA cp
WHERE c.cpf = cp.cpf
GROUP BY c.nome;

#Listar clientes que tem pelo menos um pedido
SELECT *
FROM CLIENTE c
WHERE EXISTS ( SELECT * 
                    FROM COMPRA cp
                    WHERE c.cpf = c.cpf);

#Listar todos os clientes que realizaram pedidos com a qunatidade maior ou igual a 4 ou produtos com o codigo 25
SELECT c.nome
FROM CLIENTE c, COMPRA cp, PRODUTO p
WHERE c.cpf = cp.cpf and
      cp.id_pedido = p.id_pedido and
      cp.quantidade >= 4
UNION 
(SELECT c.nome
FROM CLIENTE c, COMPRA cp, PRODUTO p
WHERE c.cpf = cp.cpf and
      cp.id_pedido = p.id_pedido and
      p.id_pedido = p.id_pedido and
      p.codigo = 25);


#Listar o numero de pedidos por cliente que fizeram mais ou igual a 2 pedidos.
SELECT c.nome, COUNT(cp.id_pedido) as numeroPedidos
FROM CLIENTE c, COMPRA cp
WHERE c.cpf = cp.cpf
GROUP BY c.nome
HAVING numeroPedidos >= 2;


# Listar os pedidos dos clientes do enreceço Chapada.
SELECT *
FROM COMPRA cp
WHERE cp.cpf IN (SELECT b.cpf
                 FROM BAIRRO b
                 WHERE b.nome = 'Chapada');


# Numero dos vendedores que fizeram uma venda
SELECT DISTINCT numero
FROM TELEFONE_FUNCIONARIO
WHERE cpf_func IN (SELECT v.cpf_func
                FROM VENDEDOR v, COMPRA cp 
                WHERE v.cpf_func = cp.cpf_func);


# Quatidade de itens fornecidos
SELECT fp.cnpj, p.modelo, cp.quantidade
FROM FORNECEDOR_FORNECE_PRODUTO fp, PRODUTO p, COMPRA cp
WHERE fp.codigo = p.codigo
GROUP BY p.categoria;


# Numero dos caixas que fizeram vendas 
SELECT DISTINCT numero
FROM TELEFONE_FUNCIONARIO
WHERE cpf_func IN (SELECT f.cpf_func
                FROM FUNCIONARIO f, COMPRA cp 
                WHERE f.cpf_func = cp.cpf_func
                AND f.cargo = 'caixa'
);

# Numero dos clientes que nao fizeram nenhuma compra
SELECT DISTINCT c.nome, tc.numero
FROM CLIENTE c, TELEFONE_CLIENTE tc
WHERE c.cpf NOT IN (SELECT cp.cpf
                FROM TELEFONE_CLIENTE tc, COMPRA cp 
                WHERE tc.cpf = cp.cpf);

# CNPJ da FORNECEDOR com o nome nike ou adidas com o codigo de produto 20;
SELECT f.cnpj
FROM FORNECEDOR f, FORNECEDOR_FORNECE_PRODUTO fp
WHERE f.cnpj = fp.cnpj 
AND f.nome_empresa = 'nike'
UNION
(SELECT f.cnpj
FROM FORNECEDOR f, FORNECEDOR_FORNECE_PRODUTO fp, PRODUTO p
WHERE f.cnpj = fp.cnpj 
AND f.nome_empresa = 'adidas'
AND fp.codigo = 20);
