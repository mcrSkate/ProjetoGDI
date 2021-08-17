CREATE OR REPLACE TYPE tp_reliquia AS OBJECT( 
    identificador_reliquia INTEGER, 
    nome_reliquia VARCHAR(50), 
    categoria_reliquia VARCHAR(30), 
    idade_estimada INTEGER, 

    ORDER MEMBER FUNCTION comparaIdade (x tp_reliquia) RETURN INTEGER, 

    MEMBER PROCEDURE exibirDetalhes (SELF tp_reliquia)
); 
/

CREATE OR REPLACE TYPE BODY tp_reliquia AS 
 
    ORDER MEMBER FUNCTION comparaIdade (x tp_reliquia) RETURN INTEGER AS 
    BEGIN 
        RETURN SELF.idade_estimada - x.idade_estimada;
    END;

    MEMBER PROCEDURE exibirDetalhes (SELF tp_reliquia) IS
    BEGIN
        DBMS_OUTPUT.PUT_LINE('Detalhes da relíquia');
        DBMS_OUTPUT.PUT_LINE('Nome: ' || nome_reliquia);
        DBMS_OUTPUT.PUT_LINE('Identificador: ' ||  TO_CHAR(identificador_reliquia));
        DBMS_OUTPUT.PUT_LINE('Categoria: ' || categoria_reliquia);
        DBMS_OUTPUT.PUT_LINE('Idade estimada: ' || TO_CHAR(idade_estimada));
    END;

END;
/

CREATE TABLE tb_reliquia OF tp_reliquia (
   identificador_reliquia PRIMARY KEY,
   nome_reliquia NOT NULL,
   categoria_reliquia NOT NULL,
   idade_estimada NOT NULL
);
/

CREATE OR REPLACE TYPE tp_fone AS OBJECT(
    ddd VARCHAR(2),
    numero_telefone VARCHAR(9)
);
/

CREATE OR REPLACE TYPE tp_fones AS VARRAY(3) OF tp_fone;
/

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
    endereco tp_endereco,
    
FINAL MAP MEMBER FUNCTION pessoaToString RETURN VARCHAR,

MEMBER FUNCTION contatoEletronico RETURN VARCHAR

) NOT INSTANTIABLE NOT FINAL;
/


CREATE OR REPLACE TYPE BODY tp_pessoa AS

FINAL MAP MEMBER FUNCTION pessoaToString RETURN VARCHAR IS
    p VARCHAR(50) := nome_pessoa;
BEGIN
    return p;
END;

MEMBER FUNCTION contatoEletronico RETURN VARCHAR IS
BEGIN
    RETURN SELF.email;
END;

END;
/


CREATE OR REPLACE TYPE tp_obra_de_arte_primary_key AS OBJECT(
    artista_cpf VARCHAR(15),
    data_de_criacao DATE
);
/

CREATE OR REPLACE TYPE tp_obra_de_arte AS OBJECT (
    obra_de_arte_primary_key tp_obra_de_arte_primary_key,
    nome_obra VARCHAR(50),
    categoria VARCHAR(20),
    valor NUMBER
);
/

CREATE OR REPLACE TYPE tb_obra_de_arte AS TABLE OF tp_obra_de_arte;
/

CREATE OR REPLACE TYPE tp_artista UNDER tp_pessoa(
    comissao_acumulada NUMERIC,
    lista_obras tb_obra_de_arte
);
/

CREATE TABLE tb_artista OF tp_artista(
     cpf PRIMARY KEY
)
NESTED TABLE lista_obras STORE AS tp_lista_obras;
/


CREATE OR REPLACE TYPE tp_funcionario UNDER tp_pessoa(
    cargo VARCHAR(20),
    salario NUMERIC,
    lista_obras tb_obra_de_arte,
    
    OVERRIDING MEMBER FUNCTION contatoEletronico RETURN VARCHAR
);
/

ALTER TYPE tp_funcionario
ADD ATTRIBUTE (supervisor REF tp_funcionario)
CASCADE;
/

CREATE OR REPLACE TYPE BODY tp_funcionario AS

    OVERRIDING MEMBER FUNCTION contatoEletronico RETURN VARCHAR IS
    BEGIN
        RETURN 'museuearte@mail.com';
    END;

END;
/

CREATE TABLE tb_funcionario OF tp_funcionario(
	cpf PRIMARY KEY
)
NESTED TABLE lista_obras STORE AS tp_lista_obras2;
/


