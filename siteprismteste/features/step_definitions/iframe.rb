Quando('preencho os campos.') do
  @iframe = PaginaPadraoPage.new
  @iframe.load

  @iframe.preencher_campo do |iframe|
    iframe.nome.set 'Teste'
    iframe.ultimo_nome.set 'Teste'
  end

  sleep(2)
end
