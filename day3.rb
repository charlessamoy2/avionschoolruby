#Activity 1
$store = []

class User 
    def initialize(email,username,password)
        @email = email
        @username = username
        @password = password
    end

    def addToUserList
        $store << [@email,@username,@password]
        puts "Added user to list"
        print $store.to_s + "\n"
    end

    def welcome
        puts "Welcome #{@username}! You have logged in."
    end
end

charles = User.new("charlessamoy@gmail.com","charlessamoy","hellooo")
charles.addToUserList
charles.welcome