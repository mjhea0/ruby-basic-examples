#!/usr/bin/ruby -w

HOURS_PER_DAY = 24
# This does nothing since Fixnums are already immutable.
HOURS_PER_DAY.freeze 

HOURS_PER_DAY = 26
# Warning: already initialized constant HOURS_PER_DAY
# => 26
puts HOURS_PER_DAY                            
