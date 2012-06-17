#!/usr/bin/ruby -w

# Creating a mixin using a module includes the code in a module inside a class and 
# gives you a way of inheriting from multiple modules.

module Adder
	def add(operand_one, operand_two)
		return operand_one + operand_two
	end
end

module Subtracter
	def subtract(operand_one, operand_two)
		return operand_one - operand_two
	end
end

class Calculator
	include Adder
	include Subtracter
end

calculator = Calculator.new
puts "2 + 3 = " + calculator.add(2, 3).to_s
