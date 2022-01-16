Dado('que eu tenha {int} laranjas.') do |valor1|
  @laranjas = valor1
end
    
Quando('eu como {int} laranjas.') do |valor2|
  @comer = valor2
  @resultado = @laranjas - @comer
end
    
Então('eu vejo quantas laranjas sobraram.') do
  expect(@resultado).to eq 8
end

#cenario2 da funcionalidade

Quando('eu compro {int} laranjas.') do |valor3|
  @comprar = valor3
  @resultado_02 = @laranjas + @comprar
end
    
Então('eu vejo quantas laranjas terei.') do
    expect(@resultado_02).to eq 15
end