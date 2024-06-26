Quando('clico no botao') do
  @ajax = AjaxPage.new
  @ajax.load

  @ajax.clicarBotao
end

Entao('verifico se apareceu') do
  @ajax.wait_for_mensagem
  puts @ajax.mensagem.text

  expect(@ajax.mensagem.text).to eq 'Você Clicou no Botão!'
end
