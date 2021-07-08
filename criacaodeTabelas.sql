CREATE TABLE pessoa(
    pessoa_cpf VARCHAR(15),
    nome_pessoa VARCHAR(50) NOT NULL,
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


CREATE TABLE obra_de_arte(
    identificador_obra_de_arte INTEGER,
    funcionario_cpf VARCHAR(15) NOT NULL,
    nome_obra VARCHAR(50) NOT NULL,
    categoria_obra_de_arte VARCHAR(20) NOT NULL,
    valor NUMERIC NOT NULL,
    data_de_criacao DATE NOT NULL,
    CONSTRAINT obra_de_arte_pk PRIMARY KEY (identificador_obra_de_arte),
	CONSTRAINT funcionarioo_cpf_pessoa_cpf_fk FOREIGN KEY (funcionario_cpf) REFERENCES funcionario(funcionario_cpf)
   
);


CREATE TABLE reliquia(
    identificador_reliquia INTEGER,
    cpf_funcionario VARCHAR(15) NOT NULL,
    nome_reliquia VARCHAR(50) NOT NULL,
    categoria_reliquia VARCHAR(30) NOT NULL,
    idade_estimada INTEGER NOT NULL,
    CONSTRAINT reliquia_pk PRIMARY KEY (identificador_reliquia)
);

CREATE TABLE seguro(
    identificador_seguro INTEGER,
    identificador_obra_de_arte INTEGER NOT NULL,
    comprador_cpf VARCHAR(15) NOT NULL,
    mensalidade NUMERIC NOT NULL,
    CONSTRAINT identificador_seguro_pk PRIMARY KEY (identificador_seguro)

);

CREATE TABLE exposicao(
    identificador_exposicao INTEGER,
    data_horario_exposicao TIMESTAMP NOT NULL,
    dinheiro_arrecadado NUMERIC,
    numero_visitantes INTEGER NOT NULL,
    CONSTRAINT exposicao_pk PRIMARY KEY (identificador_exposicao)
);

CREATE TABLE artista(
    artista_cpf VARCHAR(15),
    comissao_acumulada NUMERIC,
    CONSTRAINT artista_pk PRIMARY KEY (artista_cpf),
    CONSTRAINT artista_cpf_pessoa_cpf_fk FOREIGN KEY (artista_cpf) REFERENCES pessoa(pessoa_cpf)
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
    identificador_obra_de_arte INTEGER NOT NULL,
    identificador_exposicao INTEGER NOT NULL,
    numero_protocolo_confirmacao NUMERIC NOT NULL,
    CONSTRAINT identificador_obra_de_arte_pk PRIMARY KEY (identificador_obra_de_arte),
    CONSTRAINT artista_cpf_fk FOREIGN KEY (artista_cpf) REFERENCES artista(artista_cpf),
    CONSTRAINT identificadorr_exposicao_fk FOREIGN KEY (identificador_exposicao) REFERENCES exposicao(identificador_exposicao) 
);

CREATE TABLE criador(
    artista_cpf VARCHAR(15),
    identificador_obra_de_arte INTEGER,
    CONSTRAINT criador_pk PRIMARY KEY (artista_cpf, identificador_obra_de_arte),
    CONSTRAINT artistaa_cpf_fk FOREIGN KEY (artista_cpf) REFERENCES artista(artista_cpf),
    CONSTRAINT identificador_obra_de_arte_fk FOREIGN KEY (identificador_obra_de_arte) REFERENCES obra_de_arte(identificador_obra_de_arte)
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
    identificador_obra_de_arte INTEGER,
    CONSTRAINT compra_pk PRIMARY KEY (comprador_cpf, identificador_obra_de_arte),
    CONSTRAINT comprador_cpf_fk FOREIGN KEY (comprador_cpf) REFERENCES comprador(comprador_cpf),
    CONSTRAINT identificador_obra_de_artee_fk FOREIGN KEY (identificador_obra_de_arte) REFERENCES obra_de_arte(identificador_obra_de_arte)
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

CREATE TABLE comunicacao_pessoa(
    pessoa_cpf VARCHAR(15),
    email VARCHAR(30) NOT NULL,
    CONSTRAINT comunicacao_pessoa_pk PRIMARY KEY (pessoa_cpf),
    CONSTRAINT pessoa_cpf_fk FOREIGN KEY (pessoa_cpf) REFERENCES pessoa(pessoa_cpf)
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
    identificador_obra_de_arte INTEGER,
    identificador_seguro INTEGER,
    CONSTRAINT contrata_pk PRIMARY KEY (comprador_cpf, identificador_obra_de_arte, identificador_seguro),
    CONSTRAINT comprador1_cpf_fk FOREIGN KEY (comprador_cpf) REFERENCES comprador(comprador_cpf),
    CONSTRAINT identificador2_obra_de_arte_fk FOREIGN KEY(identificador_obra_de_arte) REFERENCES obra_de_arte (identificador_obra_de_arte),
    CONSTRAINT identificador_seguro_fk FOREIGN KEY (identificador_seguro) REFERENCES seguro (identificador_seguro)
);
