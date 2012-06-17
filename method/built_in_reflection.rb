#!/usr/bin/ruby -w

my_string = "times"
3.send(my_string) { print "Hello "}
