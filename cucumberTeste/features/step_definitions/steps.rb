Dado('eu tenho {int} laranjas no estoque') do |laranja|
# Dado('eu tenho {float} laranjas no estoque') do |float|
  @laranjas = laranja
  puts @laranjas
end

Quando('eu amasso {int} laranjas') do |amassada|
# Quando('eu amasso {float} laranjas') do |float|
  @amassadas = amassada
  @resultado = @laranjas - @amassadas
end

Então('eu verifico quantas laranjas sobraram no estoque') do
  puts @resultado
  expect(@resultado).to eq 8
end

# Quando('revendo {int} laranjas') do |int|
# # Quando('revendo {float} laranjas') do |float|
 
# end

# Entao('eu verifco com quantas laranjas eu fiquei') do
 
# end