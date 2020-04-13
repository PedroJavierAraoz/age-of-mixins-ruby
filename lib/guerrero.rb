require 'impl_defensor'
require 'impl_atacante'

class Guerrero
  def initialize(defensa:, vida:, fuerza:)
    @impl_defensor = ImplDefensor.new(defensa: defensa, vida: vida)
    @impl_atacante = ImplAtacante.new(fuerza)
  end

  def atacar_a(defensor)
    @impl_atacante.atacar_a(defensor)
  end

  def ataque
    @impl_atacante.ataque
  end

  def vida
    @impl_defensor.vida
  end

  def defensa
    @impl_defensor.defensa
  end

  def recibir_daño(cantidad_de_daño)
    @impl_defensor.recibir_daño(cantidad_de_daño)
  end
end
