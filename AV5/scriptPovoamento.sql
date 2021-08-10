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


