Dado('que esteja logado.') do
  step 'que possuo os dados necessários.'
  step 'executo o metódo POST.'
end

Dado('que tenha os dados do produto.') do
  step 'que tenho os dados de criação.'
end

Dado('que possua o {string}') do |id|
  id = 'Kx5cqct0ivrzLtNG'
end

Quando('executar o método PUT na endpoint {string}') do |endpoint|
  @result = HTTParty.put(
      "#{$base_url}#{endpoint}?_id=#{@dadosProduto['_id']}",
      headers: { 
        Authorization: @token
      },
      body: @dadosProduto
  )
  puts(@token)
  puts(@result.body)
end

Então('retorna message {string}, status code {int}.') do |message, status_code|
  expect(@result.code).to eq(status_code)
  expect(@result['message']).to eq(message)
end