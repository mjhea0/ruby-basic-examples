#!/usr/bin/ruby -w

require 'date'

puts y2k = Time.gm(2000, 1, 1)       # => Sat Jan 01 00:00:00 UTC 2000
puts y2k + 1                         # => Sat Jan 01 00:00:01 UTC 2000
puts y2k - 1                         # => Fri Dec 31 23:59:59 UTC 1999
puts y2k + (60 * 60 * 24 * 365)      # => Sun Dec 31 00:00:00 UTC 2000
