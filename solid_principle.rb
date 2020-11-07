#Single Responsibility
class Messenger
    def send(message)
        puts message
    end
end

class User
    def initialize(name)
        @messenger = Messenger.new
        @name = name
    end

    def greet
        @messenger.send("Hi #{@name}!! Welcome to Single Responsibility")
    end
end

test_user = User.new("test")
test_user.greet

#Open/Closed principle
class GreetingSender
    def send(name, greeting)
        greeting.send(name)
    end
end

class Goodbye
    def send(name)
        puts "Goodbye, #{name}"
    end
end

class Hello
    def send(name)
        puts "Hello, #{name}"
    end
end

greeting = GreetingSender.new
greeting.send("Charles",Hello.new)
greeting.send("Charles",Goodbye.new)

#Liskov Substitute principle
class Animal
    def set_legs(legs)
        @legs = legs
    end

    def set_color(color)
        @color = color
    end

    def printAll
        puts "legs: #{@legs}"
        puts "color: #{@color}"
    end
end

class Fish < Animal
    def set_legs(legs)
        puts "A fish doesn't have #{legs} legs silly!"
        @legs = 0
    end

    def set_color(color)
        @color = color
    end

    def printAll
        puts "legs: #{@legs}"
        puts "color: #{@color}"
    end
end

fish = Fish.new
fish.set_legs(3)
fish.set_color("Blue")
fish.printAll

#Interface Segregation Principle
class Keyboard
    def start
        puts "Start"
    end

    def type
        puts "Type"
    end
end

class KeyboardComponents
    def resolder
        puts "Resolder"
    end
end

class Consumer
    def use_keyboard(keyboard)
        keyboard.start
        keyboard.type
    end
end

class Technician
    def fix_keyboard(components)
        components.resolder
    end
end

consumer = Consumer.new
technician = Technician.new

consumer.use_keyboard(Keyboard.new)
technician.fix_keyboard(KeyboardComponents.new)

#Dependency inversion principle
class Printer
    def initialize(text)
        @text = text
    end

    def print(type)
        type.format(@text)
    end
end

class DocxFormat
    def format(text)
        puts "Printed Docx File with text: #{text}"
    end
end

class PdfFormat
    def format(text)
        puts "Printed PDF File with text: #{text}"
    end
end

printer = Printer.new("Hello")
printer.print(DocxFormat.new)