def is_root(number)
    i = 1
    while i*i <= number
        if i*i == number
            return true
        end
        i+=1
    end 
    return false
end