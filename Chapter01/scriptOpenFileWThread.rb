File.open("Listings.txt") do |f| # Open named file and pass stream to block
  line = f.readline          # Use the stream to read from the file
  puts	line
end                          # Stream automatically closed at block end



t = Thread.new do       # Run this block in a new thread
  File.read("Listings.txt") # Read a file in the background
end   

puts	t
