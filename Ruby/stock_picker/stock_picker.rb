stonks = [17,3,6,9,15,8,6,1,10]


def stock_picker(stocks)

stocks.each do |stock|


i = stocks.index(stock)
eval_hash = {}
eval_to_beat = 0
while i < stocks.length
eval = stocks[i] - stock

  if eval > eval_to_beat
    eval_hash[stock] = eval
    eval_to_beat = eval
  end

i += 1

end
p "END OF LOOP"
p eval_hash
end



end

# main_hash = eval_hash.sort_by { |k,v| v }.first

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
