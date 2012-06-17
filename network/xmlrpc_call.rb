#!/usr/bin/ruby -w

require "xmlrpc/client"

client = XMLRPC::Client.new2('http://www.ruby-lang.org/~nahi/xmlrpc/raa/')

list = info = nil

t1 = Thread.new {
	list = client.call_async("raa.getAllListings")
}

t2 = Thread.new {
	ok, param = client.call2_asnyc("raa.getInfoFromName", "XML-RPC")
	info = param if ok
}

# wait for the threads to complete
# t1.join; t2.join
#
# p list, info
