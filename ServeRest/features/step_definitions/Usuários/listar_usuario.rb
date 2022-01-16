Dado('que pretendo listar os usuários pelo NOME.') do |table|
  @table = table.rows_hash
end

Quando('executar o metodo GET.') do
  @requisicao = HTTParty.get(
      "#{$base_url}/usuarios?nome=#{@table['nome']}"
  )
  puts @requisicao.body
end

Então('deverá retornar os usuários solicitados.') do
  expect(@requisicao.code).to eq(200)
end
