# CSCI 3308: Ruby Assignment 1
# Emily Owens
# Last updated: 1/29/14
#
# Part7: Dessert

class Dessert
	
	def initialize(name, calories)
		
		@name = name
		@calories = calories

	end

	def healthy?
		@calories < 200
	end
	
	def delicious?
		return true
	end
end

class JellyBean < Dessert
	
	def initialize(name, calories, flavor)
		#Call initialize in superclass, Dessert
		super(name, calories)
		@flavor = flavor
	end

	def flavor
		@flavor
	end

	def delicious?
		flavor.downcase != "black licorice"
	end
	
end

#Test cases

cake = Dessert.new("Cake", 800)
p cake.healthy?
p cake.delicious?
puts "\n"

jelly1 = JellyBean.new("Black Jellybean",50,"black licorice")
p jelly1.healthy?
p jelly1.delicious?
puts "\n"

jelly2 = JellyBean.new("Red Jellybean", 50, "strawberry")
p jelly2.healthy?
p jelly2.delicious?
	
