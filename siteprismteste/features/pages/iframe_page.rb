class PaginaIframePage < SitePrism::Page
  element :nome, '#first_name'
  element :ultimo_nome, '#last_name'
end

class PaginaPadraoPage < SitePrism::Page
  set_url '/mudancadefoco/iframe'
  iframe :preencher_campo, PaginaIframePage, '#id_do_iframe'
end
