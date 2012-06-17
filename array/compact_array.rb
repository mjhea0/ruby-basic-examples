#!/usr/bin/ruby -w

a = [1, 2, nil, 3, 3, nil, nil, nil, 5]
p a.compact                                  
# => [1, 2, 3, 3, 5]

p a.delete(3)
#3

p a
#[1, 2, nil, nil, nil, nil, 5]
