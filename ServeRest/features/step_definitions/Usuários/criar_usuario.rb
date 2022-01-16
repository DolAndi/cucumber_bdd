Dado('que possuo os dados válidos para cadastro.') do
  @dados = {
    nome: "Teste da Silva",
    email: "Testando123@qa.com.br",
    password: "teste",
    administrador: "true"
  }
end

Dado('que não possuo email para cadastro.') do
    @dados = {
        nome: "Teste da Silva",
        email: "",
        password: "teste",
        administrador: "true"
      }
end
  
Quando('colocar os dados necessários.') do
  @requisicao = HTTParty.post(
      "#{$base_url}/usuarios",
      body: @dados       #  ['nome'] ou :nome
  )
  puts(@requisicao.body)
end

Então('o cadastro será realizado com sucesso.') do
  expect(@requisicao.code).to eq(201)
end

Então('não deverá ser realizado cadastro.') do
  expect(@requisicao.code).to eq(400)
end

Então('deverá exibir a mensagem {string}') do |message|
  expect(@requisicao['email']).to eql(message)
end

