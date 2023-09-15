require 'rspec'
require 'tdd'
require "byebug"

describe '#uniq' do
    it "should accept an array as an argument" do
      expect{[1, 2, 1, 3, 3].my_uniq}.to_not raise_error
    end

    it "should return a unique version of the input array" do
      expect([1, 2, 1, 3, 3].my_uniq).to eq([1,2,3])
    end
end

describe '#two_sum' do
  it "should accept an array as an argument" do
    expect{[1, 2, 1, 3, 3].two_sum}.to_not raise_error
  end

  it "returns positions of pairs of numbers that add to 0" do
    expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
  end

  it "finds pairs with same element" do
    expect([1,-1, 1].two_sum).to eq([[0, 1], [1, 2]])
  end

  it "returns empty array when no pairs are found" do
    expect([8, 7, 4].two_sum).to eq([])
  end

  it "won't create pairs with only a single zero" do
    expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
  end

  it "will create pairs with two zeros" do
    expect([-1, 0, 2, 0, -2, 1].two_sum).to eq([[0, 5], [1, 3], [2, 4]])
  end
end

describe "#my_transpose" do
  it "should accept a 2D array as an argument" do
    expect{[[0, 1, 2], [3, 4, 5], [6, 7, 8]].my_transpose}.to_not raise_error
  end

  it "should not accept an arguement that is not a 2D array" do
    expect {[1,2,3,4,5,6,7,8,9].my_transpose}.to raise_error("Input array must be 2D array")
  end

  it "should transpose the array" do
    expect([[0, 1, 2], [3, 4, 5], [6, 7, 8]].my_transpose).to eq([[0, 3, 6], [1, 4, 7], [2, 5, 8]])
  end
end