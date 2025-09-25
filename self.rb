class Car   # creating class
    @@count = 0  # class variable
   
    def initialize(name)   # instance method
        @name = name  # instance variable
        @@count += 1
    end

    def self.total_cars  # class method 
        puts "Total cars created: #{@@count}"
    end


    def show_name 
        puts "This car name is #{@name}"
        puts "self refers to: #{self}"       # self refers to current object.
    end
    
    def show_total
        puts "Calling class method from instance method."
        self.class.total_cars
    end
end

c1 = Car.new("Toyota")
c2 = Car.new("Honda")

c1.show_name
c2.show_total

Car.total_cars