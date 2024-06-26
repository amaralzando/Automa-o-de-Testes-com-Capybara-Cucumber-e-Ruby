Quando('eu cadastro o usuario') do
  visit('/users/new')
  fill_in('user_name', with: 'Gabriel')
  fill_in('user_lastname', with: 'Andrade')
  fill_in('user_email', with: 'gamil@gmail.com')
  find('input[value="Criar"]').click
end

Então('verifico se o usuario foi cadastrado') do
  @texto = find('#notice')
  expect(@texto.text).to eq 'Usuário Criado com sucesso'
end

Quando('edito um usuario') do
  sleep(1)
  find('.btn.waves-light.blue').click
  sleep(2)
end

Então('verifico se o usuario foi editado.') do

end
