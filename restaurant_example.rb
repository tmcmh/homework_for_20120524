class Restaurant

	@@restaurants = []

	def say_hello
		"Hello!"
	end

	def do_you_have_noodles
		@serves_noodles
	end

	def do_you_serve_bread
		@serves_bread
	end

	def initialize
		@@restaurants << self
	end

	def self.greet_the_maitre_d
		conversation = []
		conversation << "I approach each maitre 'd and we converse: "
		@@restaurants.each do |restaurant| 
			response = "Hello! " + restaurant.say_hello
			response = response + " Any noodles? " + (restaurant.do_you_have_noodles ? "Yes" : "No")
			response = response + " What about bread? " + (restaurant.do_you_serve_bread ? "Yes" : "No")
			conversation << response 
			end
		return conversation
	end
		


end

class ChineseRestaurant < Restaurant

	def initialize serves_noodles = true, serves_bread = false
		@serves_noodles = serves_noodles
		@serves_bread = serves_bread
		super()	# invokes initialize at the level of the parent Class which is Restaurant, passing no parameters
	end


	def say_hello
		"Ni hao!"
	end
end

class ItalianRestaurant < Restaurant

	def initialize serves_noodles = true, serves_bread = true
		@serves_noodles = serves_noodles
		@serves_bread = serves_bread
		super() # invokes initialize at the level of the parent Class which is Restaurant, passing no parameters
	end

	def say_hello
		"Buona sera!"
	end
end

# = = = = = = = = = = = = = = 

shun_lee = ChineseRestaurant.new
il_mulino = ItalianRestaurant.new
szechuan_palace = ChineseRestaurant.new false, false
redsauce_hell = ItalianRestaurant.new false, false


puts Restaurant.greet_the_maitre_d