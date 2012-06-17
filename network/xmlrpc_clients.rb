#!/usr/bin/ruby -w

require "xmlrpc/client"

client = XMLRPC::Client.new2('http://www.ruby-lang.org/~nahi/xmlrpc/raa/')

p client.call('raa.getAllListings')
p client.call('raa.getInfoFromName', 'XML-RPC')
