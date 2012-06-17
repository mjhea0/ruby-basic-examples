#!/usr/bin/ruby -w

require 'net/https'                             # => true
require 'net/http'

uri = URI.parse("https://www.yourDomain.gov/")

request = Net::HTTP.new(uri.host, uri.port)
response = request.get("/")
