class Document
    def initialize(name)
        @name = name
    end

    def name
        puts "The document is #{@name}"
    end
end

doc = Document.new("The Constitution")
doc.name