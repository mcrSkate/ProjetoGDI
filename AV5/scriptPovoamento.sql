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



