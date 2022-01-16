Dado('que esteja logado') do
  step 'que possuo os dados necessários.'
  step 'executo o metódo POST.'
end

Dado('que tenho os dados de criação.') do
  @dadosProduto = {
    "nome": "caneta vermelha",
    "preco": 123,
    "descricao": "vermelha caneta",
    "quantidade": 4000
  }
end

Quando('realizo o metodo POST.') do
  @result = HTTParty.post(
      "#{$base_url}/produtos",
      headers: { 
        Authorization: @token
      },
      body: @dadosProduto
  )
  puts(@token)
  puts(@result.body)
end

Então('receberá a mensagem {string} e status code {int}.') do |message, status_code|
  expect(@result.code).to eq(status_code)
  expect(@result['message']).to eq(message)
end