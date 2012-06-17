#!/usr/bin/ruby -w

require 'net/https'
require 'net/http'

uri = URI.parse("https://www.yourDomain.gov/")

request = Net::HTTP.new(uri.host, uri.port)
request.use_ssl = true
request.ca_path = "/etc/ssl/certs/"
request.verify_mode = OpenSSL::SSL::VERIFY_PEER
response = request.get("/")
