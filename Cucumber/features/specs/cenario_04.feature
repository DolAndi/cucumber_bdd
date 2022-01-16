#language: pt

Funcionalidade: Chamando outros passos

Cenário: Amasso laranjas
Dado que eu tenho 10 laranjas no estoque.
Quando eu amasso 2 laranjas
Então  eu verifico quantas laranjas sobraram no estoque.

@revendo_laranjas   #cucumber --tags @revendo_laranjas
Cenário: Revendo laranjas
Quando revendo 2 laranjas
Então eu verifico com quantas laranjas eu fiquei.