require 'unidad'
require 'guerrero'
require 'espadachin'

def un_guerrero_con(fuerza: 0, defensa: 0, vida: 100)
  Guerrero.new(fuerza: fuerza, defensa: defensa, vida: vida)
end

def un_espadachin_con(fuerza: 0, defensa: 0, vida: 100, coeficiente_espada: 1)
  Espadachin.new(fuerza: fuerza, defensa: defensa, vida: vida, coeficiente_espada: coeficiente_espada)
end

def una_muralla_con(defensa: 0, vida: 100)
  Unidad.new(defensa: defensa, vida: vida)
end
