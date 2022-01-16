#language: pt

Funcionalidade: Listar usuários cadastrados
    Como visitante no site
    Pretendo listar usuários específicos

@listar_usuarios
Esquema do Cenário: Listar usuários
Dado que pretendo listar os usuários pelo NOME.
| nome     | <nome>     |
Quando executar o metodo GET.
Então deverá retornar os usuários solicitados.

Exemplos:

| nome     | code |
| Andriano | 200  |
| Testador | 200  |
| Rafael   | 200  |
