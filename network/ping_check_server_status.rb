#!/usr/bin/ruby -w

require 'ping'

puts "Pong!" if Ping.pingecho('localhost', 5)
