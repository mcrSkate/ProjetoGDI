CREATE TABLE pessoa(
    pessoa_cpf VARCHAR(15),
    nome_pessoa VARCHAR(50) NOT NULL,
    email VARCHAR(30) NOT NULL,
    data_nascimento DATE NOT NULL,
    rua VARCHAR(60) NOT NULL,
    numero_casa INTEGER NOT NULL,
    cidade VARCHAR(30) NOT NULL,
    CONSTRAINT pessoa_pk PRIMARY KEY (pessoa_cpf)
);

CREATE TABLE funcionario(
    funcionario_cpf VARCHAR(15),
    supervisor_cpf VARCHAR(15),
    cargo VARCHAR(20) NOT NULL,
    CONSTRAINT funcionario_pk PRIMARY KEY(funcionario_cpf),
    CONSTRAINT funcionario_cpf_pessoa_cpf_fk FOREIGN KEY (funcionario_cpf) REFERENCES pessoa(pessoa_cpf),
    CONSTRAINT supervisor_cpf_pessoa_cpf_fk FOREIGN KEY (supervisor_cpf) REFERENCES pessoa(pessoa_cpf)
);

CREATE TABLE artista(
    artista_cpf VARCHAR(15),
    comissao_acumulada NUMERIC,
    CONSTRAINT artista_pk PRIMARY KEY (artista_cpf),
    CONSTRAINT artista_cpf_pessoa_cpf_fk FOREIGN KEY (artista_cpf) REFERENCES pessoa(pessoa_cpf)
);


CREATE TABLE obra_de_arte(
    artista_cpf VARCHAR(15),
    data_de_criacao DATE,
    funcionario_cpf VARCHAR(15) NOT NULL,
    nome_obra VARCHAR(50) NOT NULL,
    categoria_obra_de_arte VARCHAR(20) NOT NULL,
    valor NUMERIC NOT NULL,
    CONSTRAINT obra_de_arte_pk PRIMARY KEY (artista_cpf, data_de_criacao),
    CONSTRAINT artista_cpf_fkobra FOREIGN KEY (artista_cpf) REFERENCES artista(artista_cpf),
	CONSTRAINT funcionarioo_cpf_pessoa_cpf_fk FOREIGN KEY (funcionario_cpf) REFERENCES funcionario(funcionario_cpf)
   
);


CREATE TABLE reliquia(
    identificador_reliquia INTEGER,
    funcionario_cpf VARCHAR(15) NOT NULL,
    nome_reliquia VARCHAR(50) NOT NULL,
    categoria_reliquia VARCHAR(30) NOT NULL,
    idade_estimada INTEGER NOT NULL,
    CONSTRAINT reliquia_pk PRIMARY KEY (identificador_reliquia),
	CONSTRAINT funcionario1_cpf_pessoa_cpf_fk FOREIGN KEY (funcionario_cpf) REFERENCES funcionario(funcionario_cpf)
);



CREATE TABLE seguro(
    identificador_seguro INTEGER,
    mensalidade NUMERIC NOT NULL,
    CONSTRAINT identificador_seguro_pk PRIMARY KEY (identificador_seguro)
);

CREATE TABLE exposicao(
    identificador_exposicao INTEGER,
    dinheiro_arrecadado NUMERIC,
    numero_visitantes INTEGER NOT NULL,
    CONSTRAINT exposicao_pk PRIMARY KEY (identificador_exposicao)
);

CREATE TABLE visitante(
    visitante_cpf VARCHAR(15),
    num_ingresso INTEGER NOT NULL,
    CONSTRAINT visitante_pk PRIMARY KEY (visitante_cpf),
    CONSTRAINT visitante_cpf_pessoa_fk FOREIGN KEY (visitante_cpf) REFERENCES pessoa(pessoa_cpf)
);

CREATE TABLE comprador(
    comprador_cpf VARCHAR(15),
    conta VARCHAR(12) NOT NULL,
    CONSTRAINT comprador_pk PRIMARY KEY(comprador_cpf),
    CONSTRAINT comprador_cpf_pessoa_cpf_fk FOREIGN KEY (comprador_cpf) REFERENCES pessoa(pessoa_cpf)
);
CREATE TABLE expoe_Reliquia(
    identificador_reliquia INTEGER,
    identificador_exposicao INTEGER,
    numero_protocolo_confirmacao INTEGER NOT NULL,
    CONSTRAINT expoe_reliquia_pk PRIMARY KEY (identificador_reliquia, identificador_exposicao),
    CONSTRAINT identificador_reliquia_fk FOREIGN KEY (identificador_reliquia) REFERENCES reliquia(identificador_reliquia),
    CONSTRAINT identificador_exposicao_fk FOREIGN KEY (identificador_exposicao) REFERENCES exposicao(identificador_exposicao)
);

