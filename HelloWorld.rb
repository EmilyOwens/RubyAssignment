# CSCI 3308: Ruby Assignment 1
# Emily Owens
# Last updated: 1/29/14
#
# Part1: Hello World
class HelloWorldClass
	def initialize(name)
		@name = name.capitalize
	end
	def sayHi
		puts :"Hello #{@name}!"
	end
end

hello = HelloWorldClass.new("Emily")
hello.sayHi
