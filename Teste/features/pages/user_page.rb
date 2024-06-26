class UserPage < SitePrism::Page
  set_url '/users/new'

  element :nome, '#user_name'
  element :sobrenome, '#user_lastname'
  element :email, '#user_email'
  element :criar, 'input[value="Criar"]'
  element :mensagem, '#notice'

  def criar_usuario(user)
    nome.set user[0]
    sobrenome.set user[1]
    email.set user[2]
  end
end
