#language: pt

Funcionalidade: fazer login

@login
Cenário: Login com sucesso.
Dado que possuo os dados necessários.
Quando executo o metódo POST.
Então recebo a message 'Login realizado com sucesso' e status code 200.

@login_errado
Cenário: Login com falha.
Dado que possuo um dos campos em branco.
Quando executo o metódo POST com um campo vazio.
Então recebo a message 'Email e/ou senha inválidos' e status code 401, falhando.

