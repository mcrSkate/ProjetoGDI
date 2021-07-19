--ADICIONA CHAVES ESTRANGEIRAS PARA A TABELA SEGURO
--CHECKLIST: ALTER TABLE

ALTER TABLE seguro
ADD (CONSTRAINT identificador_obra_de_arte_fkey 
    FOREIGN KEY (identificador_obra_de_arte) 
    REFERENCES obra_de_arte(identificador_obra_de_arte));

ALTER TABLE seguro
ADD (CONSTRAINT comprador_cpf_fkey 
    FOREIGN KEY (comprador_cpf) 
    REFERENCES comprador(comprador_cpf));

--CRIA INDICES PARA FAZER CONSULTAS MAIS RAPIDAS
--CHECKLIST: CREATE INDEX
CREATE INDEX indice_dc_obra ON obra_de_arte(data_de_criacao);
CREATE INDEX indice_valor_obra ON obra_de_arte(valor);

--INSERE UMA PESSOA NA TABELA PESSOA
--CHECKLIST: INSERT INTO
INSERT INTO pessoa VALUES 
('603.961.260-65', 
'Emanuela Cardoso Oliveira', 
'19-MAY-1990', 'Rua Marília', 
'1200', 'Caruaru');

--ATUALIZA O SALÁRIO DE UM CARGO
--CHECKLIST: UPDATE SET
UPDATE pagamento 
SET salario=7000.00 
WHERE cargo='Guia';

--REMOVE UMA PESSOA DA TABELA PESSOA
--CHECKLIST: DELETE
DELETE FROM pessoa 
WHERE pessoa_cpf = '603.961.260-65';

--SELECIONA O NOME DAS OBRAS COM VALOR ACIMA DE 100000
--CHECKLIST: SELECT-FROM-WHERE
SELECT nome_obra 
FROM obra_de_arte 
WHERE valor > 10000.00;

--SELECIONA OS CARGOS QUE GANHAM ENTRE 2000 E 6000
--CHECKLIST: BETWEEN
SELECT cargo 
FROM pagamento 
WHERE salario 
BETWEEN 2000.00 AND 6000.00;

--SELECIONA OS NUMEROS COM DDD 81,83 E 89
--CHECKLIST: IN
SELECT pessoa_cpf,numero 
FROM telefone_pessoa 
WHERE ddd 
IN ('81','83','89');

--SELECIONA AS PESSOAS QUE TEM O SOBRENOME CORREIA
--CHECKLIST: LIKE
SELECT nome_pessoa 
FROM pessoa 
WHERE nome_pessoa 
LIKE '%Correia%';

--SELECIONA OS ARTISTAS QUE NAO TÊM A COMISSAO ACUMULADA SALVA NA TABELA
--CHECKLIST: IS NULL
SELECT artista_cpf 
FROM artista 
WHERE comissao_acumulada IS NULL;

--SELECIONA OS DADOS COMPLETOS DOS ARTISTAS AO JUNTAR COM A TABELA PESSOA
--CHECKLIST: INNER JOIN
SELECT *
FROM pessoa
INNER JOIN artista 
ON pessoa.pessoa_cpf = artista.artista_cpf;

--SELECIONA A MAIOR IDADE ESTIMADA ENTRE AS RELIQUIAS
--CHECKLIST: MAX
SELECT MAX(idade_estimada) 
FROM reliquia;

--SELECIONA A OBRA DE ARTE COM MENOR VALOR
--CHECKLIST: MIN
SELECT MIN(valor) 
FROM obra_de_arte;

--SELECIONA O SALARIO MEDIO ENTRE TODOS OS FUNCIONARIOS
--CHECKLIST: AVG
SELECT ROUND(AVG(salario),2)
FROM (SELECT * 
    FROM funcionario F
    INNER JOIN pagamento P 
    ON P.cargo = F.cargo);
 
--CONTA A QUANTIDADE DE FUNCIONARIOS QUE SÃO SEGURANÇAS E SERVIÇOS GERAIS
--CHECKLIST: COUNT
SELECT COUNT (*) FROM funcionario WHERE cargo IN ('Serviços Gerais', 'Segurança');

--JUNTA A TABELA PESSOA COM A TABELA FUNCIONARIO E LISTA OS CARGOS DE TODAS AS PESSOAS
--MESMO QUE NAO SEJAM FUNCIONARIOS
--CHECKLIST: LEFT JOIN
SELECT pessoa.*, funcionario.cargo
FROM pessoa
LEFT JOIN funcionario ON pessoa.pessoa_cpf = funcionario.funcionario_cpf;

--SELECIONA AS OBRAS DE ARTES QUE SÃO MAIS CARAS QUE A MÉDIA DOS VALORES DA OBRA DE ARTE
--CHECKLIST: SUBCONSULTA COM OPERADOR RELACIONAL
SELECT nome_obra,valor AS preço 
FROM obra_de_arte 
WHERE valor > (SELECT AVG(valor) FROM obra_de_arte);

