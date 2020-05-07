stonks = [17,3,6,9,15,8,6,1,10]


def stock_picker(stocks)


stocks.each do |stock|

  if stocks.index(stock) == 0
    buy_price = stock.to_s
    p buy_price
  end



end

end

stock_picker(stonks)
