# Write a method that takes an array of numbers. If a pair of numbers
# in the array sums to zero, return the positions of those two numbers.
# If no pair of numbers sums to zero, return `nil`.
#
# Difficulty: medium.

def two_sum(nums)
	store = nums.combination(2).to_a
	arr = Array.new
	i = 0
	sum = 0
	while i <= store.length
		a = store[i][0]
		b = store[i][1]
		sum = ( a + b )
		
        if sum != 0 && i == store.length-1
        	return nil
        elsif sum != 0 && i < store.length
			i += 1	
        elsif sum == 0
			arr[0] = nums.index(a)
			arr[1] = nums.index(b)
			return arr		
		end       
        
	end
    # if sum = store[store.length-1][0] + store[store.length-1][1]) 
    # if sum != 0 && i == store.length
    # 	return arr
    # end

end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'two_sum([1, 3, 5, -3]) == [1, 3]: ' + (two_sum([1, 3, 5, -3]) == [1, 3]).to_s
)
puts(
  'two_sum([1, 3, 5]) == nil: ' + (two_sum([1, 3, 5]) == nil).to_s
)
