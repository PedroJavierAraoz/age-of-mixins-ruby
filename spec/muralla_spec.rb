require 'factory_methods'

describe 'murallas' do
  it 'sufre daño cuando es atacada' do
    guerrero_atacante = un_guerrero_con(fuerza: 20)
    muralla_atacada = una_muralla_con(defensa: 0, vida: 100)

    guerrero_atacante.atacar_a(muralla_atacada)

    expect(muralla_atacada.vida).to eq(80)
  end

  it 'absorben daño según su defensa' do
    guerrero_atacante = un_guerrero_con(fuerza: 20)
    muralla_atacada = una_muralla_con(defensa: 10, vida: 100)

    guerrero_atacante.atacar_a(muralla_atacada)

    expect(muralla_atacada.vida).to eq(90)
  end

  it 'no pueden atacar' do
    muralla_atacante = una_muralla_con(vida: 100)
    guerrero_atacado = un_guerrero_con(vida: 100)

    expect { muralla_atacante.atacar_a(guerrero_atacado) }.to raise_error(NoMethodError)
  end
end
