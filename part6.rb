class Numeric
  @@currencies = {'dollar'=> 1,'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019} # dollar => 1 ?
  def method_missing(method_id)
    singular_currency = method_id.to_s.gsub( /s$/, '')
    if @@currencies.has_key?(singular_currency)
      self * @@currencies[singular_currency]
    else
      super
    end
  end

	def in(withans)
		singular = withans.to_s.gsub(/s$/,'') # or .chomp('s') altho would that cut an s out of anywhere??
		if @@currencies.has_key?(singular)
			self * (1/@@currencies[singular])
		else
			self
		end
	end
end

class String
  # YOUR CODE HERE part b
	def palindrome?
		p = self.downcase.gsub(/[^a-z]*\s*\d*/, "") # might have to change regex to /\W/x
		p == p.reverse
	end
end

module Enumerable
  # YOUR CODE HERE part c
	def palindrome?
		palindromecheck = self
		palindromecheck == palindromecheck.reverse
	end
end

### Test the currency converter
puts 5.dollars.in(:euros)
puts 10.euros.in(:rupees)
puts 10.euro.in(:rupees)

### Test Part B Palindrome

puts "foo".palindrome?

### Test Part C Palindrome
puts [1,2,3,2,1].palindrome?

