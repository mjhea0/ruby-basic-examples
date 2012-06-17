#!/usr/bin/ruby -w

def gimme
	if block_given?
		yield
	else
		puts "Oops. No block."
	end

	puts "You're welcome." # executes right after yield
end

gimme { print "Thank you. " } # => Thank you. You're welcome.
