def get_smallest(arr)
    tempNum = arr[0]
    arr.each do |num|
        if(num<tempNum)
            tempNum = num
        end
    end
    return tempNum
end