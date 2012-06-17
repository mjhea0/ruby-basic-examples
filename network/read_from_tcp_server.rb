#!/usr/bin/ruby -w

require 'socket'
host = "localhost"
port = 12345

TCPSocket.open(host, port) do |s| # Use block form of open
	while line = s.gets
		puts line.chop
	end
end                               # Socket automatically closed
