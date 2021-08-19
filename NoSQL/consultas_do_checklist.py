import pymongo

from criacao_e_povoamento import clientes
from criacao_e_povoamento import restaurantes
from criacao_e_povoamento import entregadores
from criacao_e_povoamento import pedidos
from criacao_e_povoamento import avaliacoes


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
print('Nome do restaurante que tem a comida mais cara')
#max
for restaurante in restaurante.