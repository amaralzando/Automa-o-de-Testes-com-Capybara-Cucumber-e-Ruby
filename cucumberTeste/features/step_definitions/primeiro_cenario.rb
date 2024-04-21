Quando('eu somo {int} + {int}') do |v1, v2|
# Quando('eu somo {int} + {float}') do |int, float|
# Quando('eu somo {float} + {int}') do |float, int|
# Quando('eu somo {float} + {float}') do |float, float2|
 @soma = v1 + v2
end

Então('o resultado tem que ser {int}') do |resultado|
# Então('o resultado tem que ser {float}') do |float|
  expect(@soma).to eq resultado
  puts @soma
  puts resultado
end
