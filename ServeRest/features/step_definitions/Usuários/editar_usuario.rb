Dado('que tenho os dados para edição') do
  @_id = 'y1uom0CqnX81vDsf'
  @dados = {
    nome: "Teste da Silva",
    email: "Testando123@qa.com.br",
    password: "teste",
    administrador: "true"
  }
end

Quando('que realizo o método PUT.') do
  @put_edit = HTTParty.put(
      "#{$base_url}/usuarios/#{@_id}",
      body: @dados 
    )
    puts(@put_edit.body)
end

Então('edita o usuário com message {string} status code {int}.') do |message, status_code|
  expect(@put_edit.code).to eq(status_code)
  expect(@put_edit['message']).to eq(message)

end