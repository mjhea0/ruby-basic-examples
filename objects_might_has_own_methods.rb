#!/usr/bin/ruby -w

class MyClass
  def speak
    puts "Ruby!"
  end
end

first_object = MyClass.new
second_object = MyClass.new

def first_object.sing
  puts "Give My Regards to Broadway"
end

first_object.speak
second_object.speak
first_object.sing
second_object.sing
