CREATE OR REPLACE TYPE tp_pessoa AS OBJECT(
    cpf VARCHAR(15),
    nome_pessoa VARCHAR(50),
    email VARCHAR(30),
    data_nascimento DATE,
    rua VARCHAR(60),
    numero_casa INTEGER,
    cidade VARCHAR(30)
) NOT FINAL;
/

CREATE OR REPLACE TYPE tp_artista UNDER tp_pessoa(
    comissao_acumulada NUMERIC,

    MAP MEMBER FUNCTION comissao RETURN NUMERIC,
);
/

CREATE OR REPLACE TYPE tp_funcionario UNDER tp_pessoa(
    supervisor_cpf VARCHAR(15),
    cargo VARCHAR(20)
);
/

CREATE OR REPLACE TYPE tp_visitante UNDER tp_pessoa(
    numero_ingresso INTEGER
);
/

CREATE OR REPLACE TYPE tp_comprador UNDER tp_pessoa(
    conta VARCHAR(12)
);
/

CREATE OR REPLACE TYPE tp_reliquia AS OBJECT(
    identificador_reliquia INTEGER,
    funcionario REF tp_funcionario,
    nome_reliquia VARCHAR(50),
    categoria_reliquia VARCHAR(30),
    idade_estimada INTEGER
);
/

CREATE OR REPLACE TYPE tp_obra_de_arte AS OBJECT(
    artista REF tp_artista,
    data_de_criacao DATE,
    funcionario REF tp_funcionario,
    nome_obra VARCHAR(50),
    categoria VARCHAR(20),
    valor NUMERIC
);
/

CREATE OR REPLACE TYPE tp_exposicao AS OBJECT(
    identificador_exposicao INTEGER,
    dinheiro_arrecadado NUMERIC,
    numero_visitantes INTEGER
);
/

CREATE OR REPLACE TYPE tp_seguro AS OBJECT(
    identificador_seguro INTEGER,
    mensalidade NUMERIC
);
/

CREATE OR REPLACE TYPE tp_compra AS OBJECT(
    comprador REF tp_comprador,
    obra_de_arte REF tp_obra_de_arte
);
/

CREATE OR REPLACE TYPE tp_contrata AS OBJECT(
    comprador REF tp_comprador,
    obra_de_arte REF tp_obra_de_arte,
    seguro REF tp_seguro
);
/

CREATE OR REPLACE TYPE tp_expoe_obra_de_arte AS OBJECT(
    obra_de_arte REF tp_obra_de_arte,
    exposicao REF tp_exposicao,
    numero_protocolo_confirmacao NUMERIC
);
/

CREATE OR REPLACE TYPE tp_expoe_reliquia AS OBJECT(
    reliquia REF tp_reliquia,
    exposicao REF tp_exposicao,
    numero_protocolo_confirmacao NUMERIC
);
/

CREATE OR REPLACE TYPE AS OBJECT(
    
);
/

CREATE OR REPLACE TYPE AS OBJECT(

);
/

CREATE OR REPLACE TYPE AS OBJECT(

);
/