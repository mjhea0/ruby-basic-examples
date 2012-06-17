#!/usr/bin/ruby -w

def putter(first_word, *others)
	puts first_word + " " + others.join(" ")
end

putter "Hello", "from", "Ruby."
