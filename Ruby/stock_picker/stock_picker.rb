stonks = [17,3,6,9,15,8,6,1,10]


def stock_picker(stocks)

stocks.each do |stock|


i = stocks.index(stock)
while i <= stocks.length

  p i

i += 1
end
p "END OF LOOP"

end



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
