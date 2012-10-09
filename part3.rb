def combine_anagrams(words)
 # YOUR CODE HERE
	anagramarray = Array.new # an array for the results
	
	#words = words.uniq # removes duplicate words	

	words.each do |aword|  #do for allthe words
			temp = [] #holds result
		words.each do |nextword|	
			if (aword.downcase.split(//).sort == nextword.downcase.split(//).sort) #compare characters
				temp.push(nextword)# if the same MOVE IT to the new array
			end
		end
		anagramarray.push(temp) # push temp into results array 
	end
		
	# ouput the arrays!!
	return anagramarray.uniq  #moved removal of duplication to here 

end

#test it
puts combine_anagrams(['cars', 'for', 'potatoes', 'racs', 'four','scar', 'creams', 'scream'] )

# input: ['cars', 'for', 'potatoes', 'racs', 'four','scar', 'creams', 'scream'] 
# output: [ ["cars", "racs", "scar"],
#           ["four"],
#           ["for"],
#           ["potatoes"],
#           ["creams", "scream"] ]
