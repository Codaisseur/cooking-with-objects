class Storage

	def initialize
		@items = [
			Ingredient.new(Ingredient::TOMATO, 8),
			Ingredient.new(Ingredient::DOUGH, 2),
			Ingredient.new(Ingredient::MOZZARELLA, 1),
			Ingredient.new(Ingredient::PEPERONI, 0.3)
		]
	end

  def fetch(ingredients)
		ingredients.each do |ingredient|
			item = @items.detect{|item| item.name == ingredient.name}
			if item
        item.use ingredient.amount
      else
        return false
      end
		end
	end

end