--ESSE BLOCO CRIA UM PANFLETO DE UMA EXPOSICAO
--QUE MOSTRA O TEMA, A DATA E O HORARIO DA EXPOSICAO
--CHECKLIST: USO DO RECORD, BLOCO ANONIMO E %TYPE
DECLARE 

TYPE panfleto IS RECORD ( tema_expo VARCHAR2(50), data_horario_expo data_exposicao.data_e_hora%TYPE, guia pessoa.nome_pessoa%TYPE);
panfleto_1 panfleto;

BEGIN

panfleto_1.tema_expo := 'Ossos pré-históricos';
panfleto_1.data_horario_expo := '12-MAY-2002 08:00:00 PM';
panfleto_1.guia := 'Márcia Araújo';

dbms_output.put_line('Tema da Exposição: '|| panfleto_1.tema_expo || chr(10) || 'Data e Horário da Exposição: ' || panfleto_1.data_horario_expo || chr(10) || 'Guia Chefe: ' || panfleto_1.guia);

END;
/

--ESSE BLOCO CRIA UMA TABELA PARA OBRAS AINDA NÃO CADASTRADAS
-- E MOSTRA ELAS EM UM LOOP UTILIZANDO DE UM PROCEDURE
--CHECKLIST: CREATE PROCEDURE, %ROWTYPE, FOR IN LOOP, USO DE PARAMETROS(IN)
DECLARE 

TYPE obras_nao_cadastradas IS TABLE OF obra_de_arte%ROWTYPE INDEX BY BINARY_INTEGER;

obra_1 obras_nao_cadastradas;

PROCEDURE printObradeArte( obra IN obras_nao_cadastradas, i IN NUMBER) IS
    BEGIN
        dbms_output.put_line('Cpf do Artista: '  || obra(i).artista_cpf );
        dbms_output.put_line('Cpf do Funcionario responsavel por Cadastrar a Obra: '  || obra(i).funcionario_cpf);
         dbms_output.put_line('Nome da Obra: ' ||  obra(i).nome_obra);
        dbms_output.put_line('Categoria da Obra de Arte: ' || obra(i).CATEGORIA_OBRA_DE_ARTE);
        dbms_output.put_line('Valor da Obra em reais: ' || obra(i).VALOR);
        dbms_output.put_line('Data da criação da Obra: ' || obra(i).DATA_DE_CRIACAO || chr(10));
    END;


BEGIN

obra_1(0).artista_cpf := ('102.312.573-45');
obra_1(0).funcionario_cpf := ('177.235.819-39');
obra_1(0).nome_obra := ('Monalisa Digital');
obra_1(0).categoria_obra_de_arte := ('Pintura');
obra_1(0).valor := ( 30000);
obra_1(0).data_de_criacao := ('12-MAY-2020');

obra_1(1).artista_cpf := ('198.228.735-87');
obra_1(1).funcionario_cpf := ('276.787.174-15');
obra_1(1).nome_obra := ('Pé Grande');
obra_1(1).categoria_obra_de_arte := ('Escultura');
obra_1(1).valor := (8000);
obra_1(1).data_de_criacao := ('09-MAY-1992');

obra_1(2).artista_cpf := ('456.712.223-00');
obra_1(2).funcionario_cpf := ('573.972.289-18');
obra_1(2).nome_obra := ('O dado do Banco');
obra_1(2).categoria_obra_de_arte := ('Escultura');
obra_1(2).valor := (500.00);
obra_1(2).data_de_criacao := ('22-APR-2012');

obra_1(3).artista_cpf := ('514.378.321-98');
obra_1(3).funcionario_cpf := ('276.787.174-15');
obra_1(3).nome_obra := ('Migração');
obra_1(3).categoria_obra_de_arte := ('Escultura');
obra_1(3).valor := (2000.00);
obra_1(3).data_de_criacao := ('30-APR-1979');

obra_1(4).artista_cpf := ('198.228.735-87');
obra_1(4).funcionario_cpf := ('177.235.819-39');
obra_1(4).nome_obra := ('A Morte de Sócrates');
obra_1(4).categoria_obra_de_arte := ('Pintura');
obra_1(4).valor := (20500.00);
obra_1(4).data_de_criacao := ('24-DEC-1981');

obra_1(5).artista_cpf := ('986.124.785-45');
obra_1(5).funcionario_cpf := ('573.972.289-18');
obra_1(5).nome_obra := ('Fan de ventilador');
obra_1(5).categoria_obra_de_arte := ('Escultura');
obra_1(5).valor := (2500.00);
obra_1(5).data_de_criacao := ('17-JAN-2021');

