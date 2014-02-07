# CSCI 3308: Ruby Assignment 1
# Emily Owens
# Last updated: 1/29/14

# Part3: Word Count
#
# given an input string, returns a hash with words as keys and 
def count_words(string)
	#Create Hash
	wordHash = Hash.new(0)
	# For each downcased word, remove selected non-word characters
	# Split into individual words, and add to hash
	string.downcase.gsub(/[.,!;:-]/, "").split.each do |words|
		wordHash[words] += 1	
	end
	return wordHash
end

# Test cases
p count_words("Hello my dear friend.")
p count_words("Hey Hey, it's Krusty the Clown!")
p count_words("Doo bee doo bee doo")
p count_words("A man, a plan, a canal -- Panama")
