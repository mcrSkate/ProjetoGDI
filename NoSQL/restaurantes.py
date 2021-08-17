lista_restaurantes = [
    {
        "nome": "Pizzaria P",
        "cnpj": "42.652.817/0001-94",
        "telefones": ["8190010001", "8198041012"],
        "endereço": {
            "cep": "67990-268",
            "rua": "Rua Santa Maria",
            "numero": "5376",
            "complemento": "Fazenda 2",
            "bairro": "Vila Nova",
            "cidade": "Maceió",
            "estado": "Alagoas",
        },
        "gerente": {
            "nome": "Carlos Eduardo",
            "telefone": "8196420419",
            "cpf": "235.236.257-12"
        },
        "comidas": [
            {
                "nome": "Nachos de queijo",
                "tipo": "salgados",
                "descricao": "Comida feita com pedaços de queijo",
                "preco": 10.00,
                "informacoes nutricionais": {
                    "valor energetico": "800kj",
                    "gorduras": "2g",
                    "peso medio": "250g"
                }
            },
            {
                "nome": "Pizza de Calabresa",
                "tipo": "pizza",
                "descricao": "Massa de pizza coberta com queijo e pedaços de calabresa",
                "preco": 31.85,
                "informacoes nutricionais": {
                    "valor energetico": "1250,65kj",
                    "gorduras": "210g",
                    "peso medio": "3kg"
                }
            },
            {
                "nome": "Pizza de Brigadeiro",
                "tipo": ["pizza", "doce"],
                "descricao": "Massa de pizza coberta por brigadeiro",
                "preco":74.82,
                "informacoes nutricionais":{
                    "valor energetico": "1856,125kj",
                    "gorduras": "340g",
                    "peso medio": "2,8kg"
                }
            }
        ]
    },
    {
        "nome": "Hamburgueria do Bob",
        "cnpj": "72.084.841/0001-35",
        "telefones": ["8739583330", "87989214586"],
        "endereço": {
            "cep": "56320-530",
            "rua": "Rua Timbaúba",
            "numero": "774",
            "bairro": "Jose e Maria",
            "Cidade": "Petrolina",
            "estado": "Pernambuco"
        },
        "gerente": {
            "nome": "Vitória Aparecida",
            "cpf": "982.002.621-03",
            "telefone": "8239249019"
        },
        "comidas": [
            {
                "nome": "X-Picanha",
                "tipo": "Hambúrguer",
                "descricao": "Hambúrguer com pedaços de picanha",
                "preco": "R$ 13,00",
                "informacoes nutricionais": {
                    "valor energetico": "354kj",
                    "gorduras": "17g",
                    "peso medio": "140g"
                },
            },
            {
                "nome": "X-Calabresa",
                "tipo": "Hambúrguer",
                "descricao": "Hambúrguer com calabresa cortada em tiras",
                "preco": "R$ 8,00",
                "informacoes nutricionais": {
                    "valor energetico": "312kj",
                    "gorduras": "8,5g",
                    "peso medio": "127g"
                },
            },
            {
                "nome": "X-Queijo",
                "tipo": "Hambúrguer",
                "descricao": "Hambúrguer com vários tipos diferentes de queijo",
                "preco": "R$ 10,00",
                "informacoes nutricionais": {
                    "valor energetico": "298kj",
                    "gorduras": "13g",
                    "peso medio": "112g"
                },
            },
            {
                "nome": "X-Frango",
                "tipo": "Hambúrguer",
                "descricao": "Hambúrguer feito com pedaços de frango grelhado",
                "preco": "R$ 7,00",
                "informacoes nutricionais": {
                    "valor energetico": "306kj",
                    "gorduras": "6g",
                    "peso medio": "120g"
                },
            },
            {
                "nome": "X-Tudo",
                "tipo": "Hambúrguer",
                "descricao": "Hambúrguer que contém todas as opções da casa",
                "preco": "R$ 15,00",
                "informacoes nutricionais": {
                    "valor energetico": "380,8kj",
                    "gorduras": "25g",
                    "peso medio": "152g"
                },
            },
            {
                "nome": "X-Veggie",
                "tipo": "Hambúrguer",
                "descricao": "Hambúrguer feito sem ingredientes de origem animal",
                "preco": "R$ 10,00",
                "informacoes nutricionais": {
                    "valor energetico": "284kj",
                    "gorduras": "13g",
                    "peso medio": "108g"
                },
            }
        ]
    },
    {
        "nome": "Casa do Bolo",
        "cnpj": "67.112.292/0001-25",
        "telefones": ["8136256698", "81974563258"],
        "endereço": {
            "cep": "55810-000",
            "rua": "Rua do Pão",
            "numero": "784",
            "bairro": "Centro",
            "cidade": "Carpina",
            "estado": "Pernambuco",
        },
        "gerente": {
            "nome": "Marco Paulo",
            "telefone": ["8196420419", "8136542145"],
            "cpf": "478.326.552-65"
        },
        "comidas": [
            {
                "nome": "Bolo de Fubá",
                "tipo": "Bolos e Tortas",
                "descricao": "Prato tradicional da culinária brasileira com ingrediente principal como milho, contém também farinha, ovos e açúcar",
                "preco": 50.00,
                "informacoes nutricionais": {
                    "valor energetico": "948kj",
                    "gorduras": "9.6g",
                    "peso medio": "1kg",
                    "carboidratos": "31.7g"
                }
            },
            {
                "nome": "Bolo de casamento",
                "tipo": "Bolos e Tortas",
                "descricao": "Bolo especial para casamento, com recheio de brigadeiro e baba de moça, além de uma cobertura especial para a noiva",
                "preco": 300.00,
                "informacoes nutricionais": {
                    "peso medio": "2kg"
                }
            },
            {
                "nome": "Torta Holandesa",
                "tipo": "Bolos e Tortas",
                "descricao": "Torta leve feita com creme e gemas",
                "preco": 60.00,
                "informacoes nutricionais": {
                    "valor energetico": "290 kcal",
                    "carboidratos": "30g",
                    "peso medio": "3kg"
                }
            },
            {
                "nome": "Bolo de Rolo",
                "tipo": "Bolos e Tortas",
                "descricao": "Bolo tradicional de Pernambuco, feito a base de goiaba",
                "preco": 40.00,
                "informacoes nutricionais": {
                    "valor energetico": "202 kcal",
                    "carboidratos": "35g",
                    "peso medio": "2kg"
                }
            }

        ]
    },
    {
        "nome": "Sushi Mania",
        "cnpj": "84.210.418/0001-13",
        "telefones": ["81997565212", "8198711012"],
        "endereço": {
            "cep": "54280-585",
            "rua": "Rua da Constelação",
            "numero": "232",
            "complemento": "Após a rua do vereador frazão",
            "bairro": "Dois Carneiros",
            "cidade": "Jaboatão dos Guararapes",
            "estado": "Pernambuco",
        },
        "gerente": {
            "nome": "Isadora Bianca Alessandra Araújo",
            "telefone": "81984378244",
            "cpf": "989.213.784-13"
        },
        "comidas": [
            {
                "nome": "Bolinhos de Salmão",
                "tipo": "Bolinho Salgado",
                "descricao": "Bolinho recheado com salmão maçaricado",
                "preco": 18.00,
                "informacoes nutricionais": {
                    "valor energetico": "1200kj",
                    "gorduras": "1.5g",
                    "peso medio": "250g"
                }
            },
            {
                "nome": "Ebi Kani queijo",
                "tipo": "Rolinho Salgado",
                "descricao": "Rolinho recheado com kani e queijo coalho",
                "preco": 20.00,
                "informacoes nutricionais": {
                    "valor energetico": "850kj",
                    "gorduras": "4.0g",
                    "peso medio": "400g"
                }
            },
            {
                "nome": "Uramaki Kani",
                "tipo": "Rolinho ao contrário",
                "descricao": "Alga marinha envolta no arroz com recheio de kani",
                "preco": 19.00,
                "informacoes nutricionais": {
                    "valor energetico": "700kj",
                    "gorduras": "7.9g",
                    "peso medio": "800g"
                }
            },

            {
                "nome": "Hot Cartola",
                "tipo": "Rolinho doce",
                "descricao": "Rolinho frito com recheiro de cream cheese e calda de doce de leite",
                "preco": 16.99,
                "informacoes nutricionais": {
                    "valor energetico": "900kj",
                    "gorduras": "30g",
                    "peso medio": "500g"
                }
            },
            {
                "nome": "Bastão romeu e julieta",
                "tipo": "Rolinho doce",
                "descricao": "Rolinho com morango, goiaba, cream cheese e gergelim.",
                "preco": 16.00,
                "informacoes nutricionais": {
                    "valor energetico": "800kj",
                    "gorduras": "15g",
                    "peso medio": "670g"
                }
            }

        ]
    },
    {
        "nome": "Temakeria Temari",
        "cnpj": "02.001.345/0001-95",
        "telefones": ["8136000980", "81986762494"],
        "endereço": {
            "cep": "54580-736",
            "rua": "Travessa Bela Vista",
            "numero": "989",
            "complemento": "Fazenda 2",
            "bairro": "Ponte dos Carvalhos",
            "cidade": "Cabo de Santo Agostinho",
            "estado": "Pernambuco",
        },
        "gerente": {
            "nome": "Júlia A Almeida",
            "telefone": "81947942362",
            "cpf": "734.974.177-42"
        },
        "comidas": []
    },
    {
        "nome": "Doceria da Jú",
        "cnpj": "80.003.232/0001-32",
        "endereço": {
            "cep": "55820-000",
            "rua": "Rua José Pessoa",
            "numero": "81",
            "bairro": "Invasão",
            "cidade": "Lagoa do Carro",
            "estado": "Pernambuco",
        },
        "telefones": "8136218564",
        "gerente": {
            "nome": "Socorro Mendes de Lima",
            "telefone": ["81965214785", "81999987459"],
            "cpf": "654.318.796-44"
        },
        "comidas": [
            {
                "nome": "Bolo Chiffon",
                "tipo": "doce",
                "descricao": "Bolo feito de óleo vegetal, açúcar, farinha, fermento e saborizantes",
                "preco": 50.00,
                "informacoes nutricionais": {
                    "valor energetico": "6000kj",
                    "gorduras": "100g",
                    "peso medio": "5kg"
                }
            },
            {
                "nome": "Torta de Goiaba",
                "tipo": "doce",
                "descricao": "Torta feita de chocolate com recheio de goiaba",
                "preco": 80.00,
                "informacoes nutricionais": {
                    "valor energetico": "753,4kj",
                    "gorduras": "200g",
                    "peso medio": "9kg"
                }
            },
            {
                "nome": "Surpresa de Uva",
                "tipo": "doce",
                "descricao": "Uva coberta com açucar",
                "preco": 2.00,
                "informacoes nutricionais": {
                    "valor energetico": "250kj",
                    "gorduras": "1g",
                    "peso medio": "100g"
                }
            }

        ]
    },
    {
        "nome": "Cuscuz Nordestino",
        "cnpj": "42.025.535/0001-67",
        "telefones": ["81989191017", "81987906130"],
        "endereço": {
            "cep": "53605-705",
            "rua": "Rua Vereador Artur Pinto de Freitas",
            "numero": "343",
            "bairro": "Tabatinga",
            "cidade": "Igarassu",
            "estado": "Pernambuco",
        },
        "gerente": {
            "nome": "Gustavo Nathan Ferreira",
            "telefone": "81992283737",
            "cpf": "916.608.154-87"
        },
        "comidas": [
            {
                "nome": "Cuscuz Tropeiro",
                "tipo": "Cuscuz recheado",
                "descricao": "Cuscuz recheado com linguiça toscana processada, cebola, azeitonas e tomate",
                "preco": 10.99,
                "informacoes nutricionais": {
                    "valor energetico": "3000kj",
                    "gorduras": "9g",
                    "peso medio": "500g"
                }
            },
            {
                "nome": "Cuscuz Maria bonita",
                "tipo": "Cuscuz recheado",
                "descricao": "Cuscuz de flocos de arroz recheado com carne de sol, milho verde e queijo coalho",
                "preco": 13.90,
                "informacoes nutricionais": {
                    "valor energetico": "2050kj",
                    "gorduras": "8g",
                    "peso medio": "400g"
                }
            },
            {
                "nome": "Cuscuz de camarão",
                "tipo": "Cuscuz recheado",
                "descricao": "Cuscuz recheado com camarão fresco ao molho da casa, palmito e ervilha",
                "preco": 14.00,
                "informacoes nutricionais": {
                    "valor energetico": "750kj",
                    "gorduras": "7.9g",
                    "peso medio": "500g"
                }
            },

            {
                "nome": "Cuscuz lampião",
                "tipo": "Cuscuz recheado",
                "descricao": "Cuscuz recheado com carne de charque desfiada, milho verde e queijo coalho assado",
                "preco": 16.00,
                "informacoes nutricionais": {
                    "valor energetico": "980kj",
                    "gorduras": "31g",
                    "peso medio": "550g"
                }
            },
            {
                "nome": "Cuscuz raiz",
                "tipo": "Cuscuz recheado",
                "descricao": "Cuscuz recheado com ovo frito, queijo coalho assado e manteiga de garrafa",
                "preco": 11.00,
                "informacoes nutricionais": {
                    "valor energetico": "4000kj",
                    "gorduras": "27g",
                    "peso medio": "500g"
                }
            }

        ]
    }
]
