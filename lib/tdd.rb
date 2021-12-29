def my_uniq(arr)
    count = Hash.new {|h, k| h[k] = 0}
    arr.each {|ele| count[ele] += 1}
    count.keys
end