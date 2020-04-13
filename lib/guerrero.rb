class Guerrero
  attr_reader :vida
  attr_reader :defensa

  def initialize(fuerza:, defensa:, vida:, arma: Puños.new)
    @fuerza = fuerza
    @defensa = defensa
    @vida = vida
    @arma = arma
  end

  def atacar_a(otra_unidad)
    otra_unidad.recibir_daño(ataque)
  end

  def ataque
    @fuerza * @arma.coeficiente_ataque
  end

  def recibir_daño(cantidad_de_daño)
    daño_final = cantidad_de_daño - @defensa
    @vida -= daño_final if daño_final > 0
  end
end

class Puños
  def coeficiente_ataque
    1
  end
end

class Espada
  attr_reader :coeficiente_ataque

  def initialize(coeficiente_ataque)
    @coeficiente_ataque = coeficiente_ataque
  end
end
