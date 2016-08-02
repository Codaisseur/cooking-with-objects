class Storage
	
	def initialize
		@items = [
			Ingredient.new(Ingredient::TOMATO, 8),
			Ingredient.new(Ingredient::DOUGH, 2),
			Ingredient.new(Ingredient::MOZZERELLA, 1),
			Ingredient.new(Ingredient::ANCHOVIES, 0.1),
			Ingredient.new(Ingredient::PEPERONI, 0.3)		
		]
	end
	
	def fetch(ingredients)
		#find a item in the array
		ingredients.each do |ingredient|
			item = @items.detect{|item| item.name == ingredient.name}		
			item.use ingredient.amount 
		end
		stock
	end

	def stock
		@items.each do |item|
			p "#{item.name} #{item.amount}"
		end
	end

end