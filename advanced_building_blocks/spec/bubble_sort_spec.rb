require_relative 'bubble_sort'
require 'rspec'

describe "Bubble Sort" do
  it "takes and gives back an array" do
    expect(bubble_sort([1,7,9,4,3])).to be_a Array
  end

  it "sorts the array before returning it" do
    expect(bubble_sort([1,7,9,4,3])).to eq{[1,3,4,7,9]}
  end
end
