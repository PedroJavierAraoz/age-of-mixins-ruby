module Atacante
  def atacar_a(defensor)
    defensor.recibir_daño(ataque)
  end

  def ataque
    raise 'subclass responsibility'
  end
end