# Number 1
numbers = [1,2,3,4,5,6,7,8,9,10]
numbers.each { |n| puts "Current number is: #{n}"}

# Number 2
h = Hash[a:1,b:2,c:3,d:4]
puts h[:b]
h[:e] = 5
puts h[:e]

# Number 3
contact_data = [["ana@email.com","123 Main st.","555-123-4567"],["avion@email.com","404 Not Found Dr.","123-234-3454"]]
contacts = {"Analyn Cajocson" => (), "Avion School" => ()}

contacts.each_with_index do |(key,value),idx| 
    temp = Hash.new 
    contact_data[idx].each_with_index do |value,idx|
        case idx
        when 0
            temp[:email]=value
        when 1
            temp[:address]=value
        when 2
            temp[:phone]=value
        end
    end
    contacts[key]=temp
end

puts contacts

#Number 4
puts "How old are you?"
age = gets
4.times {|i| puts "In #{(i+1)*10} years you will be:\n#{age.to_i+((i+1)*10)} years old"}