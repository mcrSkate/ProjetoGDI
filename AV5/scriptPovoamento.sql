--POVOAMENTO DAS RELIQUIAS

INSERT INTO tb_reliquia VALUES (tp_reliquia(1, 'Osso de Tiranossauro', 'Fóssil', '100000'));
INSERT INTO tb_reliquia VALUES (tp_reliquia(2,'O Santo Graal','Objeto Preservado','2021'));
INSERT INTO tb_reliquia VALUES (tp_reliquia(3, 'Crânio do Primeiro Humano', 'Fóssil', '80000'));
INSERT INTO tb_reliquia VALUES (tp_reliquia(4, 'Vértebra de Saurópode','Fóssil','120000000'));
INSERT INTO tb_reliquia VALUES (tp_reliquia(5, 'Excalibur', 'Objeto Preservado', '1500'));
INSERT INTO tb_reliquia VALUES (tp_reliquia(6, 'Olho de thundera','Objeto Preservado','1900'));
INSERT INTO tb_reliquia VALUES (tp_reliquia(7, 'Chápeu de Palha', 'Objeto Preservado', '100'));
INSERT INTO tb_reliquia VALUES (tp_reliquia(8, 'Cauda de réptil', 'Fóssil', '150000'));
INSERT INTO tb_reliquia VALUES (tp_reliquia(9, 'Dedo de Ryomen Sukuna', 'Fóssil', '2000'));
INSERT INTO tb_reliquia VALUES (tp_reliquia(10, 'Garra de argentavis','Fóssil','11630000'));
INSERT INTO tb_reliquia VALUES (tp_reliquia(11, 'Espada de Arthur', 'Objeto preservado', '1800'));
INSERT INTO tb_reliquia VALUES (tp_reliquia(12, 'Espada do Rei Destruído', 'Objeto Preservado', '5000'));
INSERT INTO tb_reliquia VALUES (tp_reliquia(13, 'Escudo Viking', 'Objeto Preservado', '500'));
INSERT INTO tb_reliquia VALUES (tp_reliquia(14, 'Casco do Holandês Voador', 'Objeto Preservado','500'));
INSERT INTO tb_reliquia VALUES (tp_reliquia(15, 'Portão de El Dourado','Objeto Preservado','1200'));
INSERT INTO tb_reliquia VALUES (tp_reliquia(16, 'Escudo de Centurião Romano', 'Objeto Preservado', '2000'));
INSERT INTO tb_reliquia VALUES (tp_reliquia(17, 'Dente de Megalodonte','Fóssil','5000000'));
INSERT INTO tb_reliquia VALUES (tp_reliquia(18, 'Água de Atlântida', 'Objeto Preservado', '5000'));
INSERT INTO tb_reliquia VALUES (tp_reliquia(19, 'Cabeça do Ancestral Comum','Fóssil','600000000'));
INSERT INTO tb_reliquia VALUES (tp_reliquia(20, 'Costela de Alienígena Pré-Histórico', 'Fóssil', '500000'));

--POVOAMENTO DE ARTISTA

INSERT INTO tb_artista VALUES (tp_artista('102.312.573-45', 'Rodrigo Martins Morais','rodrigo_martins@mail.com', to_date('14/10/1986','dd/mm/yyyy'),tp_fones(tp_fone('81' ,'960081172'), tp_fone('81' ,'529642125')), tp_endereco('Rua Getulio Vargas', '221', 'Recife', 'Brasil'), 12000.00, tb_obra_de_arte())) ;
INSERT INTO tb_artista VALUES (tp_artista('564.328.478-98', 'Mario damorin ','mario_damorin@mail.com' , to_date('18/07/1968','dd/mm/yyyy'),tp_fones(tp_fone('81' , '923260044'), tp_fone('81' ,'388632521')),  tp_endereco('7 rua de baixo', '598', 'Caruaru ', 'Brasil'), 3000.00, tb_obra_de_arte()));
INSERT INTO tb_artista VALUES (tp_artista('689.207.420-42', 'Debora Paula dos Santos', 'debora_paula@mail.com', to_date('14/10/1991','dd/mm/yyyy'), tp_fones(tp_fone('81' , '986432507'), tp_fone('81' ,'477367752')),  tp_endereco('Rua Brigadeiro', '31', 'São Paulo', 'Brasil'),0, tb_obra_de_arte()) );
INSERT INTO tb_artista VALUES (tp_artista('986.124.785-45', 'João Gonçalves Almeida', 'joao_goncalves@mail.com', to_date('15/03/1998','dd/mm/yyyy'), tp_fones(tp_fone('81' , '920264649'), tp_fone('81' ,'316875455')),  tp_endereco('Avenida Recife', '128', 'Recife', 'Brasil'),1842.00, tb_obra_de_arte()) );
INSERT INTO tb_artista VALUES (tp_artista('198.228.735-87','Clara Maria Cornelho', 'clara_maria@mail.com', to_date('10/12/2006','dd/mm/yyyy'), tp_fones(tp_fone('81' , '944918870'), tp_fone('81' ,'213108319')),  tp_endereco('Avenida 50', '15', 'Pedras de Fogo', 'Brasil'),45000.00, tb_obra_de_arte()) );
INSERT INTO tb_artista VALUES (tp_artista('078.845.996-12', 'Maria josé Santiago','maria_jose@mail.com', to_date('09/07/2003','dd/mm/yyyy'), tp_fones(tp_fone('81' ,'912332260')),  tp_endereco('Travessa Arco-íris', '42', 'Recife', 'Brasil'),0, tb_obra_de_arte()) );
INSERT INTO tb_artista VALUES (tp_artista('678.191.458-44', 'Joana Maria ', 'joana_maria@mail.com', to_date('20/08/1999','dd/mm/yyyy'), tp_fones(tp_fone('81' , '900771757')),  tp_endereco('Rua Laranjeira', '59', 'Carrapicho', 'Brasil'),0, tb_obra_de_arte()) );
INSERT INTO tb_artista VALUES (tp_artista('635.152.669-17', 'Camila de Azevedo','camila_azevedo@mail.com', to_date('23-FEB-1985', 'dd/mm/yyyy'), tp_fones(tp_fone('81' ,'929714910')), tp_endereco('Rua caminhão derrapado', '1245', 'Petrolina', 'Brasil'), 0.00, tb_obra_de_arte()));
INSERT INTO tb_artista VALUES (tp_artista('456.712.223-00', 'Matheus Alves','matheus_alves@mail.com', to_date('13-MAY-1980', 'dd/mm/yyyy'), tp_fones(tp_fone('83' ,'919443060')), tp_endereco('5° travessa do meio', '18', 'Recife', 'Brasil'), 7624.32, tb_obra_de_arte()));
INSERT INTO tb_artista VALUES (tp_artista('514.378.321-98', 'Lara Alexandra Silva', 'lara_alexandra@mail.com', to_date('19-APR-1978', 'dd/mm/yyyy'), tp_fones(tp_fone('83' ,'940691112')), tp_endereco('Travessa do Milho', '72', 'Carne de Vaca', 'Brasil'), 30000.00, tb_obra_de_arte()) );

--POVOAMENTO DE VISITANTE

