=begin

module ModuloNome
  #serve para agrupar classes
  # serve para agrupar constantes
  # serve para agrupar metodos

  #ele e muito parecido com cclasse
  # ele não pode ser isntanciado
  # Modulo nãao pode ser herdado
  def metodo_padrao
    puts 'eu sou um modulo'
  end
end

class ClassNome
  include ModuloNome
end

objeto = ClassNome.new

objeto.metodo_padrao

=end

class Cachorro
  def latir
    puts "au au au"
  end
end

class CachorroGrande
  def latir
    puts "houf houf"
  end
end

class Pessoa
  def agarra_cachorro(cachorro)
    cachorro.latir
  end
end

c1 = Cachorro.new
c2 = CachorroGrande.new
p = Pessoa.new

p.agarra_cachorro(c1)
p.agarra_cachorro(c2)


