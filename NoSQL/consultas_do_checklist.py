


#Find
for entregador in entregadores.find():
    print(entregador['nome'])

#Size
for cliente in clientes.find({'telefone': {'$size': 2}}):
    print(cliente['nome'])