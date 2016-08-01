require './storage'

class Kitchen
	def initialize menu
		@menu = menu
		@storage = Storage.new
	end
	def order item

		p "KITCHEN: Order received for #{item.name}"
		@storage.fetch(item.ingredients)
		
	end
end