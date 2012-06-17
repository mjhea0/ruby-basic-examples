#!/usr/bin/ruby -w

require 'date'

date = Date.new( 2006, 11, 8 )

puts "downto..."
date.downto( date - 20 ) { |date| puts date }
puts date.to_s

puts "upto..."
date.upto( date + 20 ) { |date| puts date }
puts date.to_s
