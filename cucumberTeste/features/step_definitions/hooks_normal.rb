Quando('realizo a media') do
  @media = @soma / 2
end

Então('o resultado da media') do
  puts "A media é #{@media}"
  expect(@media).to eq 5
end
