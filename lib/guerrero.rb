require 'unidad'

class Guerrero < Unidad
  def initialize(fuerza:, **args)
    super(**args)
    @fuerza = fuerza
  end

  def atacar_a(otra_unidad)
    otra_unidad.recibir_daño(ataque)
  end

  def ataque
    @fuerza
  end
end
