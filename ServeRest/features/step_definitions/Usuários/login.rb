Dado('que possuo os dados necessários.') do
  @dados = {
    "email": "Testando123@qa.com.br",
    "password": "teste"
  }
end
Dado('que possuo um dos campos em branco.') do
  @dados_ruim = {
    "email": "Testando123@qa.com.br",
    "password": "testando"
  }
end

Quando('executo o metódo POST.') do
  @post_login = HTTParty.post(
    "#{$base_url}/login",
    body: @dados 
  )
  @token = @post_login['authorization']
  #@parsed_response_body = JSON.parse(@post_login.body)
  #@token = @parsed_response_body['authorization']
  puts(@post_login.body)
end
Quando('executo o metódo POST com um campo vazio.') do
  @post_login_ruim = HTTParty.post(
    "#{$base_url}/login",
    body: @dados_ruim 
  )
  puts(@post_login_ruim.body)
end

Então('recebo a message {string} e status code {int}.') do |message, status_code|
  expect(@post_login.code).to eq(status_code)
  expect(@post_login['message']).to eq(message)
end
Então('recebo a message {string} e status code {int}, falhando.') do |message, status_code|
  expect(@post_login_ruim.code).to eq(status_code)
  expect(@post_login_ruim['message']).to eq(message)
end