FOR j IN 0..5 LOOP
printObradeArte(obra_1,j);
END LOOP;

END;
/



--ESSE BLOCO CRIA UMA FUNÇAO QUE PROCURA A MENSALIDADE DO SEGURO DE UMA OBRA DE ARTE
--E CASO NAO EXISTA A OBRA, UMA EXCECAO É LEVANTADA
--CHECKLIST: CREATE FUNCTION, IF ELSIF, SELECT INTO, EXCEPTION WHEN
DECLARE
mensalidade number;
FUNCTION mensalidadeObradeArte (nomeObradeArte obra_de_arte.nome_obra%TYPE)
RETURN NUMBER IS
    mensalidade NUMBER;
BEGIN
    SELECT S.mensalidade INTO mensalidade
    FROM obra_de_arte O
    LEFT JOIN contrata C ON O.artista_cpf = C.artista_cpf AND O.data_de_criacao = C.data_de_criacao
    LEFT JOIN seguro S ON C.identificador_seguro = S.identificador_seguro
    WHERE O.nome_obra = nomeObradeArte;
    RETURN mensalidade;
END;
BEGIN
    mensalidade := mensalidadeObradeArte('Pensamento de Cézar');
    
    IF mensalidade IS NULL THEN
        dbms_output.put_line('O seguro não foi contratado para essa obra de arte');
    ELSE 
        dbms_output.put_line('O valor da mensalidade do Seguro da Obra de Arte é ' || mensalidade);
    END IF;
    
    mensalidade := mensalidadeObradeArte('A Mona Lisa'); --caso que falha
    
EXCEPTION WHEN no_data_found THEN 
      dbms_output.put_line('Obra de Arte não encontrada'); 
   WHEN others THEN 
      dbms_output.put_line('Error'); 
END;
/

--ESSE BLOCO CONTA A QUANTIDADE DE RELIQUIAS MAIS NOVAS QUE A RELIQUIA PASSADA NA FUNÇÃO
--CHECKLIST: NENHUM NOVO, MAS UTILIZA DE OUTROS QUE JÁ FORAM MOSTRADOS
DECLARE


TYPE nome_idade_reliquia IS RECORD(nome reliquia.nome_reliquia%TYPE, idade reliquia.idade_estimada%TYPE);
reliquia1 nome_idade_reliquia;

    FUNCTION mais_antigo_que(parametro1 nome_idade_reliquia) RETURN INTEGER IS retorno INTEGER;
    BEGIN
       
        SELECT COUNT (idade_estimada) INTO retorno FROM reliquia WHERE parametro1.idade > idade_estimada;
        RETURN retorno;
    END mais_antigo_que;

BEGIN

reliquia1.nome := 'Crânio Javali';
reliquia1.idade := 80000;

 dbms_output.put_line('Mais antigo que ' || mais_antigo_que(reliquia1) || ' relíquias!');

END;
/


--ESSE BLOCO PROCURA A CATEGORIA DE UMA OBRA DE ARTE E 
--MOSTRA UMA MENSAGEM DE AVISO DE COMO A OBRA DE ARTE DEVE SER
--CUIDADA DEPENDENDO DA CATEGORIA
--CHECKLIST: CASE WHEN
DECLARE
    
    TYPE nome_da_obra IS RECORD(nome_da_obra1 obra_de_arte.nome_obra%TYPE);
    
    obra1 nome_da_obra;
    catego VARCHAR2(20);
    
    FUNCTION categ_obra (parametro1 nome_da_obra) RETURN VARCHAR2 IS retorno VARCHAR2(20);
    
    
    BEGIN
       
        SELECT categoria_obra_de_arte INTO retorno FROM obra_de_arte WHERE parametro1.nome_da_obra1 = obra_de_arte.nome_obra;
        RETURN retorno;
        
    END categ_obra;

BEGIN

obra1.nome_da_obra1 := 'Torre de babel';
catego := categ_obra(obra1);

CASE catego
WHEN 'Pintura' THEN  dbms_output.put_line('A obra ' || obra1.nome_da_obra1 || ' é uma Pintura, ela precisa de uma moldura e um lugar arejado!' );
WHEN 'Escultura' THEN  dbms_output.put_line('A obra ' || obra1.nome_da_obra1 || ' é uma Escultura, tire a poeira utilizando um pano macio!');

END CASE;


