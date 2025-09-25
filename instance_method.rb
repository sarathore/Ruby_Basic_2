class Dog
    def initialize(name, breed)  # instance method
        @name = name   # instance variable
        @breed = breed
    end
    def bark    # instance method
        puts "This #{@name} the #{@breed} dog bark as Woof!!"
    end
    def describe   # instance method
        puts "The dog name is #{@name} and this dog belongs to #{@breed}"
    end
end

  # create objects
d1 = Dog.new("Buddy", "Golden Retriever")
d2 = Dog.new("Max", "Labrador")

# call instance method

d1.bark
d1.describe

d2.bark
d2.describe