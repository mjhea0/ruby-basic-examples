#!/usr/bin/ruby -w

module Mathematics
  class Adder
    def Adder.add(operand_one, operand_two)
      return operand_one + operand_two
    end
  end
end

puts "2 + 3 = " + Mathematics::Adder.add(2, 3).to_s
