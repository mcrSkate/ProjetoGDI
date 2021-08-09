CREATE OR REPLACE TYPE tp_reliquia AS OBJECT(
    identificador_reliquia INTEGER,
    nome_reliquia VARCHAR(50),
    categoria_reliquia VARCHAR(30),
    idade_estimada INTEGER
);
/

CREATE OR REPLACE TYPE tp_obra_de_arte AS OBJECT(
    data_de_criacao DATE,
    nome_obra VARCHAR(50),
    categoria VARCHAR(20),
    valor NUMERIC
);
/

CREATE TABLE tb_obra_de_arte OF tp_obra_de_arte
NESTED TABLE lista_obras STORE AS tb_lista_obras;


CREATE OR REPLACE TYPE tp_fone AS OBJECT(
    ddd VARCHAR(2),
    numero_telefone VARCHAR(9)
);
/

CREATE OR REPLACE TYPE tp_fones AS VARRAY(3) OF tp_fone;

CREATE OR REPLACE TYPE tp_endereco AS OBJECT(

    rua VARCHAR(60),
    numero_casa INTEGER,
    cidade VARCHAR(30),
    pais VARCHAR(20)
);
/

CREATE OR REPLACE TYPE tp_pessoa AS OBJECT(
    cpf VARCHAR(15),
    nome_pessoa VARCHAR(50),
    email VARCHAR(30),
    data_nascimento DATE,
    fones tp_fones,
    endereco tp_endereco
)NOT INSTANTIABLE NOT FINAL;
/

CREATE OR REPLACE TYPE tp_artista UNDER tp_pessoa(
    comissao_acumulada NUMERIC,
    obras_de_arte lista_obras

    MAP MEMBER FUNCTION comissao RETURN NUMERIC,
);
/

CREATE TABLE tb_artista OF tp_artista;

CREATE OR REPLACE TYPE tp_funcionario UNDER tp_pessoa(
    supervisor_cpf VARCHAR(15),
    cargo VARCHAR(20),
    obra_de_arte lista_obras
);
/

ALTER TYPE tp_funcionario
ADD ATRIBUTE (supervisor REF tp_funcionario)
CASCADE;

CREATE TABLE tb_funcionario OF tp_funcionario;

CREATE OR REPLACE TYPE tp_visitante UNDER tp_pessoa(
    numero_ingresso INTEGER
);
/

CREATE TABLE tb_visitante OF tp_visitante;

CREATE OR REPLACE TYPE tp_comprador UNDER tp_pessoa(
    conta VARCHAR(12)
);
/

CREATE OR REPLACE TYPE tp_exposicao AS OBJECT(
    identificador_exposicao INTEGER,
    dinheiro_arrecadado NUMERIC,
    numero_visitantes INTEGER
);
/

CREATE TABLE tb_exposicao OF tp_exposicao;

CREATE OR REPLACE TYPE tp_seguro AS OBJECT(
    identificador_seguro INTEGER,
    mensalidade NUMERIC
);
/

CREATE OR REPLACE TYPE tp_expoe_obra_de_arte AS OBJECT(
    obra_de_arte REF tp_obra_de_arte,
    exposicao REF tp_exposicao,
    numero_protocolo_confirmacao NUMERIC
);
/

CREATE TABLE tb_expoe_obra_de_arte OF tp_expoe_obra_de_arte(
    numero_protocolo_confirmacao PRIMARY KEY
);
/

CREATE OR REPLACE TYPE tp_expoe_reliquia AS OBJECT(
    reliquia REF tp_reliquia,
    exposicao REF tp_exposicao,
    numero_protocolo_confirmacao NUMERIC
);
/

CREATE TABLE tb_expoe_reliquia OF tp_expoe_reliquia(
    numero_protocolo_confirmacao PRIMARY KEY
);
/

CREATE OR REPLACE TYPE tp_guia AS OBJECT(
    
);
/