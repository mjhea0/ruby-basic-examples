#!/usr/bin/ruby -w

name = 'John'

proc = Proc.new do
	name = 'Mary'
end

proc.call
puts(name)
