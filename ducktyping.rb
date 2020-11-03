class Phone
    def bootup
        puts "Random phone booting up"
    end
end

class Android < Phone
    def bootup
        puts "Android phone booting up"
    end
end

class Apple < Phone
    def bootup
        puts "Apple phone booting up"
    end
end

class Blackberry < Phone
    def bootup
        puts "Blackberry phone booting up"
    end
end

android = Android.new
apple = Apple.new
blackberry = Blackberry.new

android.bootup
apple.bootup
blackberry.bootup