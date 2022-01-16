#language: pt
#####TOKEN#####
Funcionalidade: Criação de produtos

Contexto: 
Dado que esteja logado

@criar_produtos
Cenário: Criar produto com sucesso.
Dado que tenho os dados de criação.
Quando realizo o metodo POST.
Então receberá a mensagem 'Cadastro realizado com sucesso' e status code 201.