END;
/

--ESSE BLOCO PROCURA A RELIQUIA MAIS ANTIGA QUE AINDA NAO FOI EXPOSTA ATRAVES
-- DE UM WHILE LOOP
--CHECKLIST: WHILE LOOP
DECLARE
    j NUMBER;
    numero NUMBER;
BEGIN
    j := 0; 
    numero := 0; --inicializando o cpf pra nao ter um valor nulo
    
    WHILE numero IS NOT NULL LOOP 
        j:= j + 1;
        
        SELECT E.numero_protocolo_confirmacao INTO numero
        FROM reliquia R
        LEFT JOIN expoe_reliquia E ON R.identificador_reliquia = E.identificador_reliquia  
        WHERE R.identificador_reliquia = j;
        
        
    END LOOP;  
    dbms_output.put_line('O id da reliquia mais antiga no sistema que ainda não foi exposta é ' || j);
END;
/


--ESTE BLOCO CRIA UM CURSOR PARA PRINTAR O NOME CONTA E AGENCIA DE CADA COMPRADOR
--CHECKLIST: LOOP EXIT WHEN, CURSOR(OPEN, FETCH E CLOSE)
DECLARE
    nome pessoa.nome_pessoa%type;
    agencia banco_do_comprador.agencia%type;
    conta comprador.conta%type;
    
    CURSOR c_dados_bancarios IS SELECT P.nome_pessoa, B.agencia, C.conta
                    FROM comprador C
                    INNER JOIN banco_do_comprador B
                    ON C.conta = B.conta
                    INNER JOIN pessoa P
                    ON P.pessoa_cpf = C.comprador_cpf;
                    
BEGIN

    OPEN c_dados_bancarios;
    LOOP
        FETCH c_dados_bancarios INTO nome, agencia, conta;
        EXIT WHEN c_dados_bancarios%notfound; 
        dbms_output.put_line(nome || ' ' || agencia || ' ' || conta);
    END LOOP; 
    
    CLOSE c_dados_bancarios;
END;
/


--ESTE BLOCO CRIA UM CURSOR PARA PRINTAR NA TELA O NOME E EMAIL
--DAS PESSOAS EM QUE O ENDEREÇO DE EMAIL COMEÇA COM M
--CHECKLIST: NENHUM NOVO, MAS UTILIZA DE OUTROS QUE JÁ FORAM MOSTRADOS
DECLARE

    v_nome  pessoa.nome_pessoa%TYPE;
    v_email pessoa.email%TYPE;
    
    CURSOR c_email IS
        SELECT nome_pessoa, email
        FROM pessoa
        WHERE email LIKE 'm%';
        
BEGIN

    OPEN c_email;
    LOOP
        FETCH c_email INTO v_nome, v_email;
        EXIT WHEN c_email%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('--------------------------------------------------------------------------------------' || CHR(10) || 'Nome: ' || v_nome || ' E-mail: ' || v_email || CHR(10));
    END LOOP;
    
    CLOSE c_email;
END;
/

--ESSE BLOCO CRIA UMA PACKAGE COM AS PROCEDURES: 
--adicionarPessoa, removerPessoa e listar Pessoas
--CHECKLIST: CREATE OR REPLACE PACKAGE
CREATE OR REPLACE PACKAGE package_pessoa AS

    PROCEDURE adicionarPessoa (
        c_cpf varchar2,
        c_nome varchar2,
        c_data_nascimento date,
        c_rua varchar2,
        c_numero number,
        c_cidade varchar2,
        c_pais varchar2,
        c_email varchar2
    );
    
    PROCEDURE removerPessoa (
        c_cpf varchar2
    );
    
    PROCEDURE listarPessoas;

END package_pessoa;
/


