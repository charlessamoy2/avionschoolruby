class Phone
    def bootup(phone)
        phone.bootup
    end
end

class Android
    def bootup
        puts "Android phone booting up"
    end
end

class Apple
    def bootup
        puts "Apple phone booting up"
    end
end

class Blackberry
    def bootup
        puts "Blackberry phone booting up"
    end
end

phone = Phone.new
android = Android.new
apple = Apple.new
blackberry = Blackberry.new

phone.bootup(android)
phone.bootup(apple)
phone.bootup(blackberry)