INSERT INTO tb_visitante VALUES (tp_visitante('123.684.742-66','Pamella','pamella@mail.com', '15-JAN-2000', tp_fones(tp_fone('83','983663962')), tp_endereco('Avenida Pinheiros',255,'Recife','Brasil'), 85248));
INSERT INTO tb_visitante VALUES (tp_visitante('275.789.321-80','Marcos da Silva', 'marcos_silva@mail.com','01-MAR-2005', tp_fones(tp_fone('83' ,'985333886')), tp_endereco('Cruzada do Cruzeiro', '09', 'Ponta de Pedra','Brasil'), 82177));
INSERT INTO tb_visitante VALUES (tp_visitante('033.858.634-99','Kauã Frederico','kaua_frederico@mail.com','16-JUN-1999', tp_fones(tp_fone('83' ,'918099970')), tp_endereco('Condomínio AlphaVille Premium Master','03','Recife','Brasil'),25953));
INSERT INTO tb_visitante VALUES (tp_visitante('923.084.271-60','Junior Souza','junior_souza@mail.com' ,'29-DEC-1945', tp_fones(tp_fone('83' ,'917071375')), tp_endereco('Primeira rua de Caminho', '78', 'Diamantina','Brasil'),94803));
INSERT INTO tb_visitante VALUES (tp_visitante('444.608.646-49','Brenda C Rocha','brenda_rocha@mail.com','13-MAY-1958', tp_fones(tp_fone('10' ,'988798195')), tp_endereco('Rua João Pessoa', '766', 'Jundiai','Brasil'), 84166));
INSERT INTO tb_visitante VALUES (tp_visitante('116.758.622-06','Marina C Dias','marina_dias@mail.com', '05-AUG-1965', tp_fones(tp_fone('10' ,'927524902')), tp_endereco('Rua Petronília Dersia', '1356','Salvador','Brasil'), 26942));
INSERT INTO tb_visitante VALUES (tp_visitante('987.925.913-02','Tiago M Alves','tiago_alves@mail.com','11-APR-1985', tp_fones(tp_fone('10' ,'903853097')), tp_endereco('Rua Telemaco Borba', '643', 'Camaragibe','Brasil'), 11587));
INSERT INTO tb_visitante VALUES (tp_visitante('371.866.227-20','Leonor Azevedo','leonor_azevedo@mail.com','10-MAY-1975', tp_fones(tp_fone('10' ,'930894561')), tp_endereco('Rua Quatro', '541', 'Divinópolis','Brasil'), 49428));
INSERT INTO tb_visitante VALUES (tp_visitante('892.549.556-20','Vinicius C Dias', 'vinicius_dias@mail.com','16-NOV-1966', tp_fones(tp_fone('10' ,'993345665')), tp_endereco('Rua Armando Colo', '823', 'Carne de Vaca','Brasil'),94124));
INSERT INTO tb_visitante VALUES (tp_visitante('277.543.780-89','Ruana Martins','ruana_martins@mail.com','09-NOV-1977', tp_fones(tp_fone('15' ,'919643067')), tp_endereco('Rua do Limoeiro', '23', 'João Pessoa','Brasil'),76521));
INSERT INTO tb_visitante VALUES (tp_visitante('551.999.793-45','Otávio C Pinto','otavio_pinto@mail.com','03-FEB-1957', tp_fones(tp_fone('15' ,'919374413')), tp_endereco('Rua Jornalista Nelson Pereira de Lima', '1411', 'Recife','Brasil'), 56432));
INSERT INTO tb_visitante VALUES (tp_visitante('989.445.235-96','Marco Polo','marco_polo@mail.com','31-MAY-2006', tp_fones(tp_fone('15' ,'970539496')), tp_endereco('Fazenda Haroldo Feitosa','112','Petrolina','Brasil'), 42843));
INSERT INTO tb_visitante VALUES (tp_visitante('102.300.573-45', 'Cássio Monteiro','cassio_monteiro@mail.com','29-JUN-1997', tp_fones(tp_fone( '15' ,'973423894')), tp_endereco('Rua João Pessoa', '83', 'Caruaru','Brasil'), 10486));
INSERT INTO tb_visitante VALUES (tp_visitante('102.312.573-00', 'Luiza Castro','luiza_castro@mail.com','02-AUG-2000', tp_fones(tp_fone( '15' ,'946462069')), tp_endereco('Rua Principal 1', '789', 'Caruaru','Brasil'), 37598));
INSERT INTO tb_visitante VALUES (tp_visitante('211.624.902-33', 'Enzo C Almeida','enzo_almeida@mail.com','10-MAR-1976', tp_fones(tp_fone( '15' ,'913686110')), tp_endereco('Rua das Flores', '163', 'Petrolina','Brasil'), 48863));
INSERT INTO tb_visitante VALUES (tp_visitante('305.178.336-88','Napo Litano Bona Arte','napo_litano@mail.com','01-DEC-1977', tp_fones(tp_fone('44' ,'950917297')), tp_endereco('Rua Paris','1770','São Paulo','Brasil'), 21825));
INSERT INTO tb_visitante VALUES (tp_visitante('801.283.373-54','Erick C Sousa','erick_sousa@mail.com','08-JAN-1972', tp_fones(tp_fone('44' ,'993910570')), tp_endereco('Avenida São João', '1813','São Paulo','Brasil'), 91764));
INSERT INTO tb_visitante VALUES (tp_visitante('789.543.725-98', 'João M. Freitas','joao_freitas@mail.com','17-NOV-1991', tp_fones(tp_fone('51' ,'947953466')), tp_endereco('Avenida da luz', '82', 'São Paulo','Brasil'), 56702));
INSERT INTO tb_visitante VALUES (tp_visitante('603.856.173-05', 'Davi R Correia', 'davi_correia@mail.com','09-AUG-1962', tp_fones(tp_fone('51' ,'913039550')), tp_endereco('Rua José Vicente Lacerda', '1961', 'São Paulo','Brasil'), 73200));
INSERT INTO tb_visitante VALUES (tp_visitante('012.325.641-22' , 'Matheus Correia','matheus_correia@mail.com','30-AUG-2001', tp_fones(tp_fone('51' ,'999402584')), tp_endereco('Avenida Beltrão','35','Recife','Brasil'), 54300));
INSERT INTO tb_visitante VALUES (tp_visitante('395.888.475-08', 'Caio D Alves','caio_alves@mail.com','06-APR-1962', tp_fones(tp_fone('56' ,'968068068')), tp_endereco('Rua Tupy-A', '1153', 'Garanhuns','Brasil'), 76590));
INSERT INTO tb_visitante VALUES (tp_visitante('872.341.092-09', 'Felipe de Souza','felipe_souza@mail.com','28-FEB-1982', tp_fones(tp_fone('91' ,'907671147')), tp_endereco('Rua do Cajueiro', '37', 'Garanhuns','Brasil'), 56432));
INSERT INTO tb_visitante VALUES (tp_visitante('931.071.938-95', 'Vitoria F Cavalcanti','vitoria_avalcanti@mail.com','6-JUN-1975', tp_fones(tp_fone('91' ,'907671147')), tp_endereco('Rua Marechal Cândido Rondon', '443', 'Caruaru','Brasil'), 56432));
INSERT INTO tb_visitante VALUES (tp_visitante('453.197.932-41','Sálvio Moura','salvio_moura@mail.com','12-MAR-1960', tp_fones(tp_fone('91' ,'949309785')), tp_endereco('Quadra 4','25','Vitória de Santo Antão','Brasil'), 65003));
INSERT INTO tb_visitante VALUES (tp_visitante('187.217.142-74', 'Felipe S Correia','felipe_correia@mail.com','24-SEP-1960', tp_fones(tp_fone('91' ,'961828166')), tp_endereco('Avenida Líndice', '1166', 'Vitória de Santo Antão','Brasil'), 12390));
INSERT INTO tb_visitante VALUES (tp_visitante('678.094.174-44', 'Caio Juarez','caio_juarez@mail.com','16-JUL-1999', tp_fones(tp_fone('99' ,'902269157')), tp_endereco('Rua Vitoriosa', '89', 'Vitória de Santo Antão','Brasil'), 66890));

--POVOAMENTO DE FUNCIONARIO

INSERT INTO tb_funcionario VALUES(tp_funcionario('326.182.003-00', 'Manoel Freitas',
'manoel_freitas@mail.com', to_date('31/08/2001','dd/mm/yyyy'),tp_fones(tp_fone('89' ,'904172235')), 
tp_endereco('Avenida Cuiabá', '17', 'Garanhuns' , 'Brasil'), 'Supervisor', '10000.00', tb_obra_de_arte(), null));

  
INSERT INTO tb_funcionario VALUES(tp_funcionario('321.565.194-71', 'Tomás C Correia'  ,
'tomas_correia@mail.com', to_date('31/03/1973','dd/mm/yyyy'),tp_fones(tp_fone( '89' ,'908202624')), 
tp_endereco('Aeroporto São Domingos','75','Garanhuns', 'Brasil'), 'Guia', '5000.00', tb_obra_de_arte(), 
(SELECT REF(p) FROM tb_funcionario p WHERE cpf = '326.182.003-00')));

