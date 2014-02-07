# CSCI 3308: Ruby Assignment 1
# Emily Owens
# Last updated: 2/5/14
#
#(10a)— Palindromes: Adapt your solution from the "palindromes" question so that instead 
# of writing palindrome?("foo") you can write "foo".palindrome? 
# (Hint: this should require fewer than 5 lines of code.)
#
#(10b) — Palindromes again: Adapt your palindrome solution so that it works on Enumerables. 
#That is:[1,2,3,2,1].palindrome? # => true

class String
	def palindrome?
		# Delete all non-word characters from string (self)
		# Then, downcase and compare w/ reversed string (self)
		# If equivalent, then a palindrome
		self.downcase.gsub(/\W/, '') == self.downcase.reverse.gsub(/\W/, '')
	end
end


module Enumerable
	def palindrome?
		self == self.reverse
	end
end

# Test cases

puts "\nAre these palindromes?\n\n"

puts "Madam, I'm Adam.".palindrome? 
puts "\n"

puts "Banana".palindrome?
puts "\n"

puts "A man, a plan, a canal -- Panama".palindrome?
puts "\n"

puts [1,2,3,2,1].palindrome?
puts "\n"

puts [1,2,3,4,5,6].palindrome?
