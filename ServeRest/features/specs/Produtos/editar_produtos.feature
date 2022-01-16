#language: pt

Funcionalidade: Editar produtos

Contexto: 
Dado que esteja logado.
Dado que tenha os dados do produto.

@editar_produtos
Cenário: Editar produto com suceso.
Dado que possua o 'id'
Quando executar o método PUT na endpoint '/produtos'
Então retorna message 'Registro alterado com sucesso', status code 200.

