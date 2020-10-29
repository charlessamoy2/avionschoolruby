#Number 1
arr = [1,3,5,7,9,11]
number = 3

arr.each do |num|
    if (num===number)
        puts "Number #{number} is in the array!"
        break
    end
end

#Number 2
puts "Please give me a number:"
number2 = gets

case number2.to_i
when 0..50
    puts "The number is between 0 and 50"
when 51..100
    puts "The number is between 51 and 100"
else
    puts "The number is above 100!"
end

#Number 3
input = gets.chomp
while input != "STOP"
    puts "You wrote #{input}"
    input = gets.chomp
end

#Number 4
arr2 = [6,3,1,8,4,2,10,65,102]
newArr = Array.new

arr2.each do |num|
    case num % 2
    when 0
        puts "#{num} is divisible by 2"
        newArr << num
    else
        puts "#{num} is not divisible by 2"
    end
end

print(newArr.to_s + "\n")