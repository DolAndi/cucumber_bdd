#language: pt

Funcionalidade: Listar os produtos existentes

@listar_produtos
Esquema do Cenário: Listar produtos
Dado que tenho os dados do produto
| nome           | <nome>            |
| preco          | <preco>           |
| descricao      | <descricao>       |
| quantidade     | <quantidade>      |
| _id            | <_id>             |
Quando executo método GET da rota '/produtos'
Então retorna a lista com status code 200.

Exemplos:

| nome                 | preco | descricao       | quantidade | _id              |
| Logitech MX Vertical | 470   | Mouse           | 381        | BeeJh5lz3k6kSIzA |
| Samsung 60 polegadas | 5240  | TV              | 49977      | K6leHdftCeOJj8BJ |
| caneta vermelha      | 123   | vermelha caneta | 4000       |  |
