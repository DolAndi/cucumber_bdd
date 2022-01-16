# language: pt

Funcionalidade: Criação de usuários
    Como usuário do serviço da ServeRest
    Desejo criar uma conta
    Para poder utilizar os serviços do site

@criar_usuarios
Cenário: Criar um usuário com resultado positivo.
Dado que possuo os dados válidos para cadastro.
Quando colocar os dados necessários.
Então o cadastro será realizado com sucesso.

@email_invalido
Cenário: Verificação se email é obrigatório ao criar a conta do usuário.
Dado que não possuo email para cadastro.
Quando colocar os dados necessários.
Então não deverá ser realizado cadastro.
E deverá exibir a mensagem 'email não pode ficar em branco'

