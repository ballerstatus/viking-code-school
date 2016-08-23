def stock_picker prices
  profit = 0
  buy = nil
  sell = nil
  prices[0..-1].each_with_index do |price1, index1|
    prices[index1..-1].each_with_index do |price2, index2|
      if price2 - price1 > profit
        profit = price2 - price1
        buy = index1
        sell = index1 + index2
      end
    end
  end
  print [buy, sell]
  puts ''
end

stock_picker([44, 30, 24, 32, 35, 30, 40, 38, 15])