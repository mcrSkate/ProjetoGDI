lista_comidas = [
    {
        "nome": "Nachos de queijo",
        "restaurante": "Pizzaria P",
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
        "restaurante": "Pizzaria P",
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
                "restaurante": "Pizzaria P",
                "tipo": ["pizza", "doce"],
                "descricao": "Massa de pizza coberta por brigadeiro",
                "preco":74.82,
                "informacoes nutricionais":{
                    "valor energetico": "1856,125kj",
                    "gorduras": "340g",
                    "peso medio": "2,8kg"
                }
    },
    {
        "nome": "X-Picanha",
                "restaurante": 'Hamburgueria do Bob',
                "tipo": "Hambúrguer",
                "descricao": "Hambúrguer com pedaços de picanha",
                "preco": 13.00,
                "informacoes nutricionais": {
                    "valor energetico": "354kj",
                    "gorduras": "17g",
                    "peso medio": "140g"
                },
    },
    {
        "nome": "X-Calabresa",
                "restaurante": 'Hamburgueria do Bob',
                "tipo": "Hambúrguer",
                "descricao": "Hambúrguer com calabresa cortada em tiras",
                "preco": 8.00,
                "informacoes nutricionais": {
                    "valor energetico": "312kj",
                    "gorduras": "8,5g",
                    "peso medio": "127g"
                },
    },
    {
        "nome": "X-Queijo",
                "restaurante": 'Hamburgueria do Bob',
                "tipo": "Hambúrguer",
                "descricao": "Hambúrguer com vários tipos diferentes de queijo",
                "preco": 10.00,
                "informacoes nutricionais": {
                    "valor energetico": "298kj",
                    "gorduras": "13g",
                    "peso medio": "112g"
                },
    },
    {
        "nome": "X-Frango",
                "restaurante": 'Hamburgueria do Bob',
                "tipo": "Hambúrguer",
                "descricao": "Hambúrguer feito com pedaços de frango grelhado",
                "preco": 7.00,
                "informacoes nutricionais": {
                    "valor energetico": "306kj",
                    "gorduras": "6g",
                    "peso medio": "120g"
                },
    },
    {
        "nome": "X-Tudo",
                "restaurante": 'Hamburgueria do Bob',
                "tipo": "Hambúrguer",
                "descricao": "Hambúrguer que contém todas as opções da casa",
                "preco": 15.00,
                "informacoes nutricionais": {
                    "valor energetico": "380,8kj",
                    "gorduras": "25g",
                    "peso medio": "152g"
                },
    },
    {
        "nome": "X-Veggie",
                "restaurante": 'Hamburgueria do Bob',
                "tipo": "Hambúrguer",
                "descricao": "Hambúrguer feito sem ingredientes de origem animal",
                "preco": 10.00,
                "informacoes nutricionais": {
                    "valor energetico": "284kj",
                    "gorduras": "13g",
                    "peso medio": "108g"
                },
    },
    {
        "nome": "Bolo de Fubá",
                "restaurante": "Casa do Bolo",
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
                "restaurante": "Casa do Bolo",
                "tipo": "Bolos e Tortas",
                "descricao": "Bolo especial para casamento, com recheio de brigadeiro e baba de moça, além de uma cobertura especial para a noiva",
                "preco": 300.00,
                "informacoes nutricionais": {
                    "peso medio": "2kg"
                }
    },
    {
        "nome": "Torta Holandesa",
                "restaurante": "Casa do Bolo",
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
                "restaurante": "Casa do Bolo",
                "tipo": "Bolos e Tortas",
                "descricao": "Bolo tradicional de Pernambuco, feito a base de goiaba",
                "preco": 40.00,
                "informacoes nutricionais": {
                    "valor energetico": "202 kcal",
                    "carboidratos": "35g",
                    "peso medio": "2kg"
                }
    },
    {
        "nome": "Bolinhos de Salmão",
                "restaurante": "Sushi Mania",
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
                "restaurante": "Sushi Mania",
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
                "restaurante": "Sushi Mania",
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
                "restaurante": "Sushi Mania",
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
                "restaurante": "Sushi Mania",
                "tipo": "Rolinho doce",
                "descricao": "Rolinho com morango, goiaba, cream cheese e gergelim.",
                "preco": 16.00,
                "informacoes nutricionais": {
                    "valor energetico": "800kj",
                    "gorduras": "15g",
                    "peso medio": "670g"
                }
    },
    {
        "nome": "Temaki Hot Salmão",
        "restaurante": "Temakeria Temari",
        "tipo": "temaki",
        "descricao": "Temaki feito com salmão grelhado",
        "preco": 16.00,
        "informacoes nutricionais": {
            "valor energetico": "295,5kj",
            "gorduras": "5,0g",
            "peso medio": "125g"
        },
    },
    {
        "nome": "Temaki Shrimp",
        "restaurante": "Temakeria Temari",
        "tipo": "temaki",
        "descricao": "Temaki feito com camarão",
        "preco": 18.00,
        "informacoes nutricionais": {
            "valor energetico": "216,8kj",
            "gorduras": "8,5g",
            "peso medio": "117g"
        },
    },
    {
        "nome": "Temaki Frango Empanado",
        "restaurante": "Temakeria Temari",
        "tipo": "temaki",
        "descricao": "Temaki feito com pedaços de frango empanado",
        "preco": 20.00,
        "informacoes nutricionais": {
            "valor energetico": "211,2kj",
            "gorduras": "4,7g",
            "peso medio": "134g"
        },
    },
    {
        "nome": "Temaki Atum",
        "restaurante": "Temakeria Temari",
        "tipo": "temaki",
        "descricao": "Temaki feito com pedaços atum",
        "preco": 15.00,
        "informacoes nutricionais": {
            "valor energetico": "173,3kj",
            "gorduras": "0,5g",
            "peso medio": "110g"
        },
    },
    {
        "nome": "Temakis Veggie",
        "restaurante": "Temakeria Temari",
        "tipo": "temaki",
        "descricao": "Temaki feito sem ingredientes de origem animal",
        "preco": 22.00,
        "informacoes nutricionais": {
            "valor energetico": "362,8kj",
            "gorduras": "25g",
            "peso medio": "140g"
        },
    },
    {
        "nome": "Bolo Chiffon",
                "restaurante": 'Doceria da Jú',
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
                "restaurante": 'Doceria da Jú',
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
                "restaurante": 'Doceria da Jú',
                "tipo": "doce",
                "descricao": "Uva coberta com açucar",
                "preco": 2.00,
                "informacoes nutricionais": {
                    "valor energetico": "250kj",
                    "gorduras": "1g",
                    "peso medio": "100g"
                }
    },
    {
        "nome": "Cuscuz Tropeiro",
                "restaurante": "Cuscuz Nordestino",
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
                "restaurante": "Cuscuz Nordestino",
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
                "restaurante": "Cuscuz Nordestino",
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
                "restaurante": "Cuscuz Nordestino",
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
        "restaurante": "Cuscuz Nordestino",
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
