Before do
  puts 'Estou sendo execultado antes de cada cenario'
  @soma = 5 + 5
end

After do
  puts 'Estou sendo execultado depois de cada cenario'
end

Before '@comeco' do
  puts 'Rodei apenas na tag comeco'
  @soma = 5 + 5
end
