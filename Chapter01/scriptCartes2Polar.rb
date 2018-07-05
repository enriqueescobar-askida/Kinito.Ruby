#!/usr/bin/ruby



# Define a method to convert Cartesian (x,y) coordinates to Polar
def polar(x,y)
  theta = Math.atan2(y,x)   # Compute the angle
  r = Math.hypot(x,y)       # Compute the distance
  [r, theta]                # The last expression is the return value
end

# Here's how we use this method with parallel assignment
distance, angle = polar(2,2)

puts distance

puts angle
