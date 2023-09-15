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