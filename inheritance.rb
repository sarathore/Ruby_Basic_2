class Vehicle 
    def start 
        puts "Staring the vehicle..."
    end
    def stop
        puts "Stop the vehicle..."
    end
end

class Car < Vehicle
    def horn
        puts "Beep! Beep!"
    end
end

class ElectricCar < Car
    def charge 
        puts "E-Vehicle on charging.."
    end
end

v = Vehicle.new
v.start
v.stop

c = Car.new
c.start
c.horn

e = ElectricCar.new
e.stop
e.charge


