
DROP TABLE pagamento;
DROP TABLE compra;
DROP TABLE criador;
DROP TABLE guia;
DROP TABLE data_exposicao;
DROP TABLE expoe_Reliquia;
DROP TABLE expoe_obra_de_arte;
DROP TABLE telefone_pessoa;
DROP TABLE exposicao;
DROP TABLE endereco_pessoa;
DROP TABLE comunicacao_pessoa;
DROP TABLE banco_do_comprador;
DROP TABLE contrata;
DROP TABLE seguro;
DROP TABLE obra_de_arte;
DROP TABLE reliquia;
DROP TABLE artista;
DROP TABLE visitante;
DROP TABLE comprador;
DROP TABLE funcionario;
DROP TABLE pessoa;

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
    funcionario_cpf VARCHAR(15) NOT NULL,
    nome_reliquia VARCHAR(50) NOT NULL,
    categoria_reliquia VARCHAR(30) NOT NULL,
    idade_estimada INTEGER NOT NULL,
    CONSTRAINT reliquia_pk PRIMARY KEY (identificador_reliquia),
	CONSTRAINT funcionario1_cpf_pessoa_cpf_fk FOREIGN KEY (funcionario_cpf) REFERENCES funcionario(funcionario_cpf)
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
    dinheiro_arrecadado NUMERIC,
    numero_visitantes INTEGER NOT NULL,
    CONSTRAINT exposicao_pk PRIMARY KEY (identificador_exposicao)
);
CREATE TABLE guia(
    funcionario_cpf VARCHAR(15),
    visitante_cpf VARCHAR(15),
    identificador_exposicao INTEGER,
    CONSTRAINT guia_pk PRIMARY KEY(funcionario_cpf,visitante_cpf,identificador_exposicao),
    CONSTRAINT funcionario_cpf_pessoa_cpf_g_fk FOREIGN KEY (funcionario_cpf) REFERENCES pessoa(pessoa_cpf),
    CONSTRAINT visitante_cpf_pessoa_cpf_g_fk FOREIGN KEY (visitante_cpf) REFERENCES pessoa(pessoa_cpf),
    CONSTRAINT identificador_exposicao_g_fk FOREIGN KEY (identificador_exposicao) REFERENCES exposicao(identificador_exposicao)
);
CREATE TABLE data_exposicao(
    identificador_exposicao INTEGER,
    data_e_hora smalldatetime NOT NULL,
    CONSTRAINT data_exposicao_pk PRIMARY KEY(identificador_exposicao),
    CONSTRAINT identificador_exposicao_d_fk FOREIGN KEY (identificador_exposicao) REFERENCES exposicao(identificador_exposicao)
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
    cargo VARCHAR(15),
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


INSERT INTO pessoa VALUES ('102.312.573-45', 'Rodrigo Martins Morais','14/10/1986', 'Rua Getulio Vargas', '221', 'Recife');
INSERT INTO pessoa VALUES ('564.328.478-98', 'Mario damorin ', '18/07/1968', '7 rua de baixo', '598', 'Caruaru');
INSERT INTO pessoa VALUES ('689.207.420-42', 'Debora Paula dos Santos','14/10/1991', 'Rua Brigadeiro', '31', 'São Paulo');
INSERT INTO pessoa VALUES ('986.124.785-45', 'João Gonçalves Almeida', '15/03/1998', 'Avenida Recife', '128', 'Recife');
INSERT INTO pessoa VALUES ('198.228.735-87', 'Clara Maria Cornelho', '10/12/2006', 'Avenida 50', '15', 'Pedras de Fogo');
INSERT INTO pessoa VALUES ('078.845.996-12', 'Maria josé Santiago', '09/07/2003', 'Travessa Arco-íris', '42', 'Recife');
INSERT INTO pessoa VALUES ('678.191.458-44', 'Joana Maria ', '20/08/1999', 'Rua Laranjeira', '59', 'Carrapicho');
INSERT INTO pessoa VALUES ('635.152.669-17', 'Camila de Azevedo', '23/02/1985', 'Rua caminhão derrapado', '1245', 'Petrolina');
INSERT INTO pessoa VALUES ('456.712.223-00', 'Matheus Alves', '13/05/1980', '5° travessa do meio', '18', 'Recife');
INSERT INTO pessoa VALUES ('514.378.321-98', 'Lara Alexandra Silva ', '19/04/1978', 'Travessa do Milho', '72', 'Carne de Vaca');
INSERT INTO pessoa VALUES ('123.684.742-66', 'Pamella ','15/01/2000', 'Avenida Pinheiros','255','Recife');
INSERT INTO pessoa VALUES ('275.789.321-80', 'Marcos da Silva', '01/03/2005', 'Cruzada do Cruzeiro', '09', 'Ponta de Pedra');
INSERT INTO pessoa VALUES ('033.858.634-99','Kauã Frederico','16/06/1999','Condomínio AlphaVille Premium Master','03','Recife');
INSERT INTO pessoa VALUES ('923.084.271-60', 'Junior Souza', '29/12/1945', 'Primeira rua de Caminho', '78', 'Diamantina');
INSERT INTO pessoa VALUES ('444.608.646-49', 'Brenda C Rocha','13/05/1958', 'Rua João Pessoa', '766', 'Jundiai');
INSERT INTO pessoa VALUES ('116.758.622-06','Marina C Dias', '05/08/1965','Rua Petronília Dersia', '1356','Salvador');
INSERT INTO pessoa VALUES ('987.925.913-02', 'Tiago M Alves','11/4/1985', 'Rua Telemaco Borba', '643', 'Camaragibe');
INSERT INTO pessoa VALUES ('371.866.227-20', 'Leonor Azevedo', '10/05/1975','Rua Quatro', '541', 'Divinópolis');
INSERT INTO pessoa VALUES('892.549.556-20', 'Vinicius C Dias', '16/11/1966', 'Rua Armando Colo', '823', 'Carne de Vaca');
INSERT INTO pessoa VALUES ('276.787.174-15', 'Mauro Sérgio', '05/05/1962', 'Time Square','324','New York');
INSERT INTO pessoa VALUES ('573.972.289-18', 'Clarissa B. Ribeiro', '15/06/1986', 'Terceira rua do Limão', '450', 'João Pessoa');
INSERT INTO pessoa VALUES ('181.250.432-25', 'Vitor G Ribeiro', '5/12/1970', 'Rua João Florêncio Fontes', '1091', 'Osasco');
INSERT INTO pessoa VALUES ('903.695.561-00', 'Júlia O Fernandes', '21/4/1990', 'Avenida Marginal', '1857', 'Jundiai');
INSERT INTO pessoa VALUES ('673.629.234-98', 'Luana Santana de Moureira', '01/08/1982', 'Rua de cima', '04', 'Carne de Vaca');
INSERT INTO pessoa VALUES ('727.729.412-21', 'Clara A Silva', '08/08/1967', 'Rua Servidão Vieira da Silva ', '1370', 'Manaus');
INSERT INTO pessoa VALUES('112.352.284-68', 'Márcia Araújo', '09/03/1984', 'Fazenda Campo Alegre', '188', 'Manaus');
INSERT INTO pessoa VALUES ('612.547.610-39', 'Sofia C Fernandes', '12/01/1981', 'Rua Lima', '797', 'Ribeirão das Neves');
INSERT INTO pessoa VALUES ('177.235.819-39', 'Rafaela P Gomes', '8/3/1961', 'Rua Wlademira do Amaral', '293', 'Manaus');
INSERT INTO pessoa VALUES ('602.897.321-75', 'João Maria', '20/11/1974', 'Escada de Cima', '08', 'Garanhuns');
INSERT INTO pessoa VALUES ('326.182.003-00','Manoel Freitas','31/08/2001', 'Aeroporto São Domingos','75','Garanhuns');
INSERT INTO pessoa VALUES ('321.565.194-71', 'Tomás C Correia', '31/3/1973', 'Avenida Cuiabá', '17', 'Garanhuns');
INSERT INTO pessoa VALUES ('785.214.448-76','Carlito Teves','04/09/1981','Avenida José Castro','44','Caruaru');
INSERT INTO pessoa VALUES ('902.345.278-38', 'Susana de Cássia','06/03/1972', 'Rua das Laranjeiras', '91', 'Palmares');
INSERT INTO pessoa VALUES ('183.989.570-50', 'Ágatha F Azevedo','03/10/1970', 'Rua Acapulco ', '1971', 'Palmares');
INSERT INTO pessoa VALUES ('201.811.925-78', 'Marina A Gomes','09/04/1969', 'Rua Dom Severino Vieira de Melo', '1234', 'Caruaru');
INSERT INTO pessoa VALUES ('454.187.783-92', ' Marcos Júnior Silva','05/09/1975', 'Rua do Centro', '87', 'Recife');
INSERT INTO pessoa VALUES ('201.111.904-67', 'Carlos Justos','07/12/2002', 'Travessa da Quinta Avenida', '01', 'Carne de Vaca');
INSERT INTO pessoa VALUES ('292.957.379-11', 'Manuela P Lima','05/12/1957', 'Rua Ibicuí', '558', 'Caruaru');
INSERT INTO pessoa VALUES ('277.543.780-89', 'Ruana Martins','09/11/1977', 'Rua do Limoeiro', '23', 'João Pessoa');
INSERT INTO pessoa VALUES ('551.999.793-45', 'Otávio C Pinto','03/02/1957', 'Rua Jornalista Nelson Pereira de Lima', '1411', 'Recife');
INSERT INTO pessoa VALUES('989.445.235-96','Marco Polo','31/05/2006','Fazenda Haroldo Feitosa','112','Petrolina');
INSERT INTO pessoa VALUES ('102.300.573-45', 'Cássio Monteiro','29/06/1997', 'Rua João Pessoa', '83', 'Caruaru');
INSERT INTO pessoa VALUES ('102.312.573-00', 'Luiza Castro','02/08/2000', 'Rua Principal 1', '789', 'Caruaru');
INSERT INTO pessoa VALUES ('211.624.902-33', 'Enzo C Almeida','10/03/1976', 'Rua das Flores', '163', 'Petrolina');
INSERT INTO pessoa VALUES('305.178.336-88','Napo Litano Bona Arte','01/12/1977','Rua Paris','1770','São Paulo');
INSERT INTO pessoa VALUES('801.283.373-54','Erick C Sousa','08/01/1972','Avenida São João', '1813','São Paulo');
INSERT INTO pessoa VALUES ('789.543.725-98', 'João M. Freitas','17/11/1991', 'Avenida da luz', '82', 'São Paulo');
INSERT INTO pessoa VALUES ('603.856.173-05', 'Davi R Correia','09/08/1962', 'Rua José Vicente Lacerda', '1961', 'São Paulo');
INSERT INTO pessoa VALUES ('012.325.641-22' , 'Matheus Correia','30/08/2001','Avenida Beltrão','35','Recife');
INSERT INTO pessoa VALUES ('395.888.475-08', 'Caio D Alves','06/04/1962', 'Rua Tupy-A', '1153', 'Garanhuns');
INSERT INTO pessoa VALUES ('872.341.092-09', 'Felipe de Souza','28/02/1982', 'Rua do Cajueiro', '37', 'Garanhuns');
INSERT INTO pessoa VALUES ('931.071.938-95', 'Vitoria F Cavalcanti','6/6/1975', 'Rua Marechal Cândido Rondon', '443', 'Caruaru');
INSERT INTO pessoa VALUES ('453.197.932-41','Sálvio Moura','12/03/1960','Quadra 4','25','Vitória de Santo Antão');
INSERT INTO pessoa VALUES ('187.217.142-74', 'Felipe S Correia','24/9/1960', 'Avenida Líndice', '1166', 'Vitória de Santo Antão');
INSERT INTO pessoa VALUES ('678.094.174-44', 'Caio Juarez','16/07/1999', 'Rua Vitoriosa', '89', 'Vitória de Santo Antão');


INSERT INTO funcionario (funcionario_cpf, cargo) VALUES ('326.182.003-00', 'Supervisor');

INSERT INTO funcionario VALUES ('321.565.194-71', '326.182.003-00', 'Guia');
INSERT INTO funcionario VALUES ('602.897.321-75', '326.182.003-00', 'Serviços Gerais');
INSERT INTO funcionario VALUES ('177.235.819-39', '326.182.003-00', 'Serviços Gerais');
INSERT INTO funcionario VALUES ('612.547.610-39', '326.182.003-00', 'Serviços Gerais');
INSERT INTO funcionario VALUES ('112.352.284-68', '326.182.003-00', 'Guia');
INSERT INTO funcionario VALUES ('727.729.412-21', '326.182.003-00', 'Segurança');
INSERT INTO funcionario VALUES ('673.629.234-98', '326.182.003-00', 'Segurança');
INSERT INTO funcionario VALUES ('903.695.561-00', '326.182.003-00', 'Restaurador');
INSERT INTO funcionario VALUES ('181.250.432-25', '326.182.003-00', 'Restaurador');
INSERT INTO funcionario VALUES ('276.787.174-15', '326.182.003-00', 'Gerente');
INSERT INTO funcionario VALUES ('573.972.289-18', '326.182.003-00', 'Curador');



DROP SEQUENCE identificadorr_obra_de_arte_cq;
CREATE SEQUENCE identificadorr_obra_de_arte_cq INCREMENT BY 1 START WITH 1;

INSERT INTO obra_de_arte VALUES (NEXT VALUE FOR identificadorr_obra_de_arte_cq,'602.897.321-75','Labirinto dos Céus','Pintura', 12000.00, '25/01/2013');
INSERT INTO obra_de_arte VALUES (NEXT VALUE FOR identificadorr_obra_de_arte_cq,'602.897.321-75','Pensamento de Cézar','Escultura', 30000.00, '13/01/1989');
INSERT INTO obra_de_arte VALUES (NEXT VALUE FOR identificadorr_obra_de_arte_cq,'602.897.321-75','O Pé Grande','Pintura', 4500.00, '11/05/2002');
INSERT INTO obra_de_arte VALUES (NEXT VALUE FOR identificadorr_obra_de_arte_cq,'602.897.321-75','Escuridão','Pintura', 5600.00, '15/04/2021');
INSERT INTO obra_de_arte VALUES (NEXT VALUE FOR identificadorr_obra_de_arte_cq,'602.897.321-75','O choro','Escultura', 80000.00, '19/05/2000');
INSERT INTO obra_de_arte VALUES (NEXT VALUE FOR identificadorr_obra_de_arte_cq,'602.897.321-75','A torre de ossos','Escultura', 5300.0, '08/04/1940');
INSERT INTO obra_de_arte VALUES (NEXT VALUE FOR identificadorr_obra_de_arte_cq,'602.897.321-75','Coraline','Pintura', 200000.0, '20/02/2002');
INSERT INTO obra_de_arte VALUES (NEXT VALUE FOR identificadorr_obra_de_arte_cq,'602.897.321-75','Morte','Pintura', 20500.0,'29/01/1954');
INSERT INTO obra_de_arte VALUES (NEXT VALUE FOR identificadorr_obra_de_arte_cq,'602.897.321-75','Caminho para o céu','Pintura', 86710.0, '08/04/1996');
INSERT INTO obra_de_arte VALUES (NEXT VALUE FOR identificadorr_obra_de_arte_cq,'602.897.321-75','Chápeu Amarelo','Escultura', 5000.0, '13/07/1994');
INSERT INTO obra_de_arte VALUES (NEXT VALUE FOR identificadorr_obra_de_arte_cq,'573.972.289-18','Torre de babel','Escultura', 18000.00, '05/11/1966');
INSERT INTO obra_de_arte VALUES (NEXT VALUE FOR identificadorr_obra_de_arte_cq,'573.972.289-18','Estrada de espinhos','Escultura', 126000.00, '02/11/2001');
INSERT INTO obra_de_arte VALUES (NEXT VALUE FOR identificadorr_obra_de_arte_cq,'573.972.289-18','Amazônia Azul','Pintura', 56000.00, '07/04/2010');
INSERT INTO obra_de_arte VALUES (NEXT VALUE FOR identificadorr_obra_de_arte_cq,'573.972.289-18','Lonamisa','Pintura', 7420.00, '04/07/2021');
INSERT INTO obra_de_arte VALUES (NEXT VALUE FOR identificadorr_obra_de_arte_cq,'573.972.289-18','Rosto sem cores','Pintura', 89000.00, '09/12/1983');
INSERT INTO obra_de_arte VALUES (NEXT VALUE FOR identificadorr_obra_de_arte_cq,'276.787.174-15','O Banco de Dados','Escultura', 18500.00, '26/01/2014');
INSERT INTO obra_de_arte VALUES (NEXT VALUE FOR identificadorr_obra_de_arte_cq,'276.787.174-15','Sonalima','Pintura', 32000.00, '09/04/2015');
INSERT INTO obra_de_arte VALUES (NEXT VALUE FOR identificadorr_obra_de_arte_cq,'276.787.174-15','Pintura Lendária','Escultura', 100000.00, '21/07/1975');
INSERT INTO obra_de_arte VALUES (NEXT VALUE FOR identificadorr_obra_de_arte_cq,'177.235.819-39','Século Novo','Pintura', 89005.00, '31/12/1999');
INSERT INTO obra_de_arte VALUES (NEXT VALUE FOR identificadorr_obra_de_arte_cq,'177.235.819-39','O limão','Escultura', 90005.00, '09/02/1982');


DROP SEQUENCE identificador_reliquia_cq;
CREATE SEQUENCE identificador_reliquia_cq INCREMENT BY 1 START WITH 1;

INSERT INTO reliquia VALUES (NEXT VALUE FOR identificador_reliquia_cq,'276.787.174-15', 'Osso de Tiranossauro', 'Fóssil', '100000');
INSERT INTO reliquia VALUES (NEXT VALUE FOR identificador_reliquia_cq,'276.787.174-15','O Santo Graal','Objeto Preservado','2021');
INSERT INTO reliquia VALUES (NEXT VALUE FOR identificador_reliquia_cq,'276.787.174-15', 'Crânio do Primeiro Humano', 'Fóssil', '80000');
INSERT INTO reliquia VALUES (NEXT VALUE FOR identificador_reliquia_cq,'276.787.174-15','Vértebra de Saurópode','Fóssil','120000000');
INSERT INTO reliquia VALUES (NEXT VALUE FOR identificador_reliquia_cq,'276.787.174-15', 'Excalibur', 'Objeto Preservado', '1500');
INSERT INTO reliquia VALUES (NEXT VALUE FOR identificador_reliquia_cq,'276.787.174-15','Olho de thundera','Objeto Preservado','1900');
INSERT INTO reliquia VALUES (NEXT VALUE FOR identificador_reliquia_cq,'276.787.174-15', 'Chápeu de Palha', 'Objeto Preservado', '100');
INSERT INTO reliquia VALUES (NEXT VALUE FOR identificador_reliquia_cq,'276.787.174-15', 'Cauda de réptil', 'Fóssil', '150000');
INSERT INTO reliquia VALUES (NEXT VALUE FOR identificador_reliquia_cq,'276.787.174-15', 'Dedo de Ryomen Sukuna', 'Fóssil', '2000');
INSERT INTO reliquia VALUES (NEXT VALUE FOR identificador_reliquia_cq,'276.787.174-15','Garra de argentavis','Fóssil','11630000');
INSERT INTO reliquia VALUES (NEXT VALUE FOR identificador_reliquia_cq,'276.787.174-15', 'Espada de Arthur', 'Objeto preservado', '1800');
INSERT INTO reliquia VALUES (NEXT VALUE FOR identificador_reliquia_cq,'276.787.174-15', 'Espada do Rei Destruído', 'Objeto Preservado', '5000');
INSERT INTO reliquia VALUES (NEXT VALUE FOR identificador_reliquia_cq,'276.787.174-15', 'Escudo Viking', 'Objeto Preservado', '500');
INSERT INTO reliquia VALUES (NEXT VALUE FOR identificador_reliquia_cq,'276.787.174-15','Casco do Holandês Voador','Objeto Preservado','500');
INSERT INTO reliquia VALUES (NEXT VALUE FOR identificador_reliquia_cq,'276.787.174-15','Portão de El Dourado','Objeto Preservado','1200');
INSERT INTO reliquia VALUES (NEXT VALUE FOR identificador_reliquia_cq,'276.787.174-15', 'Escudo de Centurião Romano', 'Objeto Preservado', '2000');
INSERT INTO reliquia VALUES (NEXT VALUE FOR identificador_reliquia_cq,'276.787.174-15','Dente de Megalodonte','Fóssil','5000000');
INSERT INTO reliquia VALUES (NEXT VALUE FOR identificador_reliquia_cq,'276.787.174-15', 'Água de Atlântida', 'Objeto Preservado', '5000');
INSERT INTO reliquia VALUES (NEXT VALUE FOR identificador_reliquia_cq,'276.787.174-15','Cabeça do Ancestral Comum','Fóssil','600000000');
INSERT INTO reliquia VALUES (NEXT VALUE FOR identificador_reliquia_cq,'276.787.174-15', 'Costela de Alienígena Pré-Histórico', 'Fóssil', '500000');


INSERT INTO comprador VALUES ('785.214.448-76', '0025631489-6');
INSERT INTO comprador VALUES ('902.345.278-38', '2635489654-8');
INSERT INTO comprador VALUES ('183.989.570-50', '1124578965-0');
INSERT INTO comprador VALUES ('201.811.925-78', '3836701591-1');
INSERT INTO comprador VALUES ('454.187.783-92', '05406377-4');
INSERT INTO comprador VALUES ('201.111.904-67', '3880411612-2');
INSERT INTO comprador VALUES ('292.957.379-11', '1854470959-7');


INSERT INTO artista VALUES ('102.312.573-45', 12000.00);
INSERT INTO artista VALUES ('564.328.478-98', 3000.00);
INSERT INTO artista (artista_cpf) VALUES ('689.207.420-42');
INSERT INTO artista VALUES ('986.124.785-45', 1842.00);
INSERT INTO artista VALUES ('198.228.735-87', 45000.00);
INSERT INTO artista (artista_cpf) VALUES  ('078.845.996-12');
INSERT INTO artista (artista_cpf) VALUES ('678.191.458-44' );
INSERT INTO artista (artista_cpf) VALUES ('635.152.669-17');
INSERT INTO artista VALUES ('456.712.223-00', 30000.00);
INSERT INTO artista VALUES ('514.378.321-98', 7624.32);


INSERT INTO visitante VALUES ('123.684.742-66',85248 );
INSERT INTO visitante VALUES ('275.789.321-80', 82177);
INSERT INTO visitante VALUES ('033.858.634-99',25953);
INSERT INTO visitante VALUES ('923.084.271-60', 94803);
INSERT INTO visitante VALUES ('444.608.646-49',84166 );
INSERT INTO visitante VALUES ('116.758.622-06',26942);
INSERT INTO visitante VALUES ('987.925.913-02', 11587);
INSERT INTO visitante VALUES ('371.866.227-20', 49428);
INSERT INTO visitante VALUES('892.549.556-20', 94124);
INSERT INTO visitante VALUES ('277.543.780-89', 76521 );
INSERT INTO visitante VALUES ('551.999.793-45', 56432);
INSERT INTO visitante VALUES('989.445.235-96', 42843);
INSERT INTO visitante VALUES ('102.300.573-45', 10486);
INSERT INTO visitante VALUES ('102.312.573-00', 37598);
INSERT INTO visitante VALUES ('211.624.902-33', 48863);
INSERT INTO visitante VALUES('305.178.336-88', 21825);
INSERT INTO visitante VALUES('801.283.373-54', 91764);
INSERT INTO visitante VALUES ('789.543.725-98', 56702);
INSERT INTO visitante VALUES ('603.856.173-05', 73200);
INSERT INTO visitante VALUES ('012.325.641-22' , 54300);
INSERT INTO visitante VALUES ('395.888.475-08', 76590);
INSERT INTO visitante VALUES ('872.341.092-09', 56432);
INSERT INTO visitante VALUES ('931.071.938-95', 65722);
INSERT INTO visitante VALUES ('453.197.932-41', 65003);
INSERT INTO visitante VALUES ('187.217.142-74', 12390);
INSERT INTO visitante VALUES ('678.094.174-44', 66890);


DROP SEQUENCE seguro1_cq;
CREATE SEQUENCE seguro1_cq INCREMENT BY 1 START WITH 1;

INSERT INTO seguro VALUES (NEXT VALUE FOR seguro1_cq, 2, '785.214.448-76', 600.00);
INSERT INTO seguro VALUES (NEXT VALUE FOR seguro1_cq, 5, '902.345.278-38', 1600.00);
INSERT INTO seguro VALUES (NEXT VALUE FOR seguro1_cq, 7, '785.214.448-76', 4000.00);
INSERT INTO seguro VALUES (NEXT VALUE FOR seguro1_cq, 12, '183.989.570-50', 2520.00);
INSERT INTO seguro VALUES (NEXT VALUE FOR seguro1_cq, 15, '785.214.448-76', 1780.00);
INSERT INTO seguro VALUES (NEXT VALUE FOR seguro1_cq, 18, '902.345.278-38', 2000.00);


DROP SEQUENCE exposicao_cq;
CREATE SEQUENCE exposicao_cq INCREMENT BY 1 START WITH 1;

INSERT INTO exposicao VALUES (NEXT VALUE FOR exposicao_cq,  600.00 , 7);
INSERT INTO exposicao VALUES (NEXT VALUE FOR exposicao_cq,  1600.00, 7);
INSERT INTO exposicao VALUES (NEXT VALUE FOR exposicao_cq, 4000.00, 10);
INSERT INTO exposicao VALUES (NEXT VALUE FOR exposicao_cq,  2520.00, 5);
INSERT INTO exposicao VALUES (NEXT VALUE FOR exposicao_cq,  1780.00, 4);
INSERT INTO exposicao (identificador_exposicao,numero_visitantes) VALUES (NEXT VALUE FOR exposicao_cq, 12);
INSERT INTO exposicao (identificador_exposicao,numero_visitantes) VALUES (NEXT VALUE FOR exposicao_cq, 6);

INSERT INTO data_exposicao VALUES (1, '2002-12-05 20:00:00' );
INSERT INTO data_exposicao VALUES (2, '2006-10-04 17:00:00' );
INSERT INTO data_exposicao VALUES (3, '2018-31-07 19:00:00' );
INSERT INTO data_exposicao VALUES (4, '2015-03-01 20:30:00' );
INSERT INTO data_exposicao VALUES (5, '2018-07-06 16:40:00' );
INSERT INTO data_exposicao VALUES (6, '2018-08-06 19:30:00' );
INSERT INTO data_exposicao VALUES (7, '2015-04-01 20:00:00' );

INSERT INTO guia VALUES ('112.352.284-68','012.325.641-22', 1);
INSERT INTO guia VALUES ('112.352.284-68','033.858.634-99', 1);
INSERT INTO guia VALUES ('112.352.284-68','102.300.573-45', 1);
INSERT INTO guia VALUES ('112.352.284-68','102.312.573-00', 1);
INSERT INTO guia VALUES ('112.352.284-68','116.758.622-06', 1);
INSERT INTO guia VALUES ('112.352.284-68','123.684.742-66', 1);
INSERT INTO guia VALUES ('112.352.284-68','187.217.142-74', 1);

INSERT INTO guia VALUES ('112.352.284-68','211.624.902-33', 2);
INSERT INTO guia VALUES ('112.352.284-68','275.789.321-80', 2);
INSERT INTO guia VALUES ('112.352.284-68','277.543.780-89', 2);
INSERT INTO guia VALUES ('321.565.194-71','305.178.336-88', 2);
INSERT INTO guia VALUES ('321.565.194-71','371.866.227-20', 2);
INSERT INTO guia VALUES ('321.565.194-71','395.888.475-08', 2);
INSERT INTO guia VALUES ('321.565.194-71','444.608.646-49', 2);

INSERT INTO guia VALUES ('321.565.194-71','305.178.336-88', 3);
INSERT INTO guia VALUES ('321.565.194-71','371.866.227-20', 3);
INSERT INTO guia VALUES ('321.565.194-71','395.888.475-08', 3);
INSERT INTO guia VALUES ('321.565.194-71','444.608.646-49', 3);
INSERT INTO guia VALUES ('112.352.284-68','603.856.173-05', 3);
INSERT INTO guia VALUES ('321.565.194-71','678.094.174-44', 3);
INSERT INTO guia VALUES ('321.565.194-71','789.543.725-98', 3);
INSERT INTO guia VALUES ('321.565.194-71','801.283.373-54', 3);
INSERT INTO guia VALUES ('321.565.194-71','872.341.092-09', 3);
INSERT INTO guia VALUES ('321.565.194-71','989.445.235-96', 3);

INSERT INTO guia VALUES ('112.352.284-68','116.758.622-06', 4);
INSERT INTO guia VALUES ('112.352.284-68','123.684.742-66', 4);
INSERT INTO guia VALUES ('112.352.284-68','187.217.142-74', 4);
INSERT INTO guia VALUES ('321.565.194-71','931.071.938-95', 4);
INSERT INTO guia VALUES ('321.565.194-71','987.925.913-02', 4);

INSERT INTO guia VALUES ('112.352.284-68','603.856.173-05', 5);
INSERT INTO guia VALUES ('321.565.194-71','678.094.174-44', 5);
INSERT INTO guia VALUES ('321.565.194-71','789.543.725-98', 5);
INSERT INTO guia VALUES ('321.565.194-71','801.283.373-54', 5);

INSERT INTO guia VALUES ('112.352.284-68','453.197.932-41', 6);
INSERT INTO guia VALUES ('112.352.284-68','551.999.793-45', 6);
INSERT INTO guia VALUES ('112.352.284-68','603.856.173-05', 6);
INSERT INTO guia VALUES ('321.565.194-71','678.094.174-44', 6);
INSERT INTO guia VALUES ('321.565.194-71','789.543.725-98', 6);
INSERT INTO guia VALUES ('321.565.194-71','801.283.373-54', 6);
INSERT INTO guia VALUES ('321.565.194-71','872.341.092-09', 6);
INSERT INTO guia VALUES ('112.352.284-68','892.549.556-20', 6);
INSERT INTO guia VALUES ('112.352.284-68','923.084.271-60', 6);
INSERT INTO guia VALUES ('321.565.194-71','931.071.938-95', 6);
INSERT INTO guia VALUES ('321.565.194-71','987.925.913-02', 6);
INSERT INTO guia VALUES ('321.565.194-71','989.445.235-96', 6);

INSERT INTO guia VALUES ('112.352.284-68','116.758.622-06', 7);
INSERT INTO guia VALUES ('112.352.284-68','123.684.742-66', 7);
INSERT INTO guia VALUES ('112.352.284-68','187.217.142-74', 7);
INSERT INTO guia VALUES ('112.352.284-68','892.549.556-20', 7);
INSERT INTO guia VALUES ('112.352.284-68','923.084.271-60', 7);
INSERT INTO guia VALUES ('321.565.194-71','931.071.938-95', 7);

INSERT INTO contrata VALUES ('785.214.448-76', 2, 1);
INSERT INTO contrata VALUES ('785.214.448-76', 7, 3);
INSERT INTO contrata VALUES ('785.214.448-76', 15, 5);
INSERT INTO contrata VALUES ('902.345.278-38', 5, 2);
INSERT INTO contrata VALUES ('902.345.278-38', 18, 6);
INSERT INTO contrata VALUES ('183.989.570-50', 12,4);


INSERT INTO compra VALUES ('201.811.925-78', 1);
INSERT INTO compra VALUES ('201.811.925-78', 4);
INSERT INTO compra VALUES ('454.187.783-92', 3);
INSERT INTO compra VALUES ('454.187.783-92', 19);
INSERT INTO compra VALUES ('201.111.904-67', 13);
INSERT INTO compra VALUES ('201.111.904-67', 6);
INSERT INTO compra VALUES ('292.957.379-11', 11);
INSERT INTO compra VALUES ('292.957.379-11', 14);
INSERT INTO criador VALUES ('102.312.573-45', 1);
INSERT INTO criador VALUES ('102.312.573-45', 2);
INSERT INTO criador VALUES ('564.328.478-98', 3);
INSERT INTO criador VALUES ('564.328.478-98', 4);
INSERT INTO criador VALUES ('689.207.420-42', 5);
INSERT INTO criador VALUES ('689.207.420-42', 6);
INSERT INTO criador VALUES ('986.124.785-45', 7);
INSERT INTO criador VALUES ('986.124.785-45', 8);
INSERT INTO criador VALUES ('198.228.735-87', 9);
INSERT INTO criador VALUES ('198.228.735-87', 10);
INSERT INTO criador VALUES ('078.845.996-12', 11);
INSERT INTO criador VALUES ('078.845.996-12', 12);
INSERT INTO criador VALUES ('678.191.458-44', 13);
INSERT INTO criador VALUES ('678.191.458-44', 14);
INSERT INTO criador VALUES ('635.152.669-17', 15);
INSERT INTO criador VALUES ('635.152.669-17', 16);
INSERT INTO criador VALUES ('456.712.223-00', 17);
INSERT INTO criador VALUES ('456.712.223-00', 18);
INSERT INTO criador VALUES ('514.378.321-98', 19);
INSERT INTO criador VALUES ('514.378.321-98', 20);


INSERT INTO expoe_obra_de_arte VALUES ('078.845.996-12',11, 1, 7406);
INSERT INTO expoe_obra_de_arte VALUES ('102.312.573-45',1, 1 ,3303 );
INSERT INTO expoe_obra_de_arte VALUES ('198.228.735-87',9, 1, 4403);
INSERT INTO expoe_obra_de_arte VALUES ('456.712.223-00',17, 1, 5237);
INSERT INTO expoe_obra_de_arte VALUES ('078.845.996-12',12, 2, 4113);
INSERT INTO expoe_obra_de_arte VALUES ('102.312.573-45',2, 2 ,7435 );
INSERT INTO expoe_obra_de_arte VALUES ('198.228.735-87',10, 2, 2641);
INSERT INTO expoe_obra_de_arte VALUES ('456.712.223-00',18, 2, 3841);
INSERT INTO expoe_obra_de_arte VALUES ( '689.207.420-42', 5, 3, 7251);
INSERT INTO expoe_obra_de_arte VALUES ( '689.207.420-42', 6, 3, 7002);
INSERT INTO expoe_obra_de_arte VALUES ( '678.191.458-44', 13, 3, 8721);
INSERT INTO expoe_obra_de_arte VALUES ('678.191.458-44', 14, 3, 0831);
INSERT INTO expoe_obra_de_arte VALUES ('514.378.321-98',19, 4, 9645);
INSERT INTO expoe_obra_de_arte VALUES ('514.378.321-98',20, 4 ,1036 );
INSERT INTO expoe_obra_de_arte VALUES ('635.152.669-17',15, 4, 2336);
INSERT INTO expoe_obra_de_arte VALUES ('564.328.478-98',3, 4, 9745);
INSERT INTO expoe_obra_de_arte VALUES ('635.152.669-17',16, 5, 6666);
INSERT INTO expoe_obra_de_arte VALUES ('564.328.478-98',4, 5 ,1014 );
INSERT INTO expoe_obra_de_arte VALUES ('986.124.785-45',7, 5, 5060);
INSERT INTO expoe_obra_de_arte VALUES ('986.124.785-45',8, 5, 3080);


INSERT INTO expoe_Reliquia VALUES (1,6, 6780);
INSERT INTO expoe_Reliquia VALUES (3,6, 6053);
INSERT INTO expoe_Reliquia VALUES (4,6, 5493);
INSERT INTO expoe_Reliquia VALUES (8,6, 4736);
INSERT INTO expoe_Reliquia VALUES (9,6, 7394);
INSERT INTO expoe_Reliquia VALUES (10,6, 7902);
INSERT INTO expoe_Reliquia VALUES (2,7, 9080);
INSERT INTO expoe_Reliquia VALUES (5,7, 5670);
INSERT INTO expoe_Reliquia VALUES (6,7, 1042);
INSERT INTO expoe_Reliquia VALUES (7,7, 8754);
INSERT INTO expoe_Reliquia VALUES (11,7, 1407);
INSERT INTO expoe_Reliquia VALUES (12,7, 7681);
INSERT INTO expoe_Reliquia VALUES (13,3, 3456);
INSERT INTO expoe_Reliquia VALUES (17,3, 1056);
INSERT INTO expoe_Reliquia VALUES (20,3, 7654);


INSERT INTO pagamento VALUES ('Supervisor', 10000.00);
INSERT INTO pagamento VALUES ('Guia', 5000.00);
INSERT INTO pagamento VALUES ('Serviços Gerais', 3200.00);
INSERT INTO pagamento VALUES ('Segurança', 5480.00);
INSERT INTO pagamento VALUES ('Gerente', 15000.00);
INSERT INTO pagamento VALUES ('Curador', 10000.00);
INSERT INTO pagamento VALUES ('Restaurador', 12000.00);



INSERT INTO telefone_pessoa VALUES ('102.312.573-45', '81' ,'96008-1172');
INSERT INTO telefone_pessoa VALUES ('102.312.573-45', '81' ,'52964-2125');
INSERT INTO telefone_pessoa VALUES ('564.328.478-98', '81' ,'92326-0044');
INSERT INTO telefone_pessoa VALUES ('564.328.478-98', '81' ,'38863-2521');
INSERT INTO telefone_pessoa VALUES ('689.207.420-42', '81' ,'98643-2507');
INSERT INTO telefone_pessoa VALUES ('689.207.420-42', '81' ,'47736-7752');
INSERT INTO telefone_pessoa VALUES ('986.124.785-45', '81' ,'92026-4649');
INSERT INTO telefone_pessoa VALUES ('986.124.785-45', '81' ,'31687-5455');
INSERT INTO telefone_pessoa VALUES ('198.228.735-87', '81' ,'94491-8870');
INSERT INTO telefone_pessoa VALUES ('198.228.735-87', '81' ,'21310-8319');
INSERT INTO telefone_pessoa VALUES ('078.845.996-12', '81' ,'91233-2260');
INSERT INTO telefone_pessoa VALUES ('678.191.458-44', '81' ,'90077-1757');
INSERT INTO telefone_pessoa VALUES ('635.152.669-17', '81' ,'92971-4910');
INSERT INTO telefone_pessoa VALUES ('456.712.223-00', '83' ,'91944-3060');
INSERT INTO telefone_pessoa VALUES ('514.378.321-98', '83' ,'94069-1112');
INSERT INTO telefone_pessoa VALUES ('123.684.742-66', '83' ,'98366-3962');
INSERT INTO telefone_pessoa VALUES ('275.789.321-80', '83' ,'98533-3886');
INSERT INTO telefone_pessoa VALUES ('033.858.634-99', '83' ,'91809-9970');
INSERT INTO telefone_pessoa VALUES ('923.084.271-60', '83' ,'91707-1375');
INSERT INTO telefone_pessoa VALUES ('444.608.646-49', '10' ,'98879-8195');
INSERT INTO telefone_pessoa VALUES ('116.758.622-06', '10' ,'92752-4902');
INSERT INTO telefone_pessoa VALUES ('987.925.913-02', '10' ,'90385-3097');
INSERT INTO telefone_pessoa VALUES ('371.866.227-20', '10' ,'93089-4561');
INSERT INTO telefone_pessoa VALUES ('892.549.556-20', '10' ,'99334-5665');
INSERT INTO telefone_pessoa VALUES ('276.787.174-15', '31' ,'95035-1661');
INSERT INTO telefone_pessoa VALUES ('573.972.289-18', '31' ,'92578-4912');
INSERT INTO telefone_pessoa VALUES ('181.250.432-25', '31' ,'92311-3473');
INSERT INTO telefone_pessoa VALUES ('903.695.561-00', '31' ,'97218-0208');
INSERT INTO telefone_pessoa VALUES ('673.629.234-98', '31' ,'94748-4018');
INSERT INTO telefone_pessoa VALUES ('727.729.412-21', '31' ,'97477-2210');
INSERT INTO telefone_pessoa VALUES ('112.352.284-68', '31' ,'98118-1242');
INSERT INTO telefone_pessoa VALUES ('612.547.610-39', '89' ,'99476-8697');
INSERT INTO telefone_pessoa VALUES ('177.235.819-39', '89' ,'90904-8990');
INSERT INTO telefone_pessoa VALUES ('602.897.321-75', '89' ,'90223-8819');
INSERT INTO telefone_pessoa VALUES ('326.182.003-00', '89' ,'90417-2235');
INSERT INTO telefone_pessoa VALUES ('321.565.194-71', '89' ,' 90820-2624');
INSERT INTO telefone_pessoa VALUES ('785.214.448-76', '89' ,'99985-0698');
INSERT INTO telefone_pessoa VALUES ('902.345.278-38', '89','99312-5564');
INSERT INTO telefone_pessoa VALUES ('183.989.570-50','89'  ,'99124-4759');
INSERT INTO telefone_pessoa VALUES ('201.811.925-78', '15' ,'99288-0900');
INSERT INTO telefone_pessoa VALUES ('454.187.783-92', '15' ,'97552-8734');
INSERT INTO telefone_pessoa VALUES ('201.111.904-67', '15' ,'93842-6247');
INSERT INTO telefone_pessoa VALUES ('292.957.379-11', '15' ,'92628-4917');
INSERT INTO telefone_pessoa VALUES ('277.543.780-89', '15' ,'91964-3067');
INSERT INTO telefone_pessoa VALUES ('551.999.793-45', '15' ,'91937-4413');
INSERT INTO telefone_pessoa VALUES ('989.445.235-96', '15' ,'97053-9496');
INSERT INTO telefone_pessoa VALUES ('102.300.573-45', '15' ,'97342-3894');
INSERT INTO telefone_pessoa VALUES ('102.312.573-00', '15' ,'94646-2069');
INSERT INTO telefone_pessoa VALUES ('211.624.902-33', '15' ,'91368-6110');
INSERT INTO telefone_pessoa VALUES ('305.178.336-88', '44' ,'95091-7297');
INSERT INTO telefone_pessoa VALUES ('801.283.373-54', '44' ,'99391-0570');
INSERT INTO telefone_pessoa VALUES ('789.543.725-98', '51' ,'94795-3466');
INSERT INTO telefone_pessoa VALUES ('603.856.173-05', '51' ,'91303-9550');
INSERT INTO telefone_pessoa VALUES ('012.325.641-22', '51' ,'99940-2584');
INSERT INTO telefone_pessoa VALUES ('395.888.475-08', '56' ,'96806-8068');
INSERT INTO telefone_pessoa VALUES ('872.341.092-09', '91' ,'90767-1147');
INSERT INTO telefone_pessoa VALUES ('931.071.938-95', '91' ,'91043-8916');
INSERT INTO telefone_pessoa VALUES ('453.197.932-41', '91' ,'94930-9785');
INSERT INTO telefone_pessoa VALUES ('187.217.142-74', '91' ,'96182-8166');
INSERT INTO telefone_pessoa VALUES ('678.094.174-44', '99' ,'90226-9157');


INSERT INTO endereco_pessoa VALUES ( 'Rua Getulio Vargas', '221', 'Recife','Brasil');
INSERT INTO endereco_pessoa VALUES ( '7 rua de baixo', '598', 'Caruaru','Brasil');
INSERT INTO endereco_pessoa VALUES ( 'Rua Brigadeiro', '31', 'São Paulo','Brasil');
INSERT INTO endereco_pessoa VALUES ('Avenida Recife', '128', 'Recife','Brasil');
INSERT INTO endereco_pessoa VALUES ( 'Avenida 50', '15', 'Pedras de Fogo','Brasil');
INSERT INTO endereco_pessoa VALUES ( 'Travessa Arco-íris', '42', 'Recife','Brasil');
INSERT INTO endereco_pessoa VALUES ( 'Rua Laranjeira', '59', 'Carrapicho','Brasil');
INSERT INTO endereco_pessoa VALUES ( 'Rua caminhão derrapado', '1245', 'Petrolina','Brasil');
INSERT INTO endereco_pessoa VALUES ( '5° travessa do meio', '18', 'Recife','Brasil');
INSERT INTO endereco_pessoa VALUES ( 'Travessa do Milho', '72', 'Carne de Vaca','Brasil');
INSERT INTO endereco_pessoa VALUES ( 'Avenida Pinheiros','255','Recife','Brasil');
INSERT INTO endereco_pessoa VALUES ( 'Cruzada do Cruzeiro', '09', 'Ponta de Pedra','Brasil');
INSERT INTO endereco_pessoa VALUES ('Condomínio AlphaVille Premium Master','03','Recife','Brasil');
INSERT INTO endereco_pessoa VALUES ('Primeira rua de Caminho', '78', 'Diamantina','Brasil');
INSERT INTO endereco_pessoa VALUES ( 'Rua João Pessoa', '766', 'Jundiai','Brasil');
INSERT INTO endereco_pessoa VALUES ('Rua Petronília Dersia', '1356','Salvador','Brasil');
INSERT INTO endereco_pessoa VALUES ( 'Rua Telemaco Borba', '643', 'Camaragibe','Brasil');
INSERT INTO endereco_pessoa VALUES ('Rua Quatro', '541', 'Divinópolis','Brasil');
INSERT INTO endereco_pessoa VALUES('Rua Armando Colo', '823', 'Carne de Vaca','Brasil');
INSERT INTO endereco_pessoa VALUES ('Time Square','324','New York', 'Estados Unidos');
INSERT INTO endereco_pessoa VALUES ( 'Terceira rua do Limão', '450', 'João Pessoa','Brasil');
INSERT INTO endereco_pessoa VALUES ( 'Rua João Florêncio Fontes', '1091', 'Osasco','Brasil');
INSERT INTO endereco_pessoa VALUES ( 'Avenida Marginal', '1857', 'Jundiai','Brasil');
INSERT INTO endereco_pessoa VALUES ( 'Rua de cima', '04', 'Carne de Vaca','Brasil');
INSERT INTO endereco_pessoa VALUES ( 'Rua Servidão Vieira da Silva ', '1370', 'Manaus','Brasil');
INSERT INTO endereco_pessoa VALUES( 'Fazenda Campo Alegre', '188', 'Manaus','Brasil');
INSERT INTO endereco_pessoa VALUES ('Rua Lima', '797', 'Ribeirão das Neves','Brasil');
INSERT INTO endereco_pessoa VALUES ( 'Rua Wlademira do Amaral', '293', 'Manaus','Brasil');
INSERT INTO endereco_pessoa VALUES ('Escada de Cima', '08', 'Garanhuns','Brasil');
INSERT INTO endereco_pessoa VALUES ( 'Aeroporto São Domingos','75','Garanhuns','Brasil');
INSERT INTO endereco_pessoa VALUES ( 'Avenida Cuiabá', '17', 'Garanhuns','Brasil');
INSERT INTO endereco_pessoa VALUES ('Avenida José Castro','44','Caruaru','Brasil');
INSERT INTO endereco_pessoa VALUES ( 'Rua das Laranjeiras', '91', 'Palmares','Brasil');
INSERT INTO endereco_pessoa VALUES ( 'Rua Acapulco ', '1971', 'Palmares','Brasil');
INSERT INTO endereco_pessoa VALUES ( 'Rua Dom Severino Vieira de Melo', '1234', 'Caruaru','Brasil');
INSERT INTO endereco_pessoa VALUES ( 'Rua do Centro', '87', 'Recife','Brasil');
INSERT INTO endereco_pessoa VALUES ( 'Travessa da Quinta Avenida', '01', 'Carne de Vaca','Brasil');
INSERT INTO endereco_pessoa VALUES ( 'Rua Ibicuí', '558', 'Caruaru','Brasil');
INSERT INTO endereco_pessoa VALUES ( 'Rua do Limoeiro', '23', 'João Pessoa','Brasil');
INSERT INTO endereco_pessoa VALUES ('Rua Jornalista Nelson Pereira de Lima', '1411', 'Recife','Brasil');
INSERT INTO endereco_pessoa VALUES('Fazenda Haroldo Feitosa','112','Petrolina','Brasil');
INSERT INTO endereco_pessoa VALUES ('Rua João Pessoa', '83', 'Caruaru','Brasil');
INSERT INTO endereco_pessoa VALUES ( 'Rua Principal 1', '789', 'Caruaru','Brasil');
INSERT INTO endereco_pessoa VALUES ( 'Rua das Flores', '163', 'Petrolina','Brasil');
INSERT INTO endereco_pessoa VALUES('Rua Paris','1770','São Paulo','Brasil');
INSERT INTO endereco_pessoa VALUES('Avenida São João', '1813','São Paulo','Brasil');
INSERT INTO endereco_pessoa VALUES ( 'Avenida da luz', '82', 'São Paulo','Brasil');
INSERT INTO endereco_pessoa VALUES ( 'Rua José Vicente Lacerda', '1961', 'São Paulo','Brasil');
INSERT INTO endereco_pessoa VALUES ('Avenida Beltrão','35','Recife','Brasil');
INSERT INTO endereco_pessoa VALUES ('Rua Tupy-A', '1153', 'Garanhuns','Brasil');
INSERT INTO endereco_pessoa VALUES ( 'Rua do Cajueiro', '37', 'Garanhuns','Brasil');
INSERT INTO endereco_pessoa VALUES ( 'Rua Marechal Cândido Rondon', '443', 'Caruaru','Brasil');
INSERT INTO endereco_pessoa VALUES ('Quadra 4','25','Vitória de Santo Antão','Brasil');
INSERT INTO endereco_pessoa VALUES ( 'Avenida Líndice', '1166', 'Vitória de Santo Antão','Brasil');
INSERT INTO endereco_pessoa VALUES ( 'Rua Vitoriosa', '89', 'Vitória de Santo Antão','Brasil');


INSERT INTO banco_do_comprador VALUES ( '0025631489-6', '0323');
INSERT INTO banco_do_comprador VALUES ( '2635489654-8', '0323');
INSERT INTO banco_do_comprador VALUES ('1124578965-0','0323');
INSERT INTO banco_do_comprador VALUES ( '3836701591-1', '0626');
INSERT INTO banco_do_comprador VALUES ( '05406377-4', '0626');
INSERT INTO banco_do_comprador VALUES ( '3880411612-2','0780');
INSERT INTO banco_do_comprador VALUES ( '1854470959-7','0780');

INSERT INTO comunicacao_pessoa VALUES ('102.312.573-45', 'rodrigo_martins@mail.com');
INSERT INTO comunicacao_pessoa VALUES ('564.328.478-98', 'mario_damorin@mail.com ');
INSERT INTO comunicacao_pessoa VALUES ('689.207.420-42', 'debora_paula@mail.com');
INSERT INTO comunicacao_pessoa VALUES ('986.124.785-45', 'joao_goncalves@mail.com');
INSERT INTO comunicacao_pessoa VALUES ('198.228.735-87', 'clara_maria@mail.com');
INSERT INTO comunicacao_pessoa VALUES ('078.845.996-12', 'maria_jose@mail.com');
INSERT INTO comunicacao_pessoa VALUES ('678.191.458-44', 'joana_maria@mail.com');
INSERT INTO comunicacao_pessoa VALUES ('635.152.669-17', 'camila_azevedo@mail.com');
INSERT INTO comunicacao_pessoa VALUES ('456.712.223-00', 'matheus_alves@mail.com');
INSERT INTO comunicacao_pessoa VALUES ('514.378.321-98', 'lara_alexandra@mail.com');
INSERT INTO comunicacao_pessoa VALUES ('123.684.742-66', 'pamella@mail.com');
INSERT INTO comunicacao_pessoa VALUES ('275.789.321-80', 'marcos_silva@mail.com');
INSERT INTO comunicacao_pessoa VALUES ('033.858.634-99','kaua_frederico@mail.com');
INSERT INTO comunicacao_pessoa VALUES ('923.084.271-60', 'junior_souza@mail.com');
INSERT INTO comunicacao_pessoa VALUES ('444.608.646-49', 'brenda_rocha@mail.com');
INSERT INTO comunicacao_pessoa VALUES ('116.758.622-06','marina_dias@mail.com');
INSERT INTO comunicacao_pessoa VALUES ('987.925.913-02', 'tiago_alves@mail.com');
INSERT INTO comunicacao_pessoa VALUES ('371.866.227-20', 'leonor_azevedo@mail.com');
INSERT INTO comunicacao_pessoa VALUES('892.549.556-20', 'vinicius_dias@mail.com');
INSERT INTO comunicacao_pessoa VALUES ('276.787.174-15', 'mauro_sergio@mail.com');
INSERT INTO comunicacao_pessoa VALUES ('573.972.289-18', 'clarissa_ribeiro@mail.com');
INSERT INTO comunicacao_pessoa VALUES ('181.250.432-25', 'vitor_ribeiro@mail.com');
INSERT INTO comunicacao_pessoa VALUES ('903.695.561-00', 'julia_fernandes@mail.com');
INSERT INTO comunicacao_pessoa VALUES ('673.629.234-98', 'luana_santana@mail.com');
INSERT INTO comunicacao_pessoa VALUES ('727.729.412-21', 'clara_silva@mail.com');
INSERT INTO comunicacao_pessoa VALUES('112.352.284-68', 'marcia_araujo@mail.com');
INSERT INTO comunicacao_pessoa VALUES ('612.547.610-39', 'sofia_fernandes@mail.com');
INSERT INTO comunicacao_pessoa VALUES ('177.235.819-39', 'rafaela_gomes@mail.com');
INSERT INTO comunicacao_pessoa VALUES ('602.897.321-75', 'joao_maria@mail.com');
INSERT INTO comunicacao_pessoa VALUES ('326.182.003-00','manoel_freitas@mail.com');
INSERT INTO comunicacao_pessoa VALUES ('321.565.194-71', 'tomas_correia@mail.com');
INSERT INTO comunicacao_pessoa VALUES ('785.214.448-76','carlito_teves@mail.com');
INSERT INTO comunicacao_pessoa VALUES ('902.345.278-38', 'susana_cassia@mail.com');
INSERT INTO comunicacao_pessoa VALUES ('183.989.570-50', 'agatha_azevedo@mail.com');
INSERT INTO comunicacao_pessoa VALUES ('201.811.925-78', 'marina_gomes@mail.com');
INSERT INTO comunicacao_pessoa VALUES ('454.187.783-92', ' marcos_junior@mail.com');
INSERT INTO comunicacao_pessoa VALUES ('201.111.904-67', 'carlos_justos@mail.com');
INSERT INTO comunicacao_pessoa VALUES ('292.957.379-11', 'manuela_lima@mail.com');
INSERT INTO comunicacao_pessoa VALUES ('277.543.780-89', 'ruana_martins@mail.com');
INSERT INTO comunicacao_pessoa VALUES ('551.999.793-45', 'otavio_pinto@mail.com');
INSERT INTO comunicacao_pessoa VALUES('989.445.235-96','marco_polo@mail.com');
INSERT INTO comunicacao_pessoa VALUES ('102.300.573-45', 'cassio_monteiro@mail.com');
INSERT INTO comunicacao_pessoa VALUES ('102.312.573-00', 'luiza_castro@mail.com');
INSERT INTO comunicacao_pessoa VALUES ('211.624.902-33', 'enzo_almeida@mail.com');
INSERT INTO comunicacao_pessoa VALUES('305.178.336-88','napo_litano@mail.com');
INSERT INTO comunicacao_pessoa VALUES('801.283.373-54','erick_sousa@mail.com');
INSERT INTO comunicacao_pessoa VALUES ('789.543.725-98', 'joao_freitas@mail.com');
INSERT INTO comunicacao_pessoa VALUES ('603.856.173-05', 'davi_correia@mail.com');
INSERT INTO comunicacao_pessoa VALUES ('012.325.641-22' , 'matheus_correia@mail.com');
INSERT INTO comunicacao_pessoa VALUES ('395.888.475-08', 'caio_alves@mail.com');
INSERT INTO comunicacao_pessoa VALUES ('872.341.092-09', 'felipe_souza@mail.com');
INSERT INTO comunicacao_pessoa VALUES ('931.071.938-95', 'vitoria_avalcanti@mail.com');
INSERT INTO comunicacao_pessoa VALUES ('453.197.932-41','salvio_moura@mail.com');
INSERT INTO comunicacao_pessoa VALUES ('187.217.142-74', 'felipe_correia@mail.com');
INSERT INTO comunicacao_pessoa VALUES ('678.094.174-44', 'caio_juarez@mail.com');
