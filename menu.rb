require './recipe'
require './ingredient'

class Menu
	def initialize
		create_recipe_list
	end
	def create_recipe_list
		@recipes = [
			Recipe.new("Margherita", 1050, [
				Ingredient.new(Ingredient::TOMATO, 3),
				Ingredient.new(Ingredient::DOUGH, 0.25),
				Ingredient.new(Ingredient::MOZZERELLA, 0.2)
			]), 
			Recipe.new("Napoletana", 1400, [
				Ingredient.new(Ingredient::TOMATO, 2),
				Ingredient.new(Ingredient::DOUGH, 0.25),
				Ingredient.new(Ingredient::MOZZERELLA, 0.2),
				Ingredient.new(Ingredient::ANCHOVIES, 0.05)
			]), 
			Recipe.new("Peperoni", 1500, [
				Ingredient.new(Ingredient::TOMATO, 2),
				Ingredient.new(Ingredient::DOUGH, 0.25),
				Ingredient.new(Ingredient::MOZZERELLA, 0.2),
				Ingredient.new(Ingredient::PEPERONI, 0.1)
			]), 
		]
	end
	def list
		@recipes
	end
end