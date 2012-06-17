#!/usr/bin/ruby -w

require "xmlrpc/server"

class Num
	INTERFACE = XMLRPC::interface("num") {
		meth 'int add(int, int)', 'Add two numbers', 'add'
		meth 'int div(int, int)', 'Divide two numbers'
	}

	def add(a, b) a + b end
	def div(a, b) a / b end
end

server = XMLRPC::Server.new(8080, "0.0.0.0")
server.add_handler(Num::INTERFACE, Num.new)
server.serve
