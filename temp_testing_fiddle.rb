require 'fiddle'
str = 'water'.freeze
puts str.frozen? 
mem_addr = str.object_id * 2
Fiddle::Pointer.new(mem_addr)[1] &= ~8
str.frozen?