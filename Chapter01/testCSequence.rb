#!/usr/bin/ruby

require 'CSequence'

cs = CSequence.new(1, 10, 2)  # From 1 to 10 by 2's

cs.each {|x| print x }       # Prints "13579"
print cs[cs.size-1]           # Prints 9
puts
t = (cs+1)*2                 # From 4 to 22 by 4's
puts t
