require 'unidad'

class SoloAtacante < Unidad
  undef vida
  undef defensa
  undef recibir_daño

  def initialize; end
end