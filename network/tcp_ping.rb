#!/usr/bin/ruby -w

require 'rubygems'
require 'net/ping'

if Net::PingTCP.new('http://www.google.com/', 80).ping
	puts "Pong!"
else
	puts "N"
end
