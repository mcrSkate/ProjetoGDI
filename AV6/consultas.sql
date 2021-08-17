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
