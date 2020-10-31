module Bake
    def baking
        puts "Baking #{@name}"
    end
end

class Confection
    include Bake

    def initialize(name)
        @name = name
    end

    def prepare
        puts "Baking at 350 degrees for 25 minutes"
    end
end

class Cupcake < Confection
    def prepare
        puts "Baking at 350 degrees for 25 minutes"
        puts "Applying frosting "
    end
end

class BananaCake < Confection
end

cupcake = Cupcake.new("Red Velvet Cupcake")
cupcake.baking
cupcake.prepare

bananaCake = BananaCake.new("Banana Cake")
bananaCake.baking
bananaCake.prepare