--REF EXEMPLO

DECLARE

novoVisitante tp_visitante;
nome VARCHAR(30);

BEGIN
    
    novoVisitante := new tp_visitante('345.478.692-98', 'Almir de Barros Souza', 'almir_barros@mail.com', '04-AUG-1982', tp_fones(tp_fone('81','964521389')), tp_endereco('Rua Ademir Moraes', 98, 'Juazeiro', 'Brasil'), 4786);
    
    INSERT INTO tb_visitante VALUES (novoVisitante);
    
    INSERT INTO tb_guia VALUES ('04-JAN-2015 8:00:00 PM', 
                                (SELECT REF(e) FROM tb_exposicao e WHERE e.identificador_exposicao = 7),
                                (SELECT REF(v) FROM tb_visitante v WHERE v.cpf = '345.478.692-98'),
                                (SELECT REF(f) FROM tb_funcionario f WHERE f.cpf = '321.565.194-71'));
    
    SELECT g.visitante.nome_pessoa INTO nome FROM tb_guia g WHERE g.visitante.cpf = '345.478.692-98';
    
    DBMS_OUTPUT.PUT_LINE(nome);
END;
/


--ORDER e VALUE EXEMPLO

DECLARE

reliquia1 tp_reliquia;
reliquia2 tp_reliquia;
comparador INTEGER;

BEGIN
    
    SELECT g INTO reliquia1 FROM (SELECT VALUE(r) AS g FROM tb_reliquia r ORDER BY dbms_random.value)  WHERE rownum = 1; 

    SELECT g INTO reliquia2 FROM (SELECT VALUE(r) AS g FROM tb_reliquia r ORDER BY dbms_random.value) WHERE rownum = 1;
    
    comparador := reliquia2.comparaIdade(reliquia1);
    
    IF comparador > 0 
    THEN DBMS_OUTPUT.PUT_LINE(reliquia2.nome_reliquia || ' é mais antigo que ' || reliquia1.nome_reliquia);
    ELSIF comparador = 0
    THEN DBMS_OUTPUT.PUT_LINE(reliquia2.nome_reliquia || ' é tão antigo quanto ' || reliquia1.nome_reliquia);
    ELSE DBMS_OUTPUT.PUT_LINE(reliquia1.nome_reliquia || ' é mais antigo que ' || reliquia2.nome_reliquia);
    END IF;
END;
/

--DEREF EXEMPLO 
--Mostra o número, nome, categoria, idade e protocolo de confirmação da relíquia que teve seu número de exposição especificado na cláusula where

SELECT DEREF(D.reliquia).identificador_reliquia AS num_reliquia,
DEREF(D.reliquia).nome_reliquia AS nome_reliquia, 
DEREF(D.reliquia).categoria_reliquia AS categoria,
DEREF(D.reliquia).idade_estimada AS idade,
D.numero_protocolo_confirmacao FROM tb_expoe_reliquia D 
WHERE DEREF(D.exposicao).identificador_exposicao = 6;


--CONSULTA A VARRAY 
--MOSTRA O NOME, CARGO E TELEFONE DO FUNCIONÁRIO QUE TEM CARGO IGUAL AO ESPECIFICADO NO WHERE
SELECT D.nome_pessoa, D.cargo, T.* FROM tb_funcionario D, TABLE(D.fones) T WHERE D.cargo = 'Segurança';

--CONSULTA A NESTED TABLE
--MOSTRA O NOME DA OBRA, A CATEGORIA, O NOME DO ARTISTA E O FUNCIONÁRIO RESPONSÁVEL POR SEU CADASTRO

SELECT o.nome_obra AS Nome_da_Obra, o.categoria, a.nome_pessoa AS Nome_do_Artista, f.nome_pessoa AS Funcionário_Responsável FROM tb_funcionario f, TABLE(f.lista_obras) o INNER JOIN tb_artista a ON a.cpf = o.obra_de_arte_primary_key.artista_cpf ORDER BY o.categoria, o.nome_obra;

--Mostra o nome do comprador que adquiriu seguro com um determinado identificador de seguro. 
SELECT G.pagamentoAnual() AS pagamento_seguro_anual, DEREF(f.comprador).nome_pessoa AS Nome_do_comprador FROM tb_seguro G, TABLE(G.lista_compra)f WHERE G.identificador_seguro = 3;

--Mostra o segundo telefone de um varray de telefones do artista especificado
DECLARE
telefones tb_artista.fones%type;

begin
select a.fones into telefones from tb_artista a where a.nome_pessoa='João Gonçalves Almeida';

Dbms_output.put_line('O segundo telefone desse artista é: ' || telefones(2).ddd || '-' || telefones(2).numero_telefone);
END;
/