INSERT INTO tb_funcionario VALUES(tp_funcionario('602.897.321-75',  'João Maria', 'joao_maria@mail.com',
to_date('20/11/1974','dd/mm/yyyy'),tp_fones(tp_fone( '89' ,'902238819')), 
tp_endereco('Escada de Cima', '08', 'Garanhuns', 'Brasil'), 'Serviços Gerais', '3200.00', tb_obra_de_arte(), 
(SELECT REF(p) FROM tb_funcionario p WHERE cpf = '326.182.003-00')));


INSERT INTO tb_funcionario VALUES(tp_funcionario('177.235.819-39', 'Rafaela P Gomes','rafaela_gomes@mail.com',
to_date('08/03/1961','dd/mm/yyyy'),tp_fones(tp_fone( '89' ,'909048990')), 
tp_endereco('Rua Wlademira do Amaral', '293', 'Manaus','Brasil'), 'Serviços Gerais', '3200.00', tb_obra_de_arte(), 
(SELECT REF(p) FROM tb_funcionario p WHERE cpf = '326.182.003-00')));

INSERT INTO tb_funcionario VALUES(tp_funcionario('612.547.610-39',  'Sofia C Fernandes','sofia_fernandes@mail.com' ,
to_date('12/01/1981','dd/mm/yyyy'),tp_fones(tp_fone( '89' ,'902238819')), 
tp_endereco('Rua Lima', '797', 'Ribeirão das Neves','Brasil'), 'Serviços Gerais', '3200.00', tb_obra_de_arte(), 
(SELECT REF(p) FROM tb_funcionario p WHERE cpf = '326.182.003-00')));

INSERT INTO tb_funcionario VALUES(tp_funcionario('112.352.284-68',  'Márcia Araújo','marcia_araujo@mail.com',
to_date('09/03/1984','dd/mm/yyyy'),tp_fones(tp_fone( '31' ,'981181242')), 
tp_endereco('Fazenda Campo Alegre', '188', 'Manaus','Brasil'), 'Guia', '5000.00', tb_obra_de_arte(), 
(SELECT REF(p) FROM tb_funcionario p WHERE cpf = '326.182.003-00')));

INSERT INTO tb_funcionario VALUES(tp_funcionario('727.729.412-21','Clara A Silva','clara_silva@mail.com',
to_date('08/08/1967','dd/mm/yyyy'),tp_fones(tp_fone( '31' ,'974772210')), 
tp_endereco( 'Rua Servidão Vieira da Silva ', '1370', 'Manaus','Brasil'), 'Segurança', '5480.00', tb_obra_de_arte(), 
(SELECT REF(p) FROM tb_funcionario p WHERE cpf = '326.182.003-00')));

INSERT INTO tb_funcionario VALUES(tp_funcionario('673.629.234-98', 'Luana Santana de Moureira', 'luana_santana@mail.com',
to_date('01/08/1982','dd/mm/yyyy'),tp_fones(tp_fone( '31' ,'947484018')), 
tp_endereco( 'Rua de cima', '04', 'Carne de Vaca','Brasil'), 'Segurança', '5480.00', tb_obra_de_arte(), 
(SELECT REF(p) FROM tb_funcionario p WHERE cpf = '326.182.003-00')));

INSERT INTO tb_funcionario VALUES(tp_funcionario('903.695.561-00', 'Júlia O Fernandes', 'julia_fernandes@mail.com',
to_date('21/04/1990','dd/mm/yyyy'),tp_fones(tp_fone( '31' ,'972180208')), 
tp_endereco( 'Avenida Marginal', '1857', 'Jundiai','Brasil'), 'Restaurador', '12000.00', tb_obra_de_arte(), 
(SELECT REF(p) FROM tb_funcionario p WHERE cpf = '326.182.003-00')));

INSERT INTO tb_funcionario VALUES(tp_funcionario('181.250.432-25', 'Vitor G Ribeiro','vitor_ribeiro@mail.com',
to_date('05/12/1970','dd/mm/yyyy'),tp_fones(tp_fone( '31' ,'923113473')), 
tp_endereco( 'Rua João Florêncio Fontes', '1091', 'Osasco','Brasil'), 'Restaurador', '12000.00', tb_obra_de_arte(), 
(SELECT REF(p) FROM tb_funcionario p WHERE cpf = '326.182.003-00')));

INSERT INTO tb_funcionario VALUES(tp_funcionario('276.787.174-15', 'Mauro Sérgio', 'mauro_sergio@mail.com',
to_date('05/05/1962','dd/mm/yyyy'),tp_fones(tp_fone('31' ,'950351661')), 
tp_endereco( 'Time Square','324','New York','Estados Unidos'), 'Gerente', '15000.00', tb_obra_de_arte(), 
(SELECT REF(p) FROM tb_funcionario p WHERE cpf = '326.182.003-00')));

INSERT INTO tb_funcionario VALUES(tp_funcionario('573.972.289-18', 'Clarissa B. Ribeiro','clarissa_ribeiro@mail.com', 
to_date('15/06/1986','dd/mm/yyyy'),tp_fones(tp_fone('31' ,'925784912')), 
tp_endereco( 'Terceira rua do Limão', '450', 'João Pessoa','Brasil'), 'Gerente', '10000.00', tb_obra_de_arte(), 
(SELECT REF(p) FROM tb_funcionario p WHERE cpf = '326.182.003-00')));


--POVOAMENTO DE COMPRADOR

INSERT INTO tb_comprador VALUES(tp_comprador('785.214.448-76', 'Carlito Teves', 'carlito_teves@mail.com', to_date('04/09/1981','dd/mm/yyyy'),tp_fones(tp_fone('89' ,'999850698')), tp_endereco('Avenida José Castro','44','Caruaru', 'Brasil'),tp_dados_bancarios('0025631489-6', '0323')));
INSERT INTO tb_comprador VALUES(tp_comprador('902.345.278-38', 'Susana de Cássia','susana_cassia@mail.com', to_date('06/03/1972','dd/mm/yyyy'), tp_fones(tp_fone('89' ,'993125564')), tp_endereco('Rua das Laranjeiras', '91', 'Palmares', 'Brasil'),tp_dados_bancarios('2635489654-8', '0323')));
INSERT INTO tb_comprador VALUES(tp_comprador('183.989.570-50','Ágatha F Azevedo','agatha_azevedo@mail.com', to_date('03/10/1970','dd/mm/yyyy'), tp_fones(tp_fone('89' ,'991244759')), tp_endereco('Rua Acapulco ', '1971', 'Palmares', 'Brasil'),tp_dados_bancarios('1124578965-0', '0323')));
INSERT INTO tb_comprador VALUES(tp_comprador('201.811.925-78','Marina A Gomes','marina_gomes@mail.com','09-APR-1969', tp_fones(tp_fone('15' ,'992880900')), tp_endereco('Rua Dom Severino Vieira de Melo', '1234', 'Caruaru', 'Brasil'),tp_dados_bancarios('3836701591-1', '0626')));
INSERT INTO tb_comprador VALUES(tp_comprador('454.187.783-92',' Marcos Júnior Silva','marcos_junior@mail.com','05-SEP-1975', tp_fones(tp_fone('15' ,'975528734')), tp_endereco('Rua do Centro', '87', 'Recife', 'Brasil'),tp_dados_bancarios('05406377-4', '0626')));
INSERT INTO tb_comprador VALUES(tp_comprador('201.111.904-67','Carlos Justos','carlos_justos@mail.com','07-DEC-2002', tp_fones(tp_fone('15' ,'938426247')), tp_endereco('Travessa da Quinta Avenida', '01', 'Carne de Vaca', 'Brasil'),tp_dados_bancarios('3880411612-2', '0780')));
INSERT INTO tb_comprador VALUES(tp_comprador('292.957.379-11','Manuela P Lima','manuela_lima@mail.com','05-DEC-1957', tp_fones(tp_fone('15' ,'926284917')), tp_endereco('Rua Ibicuí', '558', 'Caruaru', 'Brasil'),tp_dados_bancarios('1854470959-7', '0780')));
INSERT INTO tb_comprador VALUES(tp_comprador('586.174.486-15','João Maurício Santos','joao_mauricio@mail.com','07-AUG-1996', tp_fones(tp_fone('15' ,'876557230')), tp_endereco('Avenida José Petribu', '99', 'Vitória de Santo Antão','Brasil'),tp_dados_bancarios('5679564550-9', '0780')));
INSERT INTO tb_comprador VALUES(tp_comprador('345.780.230-12', 'Ricardo Alves de Almeida','ricardo_almeida@mail.com', to_date('12-SEP-1980','dd/mm/yyyy'),tp_fones(tp_fone('81', '912354325')), tp_endereco('Rua marechal oliveira', '125', 'Carne de Vaca', 'Brasil'),tp_dados_bancarios('8899523450-7', '0780')));

