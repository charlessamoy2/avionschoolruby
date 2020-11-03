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

class Electronic
    def instruction(elec)
        elec.instruction
    end
end

class Keyboard
    def instruction
        puts "This is a keyboard"
    end
end

class Mouse
    def instruction
        puts "This is a mouse"
    end
end

class Monitor
    def instruction
        puts "This is a monitor"
    end
end

elec = Electronic.new
keyboard = Keyboard.new
mouse = Mouse.new
monitor = Monitor.new

elec.instruction(keyboard)
elec.instruction(mouse)
elec.instruction(monitor)