--ESSE BLOCO CRIA O PACKAGE BODY DO PACKAGE CRIADO ANTERIORMENTE
--CHECKLIST: CREATE OR REPLACE PACKAGE BODY
CREATE OR REPLACE PACKAGE BODY package_pessoa AS

    PROCEDURE adicionarPessoa (
        c_cpf varchar2,
        c_nome varchar2,
        c_data_nascimento date,
        c_rua varchar2,
        c_numero number,
        c_cidade varchar2,
        c_pais varchar2,
        c_email varchar2
    ) IS
    BEGIN
        INSERT INTO pessoa (pessoa_cpf, nome_pessoa, email, data_nascimento, rua, numero_casa, cidade)
        VALUES(c_cpf, c_nome, c_email, c_data_nascimento, c_rua, c_numero, c_cidade);
        
        INSERT INTO endereco_pessoa
        VALUES (c_rua, c_numero, c_cidade, c_pais);
        
    END;
    
    PROCEDURE removerPessoa (
        c_cpf varchar2
    ) IS 
    BEGIN
        DELETE FROM pessoa WHERE c_cpf = pessoa.pessoa_cpf;
    END;
    
    PROCEDURE listarPessoas
    IS
    CURSOR c_pessoas is SELECT  P.*, E.pais FROM pessoa P
            INNER JOIN endereco_pessoa E ON (E.rua = P.rua AND E.numero = P.numero_casa AND E.cidade = P.cidade);
    BEGIN
        FOR n IN c_pessoas LOOP
        
            dbms_output.put_line(n.pessoa_cpf || ', ' || n.nome_pessoa || ', ' || n.rua || ', ' || n.numero_casa
             || ', ' || n.cidade  || ', ' || n.pais || ', ' || n.email);
        
            END LOOP;
            
    END;

END package_pessoa;
/


--O GATILHO É CRIADO PARA QUE TODA VEZ QUE HOUVER UMA REMOÇAO
--NA TABELA PESSOA, UM AVISO SEJA ENVIADO SINALIZANDO PARA O USUÁRIO
--CONFERIR SE A REMOÇAO NAO CAUSOU NENHUM PROBLEMA EM OUTRAS TABELAS
--CHECKLIST: CREATE OR REPLACE TRIGGER (COMANDO)
CREATE OR REPLACE TRIGGER avisoAoRemoverPessoa
BEFORE DELETE ON pessoa 
DECLARE

BEGIN
    DBMS_OUTPUT.PUT_LINE('Cuidado, você está removendo da tabela pessoa mas essa
        operação pode impactar nas outras tabelas, por favor verifique se as
        outras tabelas estão corretas'
    );
END;
/

--ESSE GATILHO FOI CRIADO PARA PRINTAR A QUANTIDADE DE PESSOAS APOS 
--UMA INSERÇÃO
--CHECKLIST:  NENHUM NOVO, MAS UTILIZA DE OUTROS QUE JÁ FORAM MOSTRADOS
CREATE OR REPLACE TRIGGER numeroDePessoasAposInsercao
AFTER INSERT ON pessoa 
DECLARE
quantidadeDePessoas NUMBER;
BEGIN
    SELECT COUNT(*) INTO quantidadeDePessoas  FROM pessoa;
    
    dbms_output.put_line('A tabela agora contém ' || quantidadeDePessoas || ' pessoas');
END;
/

--ESTE BLOCO UTILIZA O PACKAGE PARA MOSTRAR QUE ESTÁ FUNCIONANDO CORRETAMENTE
--E QUE OS GATILHOS DE TABELA ESTÃO ATIVANDO CORRETAMENTE
DECLARE

BEGIN
    
    package_pessoa.adicionarPessoa('1', '1', '01-JAN-2001', '1', 1, '1', '1', '1'); 
    -- essa pessoa é só um exemplo
    
    --package_pessoa.removerPessoa('1'); 
    --pode tirar o comentário se quiser
    
    package_pessoa.listarPessoas();

END;
/

--ESTE GATILHO DE LINHA É CRIADO PARA ALTERAR A QUANTIDADE VISITANTES 
--NA TABELA EXPOSICAO
--QUANDO UM VISITANTE É ADICIONADO NA TABELA GUIA
--CHECKLIST: CREATE OR REPLACE TRIGGER (LINHA)
CREATE OR REPLACE TRIGGER altera_qtd_visitantes
AFTER INSERT ON guia
FOR EACH ROW
DECLARE 
    n_visitantes NUMBER;
BEGIN
    UPDATE exposicao SET exposicao.numero_visitantes = exposicao.numero_visitantes + 1
    WHERE identificador_exposicao = :NEW.identificador_exposicao;
    
    SELECT numero_visitantes INTO n_visitantes FROM exposicao WHERE identificador_exposicao = :NEW.identificador_exposicao;
    
    
    DBMS_OUTPUT.PUT_LINE('Quantidade de pessoas na exposição: ' || n_visitantes || CHR(10));
END altera_qtd_visitantes;
/


