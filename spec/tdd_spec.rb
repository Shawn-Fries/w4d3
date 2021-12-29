require 'rspec'
require 'tdd.rb'


describe '#my_uniq' do
    arr = [1, 1, 2, 3, 3]
    it 'Takes in an array and returns the unique elements' do
        expect(my_uniq(arr)).to eq([1, 2, 3])
    end


end 