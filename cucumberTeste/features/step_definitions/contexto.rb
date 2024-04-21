Dado('que eu tenho {int} laranjas na bolsa.') do |laranja|
# Dado('que eu tenho {float} laranjas na bolsa.') do |float|
  @laranjas = laranja
end

Quando('eu coloco {int} laranjas na bolsa') do |qtdLaranja|
# Quando('eu coloco {float} laranjas na bolsa') do |float|
  @coloquei = qtdLaranja
  @resultado = @laranjas + @coloquei
end

Então('eu verifico se eu o total de laranjas na bolsa é {int}') do |total|
# Então('eu verifico se eu o total de laranjas na bolsa é {float}') do |float|
  expect(@resultado).to eq total
end

Quando('eu tiro {int} laranjas da bolsa') do |qtdLaranja|
# Quando('eu tiro {float} laranjas da bolsa') do |float|
  @retirei = qtdLaranja
  @resultado = @laranjas - @retirei
end

Então('eu verifico com quantas laranjas eu fiquei na bolsa.') do
  expect(@resultado).to eq 8
end