--POVOAMENTO DE EXPOSICAO
                                
CREATE SEQUENCE exposicao_cq INCREMENT BY 1 START WITH 1;

INSERT INTO tb_exposicao VALUES (tp_exposicao(exposicao_cq.nextval, 140.00));
INSERT INTO tb_exposicao VALUES (tp_exposicao(exposicao_cq.nextval, 140.00));
INSERT INTO tb_exposicao VALUES (tp_exposicao(exposicao_cq.nextval, 200.00));
INSERT INTO tb_exposicao VALUES (tp_exposicao(exposicao_cq.nextval, 100.00));
INSERT INTO tb_exposicao VALUES (tp_exposicao(exposicao_cq.nextval, 80.00));
INSERT INTO tb_exposicao VALUES (tp_exposicao(exposicao_cq.nextval, 240.00));
INSERT INTO tb_exposicao VALUES (tp_exposicao(exposicao_cq.nextval, 120.00));

--POVOAMENTO DE EXPOE RELIQUIA
                                
INSERT INTO tb_expoe_reliquia VALUES((SELECT REF(r) FROM tb_reliquia r WHERE r.identificador_reliquia = 1), 
(SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao = 6) ,6780);

INSERT INTO tb_expoe_reliquia VALUES((SELECT REF(r) FROM tb_reliquia r WHERE r.identificador_reliquia = 3), 
(SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao = 6) ,6053);

INSERT INTO tb_expoe_reliquia VALUES((SELECT REF(r) FROM tb_reliquia r WHERE r.identificador_reliquia = 4), 
(SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao = 6) ,5493);

INSERT INTO tb_expoe_reliquia VALUES((SELECT REF(r) FROM tb_reliquia r WHERE r.identificador_reliquia = 8), 
(SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao = 6) ,4736);

INSERT INTO tb_expoe_reliquia VALUES((SELECT REF(r) FROM tb_reliquia r WHERE r.identificador_reliquia = 9), 
(SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao = 6) ,7394);

INSERT INTO tb_expoe_reliquia VALUES((SELECT REF(r) FROM tb_reliquia r WHERE r.identificador_reliquia = 10), 
(SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao = 6) ,7902);

INSERT INTO tb_expoe_reliquia VALUES((SELECT REF(r) FROM tb_reliquia r WHERE r.identificador_reliquia = 2), 
(SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao = 7) ,9080);

INSERT INTO tb_expoe_reliquia VALUES((SELECT REF(r) FROM tb_reliquia r WHERE r.identificador_reliquia = 5), 
(SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao = 7) ,5670);

INSERT INTO tb_expoe_reliquia VALUES((SELECT REF(r) FROM tb_reliquia r WHERE r.identificador_reliquia = 6), 
(SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao = 7) ,1042);

INSERT INTO tb_expoe_reliquia VALUES((SELECT REF(r) FROM tb_reliquia r WHERE r.identificador_reliquia = 7), 
(SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao = 7) ,8754);

INSERT INTO tb_expoe_reliquia VALUES((SELECT REF(r) FROM tb_reliquia r WHERE r.identificador_reliquia = 11), 
(SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao = 7) ,1407);

INSERT INTO tb_expoe_reliquia VALUES((SELECT REF(r) FROM tb_reliquia r WHERE r.identificador_reliquia = 12), 
(SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao = 7) ,7681);

INSERT INTO tb_expoe_reliquia VALUES((SELECT REF(r) FROM tb_reliquia r WHERE r.identificador_reliquia = 13), 
(SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao = 3) ,3456);

INSERT INTO tb_expoe_reliquia VALUES((SELECT REF(r) FROM tb_reliquia r WHERE r.identificador_reliquia = 17), 
(SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao = 3) ,1056);

INSERT INTO tb_expoe_reliquia VALUES((SELECT REF(r) FROM tb_reliquia r WHERE r.identificador_reliquia = 20), 
(SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao = 3) ,7654);
                                
--POVOANDO OBRA DE ARTES DOS ARTISTAS
                                
UPDATE tb_artista a
SET a.lista_obras = tb_obra_de_arte(tp_obra_de_arte(tp_obra_de_arte_primary_key('102.312.573-45','25-JAN-2013'),'Labirinto dos Céus', 'Pintura', 12000.0),
                                    tp_obra_de_arte(tp_obra_de_arte_primary_key('102.312.573-45','13-JAN-1989'),'Pensamento de Cézar', 'Escultura', 30000.0))
WHERE a.cpf = '102.312.573-45';

UPDATE tb_artista a
SET a.lista_obras = tb_obra_de_arte(tp_obra_de_arte(tp_obra_de_arte_primary_key('564.328.478-98','11-MAY-2002'),'O Pé Grande','Pintura', 4500.00),
                                    tp_obra_de_arte(tp_obra_de_arte_primary_key('564.328.478-98','15-APR-2021'),'Escuridão','Pintura', 5600.00))
WHERE a.cpf = '564.328.478-98';

UPDATE tb_artista a
SET a.lista_obras = tb_obra_de_arte(tp_obra_de_arte(tp_obra_de_arte_primary_key('689.207.420-42','19-MAY-2000'),'O choro','Escultura', 80000.00),
                                    tp_obra_de_arte(tp_obra_de_arte_primary_key('689.207.420-42','08-APR-1940'),'A torre de ossos','Escultura', 5300.0))
WHERE a.cpf = '689.207.420-42';

UPDATE tb_artista a
SET a.lista_obras = tb_obra_de_arte(tp_obra_de_arte(tp_obra_de_arte_primary_key('986.124.785-45','20-FEB-2002'),'Coraline','Pintura', 200000.0),
                    tp_obra_de_arte(tp_obra_de_arte_primary_key('986.124.785-45','29-JAN-1954'),'Morte','Pintura', 20500.0))
WHERE a.cpf = '986.124.785-45';

UPDATE tb_artista a
SET a.lista_obras = tb_obra_de_arte(tp_obra_de_arte(tp_obra_de_arte_primary_key('198.228.735-87','08-APR-1996'),'Caminho para o céu','Pintura', 86710.0),
                    tp_obra_de_arte(tp_obra_de_arte_primary_key('198.228.735-87','13-JUL-1994'),'Chápeu Amarelo','Escultura', 5000.0))
WHERE a.cpf = '198.228.735-87';

UPDATE tb_artista a
SET a.lista_obras = tb_obra_de_arte(tp_obra_de_arte(tp_obra_de_arte_primary_key('078.845.996-12','05-NOV-1966'),'Torre de babel','Escultura', 18000.00),
                    tp_obra_de_arte(tp_obra_de_arte_primary_key('078.845.996-12','02-NOV-2001'),'Estrada de espinhos','Escultura', 126000.00))
WHERE a.cpf = '078.845.996-12';

UPDATE tb_artista a
SET a.lista_obras = tb_obra_de_arte(tp_obra_de_arte(tp_obra_de_arte_primary_key('678.191.458-44','07-APR-2010'),'Amazônia Azul','Pintura', 56000.00),
                    tp_obra_de_arte(tp_obra_de_arte_primary_key('678.191.458-44','04-JUL-2021'),'Lonamisa','Pintura', 7420.00))
WHERE a.cpf = '678.191.458-44';

UPDATE tb_artista a
SET a.lista_obras = tb_obra_de_arte(tp_obra_de_arte(tp_obra_de_arte_primary_key('635.152.669-17','09-DEC-1983'),'Rosto sem cores','Pintura', 89000.00),
                    tp_obra_de_arte(tp_obra_de_arte_primary_key('635.152.669-17','26-JAN-2014'),'O Banco de Dados','Escultura', 18500.00))
