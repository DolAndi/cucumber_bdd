Dado('que possuo o id') do |table|
  @data = data.rows_hash    
end

Quando('executo o metodo GET na rota {string}') do |endpoint|
  @requisicao = HTTParty.get(
      "#{$base_url}#{endpoint}?_id=#{@data['_id']}"
  )
  puts @requisicao.body  
end

Então('retorna status code {int}') do |status_code|
  expect(@requisicao.code).to eq(status_code)
end

Então('retorna status code {int} e message {string}') do |status_code, message|
    expect(@requisicao.code).to eq(status_code)
    expect(@requisicao['message']).to eq(message)
end