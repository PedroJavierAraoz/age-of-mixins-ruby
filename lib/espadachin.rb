require 'guerrero'

class Espadachin < Guerrero
  def initialize(fuerza:, coeficiente_espada:, **args)
    super(fuerza: fuerza, **args)
    @impl_atacante = ImplAtacante.new(fuerza * coeficiente_espada)
  end
end
