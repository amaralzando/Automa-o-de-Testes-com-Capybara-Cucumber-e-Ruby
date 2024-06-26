Quando('eu entro na janela e verifico a mensagem') do
  visit('/mudancadefoco/janela')
  #janela está recebndo uma janela recebida pelo link
  @janela = window_opened_by do
    click_link('Clique aqui')
  end
  #muda o foco para essa janela
  within_window(@janela) do
    expect(current_url).to eq 'http://localhost:3000/mudancadefoco/newwindow'
    @mensagem = find('.red-text.text-darken-1.center')
    expect(@mensagem.text).to eq 'Você Abriu uma nova janela!!'
    sleep(2)

    @janela.close
    sleep(2)
  end
end

Quando('eu entro no alert e verifico a acao') do
  visit('/mudancadefoco/alert')

  find('button[onclick="jsAlert()"]').click
  sleep(2)
  page.accept_alert
  sleep(2)

  # segundo teste
  find('button[onclick="jsConfirm()"]').click
  sleep(2)
  page.dismiss_confirm
  sleep(2)

  # prompt
  find('button[onclick="jsPrompt()"]').click
  sleep(2)
  page.accept_prompt(with: 'Abigail')
  sleep(2)

end