WHERE a.cpf = '635.152.669-17';

UPDATE tb_artista a
SET a.lista_obras = tb_obra_de_arte(tp_obra_de_arte(tp_obra_de_arte_primary_key('456.712.223-00','09-APR-2015'),'Sonalima','Pintura', 32000.00 ),
                    tp_obra_de_arte(tp_obra_de_arte_primary_key('456.712.223-00','21-JUL-1975'),'Pintura Lendária','Escultura', 100000.00))
WHERE a.cpf = '456.712.223-00';

UPDATE tb_artista a
SET a.lista_obras = tb_obra_de_arte(tp_obra_de_arte(tp_obra_de_arte_primary_key('514.378.321-98','31-DEC-1999'),'Século Novo','Pintura', 89005.00 ),
                    tp_obra_de_arte(tp_obra_de_arte_primary_key('514.378.321-98','09-FEB-1982'),'O limão','Escultura', 90005.00))
WHERE a.cpf = '514.378.321-98';
                                
--POVOANDO OBRAS DE ARTES EM FUNCIONARIOS

UPDATE tb_funcionario f
SET f.lista_obras = tb_obra_de_arte(tp_obra_de_arte(tp_obra_de_arte_primary_key('102.312.573-45','25-JAN-2013'),'Labirinto dos Céus', 'Pintura', 12000.0),
                                    tp_obra_de_arte(tp_obra_de_arte_primary_key('102.312.573-45','13-JAN-1989'),'Pensamento de Cézar', 'Escultura', 30000.0),
                                    tp_obra_de_arte(tp_obra_de_arte_primary_key('564.328.478-98','11-MAY-2002'),'O Pé Grande','Pintura', 4500.00),
                                    tp_obra_de_arte(tp_obra_de_arte_primary_key('564.328.478-98','15-APR-2021'),'Escuridão','Pintura', 5600.00),
                                    tp_obra_de_arte(tp_obra_de_arte_primary_key('689.207.420-42','19-MAY-2000'),'O choro','Escultura', 80000.00),
                                    tp_obra_de_arte(tp_obra_de_arte_primary_key('689.207.420-42','08-APR-1940'),'A torre de ossos','Escultura', 5300.0),
                                    tp_obra_de_arte(tp_obra_de_arte_primary_key('986.124.785-45','20-FEB-2002'),'Coraline','Pintura', 200000.0),
                                    tp_obra_de_arte(tp_obra_de_arte_primary_key('986.124.785-45','29-JAN-1954'),'Morte','Pintura', 20500.0),
                                    tp_obra_de_arte(tp_obra_de_arte_primary_key('198.228.735-87','08-APR-1996'),'Caminho para o céu','Pintura', 86710.0),
                                    tp_obra_de_arte(tp_obra_de_arte_primary_key('198.228.735-87','13-JUL-1994'),'Chápeu Amarelo','Escultura', 5000.0))
WHERE f.cpf = '602.897.321-75';

UPDATE tb_funcionario f
SET f.lista_obras = tb_obra_de_arte(tp_obra_de_arte(tp_obra_de_arte_primary_key('078.845.996-12','05-NOV-1966'),'Torre de babel','Escultura', 18000.00),
                                    tp_obra_de_arte(tp_obra_de_arte_primary_key('078.845.996-12','02-NOV-2001'),'Estrada de espinhos','Escultura', 126000.00),
                                    tp_obra_de_arte(tp_obra_de_arte_primary_key('678.191.458-44','07-APR-2010'),'Amazônia Azul','Pintura', 56000.00),
                                    tp_obra_de_arte(tp_obra_de_arte_primary_key('678.191.458-44','04-JUL-2021'),'Lonamisa','Pintura', 7420.00),
                                    tp_obra_de_arte(tp_obra_de_arte_primary_key('635.152.669-17','09-DEC-1983'),'Rosto sem cores','Pintura', 89000.00))
WHERE f.cpf = '573.972.289-18';

UPDATE tb_funcionario f
SET f.lista_obras = tb_obra_de_arte(tp_obra_de_arte(tp_obra_de_arte_primary_key('635.152.669-17','26-JAN-2014'),'O Banco de Dados','Escultura', 18500.00),
                                    tp_obra_de_arte(tp_obra_de_arte_primary_key('456.712.223-00','09-APR-2015'),'Sonalima','Pintura', 32000.00 ),
                                    tp_obra_de_arte(tp_obra_de_arte_primary_key('456.712.223-00','21-JUL-1975'),'Pintura Lendária','Escultura', 100000.00))
WHERE f.cpf = '276.787.174-15';

UPDATE tb_funcionario f
SET f.lista_obras = tb_obra_de_arte(tp_obra_de_arte(tp_obra_de_arte_primary_key('514.378.321-98','31-DEC-1999'),'Século Novo','Pintura', 89005.00 ),
                                    tp_obra_de_arte(tp_obra_de_arte_primary_key('514.378.321-98','09-FEB-1982'),'O limão','Escultura', 90005.00))
WHERE f.cpf = '177.235.819-39';

--POVOAMENTO DA TABELA GUIA

