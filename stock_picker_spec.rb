require_relative 'stock_picker'
describe "stock picker" do

  it "given a series of stock prices, calculates the best days to buy & sell for maximum value" do
    expect(stock_picker([17,3,6,9,15,8,6,1,10])).to eq("[1,4] for a profit of $15 - $3 = $12")
    end
  end
