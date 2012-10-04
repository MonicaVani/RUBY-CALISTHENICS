# Determine wheter a given string is a palindrome (reads the same backwards)
# ignore case punctuation and nonword characters
def palindrome?(str ="kayak")
  # YOUR CODE HERE
	if str =~ /\A(?<p>| \w | (?: (?<l>\w) \g<p> \k<l+0> ))\z/x 
	#str = str.downcase
	#if str == str.reverse
	#	return true
	
end

#def count_words(str)
  # YOUR CODE HERE
#end


puts palindrome()



