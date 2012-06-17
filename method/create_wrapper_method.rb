#!/usr/bin/ruby -w

class MyClass
	attr_accessor :name, :unit_price

	def initialize(name, unit_price)
		@name, @unit_price = name, unit_price
	end

	def price(quantity=1)
		@unit_price * quantity
	end

	alias :cost :price

	alias :unit_cost :unit_price
	alias :unit_cost= :unit_price=

	def cost(*args)
		price(*args)
	end
end

bacon = MyClass.new("Bacon", 3.95)
bacon.cost(100)                                    # => 399.0
