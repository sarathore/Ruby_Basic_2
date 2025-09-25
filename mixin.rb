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

# combine both mixin and namespacing 

module Behaviour
    module Flyable
        def fly 
            puts "#{self.class} is flying."
        end
    end
end

module Animal
    class Bird 
        include Behaviour::Flyable
    end
end

parrot = Animal::Bird.new
parrot.fly
    