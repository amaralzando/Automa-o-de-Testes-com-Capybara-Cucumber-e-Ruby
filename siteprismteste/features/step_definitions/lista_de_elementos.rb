Quando('mapeio uma tabela') do
  @lista_elementos = MapeandoListasPage.new
  @lista_elementos.load

  puts @lista_elementos.lista.size
  puts @lista_elementos.lista[0].text
  puts @lista_elementos.lista[1].text

  expect(@lista_elementos.lista.size).to eq 24

  @lista_elementos.lista.each do |lista|
    puts lista.text
  end
end
