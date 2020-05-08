stonks = [17,3,6,9,15,8,6,1,10]


def stock_picker(stocks)
eval_hash = {}
stocks.each do |stock|


i = stocks.index(stock)

eval_to_beat = 0
while i < stocks.length
eval = stocks[i] - stock

  if eval > eval_to_beat
    eval_hash[stock] = eval
    eval_to_beat = eval
  end

i += 1

end

end
max_profit = eval_hash.max_by {|k, v| v}

sell_day = max_profit[0] + max_profit[1]
buy_day_sell_day = []
buy_day_sell_day << stocks.find_index(max_profit[0])
buy_day_sell_day << stocks.find_index(sell_day)

p "If you bought a stock on day #{buy_day_sell_day[0]},"
p "and then sold that stock on day #{buy_day_sell_day[1]},"
p "your profit would be $#{max_profit[1]}."


end



stock_picker(stonks)



#Alright, well, I know what I want to do. I just need to implement it.

# buy_price = ""
# sell_price = ""
#
# stocks.each do |stock|
#
#   if stocks.index(stock) == 0
#     buy_price = stock
#     p buy_price
#   end
#
# if buy_price > stock
#   buy_price = stock
#   p buy_price
# end
#
# end
#
# end
