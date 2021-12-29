require 'rspec'
require 'tdd.rb'


describe '#my_uniq' do
    arr = [1, 1, 2, 3, 3]
    it 'Takes in an array and returns the unique elements' do
        expect(my_uniq(arr)).to eq([1, 2, 3])
    end
end 

describe "#two_sum" do 
    arr = [-1, 0, 2, -2, 1]
    it "returns pairs of positions where elements sum to zero" do 
        expect(two_sum(arr)).to eq([[0, 4], [2, 3]])
    end
end

describe "#my_transpose" do
    arr = [[0, 1, 2], [3, 4, 5], [6, 7, 8]]
    it "convert rows to columns" do 
        expect(my_transpose(arr)).to eq([[0, 3, 6], [1, 4, 7], [2, 5, 8]])
    end
end

describe "#stock_picker" do

  #  arr = [5, 10, 3, 1, 7, 6, 2]
    let(:arr) {[5, 10, 3, 1, 7, 6, 2]}
    it "returns most profitable pair of days to buy and sell" do
        expect(stock_picker(arr)).to eq([3, 4])
    end
end


rods = [[3, 2, 1], [], []]
describe "#move" do 
    it "moves the top most disc" do 
        move(rods, [0, 1])
        expect(rods).to eq([[3, 2], [1], []])
    end
    it "raises error if a larger disc is placed on top of a smaller one" do 
        expect {move(rods, [0, 1])}.to raise_error("a larger disc shouldn't be placed on top of a smaller one")
    end 
end

describe "#won?" do 
    completed_game = [[], [], [3, 2, 1]]
    it "returns true if discs are in order in right most stack" do
        expect(won?(completed_game)).to eq(true)
    end
    it "returns false otherwise" do
        expect(won?(rods)).to eq(false)
    end
end
