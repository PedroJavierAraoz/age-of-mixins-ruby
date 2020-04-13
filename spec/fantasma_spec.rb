require 'factory_methods'

describe 'fantasmas' do
  it 'pueden atacar' do
    fantasma_atacante = un_fantasma
    guerrero_atacado = un_guerrero_con(defensa: 0, vida: 100)

    fantasma_atacante.atacar_a(guerrero_atacado)

    expect(guerrero_atacado.vida).to eq(80)
  end

  it 'no pueden ser atacados' do
    guerrero_atacante = un_guerrero_con(fuerza: 100)
    fantasma_atacado = un_fantasma

    expect { guerrero_atacante.atacar_a(fantasma_atacado) }.to raise_error(NoMethodError)
  end
end
