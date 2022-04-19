class CuentaBancaria
    attr_accessor :cuenta, :saldo
    def initialize(banco, cuenta, saldo = 0)
        @banco = banco
        @cuenta = cuenta
        @saldo = saldo
    end

    def transferir(monto, cuenta_receptora)
        @saldo -= monto 
        cuenta_receptora.saldo += monto
    end
end

class Usuario
    attr_accessor :nombre, :cuentas
    def initialize(nombre, cuentas)
        @nombre = nombre
        @cuentas = cuentas
    end

    def saldo_total
        @cuentas.map{|cuenta| cuenta.saldo}.sum
    end
end

cuenta_1 = CuentaBancaria.new('banco1', '12345678', 5000)
cuenta_2 = CuentaBancaria.new('banco2', '23456789', 5000)
cuenta_3 = CuentaBancaria.new('banco3', '34567890', 5000)
cliente_1 = Usuario.new('Alejandra', [cuenta_1])
cliente_2 = Usuario.new('Ignacio', [cuenta_2, cuenta_3])

#puts cuenta_1.class
#puts cuenta_2.class
#puts cuenta_3.class

puts "El saldo inicial de #{cliente_1.nombre} es #{cuenta_1.saldo}."
puts "El saldo inicial de #{cliente_2.nombre} en su cuenta #{cuenta_2.cuenta} es #{cuenta_2.saldo}."
puts "El saldo inicial de #{cliente_2.nombre} en su cuenta #{cuenta_3.cuenta} es #{cuenta_3.saldo}."

cuenta_1.transferir(5000, cuenta_2)
puts "Se realizó una transferencia de la cuenta de #{cliente_1.nombre} a una de las cuentas de #{cliente_2.nombre}. El nuevo saldo de #{cliente_1.nombre} es #{cuenta_1.saldo} y el nuevo saldo de  #{cliente_2.nombre} en una de sus cuentas es #{cuenta_2.saldo}"

puts "A la clienta #{cliente_1.nombre} le queda su cuenta en #{cliente_1.saldo_total}"
puts "Al cliente #{cliente_2.nombre} le quedan el total de sus cuentas con el siguiente saldo: #{cliente_2.saldo_total}."





