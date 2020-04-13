require 'guerrero'

describe 'guerreros' do
  it 'cuando un guerrero ataca a otro que no tiene defensa, el daño es igual a la fuerza del atacante' do
    guerrero_atacante = un_guerrero_con(fuerza: 20)
    guerrero_atacado = un_guerrero_con(defensa: 0, vida: 100)

    guerrero_atacante.atacar_a(guerrero_atacado)

    expect(guerrero_atacado.vida).to eq(80)
  end

  it 'cuando un guerrero ataca a otro que tiene defensa, el daño se reduce de acuerdo a la defensa del atacado' do
    guerrero_atacante = un_guerrero_con(fuerza: 20)
    guerrero_atacado = un_guerrero_con(defensa: 10, vida: 100)

    guerrero_atacante.atacar_a(guerrero_atacado)

    expect(guerrero_atacado.vida).to eq(90)
  end

  it 'si la defensa del atacado es mayor a la fuerza del atacante, el ataque no causa daño' do
    guerrero_atacante = un_guerrero_con(fuerza: 20)
    guerrero_atacado = un_guerrero_con(defensa: 100, vida: 100)

    guerrero_atacante.atacar_a(guerrero_atacado)

    expect(guerrero_atacado.vida).to eq(100)
  end

  def un_guerrero_con(fuerza: 0, defensa: 0, vida: 100)
    Guerrero.new(fuerza: fuerza, defensa: defensa, vida: vida)
  end
end