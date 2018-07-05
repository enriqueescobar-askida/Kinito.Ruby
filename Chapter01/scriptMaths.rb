puts	1+2
puts	1*2
puts	1 + 2 == 3 # => true: == tests equality
puts	2 ** 1024 # 2 to the power 1024: Ruby has arbitrary size ints
puts	"Ruby" + " rocks!"  # => "Ruby rocks!": string concatenation
puts	"Ruby! " * 3 # => "Ruby! Ruby! Ruby! ": string repetition
puts	"%d %s" % [3, "rubies"] # => "3 Rubies": Python-style, printf formatting

x	= 10
y	= 13

max 	= x > y ? x : y      # The conditional operator
puts 	"max=#{max}"

puts	x += 1          # Increment x: note Ruby does not have ++.
puts	y -= 1          # Decrement y: no -- operator, either.

x, y	= 1, 2     # Same as x = 1; y = 2

a	= 12
b	= 21
puts    "a=#{a} b=#{b}"

a, b	= b, a     # Swap the value of two variables
puts	"a=#{a} b=#{b}"

x,y,z = [1,2,3] # Array elements automatically assigned to variables
