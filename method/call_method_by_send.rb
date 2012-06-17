#!/usr/bin/ruby -w

"this is a test".send(:length) # 13 
"this is a sub".send("sub", /iles/, '.') 
