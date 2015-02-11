require_relative 'Enumerable'
require 'rspec'


describe "My enumerable methods" do

describe "#my_each" do
  it "Calls the given block once for each element in self, passing that"\
      " element as a parameter." do
        # note to self: need to test side effects of output but rspec doesn't
        # capture! so need to make side effect affect a testable object
    @arr = [1,2,3,4]
    @arr2 = []
    @arr.my_each{|i| @arr2 << i*2}
    expect(@arr2).to eq([2,4,6,8])
  end
end
describe "#my_map" do
  it "Creates a new array containing the values returned by the block." do
    @arr = [1,2,3,4]
    expect(@arr.my_map{|e| e*2}).to eq([2,4,6,8])
  end
end
end
