import pymongo

from clientes import lista_clientes
from restaurantes import lista_restaurantes
from entregadores import lista_entregadores
from pedidos import lista_pedidos
from avaliacoes import lista_avaliacoes

myclient = pymongo.MongoClient("mongodb://localhost:27017/")

# Criando o banco de dados
delivery = myclient["Delivery"]

# Criando as coleções
clientes = delivery["Clientes"]
restaurantes = delivery["Restaurantes"]
entregadores = delivery["Entregadores"]
pedidos = delivery["Pedidos"]
avaliacoes = delivery["Avaliacoes"]

#Dropando todos as colecoes
clientes.drop()
restaurantes.drop()
entregadores.drop()
pedidos.drop()
avaliacoes.drop()

#Povoando as colecoes
clientes.insert_many(lista_clientes)
restaurantes.insert_many(lista_restaurantes)
entregadores.insert_many(lista_entregadores)
pedidos.insert_many(lista_pedidos)
avaliacoes.insert_many(lista_avaliacoes)
