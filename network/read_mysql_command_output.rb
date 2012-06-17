#!/usr/bin/ruby -w

require 'socket' 

client = TCPSocket.open('127.0.0.1', 'finger') 
client.send("mysql\n", 0) # 0 means standard packet 
puts client.readlines 
client.close 
