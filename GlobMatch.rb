# CSCI 3308: Ruby Assignment 1
# Emily Owens
# Last updated: 2/3/14
#
# Part6: Glob Match
# Write a function called glob_match(filenames, pattern), which takes an array of
# filename strings and a glob pattern string and returns an array of the filenames
# that match the UNIX glob rules.

def glob_match(filenames, pattern)
	
	newPattern = pattern.gsub( '*', '.*').gsub( '?', '.')

	return filenames.select{|i| i.match(/#{newPattern}/)}
	
end


#Test cases
p glob_match(["part1.rb", "part2.rb", "part2.rb~", ".part3.rb.un~"],'*part*rb?*')

p glob_match(["part1.rb", "part2.rb", "part2.rb~", ".part3.rb.un~"],'*.rb')

p glob_match(["part1.rb", "part2.rb", "part2.rb~", ".part3.rb.un~"],'*2*rb')
