Quando('acesso a url de botoes') do
  visit('/buscaelementos/botoes')
end

Entao('verifico se encontrei os elementos') do
  #all busca todos os elementos que contenham o all
  #all(css, '.btn')
  page.all(:css, '.btn')
  #busca um elemento mapeado
  find('#teste')
  find_by_id('teste')
  #busca por botao
  find_button(class: 'btn waves-light')
  first('.btn')
  #busca por link
  find_link(href: "https://www.youtube.com/channel/UCp554v_is_ZzjzSmAQyFfAA")
end
