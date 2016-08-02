require './storage'

class Kitchen
	def initialize(menu)
		@menu = menu
		@storage = Storage.new
	end
	def order(dish)
		p "KITCHEN: Order received for #{dish.name}"
		@storage.fetch(dish.ingredients)
	end
end