   # minix

module Walkable
    def walk 
        puts "#{self.class} is walking."
    end
end
module Talkable
    def talk 
        puts "#{self.class} is talking."
    end
end
class Person
    include Walkable
    include Talkable
end
class Robot
    include Walkable
end
p = Person.new
p.walk
p.talk
r = Robot.new
r.walk


   # namespacing

module Animals
    class Dog
        def speak
            puts "Woof!!"
        end
    end
end
d = Animals::Dog.new
d.speak