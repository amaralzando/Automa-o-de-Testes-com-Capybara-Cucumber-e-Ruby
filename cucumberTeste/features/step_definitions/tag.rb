Quando('eu divido dois numeros {int} \/ {int}') do |int, int2|
# Quando('eu divido dois numeros {int} \/ {float}') do |int, float|
# Quando('eu divido dois numeros {float} \/ {int}') do |float, int|
# Quando('eu divido dois numeros {float} \/ {float}') do |float, float2|
  @resultado = int / int2
end

Então('o resultado da divisão.') do
  expect(@resultado).to eq 5
end

Quando('eu multiplico dois numeros {int} \/ {int}') do |int, int2|
# Quando('eu multiplico dois numeros {int} \/ {float}') do |int, float|
# Quando('eu multiplico dois numeros {float} \/ {int}') do |float, int|
# Quando('eu multiplico dois numeros {float} \/ {float}') do |float, float2|
  @resultado = int * int2
end

Então('o resultado da multiplicação.') do
  expect(@resultado).to eq 20
end
