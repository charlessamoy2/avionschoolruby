def pos_neg(arr)
    count,sum = 0,0
    
    if arr[0] then arr.each {|n| if n > 0 then count += 1 else sum += n end } else return [] end
    return [count,sum]
end