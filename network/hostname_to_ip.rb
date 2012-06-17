#!/usr/bin/ruby -w

require 'resolv'

puts Resolv.getaddress("http://www.google.com/")
