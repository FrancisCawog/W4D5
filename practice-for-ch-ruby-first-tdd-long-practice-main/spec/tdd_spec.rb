require 'rspec'
require 'tdd'
require "byebug"

describe '#uniq' do
    it "should accept an array as an argument" do
      expect {[1, 2, 1, 3, 3].my_uniq}.to_not raise_error
    end

    it "should return a unique version of the input array" do
      expect([1, 2, 1, 3, 3].my_uniq).to eq([1,2,3])
    end
end