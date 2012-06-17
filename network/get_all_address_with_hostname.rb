#!/usr/bin/ruby -w

require 'resolv'

Resolv.each_address("http://www.google.com/") do |ip|
	puts ip
end
