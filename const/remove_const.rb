#!/usr/bin/ruby -w

module Math
 remove_const(:PI)
  PI = 3
end

puts Math::PI 
