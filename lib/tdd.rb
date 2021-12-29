def my_uniq(arr)
    count = Hash.new {|h, k| h[k] = 0}
    arr.each {|ele| count[ele] += 1}
    count.keys
end

def two_sum(arr)
    res = []
    (0...arr.length - 1).each do |i|
        (i + 1...arr.length).each do |j|
            res << [i, j] if arr[i] + arr[j] == 0
        end
    end
    res
end

def my_transpose(arr)
    (0...arr.length).map { |i| (0...arr.length).map { |j| arr[j][i] } }
end

def stock_picker(arr)
    profit = 0
    result = [0, 0]
    (0...arr.length - 1).each do |buy|
        (buy...arr.length).each do |sell|
            if arr[sell] - arr[buy] > profit
                profit = arr[sell] - arr[buy]
                result = buy, sell
            end
        end
    end
    result
end