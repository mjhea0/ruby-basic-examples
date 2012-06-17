#!/usr/bin/ruby -w

require 'socket'                # Sockets are in standard library

host, port = ARGV               # Host and port from command line

s = TCPSocket.open(host, port)  # Open a socket to host and port

while line = s.gets             # Read lines from the socket
	puts line.chop                # And print with platform line terminator
end

s.close                         # Close the socket when done
