# CSCI 3308: Ruby Assignment 1
# Emily Owens
# Last updated: 1/29/14

# Part2: Palindromes
# determines whether a given string is a palindrome 
# ignores case, punctuation, and nonword characters 


def palindrome?(string)
	# Delete all non-word characters from string
	# Then, downcase and compare w/ reversed string
	# If equivalent, then a palindrome
	string.downcase.gsub(/\W/, '') == string.downcase.reverse.gsub(/\W/, '')
end

# Test Cases

puts "\nAre these palindromes?\n\n"
puts "Madam, I'm Adam." 
p palindrome?("Madam, I'm Adam.")
puts "\n"
puts "Banana"
p palindrome?("Banana")
puts "\n"
puts "A man, a plan, a canal -- Panama"
p palindrome?("A man, a plan, a canal -- Panama")
puts "\n"

