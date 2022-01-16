Dado('que tenho os dados do produto') do |data|
  @data = data.rows_hash
  
end

Quando('executo método GET da rota {string}') do |endpoint|
  @requisicao = HTTParty.get(
      "#{$base_url}#{endpoint}?nome=#{@data['nome']}"
  )
  puts @requisicao.body
end  

Então('retorna a lista com status code {int}.') do |status_code|
  expect(@requisicao.code).to eq(status_code)
  
end