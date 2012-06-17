#!/usr/bin/ruby -w

require 'net/http'
home = Net::HTTP.new("www.ruby-lang.org", 80)

response, text = home.get("/en/index.html", nil)
puts text
