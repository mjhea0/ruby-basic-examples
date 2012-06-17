#!/usr/bin/ruby -w

require 'uri'
uri = URI::parse('mailto:l@a.com?Subject=Hello&body=Hi!')
uri.dump
puts uri.to_mailtext
