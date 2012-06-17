#!/usr/bin/ruby -w

hello = lambda do
	puts('Hello')
	puts('I am inside a proc')
end

hello.call
# we will get
# # Hello
# # I am inside a proc
