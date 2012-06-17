#!/usr/bin/ruby -w

alias old_backquote ` 

def `(cmd) 
	result = old_backquote(cmd) 
	if $?!= 0 
		fail "Command #{cmd} failed: #$?" 
	end 
	result 
end 

print `date` 
print `data` 