--ESTE BLOCO FOI CRIADO PARA TESTAR O GATILHO DE LINHA ACIMA
DECLARE
    TYPE possiveL_visitante IS RECORD (pessoa_cpf1 pessoa.pessoa_cpf%TYPE, nome_pessoa1 pessoa.nome_pessoa%TYPE, data_nascimento1 pessoa.data_nascimento%TYPE, rua1 pessoa.rua%TYPE, numero_casa1 pessoa.numero_casa%TYPE, cidade1 pessoa.cidade%TYPE, numero_do_ingresso visitante.num_ingresso%TYPE, numero_exposicao exposicao.identificador_exposicao%TYPE, email_pessoa pessoa.email%TYPE); 
    TYPE possiveis_visitantes IS TABLE OF possivel_visitante INDEX BY BINARY_INTEGER;
    lista1 possiveis_visitantes;
    guia_escolhido VARCHAR2(15);
    FUNCTION guia_menos_utilizado RETURN VARCHAR2 IS retorno VARCHAR2(15);
    BEGIN
        SELECT funcionario_cpf INTO retorno FROM (SELECT COUNT(*) AS qtd, funcionario_cpf FROM guia GROUP BY funcionario_cpf ORDER BY qtd) WHERE ROWNUM = 1;
        RETURN retorno;
    END guia_menos_utilizado;
    PROCEDURE adicionar_pessoas(nova_pessoa IN possiveis_visitantes, i IN NUMBER) IS
    BEGIN
        INSERT INTO pessoa VALUES (nova_pessoa(i).pessoa_cpf1, nova_pessoa(i).nome_pessoa1, nova_pessoa(i).email_pessoa, nova_pessoa(i).data_nascimento1, nova_pessoa(i).rua1, nova_pessoa(i).numero_casa1, nova_pessoa(i).cidade1);
        IF nova_pessoa(i).numero_do_ingresso IS NOT NULL THEN 
            INSERT INTO visitante VALUES (nova_pessoa(i).pessoa_cpf1, nova_pessoa(i).numero_do_ingresso);
            guia_escolhido := guia_menos_utilizado;
            INSERT INTO guia VALUES (guia_escolhido,nova_pessoa(i).pessoa_cpf1, nova_pessoa(i).numero_exposicao);
        END IF;
    END;
    
BEGIN
    lista1(0).pessoa_cpf1 := '928.859.183-01';
    lista1(0).nome_pessoa1 := 'Augusto Cezário da Silva';
    lista1(0).data_nascimento1 := '15-JAN-2000';
    lista1(0).rua1 := 'Rua José Bonifácio Pessoa';
    lista1(0).numero_casa1 := 82;
    lista1(0).cidade1 := 'Boa Vista';
    lista1(0).email_pessoa := '1@email.com';
    lista1(1).pessoa_cpf1 := '228.483.059-81';
    lista1(1).nome_pessoa1 := 'Lucas Moreira de Melo Rocha';
    lista1(1).data_nascimento1 := '07-DEC-1984';
    lista1(1).rua1 := 'Avenida Francisco Beltrão';
    lista1(1).numero_casa1 := 716;
    lista1(1).cidade1 := 'Recife';
    lista1(1).numero_do_ingresso := 50883;
    lista1(1).numero_exposicao := 3;
    lista1(1).email_pessoa := '1@email.com';
    lista1(2).pessoa_cpf1 := '048.174.964.83';
    lista1(2).nome_pessoa1 := 'Francisco Aguiar Nascimento';
    lista1(2).data_nascimento1 := '08-SEP-1998';
    lista1(2).rua1 := 'Travessa São Constantino';
    lista1(2).numero_casa1 := 12;
    lista1(2).cidade1 := 'Lagoa do Carro';
    lista1(2).numero_do_ingresso := 71624;
    lista1(2).numero_exposicao := 3;
    lista1(2).email_pessoa := '1@email.com';
    FOR J IN 0..2 LOOP
        adicionar_pessoas(lista1,J);
    END LOOP;
END;
/

--GATILHO DE LINHA CRIADO PARA MOSTRA IDADE ANTIGA E NOVA APOS UPDATE
CREATE OR REPLACE TRIGGER mudançadeIdade
AFTER UPDATE ON reliquia
FOR EACH ROW
BEGIN
    DBMS_OUTPUT.PUT_LINE('A idade estimada da Relíquia ' || :OLD.nome_reliquia || ' foi de ' || :OLD.idade_estimada || ' anos para ' || :NEW.idade_estimada || ' anos');
END;
/

--MOSTRANDO QUE O GATILHO DE LINHA ESTÁ FUNCIONANDO
UPDATE reliquia SET idade_estimada = idade_estimada + 50;
 