INSERT INTO tb_guia VALUES(tp_guia('12-MAY-2002 8:00:00 PM', (SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao = 1), (SELECT REF(v) FROM tb_visitante v WHERE v.cpf = '012.325.641-22'), (SELECT REF(f) FROM tb_funcionario f WHERE f.cpf = '112.352.284-68')));
INSERT INTO tb_guia VALUES(tp_guia('12-MAY-2002 8:00:00 PM', (SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao = 1), (SELECT REF(v) FROM tb_visitante v WHERE v.cpf = '033.858.634-99'), (SELECT REF(f) FROM tb_funcionario f WHERE f.cpf = '112.352.284-68')));
INSERT INTO tb_guia VALUES(tp_guia('12-MAY-2002 8:00:00 PM', (SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao = 1), (SELECT REF(v) FROM tb_visitante v WHERE v.cpf = '102.300.573-45'), (SELECT REF(f) FROM tb_funcionario f WHERE f.cpf = '112.352.284-68')));
INSERT INTO tb_guia VALUES(tp_guia('12-MAY-2002 8:00:00 PM', (SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao = 1), (SELECT REF(v) FROM tb_visitante v WHERE v.cpf = '102.312.573-00'), (SELECT REF(f) FROM tb_funcionario f WHERE f.cpf = '112.352.284-68')));
INSERT INTO tb_guia VALUES(tp_guia('12-MAY-2002 8:00:00 PM', (SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao = 1), (SELECT REF(v) FROM tb_visitante v WHERE v.cpf = '116.758.622-06'), (SELECT REF(f) FROM tb_funcionario f WHERE f.cpf = '112.352.284-68')));
INSERT INTO tb_guia VALUES(tp_guia('12-MAY-2002 8:00:00 PM', (SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao = 1), (SELECT REF(v) FROM tb_visitante v WHERE v.cpf = '123.684.742-66'), (SELECT REF(f) FROM tb_funcionario f WHERE f.cpf = '112.352.284-68')));
INSERT INTO tb_guia VALUES(tp_guia('12-MAY-2002 8:00:00 PM', (SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao = 1), (SELECT REF(v) FROM tb_visitante v WHERE v.cpf = '187.217.142-74'), (SELECT REF(f) FROM tb_funcionario f WHERE f.cpf = '112.352.284-68')));
INSERT INTO tb_guia VALUES(tp_guia('04-OCT-2006 5:00:00 PM', (SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao = 2), (SELECT REF(v) FROM tb_visitante v WHERE v.cpf = '211.624.902-33'), (SELECT REF(f) FROM tb_funcionario f WHERE f.cpf = '112.352.284-68')));
INSERT INTO tb_guia VALUES(tp_guia('04-OCT-2006 5:00:00 PM', (SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao = 2), (SELECT REF(v) FROM tb_visitante v WHERE v.cpf = '275.789.321-80'), (SELECT REF(f) FROM tb_funcionario f WHERE f.cpf = '112.352.284-68')));
INSERT INTO tb_guia VALUES(tp_guia('04-OCT-2006 5:00:00 PM', (SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao = 2), (SELECT REF(v) FROM tb_visitante v WHERE v.cpf = '277.543.780-89'), (SELECT REF(f) FROM tb_funcionario f WHERE f.cpf = '112.352.284-68')));
INSERT INTO tb_guia VALUES(tp_guia('04-OCT-2006 5:00:00 PM', (SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao = 2), (SELECT REF(v) FROM tb_visitante v WHERE v.cpf = '305.178.336-88'), (SELECT REF(f) FROM tb_funcionario f WHERE f.cpf = '112.352.284-68')));
INSERT INTO tb_guia VALUES(tp_guia('04-OCT-2006 5:00:00 PM', (SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao = 2), (SELECT REF(v) FROM tb_visitante v WHERE v.cpf = '371.866.227-20'), (SELECT REF(f) FROM tb_funcionario f WHERE f.cpf = '112.352.284-68')));
INSERT INTO tb_guia VALUES(tp_guia('04-OCT-2006 5:00:00 PM', (SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao = 2), (SELECT REF(v) FROM tb_visitante v WHERE v.cpf = '395.888.475-08'), (SELECT REF(f) FROM tb_funcionario f WHERE f.cpf = '112.352.284-68')));
INSERT INTO tb_guia VALUES(tp_guia('04-OCT-2006 5:00:00 PM', (SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao = 2), (SELECT REF(v) FROM tb_visitante v WHERE v.cpf = '444.608.646-49'), (SELECT REF(f) FROM tb_funcionario f WHERE f.cpf = '112.352.284-68')));
INSERT INTO tb_guia VALUES(tp_guia('31-JUL-2018 7:00:00 PM', (SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao = 3), (SELECT REF(v) FROM tb_visitante v WHERE v.cpf = '305.178.336-88'), (SELECT REF(f) FROM tb_funcionario f WHERE f.cpf = '112.352.284-68')));
INSERT INTO tb_guia VALUES(tp_guia('31-JUL-2018 7:00:00 PM', (SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao = 3), (SELECT REF(v) FROM tb_visitante v WHERE v.cpf = '371.866.227-20'), (SELECT REF(f) FROM tb_funcionario f WHERE f.cpf = '112.352.284-68')));
INSERT INTO tb_guia VALUES(tp_guia('31-JUL-2018 7:00:00 PM', (SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao = 3), (SELECT REF(v) FROM tb_visitante v WHERE v.cpf = '395.888.475-08'), (SELECT REF(f) FROM tb_funcionario f WHERE f.cpf = '112.352.284-68')));
INSERT INTO tb_guia VALUES(tp_guia('31-JUL-2018 7:00:00 PM', (SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao = 3), (SELECT REF(v) FROM tb_visitante v WHERE v.cpf = '444.608.646-49'), (SELECT REF(f) FROM tb_funcionario f WHERE f.cpf = '112.352.284-68')));
INSERT INTO tb_guia VALUES(tp_guia('31-JUL-2018 7:00:00 PM', (SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao = 3), (SELECT REF(v) FROM tb_visitante v WHERE v.cpf = '603.856.173-05'), (SELECT REF(f) FROM tb_funcionario f WHERE f.cpf = '112.352.284-68')));
INSERT INTO tb_guia VALUES(tp_guia('31-JUL-2018 7:00:00 PM', (SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao = 3), (SELECT REF(v) FROM tb_visitante v WHERE v.cpf = '678.094.174-44'), (SELECT REF(f) FROM tb_funcionario f WHERE f.cpf = '112.352.284-68')));
INSERT INTO tb_guia VALUES(tp_guia('31-JUL-2018 7:00:00 PM', (SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao = 3), (SELECT REF(v) FROM tb_visitante v WHERE v.cpf = '789.543.725-98'), (SELECT REF(f) FROM tb_funcionario f WHERE f.cpf = '112.352.284-68')));
INSERT INTO tb_guia VALUES(tp_guia('31-JUL-2018 7:00:00 PM', (SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao = 3), (SELECT REF(v) FROM tb_visitante v WHERE v.cpf = '801.283.373-54'), (SELECT REF(f) FROM tb_funcionario f WHERE f.cpf = '112.352.284-68')));
INSERT INTO tb_guia VALUES(tp_guia('31-JUL-2018 7:00:00 PM', (SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao = 3), (SELECT REF(v) FROM tb_visitante v WHERE v.cpf = '872.341.092-09'), (SELECT REF(f) FROM tb_funcionario f WHERE f.cpf = '112.352.284-68')));
INSERT INTO tb_guia VALUES(tp_guia('31-JUL-2018 7:00:00 PM', (SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao = 3), (SELECT REF(v) FROM tb_visitante v WHERE v.cpf = '989.445.235-96'), (SELECT REF(f) FROM tb_funcionario f WHERE f.cpf = '112.352.284-68')));


INSERT INTO tb_guia VALUES(tp_guia('03-JAN-2015 8:30:00 PM', (SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao = 4), (SELECT REF(v) FROM tb_visitante v WHERE v.cpf = '116.758.622-06'), (SELECT REF(f) FROM tb_funcionario f WHERE f.cpf = '112.352.284-68')));
INSERT INTO tb_guia VALUES(tp_guia('03-JAN-2015 8:30:00 PM', (SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao = 4), (SELECT REF(v) FROM tb_visitante v WHERE v.cpf = '123.684.742-66'), (SELECT REF(f) FROM tb_funcionario f WHERE f.cpf = '112.352.284-68')));
INSERT INTO tb_guia VALUES(tp_guia('03-JAN-2015 8:30:00 PM', (SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao = 4), (SELECT REF(v) FROM tb_visitante v WHERE v.cpf = '187.217.142-74'), (SELECT REF(f) FROM tb_funcionario f WHERE f.cpf = '112.352.284-68')));
INSERT INTO tb_guia VALUES(tp_guia('03-JAN-2015 8:30:00 PM', (SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao = 4), (SELECT REF(v) FROM tb_visitante v WHERE v.cpf = '931.071.938-95'), (SELECT REF(f) FROM tb_funcionario f WHERE f.cpf = '321.565.194-71')));
INSERT INTO tb_guia VALUES(tp_guia('03-JAN-2015 8:30:00 PM', (SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao = 4), (SELECT REF(v) FROM tb_visitante v WHERE v.cpf = '987.925.913-02'), (SELECT REF(f) FROM tb_funcionario f WHERE f.cpf = '321.565.194-71')));


INSERT INTO tb_guia VALUES(tp_guia('07-JUN-2018 4:40:00 PM', (SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao = 5), (SELECT REF(v) FROM tb_visitante v WHERE v.cpf = '603.856.173-05'), (SELECT REF(f) FROM tb_funcionario f WHERE f.cpf = '112.352.284-68')));
INSERT INTO tb_guia VALUES(tp_guia('07-JUN-2018 4:40:00 PM', (SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao = 5), (SELECT REF(v) FROM tb_visitante v WHERE v.cpf = '678.094.174-44'), (SELECT REF(f) FROM tb_funcionario f WHERE f.cpf = '321.565.194-71')));
INSERT INTO tb_guia VALUES(tp_guia('07-JUN-2018 4:40:00 PM', (SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao = 5), (SELECT REF(v) FROM tb_visitante v WHERE v.cpf = '789.543.725-98'), (SELECT REF(f) FROM tb_funcionario f WHERE f.cpf = '321.565.194-71')));
INSERT INTO tb_guia VALUES(tp_guia('07-JUN-2018 4:40:00 PM', (SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao = 5), (SELECT REF(v) FROM tb_visitante v WHERE v.cpf = '801.283.373-54'), (SELECT REF(f) FROM tb_funcionario f WHERE f.cpf = '321.565.194-71')));

