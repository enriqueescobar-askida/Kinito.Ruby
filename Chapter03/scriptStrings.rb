#!/ust/bin/ruby -w

puts 'This is a simple Ruby string literal'

puts 'Won\'t you read O\'Reilly\'s book?'

puts 'This string literal ends with a single backslash: \\'
puts 'This is a backslash-quote: \\\''
puts 'Two backslashes: \\\\'

puts 'a\b' == 'a\\b'

puts 'This is a long string literal \
that includes a backslash and a newline'

message = 
'These three literals are '\
'concatenated into one by the interpreter. '\
'The resulting string contains no newlines.'
puts message

puts "\t\"This quote begins with a tab and ends with a newline\"\n"
puts "\\"  # A single backslash

puts "360 degrees=#{2*Math::PI} radians" # "360 degrees=6.28318530717959 radians"

puts "This string literal
has two lines \
but is written on three"

puts "This string has three lines.\r\n" \
"It is written as three adjacent literals\r\n" \
"separated by escaped newlines\r\n"

puts "\u00D7"       # => "&#xD7;": leading zeros cannot be dropped
puts "\u20ac"       # => "&#x20AC;": lowercase letters are okay

puts "\u{A5}"      # => "&#xA5;": same as "\u00A5"
puts "\u{3C0}"     # Greek lowercase pi: same as "\u03C0"
puts "\u{10ffff}"  # The largest Unicode codepoint

money = "\u{20AC A3 A5}"  # => "&#x20AC;&#xA3;&#xA5;"
puts money
money = "\u{20AC 20 A3 20 A5}"  # => "&#x20AC; &#xA3; &#xA5;"
puts money

puts %q(Don't worry about escaping ' characters!)
puts %Q|"How are you?", he said|
puts %-This string literal ends with a newline\n-  # Q omitted in this one

puts %q_This string literal contains \_underscores\__
puts %Q!Just use a _different_ delimiter\!!

document = <<HERE        # This is how we begin a here document
This is a string literal.
It has two lines and abruptly ends...
HERE

puts document

greeting = <<HERE + <<THERE + "World"
Hello
HERE
There
THERE

puts greeting

puts `ls`

puts %x[ls]

if windows
  listcmd = 'dir'
else
  listcmd = 'ls'
end
listing = `#{listcmd}`
puts listing
listing = Kernel.`(listcmd)
puts listing
10.times { puts "test".object_id }

puts ?A   # Character literal for the ASCII character A
puts ?"   # Character literal for the double-quote character
puts ??   # Character literal for the question mark character

puts ?\t      # Character literal for the TAB character
puts ?\C-x    # Character literal for Ctrl-X
puts ?\111    # Literal for character whose encoding is 0111 (octal)

greeting = "Hello"
greeting << " " << "World"
puts greeting   # Outputs "Hello World"

document = <<-"# # #"    # This is the only place we can put a comment
<html><head><title>#{title}</title></head>
<body>
<h1>#{title}</h1>
#{body}
</body>
</html>
               # # #

puts document

puts s = 'hello';   # Ruby 1.8
s[0]           # 104: the ASCII character code for the first character 'h'
s[s.length-1]  # 111: the character code of the last character 'o'
s[-1]          # 111: another way of accessing the last character
s[-2]          # 108: the second-to-last character
s[-s.length]   # 104: another way of accessing the first character
s[s.length]    # nil: there is no character at that index

puts s[0] = ?H        # Replace first character with a capital H
s[-1] = ?O       # Replace last character with a capital O
s[s.length] = ?! # ERROR! Can't assign beyond the end of the string

s = "hello"
s[0,2]          # "he"
s[-1,1]         # "o": returns a string, not the character code ?o
s[0,0]          # "": a zero-length substring is always empty
s[0,10]         # "hello": returns all the characters that are available
puts s
s[s.length,1]   # "": there is an empty string immediately beyond the end
s[s.length+1,1] # nil: it is an error to read past that
s[0,-1]         # nil: negative lengths don't make any sense
---------------------------
s = "hello"
s[0,1] = "H"              # Replace first letter with a capital letter
s[s.length,0] = " world"  # Append by assigning beyond the end of the string
s[5,0] = ","              # Insert a comma, without deleting anything
puts s
s[5,6] = ""               # Delete with no insertion; s == "Hellod"
---------------------------
s = "hello"
s[2..3]           # "ll": characters 2 and 3
s[-3..-1]         # "llo": negative indexes work, too
s[0..0]           # "h": this Range includes one character index
s[0...0]          # "": this Range is empty
s[2..1]           # "": this Range is also empty
s[7..10]          # nil: this Range is outside the string bounds
s[-2..-1] = "p!"     # Replacement: s becomes "help!"
s[0...0] = "Please " # Insertion: s becomes "Please help!"
puts s
s[6..10] = ""        # Deletion: s becomes "Please!"

