class Ingredient

	TOMATO = "Tomato"
	DOUGH = "Dough"
	MOZZERELLA = "Mozzarella"
	ANCHOVIES = "Anchovies"
	PEPERONI = "Peperoni"
	
	def initialize name, amount
		@name = name
		@amount = amount
	end
	def name
		@name
	end
	def use amount
		@amount -= amount
	end

	def amount
		@amount
	end
end