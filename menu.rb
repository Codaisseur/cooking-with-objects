require './dish'
require './ingredient'

class Menu
	def initialize
		@dishes = [
			Dish.new("Margherita", 1050, [
				Ingredient.new(Ingredient::TOMATO, 3),
				Ingredient.new(Ingredient::DOUGH, 0.25),
				Ingredient.new(Ingredient::MOZZERELLA, 0.2)
			]),
			Dish.new("Napoletana", 1400, [
				Ingredient.new(Ingredient::TOMATO, 2),
				Ingredient.new(Ingredient::DOUGH, 0.25),
				Ingredient.new(Ingredient::MOZZERELLA, 0.2),
				Ingredient.new(Ingredient::ANCHOVIES, 0.05)
			]),
			Dish.new("Peperoni", 1500, [
				Ingredient.new(Ingredient::TOMATO, 2),
				Ingredient.new(Ingredient::DOUGH, 0.25),
				Ingredient.new(Ingredient::MOZZERELLA, 0.2),
				Ingredient.new(Ingredient::PEPERONI, 0.1)
			]), 
		]
	end
	def list
		@dishes
	end
end