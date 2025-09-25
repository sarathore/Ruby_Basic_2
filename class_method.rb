class Student
    @@count = 0  # class variable

    def initialize(name)
        @name = name   # instance variable
        @@count += 1
    end

    def self.total_students   # class method
        puts "Total Students Created: #{@@count}"
    end
end
s1 = Student.new("Alice")   # create objects
s2 = Student.new("Bob")
s3 = Student.new("Mike")

Student.total_students  # call class method

