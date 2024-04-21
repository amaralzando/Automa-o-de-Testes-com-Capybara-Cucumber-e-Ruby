Dado('que eu tenho umas laranjas') do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  puts table.rows_hash['laranja'].to_i
  @laranjas = table.rows_hash['laranja'].to_i
end

Quando('eu corto {int} laranjas') do |int|
# Quando('eu corto {float} laranjas') do |float|
  @cortar = int
  @resultado = @laranjas - @cortar
end

Então('eu verifico quantas laranjas sobraram inteiras.') do
  expect(@resultado).to eq 8
end

Dado('que tenho umas laranjas') do |table|
  # table is a Cucumber::MultilineArgument::DataTable
  table.hashes.each do |valor|
    @laranjas = valor['laranja'].to_i
  end
end

Quando('eu chupo {int} laranjas') do |int|
# Quando('eu chupo {float} laranjas') do |float|
  @chupar = int
  @resultado = @laranjas - @chupar
end

Então('eu verifico quantas laranjas sobraram.') do
  expect(@resultado).to eq 8
end
