#Cenario: Fazer subtraçao

Dado('eu tenho {int} laranjas') do |int|
# Dado('eu tenho {float} laranjas') do |float|
  puts int
  @laranjas = int
end

Quando('eu como {int} laranjas') do |int|
  puts int
  @comer = int
  @resultado = @laranjas - @comer
end

Então('eu vejo quantas laranjas sobraram.') do
  expect(@resultado).to eq 8
  puts @resultado
end

#Cenario: Fazer subtraçao
Quando('eu compro {int} laranjas') do |int|
# Quando('eu compro {float} laranjas') do |float|
  puts int
  @comprar = int
  @resultado = @laranjas + @comprar
end

Então('eu vejo quantas laranjas eu tenho.') do
  expect(@resultado).to eq 15
  puts @resultado
end
