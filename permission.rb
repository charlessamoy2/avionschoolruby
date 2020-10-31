module AdminPermisson
    def edit_users_profile
      puts "Admin updated all users profile"
    end
  end
  
  module BuyerPermission
    def buy
      puts "Buyer has bought an item"
    end
  end
  
  class User
    def initialize(username, password, ip_address)
        @username = username
        @password = password
        @ip_address = ip_address
    end
  
    def login
      puts "User logged in. IP address: #{@ip_address}"
    end

    def change_password(password)
        @password = password
        puts "Password changed! New password is: #{@password}"
    end
  end
  
  
  class Admin < User
    include AdminPermisson
  end
  
  
  class Buyer < User
    include BuyerPermission
  end
  
  
  
  ## execute
  
  my_admin = Admin.new('analyn', 'password', '127.0.0.1')
  my_admin.login
  my_admin.edit_users_profile
  
  my_admin.change_password('new_password')
  
  buyer = Buyer.new('ana', 'password', '127.0.0.1')
  buyer.login
  buyer.buy
  
  buyer.change_password('new_password')