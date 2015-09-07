def stock_picker(daily_prices)
	length = daily_prices.length
	daily_prices << 0
	best = 0
	daily_prices.each_with_index do |price, rank|
		for i in (rank + 1)..length
			diff = daily_prices[i] - price
			puts diff
		end
		puts ""
	end

end

stock_picker([1,14,12,2,24])