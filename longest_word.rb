def longest_word(sentence)
	store = sentence.split(' ')
	
	count = Array.new
	i = 0

	while i < store.length
		count[i] = store[i].length
		i += 1
	end

	val_check = 0
    t = 0

    while t < count.length
    	if count[t] > val_check
    		val_check = count[t]
    		t += 1
        end
        
    end
    return store[count.index(val_check)].to_s
 end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'longest_word("short longest") == "longest": ' +
  (longest_word('short longest') == 'longest').to_s
)
puts(
  'longest_word("one") == "one": ' +
  (longest_word('one') == 'one').to_s
)
puts(
  'longest_word("abc def abcde") == "abcde": ' +
  (longest_word('abc def abcde') == 'abcde').to_s
)