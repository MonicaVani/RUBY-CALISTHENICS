class CartesianProduct
  include Enumerable
  # YOUR CODE HERE
	# Create a constructor for the class CartesianProduct that that takes two sequences as arguments, 
	# these values will define the behavior of your object.
	def initialize(seq1,seq2)
		@seq1 = seq1
		@seq2 = seq2
	end

	# Define each as an instance method for CartesianProduct. 
	#Your method should return an iterator which yields the cartesian product 
	#of the two sequences used in the class' constructor. 
	#The iterator should yield the values one at a time as 2 element arrays.
	def each
		@seq1.each do |a|	#start with the first array/sequence
			@seq2.each do |b|	#take one from the second array/seq
				yield [a,b]	#yeild back out and continue with the seq1 loop/iteration
			end
		end
	end
end


### Test Cases
c = CartesianProduct.new([:a,:b], [4,5])
c.each { |elt| puts elt.inspect }
# [:a, 4]
# [:a, 5]
# [:b, 4]
# [:b, 5]

c = CartesianProduct.new([:a,:b], [])
c.each { |elt| puts elt.inspect }
# Nothing printed since Cartesian product of anything with an empty collection is empty
