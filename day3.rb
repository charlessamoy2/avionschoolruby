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

#Activity 2
class Profile
    attr_accessor :full_name
    attr_writer :age
    attr_writer :work

    def initialize(full_name, age, address, work)
        @full_name = full_name
        @age = age
        @address = address
        @work = work
    end
end
  
my_profile = Profile.new('Ana', 18, 'Bulacan', 'Instructor')
  
puts my_profile.full_name
my_profile.full_name = 'Analyn Cajocson'
  
my_profile.age = 25
my_profile.work = 'Software Engineer'
  
  