--SELECIONA OS NOMES E CPF DOS VISITANTES QUE MAIS FORAM A EXPOSICOES
--CHECKLIST: SUBCONSULTA COM IN E GROUP BY
SELECT visitante_cpf, nome_pessoa,visitas
FROM (SELECT COUNT(*) as visitas, visitante_cpf 
    FROM guia 
    GROUP BY visitante_cpf) 
    INNER JOIN pessoa 
    ON visitante_cpf = pessoa.pessoa_cpf
WHERE visitas IN 
    (SELECT  MAX(num)
    FROM (SELECT 
        COUNT(*) AS num, visitante_cpf 
        FROM guia 
        GROUP BY visitante_cpf));

--ESSA CONSULTA LISTA OS COMPRADORES QUE COMPRARAM 2 OBRAS
--CHECKLIST: SUBCONSULTA COM ANY E GROUP BY
SELECT comprador_cpf, nome_pessoa, conta
FROM comprador
INNER JOIN pessoa
ON  comprador_cpf = pessoa_cpf
WHERE comprador_cpf = ANY
    (SELECT comprador_cpf
    FROM 
        (SELECT COUNT(*) AS compras,comprador_cpf 
        FROM compra 
        GROUP BY comprador_cpf)
    WHERE compras = 2);

--ESSA CONSULTA LISTA AS OBRAS QUE TEM O PREÇO MAIOR QUE O SALARIO DE 
--TODOS OS FUNCIONARIOS
--CHECKLIST: SUBCONSULTA COM ALL
SELECT * 
FROM obra_de_arte 
WHERE valor > ALL (SELECT salario FROM pagamento);


--ESSA CONSULTA CRIA UMA TABELA QUE CONTÉM OS CPFS DOS VISITANTES 
--QUE FORAM A MAIS DE 1 EXPOSICAO ORDENANDO EM ORDEM CRESCENTE A DATA DA EXPOSICAO
--CHECKLIST: HAVING E ORDER BY
SELECT G.visitante_cpf, D.data_e_hora, G.identificador_exposicao
FROM guia G
    INNER JOIN exposicao E ON G.identificador_exposicao = E.identificador_exposicao
    INNER JOIN data_exposicao D ON D.identificador_exposicao = E.identificador_exposicao
WHERE G.visitante_cpf IN (SELECT visitante_cpf
                            FROM guia 
                            GROUP BY visitante_cpf
                            HAVING COUNT(*) > 1)
ORDER BY G.visitante_cpf, D.data_e_hora;

--ESSA CONSULTA LISTA OS EMAILS DE TODOS AS PESSOAS QUE NÃO SÃO FUNCIONÁRIOS
--CHECKLIST: MINUS 
SELECT email
FROM (SELECT pessoa_cpf
    FROM pessoa
    MINUS
    SELECT funcionario_cpf
    FROM funcionario) P
INNER JOIN comunicacao_pessoa C ON  P.pessoa_cpf = C.pessoa_cpf;

--ESSA CONSULTA CRIA UMA VIEW QUE POSSUI O CPF DOS ARTISTAS QUE TIVERAM SUAS OBRAS
--COMPRADAS JUNTAMENTE COM O ID DA OBRA E O CPF DO COMPRADOR
--CHECKLIST: CREATE VIEW
CREATE VIEW compra_artista AS 
SELECT C.artista_cpf, C.identificador_obra_de_arte, P.comprador_cpf
FROM criador C, compra P
WHERE C.identificador_obra_de_arte = P.identificador_obra_de_arte;

SELECT * FROM compra_artista;

--ESSA CONSULTA CRIA UMA VIEW COM O NOME DOS FUNCIONARIOS QUE CADASTRARAM
--OBRAS QUE POSSUEM VALOR MAIOR QUE 25000
--CHECKLIST: CREATE VIEW
CREATE VIEW  obras_caras AS SELECT e.nome_obra, e.valor, p.nome_pessoa
FROM obra_de_arte e, pessoa p, funcionario f
WHERE e.valor > 25000
AND e.funcionario_cpf = f.funcionario_cpf
AND f.funcionario_cpf = p.pessoa_cpf;

SELECT nome_obra, valor,nome_pessoa AS funcionário_responsavel FROM obras_caras;


--AS LINHAS A SEGUIR CRIAM UM USUARIO CHAMADO ANALISTA DE PESSOAS
--E DÁ A ESSE USUÁRIO A PERMISSAO DE FAZER SELECT NA TABELA PESSOAS
--CHECKLIST: GRANT
CREATE USER analista_de_pessoas IDENTIFIED BY analista_de_pessoas;
GRANT SELECT ON pessoa TO analista_de_pessoas;

--OBS: O GRANT NAO FUNCIONA NO ORACLE SQL LIVE
