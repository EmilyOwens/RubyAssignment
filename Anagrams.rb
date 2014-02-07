# CSCI 3308: Ruby Assignment 1
# Emily Owens
# Last updated: 1/29/14
#
# Part5: Anagrams
# Thanks to Jessica Lynch

def combine_anagrams(words)

	words.group_by{|word| word.downcase.chars.sort}.values
	
end

# Test cases

p combine_anagrams(['cars', 'for', 'potatoes', 'racs', 'four', 'Scar', 'creams', 'scream'])

p combine_anagrams(['Yikes', 'pikes', 'Spike', 'Mike', 'bike'])
