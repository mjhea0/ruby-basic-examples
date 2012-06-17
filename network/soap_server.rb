#!/usr/bin/ruby -w

require 'soap/rpc/standaloneServer'

class MyServer < SOAP::RPC::StandaloneServer
	def initialize(*args)
		super
		add_method(self, 'sayhelloto', 'username')
	end

	def sayhelloto(username)
		"Hello, #{username}."
	end
end

server = MyServer.new('CoolServer','urn:mySoapServer','localhost',8888)
trap('INT') { server.shutdown }
server.start
