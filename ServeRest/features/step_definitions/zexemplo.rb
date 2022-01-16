Dado('que possua dados válidos para Cadastro') do |data|
  @data = data.rows_hash
end

Quando('executar um método POST no endpoint {string}') do |endpoint|
  @base_url = 'https://serverest.dev'
  @endpoint = endpoint
  @body = {
    nome: @data['nome'],
    email: @data['email'],
    password: @data['password'],
    administrador: @data['admin']
  }

  @result = HTTParty.post(
      "#{@base_url}#{@endpoint}",
      header: {
        'Content-Type' => 'application/json'
      },
      body: @body
    )
    puts(@result.body)
end

Então('deverá retornar o status code {int}') do |expected_code|
  status_code = @result.code
  expect(status_code).to equal(expected_code)
  expect(@result['message']).to eq('Este email já está sendo usado')
end