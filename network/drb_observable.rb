#!/usr/bin/ruby -w

require "drb"
require "drb_observer"

class Ticker 
	include DRbObservable

	def initialize()
		Thread.new { run }
	end

	def run
		loop do
			price = 10
			print "Current price: #{price}\n"
			notify_observers(Time.now, price)
			sleep 1
		end
	end
end

ticker = Ticker.new()

DRb.start_service('druby://localhost:9001', ticker)
puts 'Press [return] to exit.'
gets
