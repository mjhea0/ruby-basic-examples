#!/usr/bin/ruby -w

umeth = String.instance_method(:length)

m1 = umeth.bind("cat")
m1.call                         # 3

m2 = umeth.bind("caterpillar")
m2.call                         # 11