INSERT INTO tb_guia VALUES(tp_guia('08-JUN-2018 7:30:00 PM', (SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao = 6), (SELECT REF(v) FROM tb_visitante v WHERE v.cpf = '453.197.932-41'), (SELECT REF(f) FROM tb_funcionario f WHERE f.cpf = '112.352.284-68')));
INSERT INTO tb_guia VALUES(tp_guia('08-JUN-2018 7:30:00 PM', (SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao = 6), (SELECT REF(v) FROM tb_visitante v WHERE v.cpf = '551.999.793-45'), (SELECT REF(f) FROM tb_funcionario f WHERE f.cpf = '112.352.284-68')));
INSERT INTO tb_guia VALUES(tp_guia('08-JUN-2018 7:30:00 PM', (SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao = 6), (SELECT REF(v) FROM tb_visitante v WHERE v.cpf = '603.856.173-05'), (SELECT REF(f) FROM tb_funcionario f WHERE f.cpf = '112.352.284-68')));
INSERT INTO tb_guia VALUES(tp_guia('08-JUN-2018 7:30:00 PM', (SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao = 6), (SELECT REF(v) FROM tb_visitante v WHERE v.cpf = '678.094.174-44'), (SELECT REF(f) FROM tb_funcionario f WHERE f.cpf = '321.565.194-71')));
INSERT INTO tb_guia VALUES(tp_guia('08-JUN-2018 7:30:00 PM', (SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao = 6), (SELECT REF(v) FROM tb_visitante v WHERE v.cpf = '789.543.725-98'), (SELECT REF(f) FROM tb_funcionario f WHERE f.cpf = '321.565.194-71')));
INSERT INTO tb_guia VALUES(tp_guia('08-JUN-2018 7:30:00 PM', (SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao = 6), (SELECT REF(v) FROM tb_visitante v WHERE v.cpf = '801.283.373-54'), (SELECT REF(f) FROM tb_funcionario f WHERE f.cpf = '321.565.194-71')));
INSERT INTO tb_guia VALUES(tp_guia('08-JUN-2018 7:30:00 PM', (SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao = 6), (SELECT REF(v) FROM tb_visitante v WHERE v.cpf = '872.341.092-09'), (SELECT REF(f) FROM tb_funcionario f WHERE f.cpf = '321.565.194-71')));
INSERT INTO tb_guia VALUES(tp_guia('08-JUN-2018 7:30:00 PM', (SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao = 6), (SELECT REF(v) FROM tb_visitante v WHERE v.cpf = '892.549.556-20'), (SELECT REF(f) FROM tb_funcionario f WHERE f.cpf = '112.352.284-68')));
INSERT INTO tb_guia VALUES(tp_guia('08-JUN-2018 7:30:00 PM', (SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao = 6), (SELECT REF(v) FROM tb_visitante v WHERE v.cpf = '923.084.271-60'), (SELECT REF(f) FROM tb_funcionario f WHERE f.cpf = '112.352.284-68')));
INSERT INTO tb_guia VALUES(tp_guia('08-JUN-2018 7:30:00 PM', (SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao = 6), (SELECT REF(v) FROM tb_visitante v WHERE v.cpf = '931.071.938-95'), (SELECT REF(f) FROM tb_funcionario f WHERE f.cpf = '321.565.194-71')));
INSERT INTO tb_guia VALUES(tp_guia('08-JUN-2018 7:30:00 PM', (SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao = 6), (SELECT REF(v) FROM tb_visitante v WHERE v.cpf = '987.925.913-02'), (SELECT REF(f) FROM tb_funcionario f WHERE f.cpf = '321.565.194-71')));
INSERT INTO tb_guia VALUES(tp_guia('08-JUN-2018 7:30:00 PM', (SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao = 6), (SELECT REF(v) FROM tb_visitante v WHERE v.cpf = '989.445.235-96'), (SELECT REF(f) FROM tb_funcionario f WHERE f.cpf = '321.565.194-71')));

INSERT INTO tb_guia VALUES(tp_guia('04-JAN-2015 8:00:00 PM', (SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao = 7), (SELECT REF(v) FROM tb_visitante v WHERE v.cpf = '116.758.622-06'), (SELECT REF(f) FROM tb_funcionario f WHERE f.cpf = '112.352.284-68')));
INSERT INTO tb_guia VALUES(tp_guia('04-JAN-2015 8:00:00 PM', (SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao = 7), (SELECT REF(v) FROM tb_visitante v WHERE v.cpf = '123.684.742-66'), (SELECT REF(f) FROM tb_funcionario f WHERE f.cpf = '112.352.284-68')));
INSERT INTO tb_guia VALUES(tp_guia('04-JAN-2015 8:00:00 PM', (SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao = 7), (SELECT REF(v) FROM tb_visitante v WHERE v.cpf = '187.217.142-74'), (SELECT REF(f) FROM tb_funcionario f WHERE f.cpf = '112.352.284-68')));
INSERT INTO tb_guia VALUES(tp_guia('04-JAN-2015 8:00:00 PM', (SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao = 7), (SELECT REF(v) FROM tb_visitante v WHERE v.cpf = '892.549.556-20'), (SELECT REF(f) FROM tb_funcionario f WHERE f.cpf = '112.352.284-68')));
INSERT INTO tb_guia VALUES(tp_guia('04-JAN-2015 8:00:00 PM', (SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao = 7), (SELECT REF(v) FROM tb_visitante v WHERE v.cpf = '923.084.271-60'), (SELECT REF(f) FROM tb_funcionario f WHERE f.cpf = '112.352.284-68')));
INSERT INTO tb_guia VALUES(tp_guia('04-JAN-2015 8:00:00 PM', (SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao = 7), (SELECT REF(v) FROM tb_visitante v WHERE v.cpf = '931.071.938-95'), (SELECT REF(f) FROM tb_funcionario f WHERE f.cpf = '321.565.194-71')));

--POVOAMENTO DE EXPOE OBRA DE ARTE

INSERT INTO tb_expoe_obra_de_arte VALUES(tp_obra_de_arte_primary_key( '078.845.996-12', '05-NOV-1966'), (SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao = 1), 7406);
INSERT INTO tb_expoe_obra_de_arte VALUES(tp_obra_de_arte_primary_key('102.312.573-45', '25-JAN-2013'), (SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao = 1), 3303);
INSERT INTO tb_expoe_obra_de_arte VALUES(tp_obra_de_arte_primary_key('198.228.735-87', '08-APR-1996'), (SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao = 1),  4403);
INSERT INTO tb_expoe_obra_de_arte VALUES(tp_obra_de_arte_primary_key('456.712.223-00', '09-APR-2015'), (SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao = 1),   5237);
INSERT INTO tb_expoe_obra_de_arte VALUES(tp_obra_de_arte_primary_key( '078.845.996-12',  '02-NOV-2001'), (SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao =2), 4113);
INSERT INTO tb_expoe_obra_de_arte VALUES(tp_obra_de_arte_primary_key( '102.312.573-45',   '13-JAN-1989'), (SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao =2),7435);
INSERT INTO tb_expoe_obra_de_arte VALUES(tp_obra_de_arte_primary_key(  '198.228.735-87', '13-SEP-1994'), (SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao =2),2641);
INSERT INTO tb_expoe_obra_de_arte VALUES(tp_obra_de_arte_primary_key('456.712.223-00','21-SEP-1975'), (SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao =2),3841);
INSERT INTO tb_expoe_obra_de_arte VALUES(tp_obra_de_arte_primary_key('689.207.420-42','19-MAY-2000'), (SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao =3),7251);
INSERT INTO tb_expoe_obra_de_arte VALUES(tp_obra_de_arte_primary_key( '689.207.420-42','08-APR-1940'), (SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao =3),7002);
INSERT INTO tb_expoe_obra_de_arte VALUES(tp_obra_de_arte_primary_key('678.191.458-44','07-APR-2010'), (SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao =3), 8721);
INSERT INTO tb_expoe_obra_de_arte VALUES(tp_obra_de_arte_primary_key('678.191.458-44','04-SEP-2021'), (SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao =3), 0831);
INSERT INTO tb_expoe_obra_de_arte VALUES(tp_obra_de_arte_primary_key('514.378.321-98','31-DEC-1999'), (SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao = 4), 9645);
INSERT INTO tb_expoe_obra_de_arte VALUES(tp_obra_de_arte_primary_key('514.378.321-98','09-FEB-1982'), (SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao = 4), 1036);
INSERT INTO tb_expoe_obra_de_arte VALUES(tp_obra_de_arte_primary_key('635.152.669-17', '09-DEC-1983'), (SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao = 4),2336);
INSERT INTO tb_expoe_obra_de_arte VALUES(tp_obra_de_arte_primary_key('564.328.478-98', '11-MAY-2002'), (SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao = 4),9745);
INSERT INTO tb_expoe_obra_de_arte VALUES(tp_obra_de_arte_primary_key('635.152.669-17', '26-JAN-2014'), (SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao = 5), 6666);
INSERT INTO tb_expoe_obra_de_arte VALUES(tp_obra_de_arte_primary_key('564.328.478-98', '15-APR-2021'), (SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao = 5), 1014);
INSERT INTO tb_expoe_obra_de_arte VALUES(tp_obra_de_arte_primary_key('986.124.785-45', '20-FEB-2002'), (SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao = 5), 5060);
INSERT INTO tb_expoe_obra_de_arte VALUES(tp_obra_de_arte_primary_key('986.124.785-45',to_date('28/01/1954','dd/mm/yyyy')), (SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao = 5), 3080);



