#!/usr/bin/ruby -w

require 'uri'

URI::HTTP.build(:host => 'example.com', :path => '/file.html', :fragment => 'section_3').to_s
# => "http://example.com/a/file.html#section_3"
