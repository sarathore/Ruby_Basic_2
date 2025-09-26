# Using block with each
[1,2,3,4,5].each do |num|
    print "#{num} "
end

#  Passing block to method
def greet 
    puts "Hello!"
    yield if block_given?  # yield execute the block.
    puts "Good Bye!"
end
greet {puts "Nice to meet you."}