--Mostra o nome do artista e nome da sua segunda obra de uma nestedtable de obra de arte
DECLARE
obra tb_artista.lista_obras%type;
nome tb_artista.nome_pessoa%type;

begin
select d.lista_obras into obra from tb_artista d where d.cpf='635.152.669-17';

select d.nome_pessoa into nome from tb_artista d where d.cpf='635.152.669-17';

Dbms_output.put_line('O nome do artista é: ' || nome || ' e o nome da sua segunda obra é: ' || obra(2).nome_obra);
END;
/

--Seleciona o nome e a data de nascimento dos visitantes que moram no Recife
SELECT v.nome_pessoa AS NOME, v.data_nascimento AS DATA_DE_NASCIMENTO FROM tb_visitante v WHERE v.endereco.cidade = 'Recife';

--Seleciona as obras de arte com valor acima de 5000 do artista com o cpf 102.312.573-45
SELECT o.nome_obra FROM TABLE(SELECT a.lista_obras FROM tb_artista a WHERE a.cpf = '102.312.573-45') o WHERE o.valor>5000;

--Usa a member funtion contatoEletronico e mostra tanto o email comum a todos os funcionarios quanto o email individual do funcionario especificado
SELECT G.contatoEletronico() AS email_instucional, G.email AS email_de_trabalho FROM tb_funcionario G WHERE G.nome_pessoa = 'Clarissa B. Ribeiro';

--Seleciona o nome dos artistas que tem uma obra no seguro com identificador 1
SELECT a.nome_pessoa AS NOME_DO_ARTISTA 
FROM tb_artista a 
WHERE a.cpf IN (SELECT o.obras_compradas.artista_cpf 
                FROM TABLE(SELECT s.lista_compra 
                           FROM tb_seguro s 
                           WHERE s.identificador_seguro = 1) o);



--Seleciona o nome e a idade estimada da relíquia mais antiga
SELECT T.nome_reliquia, T.idade_estimada  FROM tb_reliquia  T WHERE T.idade_estimada IN (SELECT MAX(idade_estimada) FROM tb_reliquia);


--Quantidade de funcionarios que possuem cargo de gerente e guia
SELECT COUNT (*) AS Quant_funcionarios FROM tb_funcionario T WHERE T.cargo IN ('Gerente', 'Guia');

--Mostra o nome do visitante, nome do guia e o identificador da exposicao que o visitante especificado participou
SELECT DEREF(C.visitante).nome_pessoa AS nome_do_visitante, DEREF(C.funcionario).nome_pessoa AS nome_do_guia, 
DEREF(C.exposicao).identificador_exposicao AS identificador_exposicao FROM tb_guia C WHERE DEREF(C.visitante).cpf = '678.094.174-44';

--Mostra o nome do comprador que adquiriu seguro com um determinado identificador de seguro. 
SELECT G.pagamentoAnual() AS pagamento_seguro_anual, DEREF(f.comprador).nome_pessoa AS Nome_do_comprador FROM tb_seguro G, TABLE(G.lista_compra)f WHERE G.identificador_seguro = 3;

--Consulta o nome do artista e sua comissão onde a comissão acumulada seja maior que todos os salários dos funcionários
SELECT d.nome_pessoa AS nome_artista, d.comissao_acumulada FROM tb_artista d WHERE d.comissao_acumulada > ALL(SELECT  s.salario FROM tb_funcionario s);

--Consulta a média de visitantes nas exposições e busca as exposições onde o número de visitantes foi maior que a média.
SELECT round(avg(s.numero_visitantes),1) AS media_de_visitantes FROM tb_exposicao s;

SELECT D.identificador_exposicao, D.numero_visitantes FROM tb_exposicao D WHERE D.numero_visitantes > (SELECT AVG(S.numero_visitantes) FROM tb_exposicao S);

--Consulta que mostra o nome dos artistas e o CPF dos que participaram da exposição com identificador 1.
SELECT b.nome_pessoa as nome_do_artista, t.* FROM(select a.obra_de_arte.artista_cpf AS cpf_artista FROM tb_expoe_obra_de_arte a WHERE a.exposicao.identificador_exposicao = 1)t 
INNER JOIN  tb_artista b ON  t.cpf_artista = b.cpf;

--Nome do Guia que mais guiou visitantes
SELECT f.funcionarios AS nome_do_guia 
FROM (SELECT COUNT(g.funcionario.nome_pessoa) AS contador, g.funcionario.nome_pessoa AS funcionarios 
      FROM tb_guia g 
      GROUP BY g.funcionario.nome_pessoa 
      ORDER BY contador DESC) f 
WHERE ROWNUM = 1;
