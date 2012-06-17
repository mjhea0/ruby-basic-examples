#!/usr/bin/ruby -w

require 'socket'

socket = TCPSocket.new("www.ruby-lang.org", 80)
socket.puts "GET /en/index.html"
while (line = socket.gets)
	puts line
end

socket.close
