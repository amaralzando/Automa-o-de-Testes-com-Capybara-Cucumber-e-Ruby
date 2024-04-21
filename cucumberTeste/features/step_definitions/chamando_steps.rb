Dado('eu tenho {int} laranjas no estoque.') do |int|
# Dado('eu tenho {float} laranjas no estoque.') do |float|
  @laranjas = int
  puts @laranjas
end

Quando('eu amasso {int} laranjas.') do |int|
# Quando('eu amasso {float} laranjas.') do |float|
  @total = @laranjas - int
  puts @total
end

Então('eu verifico quantas laranjas sobraram no estoque.') do
  expect(@total).to eq 8
end

Quando('revendo {int} laranjas') do |int|
# Quando('revendo {float} laranjas') do |float|
  steps %Q{
    Dado eu tenho 10 laranjas no estoque.
  }

  @resultado = @laranjas - int
  puts @resultado
end

Entao('eu verifico com quantos laranjas eu fiquei') do
 expect(@resultado).to eq 8
end
