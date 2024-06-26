Quando('eu faco cadastro') do
  visit('/users/new')
  fill_in(id: 'user_name', with: 'Gabriel teste')
  find('#user_lastname').set('Amaral')
  find('#user_email').send_keys('gaamaralpessoal@gmail.com')
  fill_in(id: 'user_address', with: 'rua joão guimaraes rosa 590')
  fill_in(id: 'user_university', with: 'São judas tadeu')
  fill_in(id: 'user_profile', with: 'Desenvolvedor full stack')
  fill_in(id: 'user_gender', with: 'Masculino')
  fill_in(id: 'user_age', with: '22')
  find('input[value="Criar"]').click
  sleep(5)
end

Então('verifico se fui cadastrado') do
  texto = find('#notice')
  expect(texto.text).to eq 'Usuário Criado com sucesso'
end
