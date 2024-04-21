# classe comeca com a leta maiuscula
# composta por atributos e metodos e contrutores
class ClassName

  # a mesma coisa que o get e setter do java
  attr_accessor :nome
  # # so permiter ler
  # attr_reader :nomeone
  # # so permite esquever
  # attr_writer :nomedois

  # mesma coisa que o attr_acessor :nome
  # def nome 
  #   @nome
  # end

  # def nome=(nome)
  #   @nome = :nome
  # end

  #metodo
  # o nome dele tem que ser tudo minusculo e se o nome for composto precisa ter _
  def metodo
    puts 'corpo do metodo'
  end

  def metodo_composto
    puts 'corpo do metodo composto'
  end

  def initialize
    
  end
end

class Heranca < ClassName

end

objeto = ClassName.new
objeto.nome = 'Gabriel'
puts objeto.nome
objeto.metodo
objeto.metodo_composto

objeto_heranca = Heranca.new
objeto_heranca.metodo
objeto_heranca.metodo_composto
puts objeto.nome