--POVOAMENTO COMPRA

INSERT INTO tb_compra VALUES ((SELECT REF(c) FROM tb_comprador c WHERE c.cpf = '785.214.448-76'), tp_obra_de_arte_primary_key('102.312.573-45', '13-JAN-1989'));
INSERT INTO tb_compra VALUES ((SELECT REF(c) FROM tb_comprador c WHERE c.cpf = '785.214.448-76'), tp_obra_de_arte_primary_key('986.124.785-45','20-FEB-2002'));
INSERT INTO tb_compra VALUES ((SELECT REF(c) FROM tb_comprador c WHERE c.cpf = '785.214.448-76'), tp_obra_de_arte_primary_key('635.152.669-17','09-DEC-1983'));
INSERT INTO tb_compra VALUES ((SELECT REF(c) FROM tb_comprador c WHERE c.cpf = '902.345.278-38'), tp_obra_de_arte_primary_key('689.207.420-42','19-MAY-2000'));
INSERT INTO tb_compra VALUES ((SELECT REF(c) FROM tb_comprador c WHERE c.cpf = '902.345.278-38'), tp_obra_de_arte_primary_key('456.712.223-00','21-JUL-1975'));
INSERT INTO tb_compra VALUES ((SELECT REF(c) FROM tb_comprador c WHERE c.cpf = '183.989.570-50'), tp_obra_de_arte_primary_key('078.845.996-12','02-NOV-2001'));

INSERT INTO tb_compra VALUES ((SELECT REF(c) FROM tb_comprador c WHERE c.cpf = '201.811.925-78'), tp_obra_de_arte_primary_key('102.312.573-45', '25-JAN-2013'));
INSERT INTO tb_compra VALUES ((SELECT REF(c) FROM tb_comprador c WHERE c.cpf = '201.811.925-78'), tp_obra_de_arte_primary_key('564.328.478-98', '15-APR-2021'));
INSERT INTO tb_compra VALUES ((SELECT REF(c) FROM tb_comprador c WHERE c.cpf = '201.811.925-78'), tp_obra_de_arte_primary_key('635.152.669-17', '26-JAN-2014'));
INSERT INTO tb_compra VALUES ((SELECT REF(c) FROM tb_comprador c WHERE c.cpf = '454.187.783-92'), tp_obra_de_arte_primary_key('564.328.478-98', '11-MAY-2002'));
INSERT INTO tb_compra VALUES ((SELECT REF(c) FROM tb_comprador c WHERE c.cpf = '454.187.783-92'), tp_obra_de_arte_primary_key('514.378.321-98', '31-DEC-1999'));
INSERT INTO tb_compra VALUES ((SELECT REF(c) FROM tb_comprador c WHERE c.cpf = '201.111.904-67'), tp_obra_de_arte_primary_key('678.191.458-44', '07-APR-2010'));
INSERT INTO tb_compra VALUES ((SELECT REF(c) FROM tb_comprador c WHERE c.cpf = '201.111.904-67'), tp_obra_de_arte_primary_key('689.207.420-42', '08-APR-1940'));
INSERT INTO tb_compra VALUES ((SELECT REF(c) FROM tb_comprador c WHERE c.cpf = '292.957.379-11'), tp_obra_de_arte_primary_key('078.845.996-12', '05-NOV-1966'));
INSERT INTO tb_compra VALUES ((SELECT REF(c) FROM tb_comprador c WHERE c.cpf = '292.957.379-11'), tp_obra_de_arte_primary_key('678.191.458-44', '04-JUL-2021'));
INSERT INTO tb_compra VALUES ((SELECT REF(c) FROM tb_comprador c WHERE c.cpf = '586.174.486-15'), tp_obra_de_arte_primary_key('986.124.785-45', '29-JAN-1954'));
INSERT INTO tb_compra VALUES ((SELECT REF(c) FROM tb_comprador c WHERE c.cpf = '345.780.230-12'), tp_obra_de_arte_primary_key('198.228.735-87', '08-APR-1996'));
INSERT INTO tb_compra VALUES ((SELECT REF(c) FROM tb_comprador c WHERE c.cpf = '345.780.230-12'), tp_obra_de_arte_primary_key('198.228.735-87', '13-JUL-1994'));
INSERT INTO tb_compra VALUES ((SELECT REF(c) FROM tb_comprador c WHERE c.cpf = '345.780.230-12'), tp_obra_de_arte_primary_key('456.712.223-00', '09-APR-2015'));

--POVOAMENTO DE SEGURO

INSERT INTO tb_seguro VALUES( 1, 600.00, tp_nt_compra());
INSERT INTO tb_seguro VALUES( 2, 1600.00, tp_nt_compra());
INSERT INTO tb_seguro VALUES( 3, 4000.00, tp_nt_compra());
INSERT INTO tb_seguro VALUES( 4, 2520.00, tp_nt_compra());
INSERT INTO tb_seguro VALUES( 5, 1780.00, tp_nt_compra());
INSERT INTO tb_seguro VALUES( 6, 2000.00, tp_nt_compra());

--POVOANDO COMPRAS DE SEGURO

UPDATE tb_seguro S
SET S.lista_compra = tp_nt_compra(tp_compra((SELECT REF(c) FROM tb_comprador c WHERE c.cpf = '785.214.448-76'), tp_obra_de_arte_primary_key('102.312.573-45', '13-JAN-1989')))
WHERE S.identificador_seguro = 1;   

UPDATE tb_seguro S
SET S.lista_compra = tp_nt_compra(tp_compra((SELECT REF(c) FROM tb_comprador c WHERE c.cpf = '785.214.448-76'), tp_obra_de_arte_primary_key('986.124.785-45','20-FEB-2002')))
WHERE S.identificador_seguro = 5;   


UPDATE tb_seguro S
SET S.lista_compra = tp_nt_compra(tp_compra((SELECT REF(c) FROM tb_comprador c WHERE c.cpf = '785.214.448-76'), tp_obra_de_arte_primary_key('635.152.669-17','09-DEC-1983')))
WHERE S.identificador_seguro = 3;   
UPDATE tb_seguro S
SET S.lista_compra = tp_nt_compra(tp_compra((SELECT REF(c) FROM tb_comprador c WHERE c.cpf = '902.345.278-38'), tp_obra_de_arte_primary_key('689.207.420-42','19-MAY-2000')))
WHERE S.identificador_seguro = 2;   

UPDATE tb_seguro S
SET S.lista_compra = tp_nt_compra(tp_compra((SELECT REF(c) FROM tb_comprador c WHERE c.cpf = '902.345.278-38'), tp_obra_de_arte_primary_key('456.712.223-00','21-JUL-1975')))
WHERE S.identificador_seguro = 6;   

UPDATE tb_seguro S
SET S.lista_compra = tp_nt_compra(tp_compra((SELECT REF(c) FROM tb_comprador c WHERE c.cpf = '183.989.570-50'), tp_obra_de_arte_primary_key('078.845.996-12','02-NOV-2001')))
WHERE S.identificador_seguro = 4;   


DECLARE

reliquiaTeste tp_reliquia;

BEGIN
    SELECT VALUE(r) INTO reliquiaTeste FROM tb_reliquia r WHERE r.identificador_reliquia = 6;
    reliquiaTeste.exibirDetalhes();
END;
/


