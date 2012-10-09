def palindrome?(str)
	# YOUR CODE HERE
	# Determine wheter a given string is a palindrome (reads the same backwards)
	# ignore case punctuation and nonword characters	
	#p = str.downcase.gsub("/[[\W*\d*\s*]*]/x", "")
	p = str.downcase.gsub(/[^a-z]*\s*\d*/, "")
	#puts str
	#puts p
	#puts p.reverse
	p == p.reverse
end



def count_words(str)
  # YOUR CODE HERE
	wordhash = Hash.new
	#puts wordhash.empty? #test
		
	# strip string of none word chars
	
	str.downcase.scan(/\b\w*\b/) do |word|
		if wordhash.has_key?(word) 
			wordhash[word] += 1
		elsif word == ""
		else wordhash[word] = 1
		end
	
		# if word is in the hash increment
		# else add the word to the hash and make it 1
	end
	p wordhash
end

puts "Test Cases *******************1  ******************"
#Test Cases
puts palindrome?("A man, a plan, a canal -- Panama")  # => true
puts palindrome?("Madam, I'm Adam!")                  # => true
puts palindrome?("Abracadabra")                       # => false (nil is also ok)

puts "Test Cases **********************2 ****************"
#Test Cases
puts count_words("A man, a plan, a canal -- Panama")
puts count_words "Doo bee doo bee doo"
puts count_words "blah blah blah blah blah"
    

