require 'pry'

def stock_picker(stock_prices)
# buy low sell high
# find maximum difference between low and high days.

  stock_prices.each_with_index do |day,index|
    max_diff = stock_prices[index..-1].minmax{|buy,sell| sell-buy}
    memo = max_diff if stock_prices(max_diff) > stock_prices(memo)
  end

"#{memo} for a profit of $#{stock_prices[memo[1]]-stock_prices[memo[0]]}"

end


def run
# desired output => [1,4]  # for a profit of $15 - $3 == $12
puts stock_picker([17,3,6,9,15,8,6,1,10])

end



run if __FILE__ == $0
