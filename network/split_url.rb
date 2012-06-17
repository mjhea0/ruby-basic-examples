#!/usr/bin/ruby -w

require 'uri'

puts URI.split('http://example.com/a/file.html')
# => ["http", nil, "example.com", nil, nil, "/a/file.html", nil, nil, nil]
