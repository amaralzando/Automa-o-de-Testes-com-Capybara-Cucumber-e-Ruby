puts 'digite o numeor 1 ou 2: '
v1 = gets.to_i

# if v1 == 1
#   puts 'valor é igual a 1'
# elsif v1 == 2
#   puts 'valor igual a 2'
# else 
#   puts 'valor não é igual'
# end

# unless v1 == 2
#   puts ' condicao falsa'
# else
#   puts 'condição verdadeira'
# end

case v1 
when 0 
  puts 'digitou 0'
when 1 
  puts 'digitou 1'
else
  puts 'opcao invalida'
end