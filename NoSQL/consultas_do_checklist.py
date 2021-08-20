import pymongo

from criacao_e_povoamento import delivery 
from criacao_e_povoamento import clientes
from criacao_e_povoamento import restaurantes
from criacao_e_povoamento import entregadores
from criacao_e_povoamento import pedidos
from criacao_e_povoamento import avaliacoes
from criacao_e_povoamento import comidas


print('------------------------------------------')
print('Entregadores na coleção entregadores:')
# Find
for entregador in entregadores.find():
    print(entregador['nome'])

print('------------------------------------------')
print('Clientes com dois telefones:')
# Size
for cliente in clientes.find({'telefone': {'$size': 2}}):
    print(cliente['nome'])
    print(cliente['telefone'])

print('------------------------------------------')
print('Clientes e quantidade de pedidos feitos')
#Aggregate, Group, Sum
for pedido in pedidos.aggregate([{'$group': {'_id': '$cliente', 'total': {'$sum': 1}}}]):
    print(pedido['_id'], '- Total de Pedidos:', pedido['total'])

print('------------------------------------------')
print('Restaurantes em que Carlos José da Rocha fez pedidos')
# Match
for pedido in pedidos.aggregate([{'$match': {'cliente': 'Carlos José da Rocha'}}]):
    print(pedido['restaurante'])

print('------------------------------------------')
print('Mostrando apenas o endereço de um restaurante')
# Project
for restaurante in restaurantes.aggregate([{'$project': {'endereço': 1}}]):
    print(restaurante)
    break

print('------------------------------------------')
print('Mostrando os pedidos que em que o valor total ultrapassou 100 reais')
# gte
for pedido in pedidos.find({'valor total': {'$gte': 100.00}}):
    print('Cliente:',pedido['cliente'], '; Comidas:', pedido['comida'],
    '; Valor Total:', pedido['valor total'])

print('------------------------------------------')
print('Quantidade de entregas que Marcos Carlos Eduardo de Paula fez')
# count
for entrega in pedidos.aggregate([{'$match': {'entregador': 'Marcos Carlos Eduardo de Paula'}},
 {'$count': 'Numero de entregas'}]):
    print(entrega)

print('------------------------------------------')
print('Comida mais cara de cada restaurante')
# max
for comida in comidas.aggregate([{'$group': {'_id': '$restaurante', 'maior valor': {'$max': '$preco'}}}]):
    print(comida)


print('------------------------------------------')
print('Média da taxa de entrega de cada restaurante')
# avg
for pedido in pedidos.aggregate([{'$group': {'_id': '$restaurante',
 'Média da taxa de entrega': {'$avg': '$taxa de entrega'}}}]):
    print(pedido)

print('------------------------------------------')
print('Lista dos pedidos que não tiveram observações')
#exists, sort
for pedido in pedidos.find({'observações': {'$exists': False}}).sort('restaurante'):
    print('Restaurante:', pedido['restaurante'],
          '; Cliente:', pedido['cliente'])


print('------------------------------------------')
print('Entregadores ordenados pelo nome')
# sort
for entregador in entregadores.find().sort('nome'):
    print(entregador['nome'])

print('------------------------------------------')
print('Mostrando as 5 primeiras notas das avaliações')
# limit
for avaliacao in avaliacoes.find().limit(5):
    print(avaliacao['nota'], avaliacao['descricao'])

print('------------------------------------------')
print('Mostrando as pessoas que tem 3 nomes')
# $where
for cliente in clientes.find({"$where": """var tem3Nomes = function (nome) {
    var nomes = nome.split(' ')
    return nomes.length === 3
};

return tem3Nomes(this['nome'])"""}):
    print(cliente['nome'])

print('------------------------------------------')
print('Mostrando a quantidade de comidas por restaurantes utilziando o mapreduce')
# mapreduce, function
resultados = comidas.map_reduce(
    """
        function map() {
            emit(this['restaurante'], 1)
        }
    """,
    """
        function reduce(key, values) {
            var total = 0;
            for (var i = 0; i < values.length; i++) {
                total += values[i];
            }
            return total;
        }
    """, "myresults")
for restaurante in resultados.find():
    print(restaurante)

# OBS O PRETTY NAO PODE SER FEITO NO PYTHON

print('------------------------------------------')
print('Lista das comidas que são do tipo pizza e doce')
# all
print(comidas.find_one({'tipo': {'$all': ['pizza','doce']}}))

print('------------------------------------------')
print('Atualizar o preço da primeira comida do restaurante Pizzaria P')
#set, update
print('Antes')
for comida in comidas.find({'restaurante': 'Pizzaria P'}).limit(1):
    print(comida['nome'], comida['preco'])

comidas.update({'restaurante': 'Pizzaria P'}, {'$set': {'preco': 15.00}})

print('Depois')
for comida in comidas.find({'restaurante': 'Pizzaria P'}).limit(1):
    print(comida['nome'], comida['preco'])

print('------------------------------------------')
print('Procurar sobrenome pessoas com sobrenome Rocha')
#text, search
clientes.create_index([('nome', 'text')])
for cliente in clientes.find({'$text': {'$search': "Rocha"}}):
    print(cliente['nome'])

print('------------------------------------------')
print('Procurar por pessoas que o endereço está em Pernambuco')
# filter, cand
#TODO

print('-------------------------------------------')
print('Adicionar um pedido no restaurante')
#save
comidas.save({
        "nome": "Pizza de Quatro Queijos",
        "restaurante": "Pizzaria P",
        "tipo": "pizza",
        "descricao": "Massa de pizza coberta com queijo e pedaços de calabresa",
        "preco": 35.85,
        "informacoes nutricionais": {
                "valor energetico": "1250,65kj",
            "gorduras": "210g",
            "peso medio": "3kg"
        }
    })

for comida in comidas.find({'restaurante':'Pizzaria P', 'nome': "Pizza de Quatro Queijos"}):
    print(comida)

print('----------------------------------------')
print('Renomeando a coleção Avalicoes para Avaliações')
#renamecollection

delivery['Avaliações'].drop() #Ao rodar pela segunda vez é necessário dropar

delivery['Avaliacoes'].rename('Avaliações') #rename equivale a renamecollection
for i in delivery['Avaliações'].find().limit(1):
    print(i)

avaliacoes = delivery['Avaliações']

print('----------------------------------------')
print('Unindo Restaurantes e Comidas e mostrando as comidas dos restaurantes')
#lookup

for restaurante in restaurantes.aggregate([
    {
        '$lookup': {
            'from': 'Comidas',
            'localField': 'nome',
            'foreignField':'restaurante',
            'as': 'comidas'
        }
    }
]):
    print(restaurante['nome'])
    for comida in restaurante['comidas']:
        print(comida['nome'], comida['preco'])
    print('')

print('------------------------------------')
print('Mostrando a primeira avaliação do restaurante Sushi Mania')
#find_one
print(avaliacoes.find_one({'restaurante' : 'Sushi Mania'}))

print('----------------------------------')
print('Adicionando mais um número para uma pessoa')
#add_to_set
print('Antes')
print(clientes.find_one({'nome' : 'Miguel Gomes de Lima'})['telefone'])
clientes.update({'nome' : 'Miguel Gomes de Lima'}, {'$addToSet': { 'telefone' : '81997564713'}});
print('Depois')
print(clientes.find_one({'nome' : 'Miguel Gomes de Lima'})['telefone'])
