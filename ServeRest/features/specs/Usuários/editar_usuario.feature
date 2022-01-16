#language: pt

Funcionalidade: editar usuários

@editar_usuarios
Cenário: Realizar com sucesso edição de usuários
Dado que tenho os dados para edição
Quando que realizo o método PUT.
Então edita o usuário com message 'Registro alterado com sucesso' status code 200.

