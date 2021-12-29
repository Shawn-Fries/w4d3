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

def move(rods, pos)
    disc = rods[pos.first].pop
    raise "a larger disc shouldn't be placed on top of a smaller one" if rods[pos.last].last && rods[pos.last].last < disc
    rods[pos.last].push(disc)
    rods
end

def won?(completed_game)
    completed_game == [[], [], [3, 2, 1]]
end

def play
    rods = [[3, 2, 1], [], []]
    until won?(rods)
        puts 'Please enter a starting and ending position'
        pos = gets.chomp.split(' ').map {|char| char.to_i}
       # p pos
        move(rods, pos)
    end
    puts 'You win!'
end

play