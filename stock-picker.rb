def stock_picker(input_array)

i = 0
max_loop = input_array.length - 1
max_diff = []

input_array.each do |price|
	
	max_diff[i] = 0
	
	for k in i..max_loop
		
		diff = input_array[k] - price
		
		if max_diff[i] < diff
			max_diff[i] = diff
			end #end of max_diff < diff if
			
		
		
		
		
		end # end of for loop
		i += 1
	end # end of each loop

profit = 0
for n in 0..max_loop
	
	if max_diff[n] > profit
		profit = max_diff[n]
		buy_loc = n
		end #end if	
	end #end of for loop	
	
sell_loc = buy_loc	
for n in buy_loc..max_loop
	
	if input_array[n] > input_array[sell_loc]
		sell_loc = n
		end #end if
	end #end for loop	
	
	
	puts [buy_loc,sell_loc].to_s
	puts "Buy on day #{buy_loc} (for $#{input_array[buy_loc]}) and sell on day #{sell_loc} (for $#{input_array[sell_loc]}) for a profit of $#{profit} (days start at 0)."
	
end


stock_picker([17,3,6,9,15,8,6,1,10])