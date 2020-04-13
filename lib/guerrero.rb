require 'defensor'

class Guerrero < Defensor
  def initialize(fuerza:, defensa:, vida:)
    @fuerza = fuerza
    @defensa = defensa
    @vida = vida
  end

  def atacar_a(otra_unidad)
    otra_unidad.recibir_daño(ataque)
  end

  def ataque
    @fuerza
  end
end
