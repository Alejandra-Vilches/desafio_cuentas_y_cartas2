require_relative "cartas"
class Baraja
    attr_accessor :cartas
    def initialize(cartas)
        @cartas = cartas
    end
end

    #
    def barajar(naipes)
        new_baraja = naipes.shuffle
        return new_baraja
    end

    def sacar(naipes)
        naipe_1 = naipes.shift
        return naipe_1.pinta
    end

    def repartir_mano(naipes, cantidad)
        nueva_mano = []
        cantidad.times do |i|
            nueva_mano.push naipes.sample
        end
        return nueva_mano
    end 

    baraja = crear_baraja()
    puts " "
    puts "Baraja en orden"
    puts " "
    baraja.map do |carta|
        print carta.numero
        print carta.pinta
        puts
    end
  
    naipes_barajados = barajar(baraja)
    puts " "
    puts "Baraja desordenada"
    puts " "
    naipes_barajados.map do |carta|
        print carta.numero
        print carta.pinta
        puts
    end

    primera_carta = sacar(naipes_barajados)
    puts " "
    puts "Primera carta del mazo barajado"
    print primera_carta
    puts " "

    num_cartas = 5
    mano = repartir_mano(naipes_barajados,num_cartas)
    puts " "
    puts "Mano de #{num_cartas} cartas"
    puts " "
    mano.map do |carta|
        print carta.numero
        print carta.pinta
        puts " "

    end
   
    puts " "
    puts "Fin"


