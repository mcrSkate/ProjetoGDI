import pymongo

myclient = pymongo.MongoClient("mongodb://localhost:27017/")

#Criando o banco de dados
delivery = myclient["Delivery"] 

#Criando as coleções
clientes = delivery["Clientes"]
restaurantes = delivery["Restaurantes"]
entregadores = delivery["Entregadores"]
comidas = delivery["Comidas"]
pedidos = delivery["Pedidos"]
entregas = delivery["Entregas"]
avaliacoes = delivery["Avaliacoes"]

#CLIENTES
#ATRIBUTOS: 
#nome, cpf, dados bancarios, endereço, email, telefone

#RESTAURANTES
#ATRIBUTOS:
#nome, cnpj, telefones, endereço, gerente, comidas[ta em outra tabela]

#Entregadores
#nome, cpf, email, telefone, dados bancarios [pra pagar ele], placa da moto

#COMIDAS
#nome, tipo, descricao, preco, informacoes nutricionais

#PEDIDOS
#nome do cliente, numero do pedido, forma de pagamento, valor total
#nome do restaurante, nome da comida,  data e hora, observacoes do cliente

#ENTREGAS
#nome do entregador, nome do restaurante, endereço de entrega,
#duracao da entrega, nome do cliente, taxa de entrega, observacoes do entregador

#AVALIACOES
#nome do cliente, nome do restaurante, nota da avaliação, descrição









