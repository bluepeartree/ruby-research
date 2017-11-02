# length gives you the length of a given argument #
# accepts various data types but returns only integers #

puts "Name".length #will output 4

#strip removes whitespace surrounding a text in a string#
#returns a new string #

strip_example = "          o rly              "
puts strip_example
puts strip_example.strip

#split splits a string into an array#
#if a sting parameter is provided, the string is removed from the result array"

split_example = "The quick brown fox jumps over the lazy dog. The quick brown fox jumps over the lazy dog. The quick brown fox jumps over the lazy dog.The quick brown fox jumps over the lazy dog. The quick brown fox jumps over the lazy dog."

puts split_example.split
puts split_example.split(//)
puts split_example.split("the")

#start_with? returns a boolean depending on whether
#the string starts with the prefix provided.

puts "hello".start_with?("hell") #output true
puts "hello".start_with?("hi") #output false

#first returns the first element OR the the first N elements
#of an array. Thus the return may be either an object or an array or nil

first = [1,2,3,4,5]

puts first.first #output integer 1
puts first.first(3) #output array [1,2,3]

#delete_at removes an item from an array depending on the position
#specified by the parameter.

first.delete_at(3) #removes 4 from the array above bc it is in position 3
puts first

#delete removes a specifict item from an array if it matches the parameter specified

first.delete(3) #removes 3 from the array above
puts first

#pop removes the last element OR the last n elements from an array
# and returns it. Thus the return can be an object OR array OR nil

puts first.pop #returns 5
puts first.pop(5) #returns [1, 2] bc that is what is left in the array
puts first.pop #returns nil

# to_a converts a hash to a nested array of [k,v] arrays

hello = {:a=>1,:b=>2, :c=>3, :d=>4, :e=>5}
hi=hello.to_a
p hi

# has_key? checks a hash for the presence of a given key
# and returns a boolean true or false

hello_again = {:a=>1,:b=>2, :c=>3, :d=>4, :e=>5}

puts hello_again.has_key?(:a) #returns true
puts hello_again.has_key?(:x) #returns false


# has_value? checks a hash for the presence of a given value
# and returns a boolean true or false

puts hello_again.has_value?(1) #returns true
puts hello_again.has_key?(100) #returns false

#time.now creates a new time object with the present date/time
# gives you date + time + difference from GMT/UTC

puts Time.now # gives you date + time + difference from GMT/UTC

#exist? returns a boolean true if specified file exists
#else false

puts File.exist?("test.txt") #true
puts File.exist?("word.doc") #false
puts File.exist?("/home/bluepeartree/Desktop/bitmaker/projects/ruby_fundamentals2/exercise.rb")
puts File.exist?("../ruby_fundamentals2/exercise.rb")

#extname returns the extension name of a specified file or path
# as a string

puts File.extname("../ruby_fundamentals2/exercise.rb") //outputs "rb"
