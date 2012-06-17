#!/usr/bin/ruby -w

require 'net/http'

response = Net::HTTP.get_response('www.oreilly.com', '/about/')
response.code                                             # => "200"
response.body.size                                        # => 21835
response['Content-type']

puts response.body[0,200]
