#!/usr/bin/ruby -w

puts x = 5/2     # result is 2
puts y = 5.0/2   # result is 2.5
puts z = 5/2.0   # result is 2.5

puts x = 5%2     # result is 1

puts x = 1.5%0.4   # result is 0.3

puts x**4          # This is the same thing as x*x*x*x
puts x**-1         # The same thing as 1/x
puts x**(1/3.0)    # The cube root of x
puts x**(1/4)      # Oops! Integer division means this is x**0, which is always 1
puts x**(1.0/4.0)  # This is the fourth-root of x

puts even = (x[0] == 0)  # A number is even if the least-significant bit is 0

puts 0.4 - 0.3 == 0.1    # Evaluates to false in most implementations
