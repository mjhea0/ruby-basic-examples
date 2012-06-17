#!/usr/bin/ruby -w

require 'xmlrpc/client'

server = XMLRPC::Client.new2("http://xmlrpc-c.sourceforge.net/api/sample.php")
puts server.call("sample.sumAndDifference", 5, 3).inspect
