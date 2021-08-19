import pymongo

from criacao_e_povoamento import clientes
from criacao_e_povoamento import restaurantes
from criacao_e_povoamento import entregadores
from criacao_e_povoamento import pedidos
from criacao_e_povoamento import avaliacoes
from criacao_e_povoamento import comidas


print('------------------------------------------')
print('Entregadores na coleção entregadores:')
#Find
for entregador in entregadores.find():
    print(entregador['nome'])

print('------------------------------------------')
print('Clientes com mais de um telefone:')
#Size
for cliente in clientes.find({'telefone': {'$size': 2}}):
    print(cliente['nome'])

print('------------------------------------------')
print('Clientes e quantidade de pedidos feitos')
#Aggregate, Group, Sum
for pedido in pedidos.aggregate([{ '$group': { '_id': '$cliente', 'total': {'$sum' : 1}}}]):
    print(pedido['_id'],'- Total de Pedidos:',pedido['total'])

print('------------------------------------------')
print('Restaurantes em que Carlos José da Rocha fez pedidos')
#Match
for pedido in pedidos.aggregate([ { '$match' : { 'cliente' : 'Carlos José da Rocha'}}]):
    print(pedido['restaurante'])

print('------------------------------------------')
print('Mostrando apenas o endereço de um restaurante')
#Project
for restaurante in restaurantes.aggregate([{'$project' : { 'endereço': 1 }}]):
    print(restaurante)
    break

print('------------------------------------------')
print('Mostrando os pedidos que em que o valor total ultrapassou 100 reais')
#gte
for pedido in pedidos.find({'valor total': {'$gte' : 100.00}}):
    print('Restaurante:',pedido['restaurante'],'; Cliente:',pedido['cliente'],'; Comidas:',pedido['comida'])

print('------------------------------------------')
print('Quantidade de entregas que Marcos Carlos Eduardo de Paula fez')
#count
for entrega in pedidos.aggregate([{'$match': { 'entregador' : 'Marcos Carlos Eduardo de Paula'}}, {'$count':'Numero de entregas'}]):
    print(entrega)

print('------------------------------------------')
print('Comida mais cara de cada restaurante')
#max
for comida in comidas.aggregate([{ '$group': { '_id': '$restaurante', 'maior valor': {'$max' : '$preco'}}}]):
    print(comida)


print('------------------------------------------')
print('Média da taxa de entrega de cada restaurante')
#avg
for pedido in pedidos.aggregate([{ '$group': { '_id': '$restaurante', 'Média da taxa de entrega': {'$avg' : '$taxa de entrega'}}}]):
    print(pedido)

print('------------------------------------------')
print('Lista dos pedidos que não tiveram observações')
#exists, sort
for pedido in pedidos.find({'observações':{'$exists': False} }).sort('restaurante'):
    print('Restaurante:',pedido['restaurante'],'; Cliente:',pedido['cliente'])


print('------------------------------------------')
print('Entregadores ordenados pelo nome')
#sort
for entregador in entregadores.find().sort('nome'):
    print(entregador['nome'])

print('------------------------------------------')
print('Mostrando as 5 primeiras notas das avaliações')
#limit
for avaliacao in avaliacoes.find().limit(5):
    print(avaliacao['nota'], avaliacao['descricao'])

print('------------------------------------------')
print('Mostrando as pessoas que tem 3 nomes')
#$where, function
for cliente in clientes.find({"$where": """var tem3Nomes = function (nome) {
    var nomes = nome.split(' ')
    return nomes.length === 3
};

return tem3Nomes(this['nome'])"""}):
    print(cliente['nome'])

print('------------------------------------------')
print('Mostrando a quantidade de comidas por restaurantes utilziando o mapreduce')
#mapreduce
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

