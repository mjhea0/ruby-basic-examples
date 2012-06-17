#!/usr/bin/ruby -w

array = ["there ", "AAA"]

def putter(first_word, second_word, third_word)
	puts first_word + " " + second_word + " " + third_word
end

putter "Hello ", *array
