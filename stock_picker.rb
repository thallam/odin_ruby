def stock_picker(stock_prices)

max_value = {profit: 0}

stock_prices.each_with_index do |buy_value, index|
  sell_value = stock_prices.slice(index..-1).max
  sell_day = stock_prices.rindex(sell_value)
  profit   =   sell_value - buy_value

    if profit > max_value[:profit]
      max_value = {
        sell_day:    sell_day,
        sell_value:  sell_value,
        buy_day:     index,
        buy_value:   stock_prices[index],
        profit:      profit
      }
    end
  end

output =  "[#{max_value[:buy_day]},#{max_value[:sell_day]}] for a profit of " \
          "$#{max_value[:sell_value]} - $#{max_value[:buy_value]} = $#{max_value[:profit]}"
end


def run
# puts stock_picker([17,3,6,9,15,8,6,1,10])
# desired output => [1,4]  # for a profit of $15 - $3 == $12

puts stock_picker([17,3,6,9,15,8,6,1,10])
end



run if __FILE__ == $0
