class User
    def try_this
        puts "publicmethod"
    end

    private
    def private_method
        puts "private method"
    end
end

charles = User.new
charles.try_this
charles.private_method