DROP TABLE contrata;
DROP TABLE pagamento;
DROP TABLE compra;
DROP TABLE criador;
DROP TABLE expoe_Reliquia;
DROP TABLE expoe_obra_de_arte;
DROP TABLE telefone_pessoa;
DROP TABLE exposicao;
DROP TABLE endereco_pessoa;
DROP TABLE comunicacao_pessoa;
DROP TABLE banco_do_comprador;
DROP TABLE obra_de_arte;
DROP TABLE reliquia;
DROP TABLE seguro;
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
    cargo VARCHAR(15) NOT NULL,
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
    data_exposicao DATE NOT NULL,
    horario_exposicao TIME NOT NULL,
    dinheiro_arrecadado NUMERIC NOT NULL,
    numero_visitantes NUMERIC NOT NULL,
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
    ddd INTEGER,
    numero NUMERIC,
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
    conta NUMERIC,
    agencia NUMERIC NOT NULL,
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
