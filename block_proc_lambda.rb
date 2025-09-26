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



# create proc 
my_proc = Proc.new {|name| puts "Hello #{name}"}
my_proc.call("Sanskar")

#Passing proc to method
def execute_proc(proc)
    proc.call
end
say_hi = Proc.new{puts "Hi Team!"}
execute_proc(say_hi)


#create lambda 
my_lambda = -> (x,y) {puts "Sum: #{x+y}"}
my_lambda.call(10,15)

# call lambda with different arguments
proc_example = Proc.new {|x, y| puts "Proc: #{x} #{y}"}
lambda_example = -> (x,y) {puts "Lambda: #{x} #{y}"}

proc_example.call(1)
lambda_example.call(1)

# Return Behaviour
def test_proc
    p = Proc.new {return "From Proc"}
    p.call
    return "After Proc"
end

def test_lambda
    l = -> {return "From Lambda"}
    l.call
    return "After Lambda"
end

puts test_proc
puts test_lambda