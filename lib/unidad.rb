class Unidad
  attr_reader :vida
  attr_reader :defensa

  def initialize(**args)
    inicializar_defensor(**args) if defensor?
  end

  def recibir_daño(cantidad_de_daño)
    super unless defensor?

    daño_final = cantidad_de_daño - @defensa
    @vida -= daño_final if daño_final > 0
  end

  def atacar_a(defensor)
    super unless atacante?

    defensor.recibir_daño(ataque)
  end

  def ataque
    super unless atacante?

    raise 'subclass responsibility'
  end

  private

  def inicializar_defensor(defensa:, vida:)
    @defensa = defensa
    @vida = vida
  end

  def atacante?
    false
  end

  def defensor?
    false
  end
end