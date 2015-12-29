def stock_picker(stocks)
	i = 0
	best = 0
	days = []
	while i < stocks.length
		stocks[i..-1].each do |stock|
			profits = (0 - stocks[i]) + stock
			if profits > best 
				best = profits 
				days = [i, stocks.index(stock)]
			end
		end
		i += 1
	end	
	puts days
end

stock_picker([10,3,6,9,15,8,116,1,10])

