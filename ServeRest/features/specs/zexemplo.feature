#language: pt

Funcionalidade: Cadastro de Usuário

Esquema do Cenário: Cadastro com sucesso
  Dado que possua dados válidos para Cadastro
  | nome     | <nome>     |
  | email    | <email>    |
  | password | <password> |
  | admin    | <admin>    |
  Quando executar um método POST no endpoint '<endpoint>'
  Então deverá retornar o status code <code>
  Exemplos:
  | nome     | email              | password          | admin             | endpoint          | code  |
  | RafaelC  | testerr@tester.com | abc123            | true              | /usuarios         | 400   |
  | Andriano | tester@tester.com  | abc123            | true              | /usuarios         | 400   |
