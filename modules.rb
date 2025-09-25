module GFG
    def portal
        puts "Wel-come to GFG portal!"
    end
    def tutorial
        puts "Ruby - Tutorial"
    end
    def topic
        puts "What is Modules?"
    end
end

class GeekforGreeks
    include GFG

    def add
        x =10 + 20
        p x
    end
end

g = GeekforGreeks.new

g.portal
g.tutorial
g.topic

g.add
