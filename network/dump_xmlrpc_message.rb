#!/usr/bin/ruby -w

require "xmlrpc/marshal"

str = XMLRPC::Marshal.dump( { 'Ruby' => 'is cool' } )
puts str
p XMLRPC::Marshal.load( str )
