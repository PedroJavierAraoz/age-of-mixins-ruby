class Fantasma
  def atacar_a(otra_unidad)
    otra_unidad.recibir_daño(ataque)
  end

  def ataque
    20
  end
end
