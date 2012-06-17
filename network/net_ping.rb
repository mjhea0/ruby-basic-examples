#!/usr/bin/ruby -w

require 'rubygems'
require 'net/ping'

if Net::PingExternal.new('http://www.google.com/').ping
	puts "Pong!"
else
	puts "No response"
end
