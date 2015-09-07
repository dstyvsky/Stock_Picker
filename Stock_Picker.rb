def stock_picker(daily_prices)
	length = daily_prices.length
	daily_prices << 0
	best = 0
	biggest_diff = 0
	buy_day = 0
	sell_day = 0
	daily_prices.each_with_index do |price, rank|
		
		for i in (rank + 1)..length
			diff = daily_prices[i] - price
			#puts diff
			if diff > biggest_diff
				biggest_diff = diff
				puts biggest_diff 
				buy_day = rank
				sell_day = i
			end
		end
		puts ""
	end
	puts "Buy on day #{buy_day+1} and sell on day #{sell_day+1}"

end

stock_picker([5,14,12,2,24,78,2,3,4,5,2,100])