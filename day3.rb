#Activity 1

#Global Storage
$store = []

#User Class
class User
    #initialize with email, username, and password
    def initialize(email,username,password)
        @email = email
        @username = username
        @password = password
    end

    #add to global storage
    def addToUserList
        $store << [@email,@username,@password]
        puts "Added user to list"
        print $store.to_s + "\n"
    end

    #welcomes the user
    def welcome
        puts "Welcome #{@username}! You have logged in."
    end
end

#Do everything
charles = User.new("charlessamoy@gmail.com","charlessamoy","hellooo")
charles.addToUserList
charles.welcome