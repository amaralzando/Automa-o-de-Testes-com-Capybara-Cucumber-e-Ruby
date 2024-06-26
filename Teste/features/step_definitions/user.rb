Quando('eu cadastro o usuario') do
  user.load
  user.criar_usuario(['Gabriel', 'Andrade', 'gmail@gmail.com'])
  sleep(2)
  user.criar.click
  sleep(2)
end

Então('verifico se o usuario foi cadastrado') do
  expect(user.mensagem.text).to eq 'Usuário Criado com sucesso'
  sleep(2)
end
