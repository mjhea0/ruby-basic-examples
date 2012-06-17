#!/usr/bin/ruby -w

require 'net/https'
require 'net/http'

uri = URI.parse("https://www.yourDomain.gov/")

request = Net::HTTP.new(uri.host, uri.port)
request.use_ssl = true
request.verify_mode = OpenSSL::SSL::VERIFY_NONE
response = request.get("/")

response.body.size                             # => 6537