CREATE OR REPLACE TYPE tp_visitante UNDER tp_pessoa(
    numero_ingresso INTEGER
);
/

CREATE TABLE tb_visitante OF tp_visitante(
	cpf PRIMARY KEY
);
/

CREATE OR REPLACE TYPE tp_exposicao AS OBJECT(
    identificador_exposicao INTEGER,
    dinheiro_arrecadado NUMERIC,
    numero_visitantes INTEGER,
    
    CONSTRUCTOR FUNCTION tp_exposicao(identificador_exposicao INTEGER, dinheiro_arrecadado INTEGER) RETURN SELF AS RESULT
);
/

CREATE OR REPLACE TYPE BODY tp_exposicao AS

    CONSTRUCTOR FUNCTION tp_exposicao(identificador_exposicao INTEGER, dinheiro_arrecadado INTEGER) RETURN SELF AS RESULT IS
    BEGIN
        SELF.identificador_exposicao := identificador_exposicao;
        SELF.dinheiro_arrecadado := dinheiro_arrecadado;
        SELF.numero_visitantes := dinheiro_arrecadado / 20; 
        RETURN;
    END;
    
END;
/

CREATE TABLE tb_exposicao OF tp_exposicao (
   identificador_exposicao PRIMARY KEY,
   dinheiro_arrecadado NOT NULL,
   numero_visitantes NOT NULL
);
/

CREATE OR REPLACE TYPE tp_expoe_obra_de_arte AS OBJECT(
    obra_de_arte tp_obra_de_arte_primary_key,
    exposicao REF tp_exposicao,
    numero_protocolo_confirmacao NUMERIC
);
/

CREATE TABLE tb_expoe_obra_de_arte OF tp_expoe_obra_de_arte(
    numero_protocolo_confirmacao NOT NULL
);
/

CREATE OR REPLACE TYPE tp_expoe_reliquia AS OBJECT(
    reliquia REF tp_reliquia,
    exposicao REF tp_exposicao,
    numero_protocolo_confirmacao NUMERIC
);
/

CREATE TABLE tb_expoe_reliquia OF tp_expoe_reliquia(
    reliquia WITH ROWID REFERENCES tb_reliquia,
    exposicao WITH ROWID REFERENCES tb_exposicao,
    numero_protocolo_confirmacao NOT NULL
);
/

CREATE OR REPLACE TYPE tp_guia AS OBJECT(
    data_hora TIMESTAMP,
    exposicao REF tp_exposicao,
    visitante REF tp_visitante,
    funcionario REF tp_funcionario
);
/

CREATE TABLE tb_guia OF tp_guia(
	data_hora NOT NULL,
	exposicao SCOPE IS tb_exposicao,
	visitante SCOPE IS tb_visitante,
	funcionario SCOPE IS tb_funcionario
);
/

CREATE OR REPLACE TYPE tp_dados_bancarios AS OBJECT(
    conta VARCHAR(12),
    agencia VARCHAR(12)
);
/

CREATE OR REPLACE TYPE tp_comprador UNDER tp_pessoa(
    dados_bancarios tp_dados_bancarios
);
/

CREATE TABLE tb_comprador OF tp_comprador(
	cpf PRIMARY KEY
);
/

CREATE OR REPLACE TYPE tp_compra AS OBJECT(
    comprador REF tp_comprador,
    obras_compradas tp_obra_de_arte_primary_key
);
/


CREATE OR REPLACE TYPE tp_nt_compra IS TABLE OF tp_compra;
/

CREATE TABLE tb_compra OF tp_compra;
    
CREATE OR REPLACE TYPE tp_seguro AS OBJECT(
    identificador_seguro INTEGER,
    mensalidade NUMERIC,
    lista_compra tp_nt_compra,
    
    MEMBER FUNCTION pagamentoAnual RETURN NUMERIC
);
/

CREATE OR REPLACE TYPE BODY tp_seguro AS
    MEMBER FUNCTION pagamentoAnual RETURN NUMERIC IS
    BEGIN
        RETURN SELF.mensalidade*12;
    END;
END;
/

CREATE TABLE tb_seguro OF tp_seguro (
    identificador_seguro PRIMARY KEY,
    mensalidade NOT NULL
)
NESTED TABLE lista_compra STORE AS tb_lista_compras;
/



