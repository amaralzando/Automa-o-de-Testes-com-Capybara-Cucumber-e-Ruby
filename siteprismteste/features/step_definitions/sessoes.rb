Quando('clico no elemento da sessao') do
  @pagina = PaginaPage.new
  @pagina.load

  @pagina.navbar.youtube.click
end
