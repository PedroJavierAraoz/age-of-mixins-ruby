class ImplAtacante
  attr_reader :ataque

  def initialize(ataque)
    @ataque = ataque
  end

  def atacar_a(defensor)
    defensor.recibir_daño(ataque)
  end
end
