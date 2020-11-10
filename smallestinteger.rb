def get_smallest(arr)
    tempNum = arr[0]
    arr.each {|num| if num<tempNum then tempNum = num end}
    return tempNum
end