DROP TABLE IF EXISTS TELEFONE_CLIENTE, TELEFONE_FORNECEDOR, TELEFONE_FUNCIONARIO, VENDEDOR, BAIRRO, PRODUTO_TEM_ESTOQUE, ESTOQUE, FORNECEDOR_FORNECE_PRODUTO, PRODUTO,
					 COMPRA, CLIENTE, CAIXA, FUNCIONARIO, FORNECEDOR;

CREATE TABLE FORNECEDOR(
	cnpj INTEGER PRIMARY KEY,
    nome_empresa VARCHAR(50),
    e_mail varchar(50)
);

CREATE TABLE FUNCIONARIO(
	cpf_func INTEGER PRIMARY KEY,
    nome VARCHAR(50),
    cargo VARCHAR(50)
);

CREATE TABLE CAIXA(
	id INTEGER,
	numero_caixa INTEGER,
    cpf_func INTEGER PRIMARY KEY,
    FOREIGN KEY(cpf_func) REFERENCES FUNCIONARIO(cpf_func)
);

CREATE TABLE CLIENTE(
	cpf INTEGER PRIMARY KEY,
    e_mail VARCHAR(50),
    nome VARCHAR(50)
);

CREATE TABLE COMPRA(
	id_pedido INTEGER PRIMARY KEY,
    produto VARCHAR(50),
    quantidade INTEGER,
	cpf INTEGER,
    cpf_func INTEGER,
    FOREIGN KEY(cpf) REFERENCES CLIENTE(cpf),
    FOREIGN KEY(cpf_func) REFERENCES CAIXA(cpf_func)
);

CREATE TABLE PRODUTO(
	codigo INTEGER PRIMARY KEY,
    modelo VARCHAR(50),
    categoria VARCHAR(50),
    id_pedido INTEGER,
    FOREIGN KEY(id_pedido) REFERENCES COMPRA(id_pedido)
);

CREATE TABLE FORNECEDOR_FORNECE_PRODUTO(
	cnpj INTEGER,
    codigo INTEGER,
    PRIMARY KEY(cnpj, codigo),
	FOREIGN KEY(cnpj) REFERENCES FORNECEDOR(cnpj),
    FOREIGN KEY(codigo) REFERENCES PRODUTO(codigo)
);

CREATE TABLE ESTOQUE(
	codigo_estoque INTEGER PRIMARY KEY,
    qunatidade INTEGER,
    descricao	VARCHAR(100)
);

CREATE TABLE PRODUTO_TEM_ESTOQUE(
	codigo INTEGER,
    codigo_estoque INTEGER,
    PRIMARY KEY(codigo, codigo_estoque),
    FOREIGN KEY(codigo) REFERENCES PRODUTO(codigo),
	FOREIGN KEY(codigo_estoque) REFERENCES ESTOQUE(codigo_estoque)
);

CREATE TABLE BAIRRO(
	cep INTEGER PRIMARY KEY,
    rua VARCHAR(50),
    nome VARCHAR(50),
    cpf INTEGER,
    FOREIGN KEY(cpf) REFERENCES CLIENTE(cpf)
);

CREATE TABLE VENDEDOR(
	cracha INTEGER,
    data_contratacao DATE,
    cpf_func INTEGER PRIMARY KEY,
    FOREIGN KEY(cpf_func) REFERENCES FUNCIONARIO(cpf_func)
);

CREATE TABLE TELEFONE_FUNCIONARIO(
	id INTEGER,
    numero INTEGER,
    codigo_pais INTEGER,
    cpf_func INTEGER,
    PRIMARY KEY(numero, cpf_func),
    FOREIGN KEY(cpf_func) REFERENCES FUNCIONARIO(cpf_func)    
);

CREATE TABLE TELEFONE_FORNECEDOR(
	id INTEGER,
    numero INTEGER,
    codigo_pais INTEGER,
    cnpj INTEGER,
    PRIMARY KEY(numero, cnpj),
    FOREIGN KEY(cnpj) REFERENCES FORNECEDOR(cnpj)    
);

CREATE TABLE TELEFONE_CLIENTE(
	id INTEGER,
    numero INTEGER,
    codigo_pais INTEGER,
    cpf INTEGER,
    PRIMARY KEY(numero, cpf),
    FOREIGN KEY(cpf) REFERENCES CLIENTE(cpf)    
);
