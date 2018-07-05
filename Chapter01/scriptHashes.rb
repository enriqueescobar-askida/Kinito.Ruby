h	= {                         # A hash that maps number names to digits
  	:one => 1,                  # The "arrows" show mappings: key=>value
  	:two => 2                   # The colons indicate Symbol literals
	}

puts	"h=#{h}"
  
puts	h[:one]                     # => 1.  Access a value by key

h[:three] = 3                 # Add a new key/value pair to the hash
puts	"h=#{h[:three]}"

h.each do |key,value|         # Iterate through the key/value pairs
  print "#{value}:#{key}; "   # Note variables substituted into string 
end

puts
