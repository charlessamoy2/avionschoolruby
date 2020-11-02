class Transaction
    def initialize(name,price,units)
        @name = name
        @price = price
        @units = units
    end 

    def total
        puts "The total for #{@name} is: #{sum}"
    end
    
    private
    def sum
        return @price*@units
    end
end

shopee = Transaction.new("Pochi",5,100)
shopee.total