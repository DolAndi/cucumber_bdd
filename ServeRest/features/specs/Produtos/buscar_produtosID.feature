#language: pt

Funcionalidade: Buscar produtos por ID

@buscarProd_id
Esquema do Cenário: Buscar produtos com sucesso pelo ID
Dado que possuo o id
| _id       | <_id>       |
Quando executo o metodo GET na rota '/produtos'
Então retorna status code 200

Exemplos:
| _id               | 
| BeeJh5lz3k6kSIzA  |
| K6leHdftCeOJj8BJ  |
| Kx5cqct0ivrzLtNG  |

@buscaProd_idError
Esquema do Cenário: Não encontrar o produto
Dado que possuo o id
| _id       | <_id>       |
Quando executo o metodo GET na rota '/produtos'
Então retorna status code 400 e message 'Produto não encontrado'

Exemplos:
| _id               | 
| BeeJh23456kSIzA   |
| K123HdftCeOJj8BJ  |

