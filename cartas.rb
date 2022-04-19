class Carta
    attr_accessor :numero, :pinta
    def initialize(numero, pinta)
        @numero = numero
        @pinta = pinta
    end
end

def crear_baraja
    cartas = []
    num_carta = [1,2,3,4,5,6,7,8,9,10,11,12,13]
    pint_carta = ['C', 'D', 'E', 'T']
    comb_carta = num_carta.product(pint_carta)
    num = 1
    comb_carta.each do |comb|
        cartas.push Carta.new(num,comb)
        num += 1
    end
    return cartas
end