CREATE TABLE expoe_obra_de_arte(
    artista_cpf VARCHAR(15),
    data_de_criacao DATE,
    identificador_exposicao INTEGER,
    numero_protocolo_confirmacao NUMERIC NOT NULL,
    CONSTRAINT expoe_obra_de_arte_pk PRIMARY KEY (artista_cpf, data_de_criacao, identificador_exposicao),
    CONSTRAINT identificadorr2_obra_de_arte_fk FOREIGN KEY (artista_cpf, data_de_criacao) REFERENCES obra_de_arte(artista_cpf, data_de_criacao),
    CONSTRAINT identificadorr_exposicao_fk FOREIGN KEY (identificador_exposicao) REFERENCES exposicao(identificador_exposicao) 
);

CREATE TABLE telefone_pessoa(
    pessoa_cpf VARCHAR(15),
    ddd VARCHAR(5),
    numero VARCHAR(30),
    CONSTRAINT telefone_pk PRIMARY KEY (pessoa_cpf,ddd,numero),
    CONSTRAINT cpf_pessoa_fk FOREIGN KEY (pessoa_cpf) REFERENCES pessoa(pessoa_cpf)
);

CREATE TABLE compra(
    comprador_cpf VARCHAR(15),
    artista_cpf VARCHAR(15),
    data_de_criacao DATE,
    CONSTRAINT compra_pk PRIMARY KEY (comprador_cpf, artista_cpf, data_de_criacao),
    CONSTRAINT comprador_cpf_fk FOREIGN KEY (comprador_cpf) REFERENCES comprador(comprador_cpf),
    CONSTRAINT identificador_obra_de_artee_fk FOREIGN KEY (artista_cpf, data_de_criacao) REFERENCES obra_de_arte(artista_cpf, data_de_criacao)
);

CREATE TABLE pagamento(
    cargo VARCHAR(20),
    salario NUMERIC NOT NULL,
    CONSTRAINT pagamento_pk PRIMARY KEY (cargo),
    CONSTRAINT salario_ck CHECK (salario >= 1100.00)
);

CREATE TABLE banco_do_comprador(
    conta VARCHAR(12),
    agencia VARCHAR(12) NOT NULL,
    CONSTRAINT banco_do_comprador_pk PRIMARY KEY (conta)
);

CREATE TABLE endereco_pessoa(
    rua VARCHAR(60),
    numero INTEGER,
    cidade VARCHAR(30),
    pais VARCHAR(20) NOT NULL,
    CONSTRAINT endereco_pessoa_pk PRIMARY KEY (rua,numero,cidade)
);

CREATE TABLE contrata(
    comprador_cpf VARCHAR(15),
    artista_cpf VARCHAR(15),
    data_de_criacao DATE,
    identificador_seguro INTEGER,
    CONSTRAINT contrata_pk PRIMARY KEY (comprador_cpf, artista_cpf, data_de_criacao, identificador_seguro),
    CONSTRAINT comprador1_cpf_fk FOREIGN KEY (comprador_cpf) REFERENCES comprador(comprador_cpf),
    CONSTRAINT identificador2_obra_de_arte_fk FOREIGN KEY(artista_cpf, data_de_criacao) REFERENCES obra_de_arte (artista_cpf, data_de_criacao),
    CONSTRAINT identificador_seguro_fk FOREIGN KEY (identificador_seguro) REFERENCES seguro (identificador_seguro)
);

CREATE TABLE guia(
    funcionario_cpf VARCHAR(15),
    visitante_cpf VARCHAR(15),
    identificador_exposicao INTEGER NOT NULL,
    CONSTRAINT guia_pk PRIMARY KEY(funcionario_cpf,visitante_cpf,identificador_exposicao),
    CONSTRAINT funcionario_cpf_pessoa_cpf_g_fk FOREIGN KEY (funcionario_cpf) REFERENCES pessoa(pessoa_cpf),
    CONSTRAINT visitante_cpf_pessoa_cpf_g_fk FOREIGN KEY (visitante_cpf) REFERENCES pessoa(pessoa_cpf),
    CONSTRAINT identificador_exposicao_g_fk FOREIGN KEY (identificador_exposicao) REFERENCES exposicao(identificador_exposicao)
);

CREATE TABLE data_exposicao(
    identificador_exposicao INTEGER,
    data_e_hora TIMESTAMP NOT NULL,
    CONSTRAINT data_exposicao_pk PRIMARY KEY(identificador_exposicao),
    CONSTRAINT identificador_exposicao_d_fk FOREIGN KEY (identificador_exposicao) REFERENCES exposicao(identificador_exposicao)
);
