#!/usr/bin/ruby -w

require 'net/telnet'

server = Net::Telnet::new('Host' => 'http://www.rubyinside.com/',
													'Port' => 80,
													'Telnetmode' => false)

server.cmd("GET / HTTP/1.1\nHost: http://www.rubyinside.com/\n") do |response|
	puts response
end
