#!/usr/bin/ruby -w

require 'uri'

puts URI.parse('https://www.example.com').scheme           # => "https"
puts URI.parse('http://www.example.com/').host             # => "www.example.com"
puts URI.parse('http://www.example.com:6060/').port        # => 6060
puts URI.parse('http://example.com/a/file.html').path      # => "/a/file.html"
