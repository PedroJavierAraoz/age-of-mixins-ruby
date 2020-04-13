class Unidad
  attr_reader :vida
  attr_reader :defensa

  def initialize(defensa:, vida:)
    @defensa = defensa
    @vida = vida
  end

  def recibir_daño(cantidad_de_daño)
    daño_final = cantidad_de_daño - @defensa
    @vida -= daño_final if daño_final > 0
  end

  def atacar_a(defensor)
    defensor.recibir_daño(ataque)
  end

  def ataque
    raise 'subclass responsibility'
  end
end