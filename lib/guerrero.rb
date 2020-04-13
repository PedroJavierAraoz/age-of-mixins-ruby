class Guerrero
  attr_reader :vida
  attr_reader :defensa

  def initialize(fuerza:, defensa:, vida:, coeficiente_espada: nil)
    @fuerza = fuerza
    @defensa = defensa
    @vida = vida
    @coeficiente_espada = coeficiente_espada
  end

  def atacar_a(otra_unidad)
    otra_unidad.recibir_daño(ataque)
  end

  def ataque
    if tiene_una_espada?
      @fuerza * @coeficiente_espada
    else
      @fuerza
    end
  end

  def tiene_una_espada?
    !@coeficiente_espada.nil?
  end

  def recibir_daño(cantidad_de_daño)
    daño_final = cantidad_de_daño - @defensa
    @vida -= daño_final if daño_final > 0
  end
end
